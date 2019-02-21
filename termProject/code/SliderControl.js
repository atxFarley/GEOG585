L.Control.SliderControl = L.Control.extend({
    options: {
        position: 'topright',
        layers: null,
        timeAttribute: 'time',
        isEpoch: false, // whether the time attribute is seconds elapsed from epoch
        startTimeIdx: 0, // where to start looking for a timestring
        timeStrLength: 4, // the size of  yyyy-mm-dd hh:mm:ss - if millis are present this will be larger
        maxValue: -1,
        minValue: 0,
        showAllOnStart: true,
        markers: null,
        labels: null,
        range: false,
        follow: false,
        sameDate: false,
        alwaysShowDate: true,
        rezoom: null
    },
    initialize: function (options) {
        L.Util.setOptions(this, options);
        this._layer = this.options.layer;
    },
    extractTimestamp: function (time, options) {
        console.log("extractTimestamp: time: " + time);
        if (options.isEpoch) {
            time = (new Date(parseInt(time))).toString(); // this is local time
        }
        return time.substr(options.startTimeIdx, options.startTimeIdx + options.timeStrLength);
    },
    setPosition: function (position) {
        var map = this._map;
        if (map) {
            map.removeControl(this);
        }

        this.options.position = position;
        if (map) {
            map.addControl(this);
        }
        this.startSlider();
        return this;
    },
    onAdd: function (map) {
        this.options.map = map;
        // Create a control sliderContainer with a jquery ui slider
        var sliderContainer = L.DomUtil.create('div', 'slider', this._container);
        $(sliderContainer).append('<div id="leaflet-slider" class="leaflet-slider"><div id="slider-timestamp" class="ui-slider-label"></div><div class="ui-slider-handle"></div></div>');
        //Prevent map panning/zooming while using the slider
        $(sliderContainer).mousedown(function () {
            map.dragging.disable();
        });
        $(document).mouseup(function () {
            map.dragging.enable();
            //Hide the slider timestamp if not range and option alwaysShowDate is set on false
            if (options.range || !options.alwaysShowDate) {
                $('#slider-timestamp').html('');
            }
        });
        var options = this.options;
        this.options.markers = [];
        //If a layer has been provided: calculate the min and max values for the slider
        if (this._layer) {
            console.log("layer has been provided");
            var index_temp = 0;
            this._layer.eachLayer(function (layer) {
                options.markers[index_temp] = layer;
                ++index_temp;
            });
            options.maxValue = index_temp - 1;
            this.options = options;
            console.log("min: " + this.options.minValue);
            console.log("max: " + this.options.maxValue);
            console.log("labels: " + this.options.labels);

        } else {
            console.error("Error: You have to specify a layer via new SliderControl({layer: your_layer});");
        }
        return sliderContainer;
    },
    onRemove: function (map) {
        //Delete all markers which where added via the slider and remove the slider div
        for (i = this.options.minValue; i <= this.options.maxValue; i++) {
            map.removeLayer(this.options.markers[i]);
        }
        $('#leaflet-slider').remove();
        // unbind listeners to prevent memory leaks
        $(document).off("mouseup");
        $(".slider").off("mousedown");
    },
    startSlider: function () {
        try {
            _options = this.options;
            _extractTimestamp = this.extractTimestamp;
            var index_start = _options.minValue;
            if (_options.showAllOnStart) {
                index_start = _options.maxValue;
                if (_options.range) {
                    _options.values = [_options.minValue, _options.maxValue];
                } else {
                    _options.value = _options.maxValue;
                }
            }
            console.log("index_start: " + index_start);
            console.log("minValue: " + _options.minValue);
            console.log("maxValue: " + _options.maxValue);

            $("#leaflet-slider").slider({
                range: _options.range,
                value: _options.value,
                values: _options.values,
                min: _options.minValue,
                max: _options.maxValue,
                sameDate: _options.sameDate,
                step: 1,
                create: function (e, ui) {
                    try {
                        console.log("create(): ");
                        var mx = _options.maxValue;
                        var mn = _options.minValue;
                        console.log("Max: " + mx + ", min: " + mn);
                        var $slider = $('#leaflet-slider');
                        var spacing = 100 / (mx - mn);
                        $slider.find('.ui-slider-tick-mark').remove();
                        var labelIndex = 0;
                        for (var i = 0; i < mx - mn; i++) {
                            var tickLabel = _options.labels[labelIndex];
                            console.log("tickLabel: " + tickLabel);
                            labelIndex++;
                            $('<span class="ui-slider-tick-mark">' + tickLabel + '</span>').css('left', (spacing * i) + '%').appendTo($slider);
                        }
                        //get last label from array
                        var tickLabel = _options.labels[labelIndex];
                        console.log("tickLabel: " + tickLabel);
                        labelIndex++;
                        $('<span class="ui-slider-tick-mark">' + tickLabel + '</span>').css('left', (spacing * i) + '%').appendTo($slider);
                    } catch (e) {
                        console.error("error caught setting tick marks: " + e);
                    }
                },
                slide: function (e, ui) {
                    console.log("slide()");
                    console.log("ui.value: " + ui.value);
                    var map = _options.map;
                    var fg = L.featureGroup();
                    if (!!_options.markers[ui.value]) {
                        // If there is no time property, this line has to be removed (or exchanged with a different property)
                        if (_options.markers[ui.value].feature !== undefined) {
                            if (_options.markers[ui.value].feature.properties[_options.timeAttribute]) {
                                if (_options.markers[ui.value]) {
                                    var year = _extractTimestamp(_options.markers[ui.value].feature.properties[_options.timeAttribute], _options);
                                    $('#slider-timestamp').html(year);
                                    loadYearData(year);
                                }
                            } else {
                                console.error("Time property " + _options.timeAttribute + " not found in data");
                            }
                        } else {
                            // set by leaflet Vector Layers
                            if (_options.markers [ui.value].options[_options.timeAttribute]) {
                                if (_options.markers[ui.value]) {
                                    var year = _extractTimestamp(_options.markers[ui.value].options[_options.timeAttribute], _options);
                                    $('#slider-timestamp').html(year);
                                    loadYearData(year);
                                }
                            } else {
                                console.error("Time property " + _options.timeAttribute + " not found in data");
                            }
                        }

                        var i;
                        // clear markers
                        for (i = _options.minValue; i <= _options.maxValue; i++) {
                            if (_options.markers[i])
                                map.removeLayer(_options.markers[i]);
                        }
                        if (_options.range) {
                            // jquery ui using range
                            for (i = ui.values[0]; i <= ui.values[1]; i++) {
                                if (_options.markers[i]) {
                                    map.addLayer(_options.markers[i]);
                                    fg.addLayer(_options.markers[i]);
                                }
                            }
                        } else if (_options.follow) {
                            for (i = ui.value - _options.follow + 1; i <= ui.value; i++) {
                                if (_options.markers[i]) {
                                    map.addLayer(_options.markers[i]);
                                    fg.addLayer(_options.markers[i]);
                                }
                            }
                        } else if (_options.sameDate) {
                            var currentTime;
                            if (_options.markers[ui.value].feature !== undefined) {
                                currentTime = _options.markers[ui.value].feature.properties.time;
                            } else {
                                currentTime = _options.markers[ui.value].options.time;
                            }
                            for (i = _options.minValue; i <= _options.maxValue; i++) {
                                if (_options.markers[i].options.time === currentTime) {
                                    map.addLayer(_options.markers[i]);
                                }
                            }
                        } else {
                            for (i = _options.minValue; i <= ui.value; i++) {
                                if (_options.markers[i]) {
                                    map.addLayer(_options.markers[i]);
                                    fg.addLayer(_options.markers[i]);
                                }
                            }
                        }
                    }
                    ;
                    if (_options.rezoom) {
                        map.fitBounds(fg.getBounds(), {
                            maxZoom: _options.rezoom
                        });
                    }
                }
            });
//             for (i = _options.minValue; i <= index_start; i++) {
//                console.log("adding layer: " + _options.markers[i]);
//                _options.map.addLayer(_options.markers[i]);
//            }
            _options.map.addLayer(_options.markers[index_start]);
            if (!_options.range && _options.alwaysShowDate) {
                console.log("setting year in label");
                var year;
                try {
                    console.log("index_start: " + index_start);
                    console.log("_options.markers[index_start]: " + _options.markers[index_start]);
                    year = _extractTimestamp(_options.markers[index_start].feature.properties[_options.timeAttribute], _options);
                } catch (e) {
                    console.error("exception caught setting slider-timestamp: " + e);
                    year = "2017";
                }
                $('#slider-timestamp').html(year);
            }

        } catch (e) {
            console.error("Error caught starting slider: " + e);
        }
    }
});
L.control.sliderControl = function (options) {
    return new L.Control.SliderControl(options);
};

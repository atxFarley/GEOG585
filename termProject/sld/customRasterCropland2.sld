<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
    xmlns="http://www.opengis.net/sld" 
    xmlns:ogc="http://www.opengis.net/ogc" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>Many color gradient</Name>
    <UserStyle>
      <Title>SLD Cook Book: Many color gradient</Title>
      <FeatureTypeStyle>
        <Rule>
          <RasterSymbolizer>
		  <Opacity>0.3</Opacity>
            <ColorMap>
        <ColorMapEntry label="Corn" quantity="1"  color="#ffd300"/>
        <ColorMapEntry label="Cotton" quantity="2"  color="#ff2626"/>
        <ColorMapEntry label="Rice" quantity="3"  color="#00a8e5"/>
        <ColorMapEntry label="Sorghum" quantity="4"  color="#ff9e0c"/>
        <ColorMapEntry label="Soybeans" quantity="5"  color="#267000"/>
        <ColorMapEntry label="Sunflower" quantity="6"  color="#ffff00"/>
        <ColorMapEntry label="Peanuts" quantity="10"  color="#70a500"/>
        <ColorMapEntry label="Tobacco" quantity="11"  color="#00af4c"/>
        <ColorMapEntry label="Sweet Corn" quantity="12"  color="#dda50c"/>
        <ColorMapEntry label="Pop or Orn Corn" quantity="13"  color="#dda50c"/>
        <ColorMapEntry label="Mint" quantity="14"  color="#7fd3ff"/>
        <ColorMapEntry label="Barley" quantity="21"  color="#e2007c"/>
        <ColorMapEntry label="Durum Wheat" quantity="22"  color="#896354"/>
        <ColorMapEntry label="Spring Wheat" quantity="23"  color="#d8b56b"/>
        <ColorMapEntry label="Winter Wheat" quantity="24"  color="#a57000"/>
        <ColorMapEntry label="Other Small Grains" quantity="25"  color="#d69ebc"/>
        <ColorMapEntry label="Dbl Crop WinWht/Soybeans" quantity="26"  color="#707000"/>
        <ColorMapEntry label="Rye" quantity="27"  color="#ad007c"/>
        <ColorMapEntry label="Oats" quantity="28"  color="#a05989"/>
        <ColorMapEntry label="Millet" quantity="29"  color="#700049"/>
        <ColorMapEntry label="Speltz" quantity="30"  color="#d69ebc"/>
        <ColorMapEntry label="Canola" quantity="31"  color="#d1ff00"/>
        <ColorMapEntry label="Flaxseed" quantity="32"  color="#7f99ff"/>
        <ColorMapEntry label="Safflower" quantity="33"  color="#d6d600"/>
        <ColorMapEntry label="Rape Seed" quantity="34"  color="#d1ff00"/>
        <ColorMapEntry label="Mustard" quantity="35"  color="#00af4c"/>
        <ColorMapEntry label="Alfalfa" quantity="36"  color="#ffa5e2"/>
        <ColorMapEntry label="Other Hay/Non Alfalfa" quantity="37"  color="#a5f28c"/>
        <ColorMapEntry label="Camelina" quantity="38"  color="#00af4c"/>
        <ColorMapEntry label="Buckwheat" quantity="39"  color="#d69ebc"/>
    
        <ColorMapEntry label="Sugarbeets" quantity="41"  color="#a800e5"/>
        <ColorMapEntry label="Dry Beans" quantity="42"  color="#a50000"/>
        <ColorMapEntry label="Potatoes" quantity="43"  color="#702600"/>
        <ColorMapEntry label="Other Crops" quantity="44"  color="#00af4c"/>
        <ColorMapEntry label="Sugarcane" quantity="45"  color="#b27fff"/>
        <ColorMapEntry label="Sweet Potatoes" quantity="46"  color="#702600"/>
        <ColorMapEntry label="Misc Vegs &amp; Fruits" quantity="47"  color="#ff6666"/>
        <ColorMapEntry label="Watermelons" quantity="48"  color="#ff6666"/>
        <ColorMapEntry label="Onions" quantity="49"  color="#ffcc66"/>
        <ColorMapEntry label="Cucumbers" quantity="50"  color="#ff6666"/>
        <ColorMapEntry label="Chick Peas" quantity="51"  color="#00af4c"/>
        <ColorMapEntry label="Lentils" quantity="52"  color="#00ddaf"/>
        <ColorMapEntry label="Peas" quantity="53"  color="#54ff00"/>
        <ColorMapEntry label="Tomatoes" quantity="54"  color="#f2a377"/>
        <ColorMapEntry label="Caneberries" quantity="55"  color="#ff6666"/>
        <ColorMapEntry label="Hops" quantity="56"  color="#00af4c"/>
        <ColorMapEntry label="Herbs" quantity="57"  color="#7fd3ff"/>
        <ColorMapEntry label="Clover/Wildflowers" quantity="58"  color="#e8bfff"/>
        <ColorMapEntry label="Sod/Grass Seed" quantity="59"  color="#afffdd"/>
        <ColorMapEntry label="Switchgrass" quantity="60"  color="#00af4c"/>
        <ColorMapEntry label="Fallow/Idle Cropland" quantity="61"  color="#bfbf77"/>
   
        <ColorMapEntry label="Forest" quantity="63"  color="#93cc93"/>
        <ColorMapEntry label="Shrubland" quantity="64"  color="#c6d69e"/>
        <ColorMapEntry label="Barren" quantity="65"  color="#ccbfa3"/>
        <ColorMapEntry label="Cherries" quantity="66"  color="#ff00ff"/>
        <ColorMapEntry label="Peaches" quantity="67"  color="#ff8eaa"/>
        <ColorMapEntry label="Apples" quantity="68"  color="#ba004f"/>
        <ColorMapEntry label="Grapes" quantity="69"  color="#704489"/>
        <ColorMapEntry label="Christmas Trees" quantity="70"  color="#007777"/>
        <ColorMapEntry label="Other Tree Crops" quantity="71"  color="#b29b70"/>
        <ColorMapEntry label="Citrus" quantity="72"  color="#ffff7f"/>
   
        <ColorMapEntry label="Pecans" quantity="74"  color="#b5705b"/>
        <ColorMapEntry label="Almonds" quantity="75"  color="#00a582"/>
        <ColorMapEntry label="Walnuts" quantity="76"  color="#ead6af"/>
        <ColorMapEntry label="Pears" quantity="77"  color="#b29b70"/>
   
        <ColorMapEntry label="Clouds/No Data" quantity="81"  color="#f2f2f2"/>
        <ColorMapEntry label="Developed" quantity="82"  color="#9b9b9b"/>
        <ColorMapEntry label="Water" quantity="83"  color="#4c70a3"/>

        <ColorMapEntry label="Wetlands" quantity="87"  color="#7fb2b2"/>
        <ColorMapEntry label="Nonag/Undefined" quantity="88"  color="#e8ffbf"/>
      
        <ColorMapEntry label="Aquaculture" quantity="92"  color="#00ffff"/>
   
        <ColorMapEntry label="Open Water" quantity="111"  color="#4c70a3"/>
        <ColorMapEntry label="Perennial Ice/Snow" quantity="112"  color="#d3e2f9"/>

        <ColorMapEntry label="Developed/Open Space" quantity="121"  color="#9b9b9b"/>
        <ColorMapEntry label="Developed/Low Intensity" quantity="122"  color="#9b9b9b"/>
        <ColorMapEntry label="Developed/Med Intensity" quantity="123"  color="#9b9b9b"/>
        <ColorMapEntry label="Developed/High Intensity" quantity="124"  color="#9b9b9b"/>
        
        <ColorMapEntry label="Barren" quantity="131"  color="#ccbfa3"/>

        <ColorMapEntry label="Deciduous Forest" quantity="141"  color="#93cc93"/>
        <ColorMapEntry label="Evergreen Forest" quantity="142"  color="#93cc93"/>
        <ColorMapEntry label="Mixed Forest" quantity="143"  color="#93cc93"/>

        <ColorMapEntry label="Shrubland" quantity="152"  color="#c6d69e"/>

        <ColorMapEntry label="Grass/Pasture" quantity="176"  color="#e8ffbf"/>
       
        <ColorMapEntry label="Woody Wetlands" quantity="190"  color="#7fb2b2"/>
       
        <ColorMapEntry label="Herbaceous Wetlands" quantity="195"  color="#7fb2b2"/>
    
        <ColorMapEntry label="Pistachios" quantity="204"  color="#00ff8c"/>
        <ColorMapEntry label="Triticale" quantity="205"  color="#d69ebc"/>
        <ColorMapEntry label="Carrots" quantity="206"  color="#ff6666"/>
        <ColorMapEntry label="Asparagus" quantity="207"  color="#ff6666"/>
        <ColorMapEntry label="Garlic" quantity="208"  color="#ff6666"/>
        <ColorMapEntry label="Cantaloupes" quantity="209"  color="#ff6666"/>
        <ColorMapEntry label="Prunes" quantity="210"  color="#ff8eaa"/>
        <ColorMapEntry label="Olives" quantity="211"  color="#334933"/>
        <ColorMapEntry label="Oranges" quantity="212"  color="#e57026"/>
        <ColorMapEntry label="Honeydew Melons" quantity="213"  color="#ff6666"/>
        <ColorMapEntry label="Broccoli" quantity="214"  color="#ff6666"/>
    
        <ColorMapEntry label="Peppers" quantity="216"  color="#ff6666"/>
        <ColorMapEntry label="Pomegranates" quantity="217"  color="#b29b70"/>
        <ColorMapEntry label="Nectarines" quantity="218"  color="#ff8eaa"/>
        <ColorMapEntry label="Greens" quantity="219"  color="#ff6666"/>
        <ColorMapEntry label="Plums" quantity="220"  color="#ff8eaa"/>
        <ColorMapEntry label="Strawberries" quantity="221"  color="#ff6666"/>
        <ColorMapEntry label="Squash" quantity="222"  color="#ff6666"/>
        <ColorMapEntry label="Apricots" quantity="223"  color="#ff8eaa"/>
        <ColorMapEntry label="Vetch" quantity="224"  color="#00af4c"/>
        <ColorMapEntry label="Dbl Crop WinWht/Corn" quantity="225"  color="#ffd300"/>
        <ColorMapEntry label="Dbl Crop Oats/Corn" quantity="226"  color="#ffd300"/>
        <ColorMapEntry label="Lettuce" quantity="227"  color="#ff6666"/>

        <ColorMapEntry label="Pumpkins" quantity="229"  color="#ff6666"/>
        <ColorMapEntry label="Dbl Crop Lettuce/Durum Wht" quantity="230"  color="#896354"/>
        <ColorMapEntry label="Dbl Crop Lettuce/Cantaloupe" quantity="231"  color="#ff6666"/>
        <ColorMapEntry label="Dbl Crop Lettuce/Cotton" quantity="232"  color="#ff2626"/>
        <ColorMapEntry label="Dbl Crop Lettuce/Barley" quantity="233"  color="#e2007c"/>
        <ColorMapEntry label="Dbl Crop Durum Wht/Sorghum" quantity="234"  color="#ff9e0c"/>
        <ColorMapEntry label="Dbl Crop Barley/Sorghum" quantity="235"  color="#ff9e0c"/>
        <ColorMapEntry label="Dbl Crop WinWht/Sorghum" quantity="236"  color="#a57000"/>
        <ColorMapEntry label="Dbl Crop Barley/Corn" quantity="237"  color="#ffd300"/>
        <ColorMapEntry label="Dbl Crop WinWht/Cotton" quantity="238"  color="#a57000"/>
        <ColorMapEntry label="Dbl Crop Soybeans/Cotton" quantity="239"  color="#267000"/>
        <ColorMapEntry label="Dbl Crop Soybeans/Oats" quantity="240"  color="#267000"/>
        <ColorMapEntry label="Dbl Crop Corn/Soybeans" quantity="241"  color="#ffd300"/>
        <ColorMapEntry label="Blueberries" quantity="242"  color="#000099"/>
        <ColorMapEntry label="Cabbage" quantity="243"  color="#ff6666"/>
        <ColorMapEntry label="Cauliflower" quantity="244"  color="#ff6666"/>
        <ColorMapEntry label="Celery" quantity="245"  color="#ff6666"/>
        <ColorMapEntry label="Radishes" quantity="246"  color="#ff6666"/>
        <ColorMapEntry label="Turnips" quantity="247"  color="#ff6666"/>
        <ColorMapEntry label="Eggplants" quantity="248"  color="#ff6666"/>
        <ColorMapEntry label="Gourds" quantity="249"  color="#ff6666"/>
        <ColorMapEntry label="Cranberries" quantity="250"  color="#ff6666"/>
 
        <ColorMapEntry label="Dbl Crop Barley/Soybeans" quantity="254"  color="#267000"/>
            </ColorMap>
          </RasterSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>

Category.create( name: "Mag wel" )
Category.create( name: "Af & toe" )
Category.create( name: "Vermijden" )

foodgroups = ["Zuivel",
              "Groenten",
              "Peulvruchten",
              "Fruit en vruchtenproducten",
              "Vlees, vleeswaren, wild, gevogelte",
              "Vis, schaal- en schelpdieren",
              "Granen",
              "Oliën",
              "Alcoholische dranken",
              "Niet-alcoholische dranken",
              "Noten, zaden en pinda's",
              "Kruiden en specerijen",
              "Diversen"]

foodgroups.each do |foodgroup_name|
  foodgroup = Foodgroup.create( name: foodgroup_name )
end

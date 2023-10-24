library(leaflet)

# Create a map
my_map <- leaflet() %>%
  addTiles() %>%
  addMarkers(
    lng = -0.1762778,
    lat = 51.4958056,
    popup = "My favourite musuem ever visited"
  )

# Print the map
my_map

###
taiwan <- readOGR('Data/COUNTY_MOI_1090820.shp', use_iconv=TRUE, encoding='UTF-8')

seafood <- paste(sep = "<br/>",
             "<b><a href='https://www.facebook.com/anieseafood/'>ANIE Seafood</a></b>",
             "My personal recommendation for seafood",
             "ANIE Seafood, Keelung")

leaflet(taiwan) %>%
  addPolygons(weight=0.5) %>%
  addTiles(group="Kort") %>%
  addPopups(121.7365677, 25.1316771, seafood, options = popupOptions(closeButton = FALSE))

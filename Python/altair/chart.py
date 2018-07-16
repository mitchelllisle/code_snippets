height = 400
width = 1000
title = "Number of Spots by Day"

chart = alt.Chart(data, width = width, height = height).mark_bar(size = 6).encode(
    x = "date_appeared:T",
    y = "count",
    color = "media_type",
    tooltip = [alt.Tooltip('date_appeared', type = 'temporal', format = '%Y-%m-%d'), 'media_type', 'count']
).interactive(
    bind_y = False
).configure_mark(
#     stroke = "white"
)

chart

chart.properties(background = '#4A4A4A', width = 1920, height = 1080).save("/Users/mitchelllisle/Desktop/chart.html")

def dark_theme():
    return {'config': {'background': '#4A4A4A',
                      'axis': {'titleColor': '#797979', #axis titles
                             'domainColor': '#797979', #domain color colors the bar on axis labels
                             'gridColor': '#797979', #grid color is most of the grid except the right hand side
                             'labelColor': '#797979', #text labels of the axes
                             'tickColor': '#797979'}}}

alt.themes.register('dark', dark_theme)

alt.themes.enable('dark')

chart

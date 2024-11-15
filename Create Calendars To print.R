source("~/Documents/R projects/R_palettes/Load pretty color palettes.R")
library(calendR)

#calendR() # Defaults to current year
#calendR(year = 2023) # Specify the year you prefer

calendR(start="M", # start mondays
				#orientation = "portrait", # Equivalent to: orientation = "p"
        months.pos = 0,
				special.days = "weekend", # color weekends
				special.col = "#bfe2f2") # specify a color for special days

# set color names:
col1="#689C97"
col2="#072A24"
col3="#9BCFB8"

col1="#632A7E"
col2="#280E3B"
col3="#D3B7D8"

col1="#3A5A69" # lines + title
col2="#3A5A69" # weeknames + month bckgd
col3="#D5C5E9" # special days

col1="#757430" # lines + title
col2=col1 # weeknames + month bckgd
col3="#D0B987" # special days

col1="#261326" # lines + title
col2="#C94F44" # weeknames + month bckgd
col3="#9795A3" # special days

COL1=read_ase(as.character(Files[90])) # change file number to change color palette
col1=COL1[3]
col2=COL1[2]
col3=COL1[1]

# custom start and end dates
calendR(start="M", # start mondays
				start_date = "2023-07-01", # Custom start date
        end_date = "2023-12-31",
				orientation="p",
				months.pos = 0,
				weeknames = c("M", "T", "W", # Change week day names
                      "T", "F", "S", "S"), 
				special.days = "weekend", # color weekends
				# COLORS:
				col = col1,  # Color of the lines of the calendar
				weeknames.col = col2, # Color of the names of the days of the week
				special.col = col3, # Color of the special days
				mbg.col = col2,    # Color of the background of the names of the months
        months.col = "white",   # Color text of the names of the months
				title.col = col1,  # Color of the title
        #TITLES:
				title.size = 30,        # Font size of the title
				#subtitle = "Have a nice day",    # Add a subtitle
				title = "Second semester of 2023") # Title


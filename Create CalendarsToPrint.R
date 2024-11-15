source("~Load pretty color palettes.R") # load the R file that has pretty color palettes and outputs a few palettes characteristics + visuals for daltonians
library(calendR) # load the package

#calendR() # Defaults to current year
#calendR(year = 2023) # Specify the year you prefer

# first graph to get a simple idea
calendR(start="M", # start mondays
	#orientation = "portrait", # Equivalent to: orientation = "p"   
        months.pos = 0, 
	special.days = "weekend", # color weekends
	special.col = "#bfe2f2") # specify a color for special days

# set color names:
COL1=read_ase(as.character(Files[90])) # change file number to change color palette
col1=COL1[3] # lines + title
col2=COL1[2] # weeknames + month bckgd
col3=COL1[1] # special days

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


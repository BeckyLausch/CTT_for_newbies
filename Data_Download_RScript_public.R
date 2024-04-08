#To download data to your computer from CTT
#
#this script is a modified version of https://cellular-tracking-technologies.github.io/index.html
#with additional comments to help those that need more guidance than that document provides.
#
#The get_my_data function can take a long, long time. Therefore it might be
#best to fill in your information below for my_token, and outpath, save this R file
#as something unique, go to the "Background jobs" tab of the RStudio console, and
#run your newly saved file there. This should put less stress on RStudio and show
#you a progress bar or let you know if there's errors. 
#
#
#
#
#you may have to install the celltracktech package first. If so,
#run the next lines or use the Packages menu in RStudio to search for celltracktech
#
#library(devtools) #loads the required package devtools
#install_github('cellular-tracking-technologies/celltracktech') #if this gives you
#an error, there may be additional packages you need to install before you can
#install celltracktech. 
#
#
#
#
my_token= "your_very_long_API_that_you_fill_in_here_within_the_quotation_marks"
#my_token is your API token provided by CTT, viewable on your CTT account on 
#the website. You have to request one from CTT via their website to get one.
#
library(celltracktech) #tells R to load the celltracktech package so it can use
#its functions. If this doesn't work you might need to load or install other packages
#google is your friend. google the error it gives you for help
#
outpath="M:/R_working_directory" #edit the outpath to be somewhere on your 
#computer where you want your data to download. Don't forget slashes are backwards
#
get_my_data(my_token=my_token, outpath) #this function grabs the data from CTT 
#and downloads it where you specified in outpath. You can also edit your 
#project, station, begin time, or end time (see R documentation for the options)
#use Help window in RStudio to view R documentation
#
#
#START TIME
#
#to start at the last date you downloaded data... remove the  # from the start 
#of lines you wish to run.
#
#begin="YYYY-MM-DD" #the date you want to start downloading data from
#
#get_my_data(my_token=my_token, outpath, begin=begin) #the new function 
#incorporating this start time.
#
#Check to see if it is downloaded by going to your outpath location on your computer
#and looking for files. They should be csv.gz files that you cannot open. This is ok.


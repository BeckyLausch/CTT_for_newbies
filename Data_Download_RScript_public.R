#To download data to your computer from CTT
#
#you may have to install the celltracktech package first. If so,
#run the next line or use the Packages menu in RStudio to search for celltracktech
#
#install_github('cellular-tracking-technologies/celltracktech')
#
my_token= "yourverylongAPIthatyoufillinherewithinthequotationmarks"
#my_token is your API token provided by CTT, viewable on your CTT account on 
#the website
#
library(celltracktech) #tells R to load the celltracktech package so it can use
#its functions
#
outpath="M:/R_working_directory" #edit the outpath to be somewhere on your 
#computer where you want your data to download
#
get_my_data(my_token=my_token, outpath) #this function grabs the data from CTT 
#and downloads it where you specified in outpath. You can also edit your 
#project, station, begin time, or end time (see R documentation for the options)
#use Help window in RStudio to view R documentation
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


# This script defines objects in the global environment

# Load libraries
library(shiny)
library(dplyr)
library(ggplot2)
library(shinyWidgets)
library(shinyjs)
library(shinythemes)

################################################################################

# Load data

################################################################################

# Create object for today's date
sys_date <- format(Sys.Date(), format("%d/%m/%Y"))

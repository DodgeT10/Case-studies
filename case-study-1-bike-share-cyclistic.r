{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "58dc724c",
   "metadata": {
    "papermill": {
     "duration": 0.014694,
     "end_time": "2022-10-30T18:30:04.745185",
     "exception": false,
     "start_time": "2022-10-30T18:30:04.730491",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Contents:\n",
    " \n",
    "* [Introduction](#section-one)\n",
    "* [Scenario](#section-two)\n",
    "* [About the company](#section-three)\n",
    "* [Data Analysis Process:](#section-Four)\n",
    "    * [Ask](#section-Four)\n",
    "        - [Guiding Questions](#subsection-one)\n",
    "        - [Tasks](#anything-you-like)\n",
    "        - [Deliverable](#anything-you-like)\n",
    "    * [Prepare](#section-three)\n",
    "        - [Guiding Questions](#subsection-one)\n",
    "        - [Tasks](#anything-you-like)\n",
    "        - [Deliverable](#anything-you-like)\n",
    "    * [Process](#section-three)\n",
    "        - [Tasks](#anything-you-like)\n",
    "        - [Guiding Questions](#subsection-one)\n",
    "        - [Deliverable](#anything-you-like)\n",
    "    * [Analyze](#section-three)\n",
    "        - [Guiding Questions](#subsection-one)\n",
    "        - [Tasks](#anything-you-like)\n",
    "        - [Deliverable](#anything-you-like)\n",
    "    * [Share](#section-three)\n",
    "        - [Guiding Questions](#subsection-one)\n",
    "        - [Tasks](#anything-you-like)\n",
    "        - [Deliverable](#anything-you-like)\n",
    "    * [Act](#section-three)\n",
    "        - [Guiding Questions](#subsection-one)\n",
    "        - [Tasks](#anything-you-like)\n",
    "        - [Deliverable](#anything-you-like)\n",
    "* [Wrap-up](#section-three)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6556d97a",
   "metadata": {
    "papermill": {
     "duration": 0.012516,
     "end_time": "2022-10-30T18:30:04.770331",
     "exception": false,
     "start_time": "2022-10-30T18:30:04.757815",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Introduction:\n",
    "\n",
    "This analysis is based on the Divvy case study 'Sophisticated, Clear, and Polished’: \"Divvy and Data Visualization\" written by Kevin Hartman . The purpose of this script is to consolidate downloaded Divvy data into a single dataframe and then conduct simple analysis to help answer the key question: “In what ways do members and casual riders use Divvy bikes differently?”"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "066bf0b2",
   "metadata": {
    "papermill": {
     "duration": 0.013105,
     "end_time": "2022-10-30T18:30:04.795875",
     "exception": false,
     "start_time": "2022-10-30T18:30:04.782770",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Scenario:\n",
    "\n",
    "You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director\n",
    "of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore,\n",
    "your team wants to understand how casual riders and annual members use Cyclistic bikes differently. \n",
    "\n",
    "From these insights,\n",
    "your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives\n",
    "must approve your recommendations, so they must be backed up with compelling data insights and professional data\n",
    "visualizations."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "05a7063d",
   "metadata": {
    "papermill": {
     "duration": 0.012656,
     "end_time": "2022-10-30T18:30:04.821074",
     "exception": false,
     "start_time": "2022-10-30T18:30:04.808418",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# About the company:\n",
    "\n",
    "In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that\n",
    "are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and\n",
    "returned to any other station in the system anytime.\n",
    "\n",
    "Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments.\n",
    "One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes,\n",
    "and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers\n",
    "who purchase annual memberships are Cyclistic members.\n",
    "Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. \n",
    "\n",
    "Although the\n",
    "pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will\n",
    "be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a\n",
    "very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic\n",
    "program and have chosen Cyclistic for their mobility needs.\n",
    "\n",
    "Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to\n",
    "do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why\n",
    "casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are\n",
    "interested in analyzing the Cyclistic historical bike trip data to identify trends."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "08bab02b",
   "metadata": {
    "papermill": {
     "duration": 0.012877,
     "end_time": "2022-10-30T18:30:04.847416",
     "exception": false,
     "start_time": "2022-10-30T18:30:04.834539",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Main Stakeholders\n",
    "\n",
    "● Cyclistic: A bike-share program that features more than 5,800 bicycles and 600 docking stations. \n",
    "\n",
    "● Lily Moreno: The director of marketing and your manager. \n",
    "\n",
    "● Cyclistic marketing analytics team: A team of data analysts who are responsible\n",
    "for collecting, analyzing, and reporting data that helps guide Cyclistic marketing strategy. \n",
    "\n",
    "● Cyclistic executive team"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "70371692",
   "metadata": {
    "papermill": {
     "duration": 0.01271,
     "end_time": "2022-10-30T18:30:04.873239",
     "exception": false,
     "start_time": "2022-10-30T18:30:04.860529",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Three questions will guide the future marketing program:\n",
    "\n",
    "1. How do annual members and casual riders use Cyclistic bikes differently?\n",
    "\n",
    "2. Why would casual riders buy Cyclistic annual memberships?\n",
    "\n",
    "3. How can Cyclistic use digital media to influence casual riders to become members?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b48f46c0",
   "metadata": {
    "papermill": {
     "duration": 0.012571,
     "end_time": "2022-10-30T18:30:04.898401",
     "exception": false,
     "start_time": "2022-10-30T18:30:04.885830",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Ask:\n",
    "\n",
    "## Guiding Questions:\n",
    "\n",
    "● What is the problem you are trying to solve?\n",
    "\n",
    "    The problem is to solve the marketing strategy to better equate casual riders \n",
    "    to annual riders, by understanding the profile of the annual member, as this\n",
    "    is deemed more profitable for the long term outlook.\n",
    "\n",
    "● How can your insights drive business decisions? \n",
    "    \n",
    "    The insights will allow the marketing team to understand the profile of the\n",
    "    annual member in order to exploit casual membership.\n",
    "\n",
    "## Tasks:\n",
    "\n",
    "1. Identify the business task ☑︎\n",
    "2. Consider key stakeholders  ☑︎\n",
    "\n",
    "## Deliverable:\n",
    "\n",
    "☑︎ The business task is to convert casual members into annual members by understanding their profile and and the marketing behind what drives an annual member. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d4ccb40f",
   "metadata": {
    "papermill": {
     "duration": 0.012684,
     "end_time": "2022-10-30T18:30:04.923509",
     "exception": false,
     "start_time": "2022-10-30T18:30:04.910825",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Prepare:\n",
    "\n",
    "## Guiding Questions:\n",
    "\n",
    "● Where is your data located?\n",
    "\n",
    "    The data is located on kaggle and has been downloaded. The data was directly downloaded from Cyclistic.\n",
    "\n",
    "● How is the data organized?\n",
    "\n",
    "    The different trip data is organized by quarter and the relevant headings differenitaite the data by rider id, bike, start and stop time, station\n",
    "    start and stop, station id and user. \n",
    "\n",
    "● Are there issues with bias or credibility in this data? Does your data ROCCC?\n",
    "\n",
    "    There is no bias as only rider id is used which ilicits no personal or identifiable data for the individual. The data is credible as it is gathered \n",
    "    from the source and made available to current date. The data is ROCCC as it is reliable, original, comprehensive, current and cited.\n",
    "\n",
    "● How are you addressing licensing, privacy, security, and accessibility?\n",
    "\n",
    "    The data has been made available by Motivate International Inc. under this license. This is public data that we can use to explore how different\n",
    "    customer types are using Cyclistic bikes.The data-privacy issues prohibit me from using riders’ personally identifiable information.\n",
    "\n",
    "● How did you verify the data’s integrity?\n",
    "\n",
    "    The data is from the source and is current data. Reviewing the license also clarifies the integrity of the data. Metadata is\n",
    "    also made available. \n",
    "\n",
    "● How does it help you answer your question?\n",
    "\n",
    "    The data will be used to understand the differences or similarities between the casual and annual users from a trip data point of view. This will\n",
    "    answer the questions where marketing could potentially understand and exploit different opportunities.  \n",
    "\n",
    "● Are there any problems with the data?\n",
    "\n",
    "    There seems to be no problems or issues with the data. \n",
    "\n",
    "## Tasks:\n",
    "\n",
    "1. Download data and store it appropriately. ☑︎\n",
    "2. Identify how it’s organized.              ☑︎\n",
    "3. Sort and filter the data.                 ☑︎\n",
    "4. Determine the credibility of the data.    ☑︎\n",
    "\n",
    "## Delverable:\n",
    "\n",
    "   ☑︎ The data is sourced from Cyclistic directly and is made up of the past 12 months data from 2019 Q2 - 2020 Q1. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5a24fc93",
   "metadata": {
    "papermill": {
     "duration": 0.012592,
     "end_time": "2022-10-30T18:30:04.948777",
     "exception": false,
     "start_time": "2022-10-30T18:30:04.936185",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Process:\n",
    "\n",
    "## Guiding Questions:\n",
    "\n",
    "● What tools are you choosing and why?\n",
    "\n",
    "    I am going to use R in order to carry out the collecting, cleaning and analysing of the data.\n",
    "    I am using R for two reasons namely to keep it consistent and streamlined as well as to learn about the language more thoroughly. \n",
    "\n",
    "● Have you ensured your data’s integrity?\n",
    "\n",
    "    The data is directly from the source.\n",
    "\n",
    "● What steps have you taken to ensure that your data is clean?\n",
    "\n",
    "    The cleaning process is documneted below.\n",
    "\n",
    "● How can you verify that your data is clean and ready to analyze?\n",
    "\n",
    "    The data has been cleaned below and checked to see it is clean and ready for analysis.\n",
    "\n",
    "● Have you documented your cleaning process so you can review and share those results?\n",
    "\n",
    "    The cleaning process has been outlined below.\n",
    "\n",
    "\n",
    "## Tasks:\n",
    "\n",
    "1. Check the data for errors.                                ☑︎\n",
    "2. Choose your tools.                                        ☑︎\n",
    "3. Transform the data so you can work with it effectively.   ☑︎\n",
    "4. Document the cleaning process.                            ☑︎\n",
    "\n",
    "## Deliverable:\n",
    "\n",
    "  ☑︎  Documentation of any cleaning or manipulation of data."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "39a52c2d",
   "metadata": {
    "papermill": {
     "duration": 0.012519,
     "end_time": "2022-10-30T18:30:04.974209",
     "exception": false,
     "start_time": "2022-10-30T18:30:04.961690",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Cleaning and processing data:"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d3781b68",
   "metadata": {
    "papermill": {
     "duration": 0.01256,
     "end_time": "2022-10-30T18:30:04.999210",
     "exception": false,
     "start_time": "2022-10-30T18:30:04.986650",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Installing required packages for data cleaning and analysis:**\n",
    "\n",
    "* tidyverse for data import and wrangling\n",
    "\n",
    "* lubridate for data functions\n",
    "\n",
    "* ggplot2 for vizualisations"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "6e387691",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:30:05.030282Z",
     "iopub.status.busy": "2022-10-30T18:30:05.027251Z",
     "iopub.status.idle": "2022-10-30T18:30:06.504557Z",
     "shell.execute_reply": "2022-10-30T18:30:06.502786Z"
    },
    "papermill": {
     "duration": 1.495672,
     "end_time": "2022-10-30T18:30:06.507707",
     "exception": false,
     "start_time": "2022-10-30T18:30:05.012035",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching packages\u001b[22m ─────────────────────────────────────── tidyverse 1.3.2 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2\u001b[39m 3.3.6      \u001b[32m✔\u001b[39m \u001b[34mpurrr  \u001b[39m 0.3.4 \n",
      "\u001b[32m✔\u001b[39m \u001b[34mtibble \u001b[39m 3.1.8      \u001b[32m✔\u001b[39m \u001b[34mdplyr  \u001b[39m 1.0.10\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtidyr  \u001b[39m 1.2.1      \u001b[32m✔\u001b[39m \u001b[34mstringr\u001b[39m 1.4.1 \n",
      "\u001b[32m✔\u001b[39m \u001b[34mreadr  \u001b[39m 2.1.2      \u001b[32m✔\u001b[39m \u001b[34mforcats\u001b[39m 0.5.2 \n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\n",
      "Attaching package: ‘lubridate’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    date, intersect, setdiff, union\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(tidyverse)\n",
    "library(lubridate)\n",
    "library(ggplot2)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d55fb3b0",
   "metadata": {
    "papermill": {
     "duration": 0.013836,
     "end_time": "2022-10-30T18:30:06.534393",
     "exception": false,
     "start_time": "2022-10-30T18:30:06.520557",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**STEP 1: Collect Data**\n",
    "\n",
    "Uploading the data set and merging all the data into one data frame to make it more user friendly for data cleaning and analysis. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "9a1193c4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:30:06.592697Z",
     "iopub.status.busy": "2022-10-30T18:30:06.562299Z",
     "iopub.status.idle": "2022-10-30T18:30:17.486777Z",
     "shell.execute_reply": "2022-10-30T18:30:17.485017Z"
    },
    "papermill": {
     "duration": 10.942038,
     "end_time": "2022-10-30T18:30:17.489801",
     "exception": false,
     "start_time": "2022-10-30T18:30:06.547763",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1mRows: \u001b[22m\u001b[34m1108163\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m12\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (4): 03 - Rental Start Station Name, 02 - Rental End Station Name, User...\n",
      "\u001b[32mdbl\u001b[39m  (5): 01 - Rental Details Rental ID, 01 - Rental Details Bike ID, 03 - R...\n",
      "\u001b[34mdttm\u001b[39m (2): 01 - Rental Details Local Start Time, 01 - Rental Details Local En...\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m1640718\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m12\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (4): from_station_name, to_station_name, usertype, gender\n",
      "\u001b[32mdbl\u001b[39m  (5): trip_id, bikeid, from_station_id, to_station_id, birthyear\n",
      "\u001b[34mdttm\u001b[39m (2): start_time, end_time\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m704054\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m12\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (4): from_station_name, to_station_name, usertype, gender\n",
      "\u001b[32mdbl\u001b[39m  (5): trip_id, bikeid, from_station_id, to_station_id, birthyear\n",
      "\u001b[34mdttm\u001b[39m (2): start_time, end_time\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m426887\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (5): ride_id, rideable_type, start_station_name, end_station_name, memb...\n",
      "\u001b[32mdbl\u001b[39m  (6): start_station_id, end_station_id, start_lat, start_lng, end_lat, e...\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n"
     ]
    }
   ],
   "source": [
    "q2_2019 <- read_csv(\"../input/cyclistic-12-months-dataset/Divvy_Trips_2019_Q2.csv/Divvy_Trips_2019_Q2.csv\")\n",
    "q3_2019 <- read_csv(\"../input/cyclistic-12-months-dataset/Divvy_Trips_2019_Q3/Divvy_Trips_2019_Q3.csv\")\n",
    "q4_2019 <- read_csv(\"../input/cyclistic-12-months-dataset/Divvy_Trips_2019_Q4/Divvy_Trips_2019_Q4.csv\")\n",
    "q1_2020 <- read_csv(\"../input/cyclistic-12-months-dataset/Divvy_Trips_2020_Q1/Divvy_Trips_2020_Q1.csv\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "33cb52bd",
   "metadata": {
    "papermill": {
     "duration": 0.013854,
     "end_time": "2022-10-30T18:30:17.517630",
     "exception": false,
     "start_time": "2022-10-30T18:30:17.503776",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**STEP 2: Cobine data into single file**\n",
    "\n",
    "We will first compare the column names as they need to match each other and then join the files into one."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "e6fb94b9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:30:17.548395Z",
     "iopub.status.busy": "2022-10-30T18:30:17.546894Z",
     "iopub.status.idle": "2022-10-30T18:30:17.582307Z",
     "shell.execute_reply": "2022-10-30T18:30:17.580126Z"
    },
    "papermill": {
     "duration": 0.053925,
     "end_time": "2022-10-30T18:30:17.585264",
     "exception": false,
     "start_time": "2022-10-30T18:30:17.531339",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'trip_id'</li><li>'start_time'</li><li>'end_time'</li><li>'bikeid'</li><li>'tripduration'</li><li>'from_station_id'</li><li>'from_station_name'</li><li>'to_station_id'</li><li>'to_station_name'</li><li>'usertype'</li><li>'gender'</li><li>'birthyear'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'trip\\_id'\n",
       "\\item 'start\\_time'\n",
       "\\item 'end\\_time'\n",
       "\\item 'bikeid'\n",
       "\\item 'tripduration'\n",
       "\\item 'from\\_station\\_id'\n",
       "\\item 'from\\_station\\_name'\n",
       "\\item 'to\\_station\\_id'\n",
       "\\item 'to\\_station\\_name'\n",
       "\\item 'usertype'\n",
       "\\item 'gender'\n",
       "\\item 'birthyear'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'trip_id'\n",
       "2. 'start_time'\n",
       "3. 'end_time'\n",
       "4. 'bikeid'\n",
       "5. 'tripduration'\n",
       "6. 'from_station_id'\n",
       "7. 'from_station_name'\n",
       "8. 'to_station_id'\n",
       "9. 'to_station_name'\n",
       "10. 'usertype'\n",
       "11. 'gender'\n",
       "12. 'birthyear'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"trip_id\"           \"start_time\"        \"end_time\"         \n",
       " [4] \"bikeid\"            \"tripduration\"      \"from_station_id\"  \n",
       " [7] \"from_station_name\" \"to_station_id\"     \"to_station_name\"  \n",
       "[10] \"usertype\"          \"gender\"            \"birthyear\"        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'trip_id'</li><li>'start_time'</li><li>'end_time'</li><li>'bikeid'</li><li>'tripduration'</li><li>'from_station_id'</li><li>'from_station_name'</li><li>'to_station_id'</li><li>'to_station_name'</li><li>'usertype'</li><li>'gender'</li><li>'birthyear'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'trip\\_id'\n",
       "\\item 'start\\_time'\n",
       "\\item 'end\\_time'\n",
       "\\item 'bikeid'\n",
       "\\item 'tripduration'\n",
       "\\item 'from\\_station\\_id'\n",
       "\\item 'from\\_station\\_name'\n",
       "\\item 'to\\_station\\_id'\n",
       "\\item 'to\\_station\\_name'\n",
       "\\item 'usertype'\n",
       "\\item 'gender'\n",
       "\\item 'birthyear'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'trip_id'\n",
       "2. 'start_time'\n",
       "3. 'end_time'\n",
       "4. 'bikeid'\n",
       "5. 'tripduration'\n",
       "6. 'from_station_id'\n",
       "7. 'from_station_name'\n",
       "8. 'to_station_id'\n",
       "9. 'to_station_name'\n",
       "10. 'usertype'\n",
       "11. 'gender'\n",
       "12. 'birthyear'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"trip_id\"           \"start_time\"        \"end_time\"         \n",
       " [4] \"bikeid\"            \"tripduration\"      \"from_station_id\"  \n",
       " [7] \"from_station_name\" \"to_station_id\"     \"to_station_name\"  \n",
       "[10] \"usertype\"          \"gender\"            \"birthyear\"        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'01 - Rental Details Rental ID'</li><li>'01 - Rental Details Local Start Time'</li><li>'01 - Rental Details Local End Time'</li><li>'01 - Rental Details Bike ID'</li><li>'01 - Rental Details Duration In Seconds Uncapped'</li><li>'03 - Rental Start Station ID'</li><li>'03 - Rental Start Station Name'</li><li>'02 - Rental End Station ID'</li><li>'02 - Rental End Station Name'</li><li>'User Type'</li><li>'Member Gender'</li><li>'05 - Member Details Member Birthday Year'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item '01 - Rental Details Rental ID'\n",
       "\\item '01 - Rental Details Local Start Time'\n",
       "\\item '01 - Rental Details Local End Time'\n",
       "\\item '01 - Rental Details Bike ID'\n",
       "\\item '01 - Rental Details Duration In Seconds Uncapped'\n",
       "\\item '03 - Rental Start Station ID'\n",
       "\\item '03 - Rental Start Station Name'\n",
       "\\item '02 - Rental End Station ID'\n",
       "\\item '02 - Rental End Station Name'\n",
       "\\item 'User Type'\n",
       "\\item 'Member Gender'\n",
       "\\item '05 - Member Details Member Birthday Year'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. '01 - Rental Details Rental ID'\n",
       "2. '01 - Rental Details Local Start Time'\n",
       "3. '01 - Rental Details Local End Time'\n",
       "4. '01 - Rental Details Bike ID'\n",
       "5. '01 - Rental Details Duration In Seconds Uncapped'\n",
       "6. '03 - Rental Start Station ID'\n",
       "7. '03 - Rental Start Station Name'\n",
       "8. '02 - Rental End Station ID'\n",
       "9. '02 - Rental End Station Name'\n",
       "10. 'User Type'\n",
       "11. 'Member Gender'\n",
       "12. '05 - Member Details Member Birthday Year'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"01 - Rental Details Rental ID\"                   \n",
       " [2] \"01 - Rental Details Local Start Time\"            \n",
       " [3] \"01 - Rental Details Local End Time\"              \n",
       " [4] \"01 - Rental Details Bike ID\"                     \n",
       " [5] \"01 - Rental Details Duration In Seconds Uncapped\"\n",
       " [6] \"03 - Rental Start Station ID\"                    \n",
       " [7] \"03 - Rental Start Station Name\"                  \n",
       " [8] \"02 - Rental End Station ID\"                      \n",
       " [9] \"02 - Rental End Station Name\"                    \n",
       "[10] \"User Type\"                                       \n",
       "[11] \"Member Gender\"                                   \n",
       "[12] \"05 - Member Details Member Birthday Year\"        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "colnames(q3_2019)\n",
    "colnames(q4_2019)\n",
    "colnames(q2_2019)\n",
    "colnames(q1_2020)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "91c82cad",
   "metadata": {
    "papermill": {
     "duration": 0.014601,
     "end_time": "2022-10-30T18:30:17.614335",
     "exception": false,
     "start_time": "2022-10-30T18:30:17.599734",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "I'm going to rename the columns according to q1_2020 as this will set the benchmark for the rest of the data. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "ffd9f09d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:30:17.647206Z",
     "iopub.status.busy": "2022-10-30T18:30:17.645566Z",
     "iopub.status.idle": "2022-10-30T18:30:18.461828Z",
     "shell.execute_reply": "2022-10-30T18:30:18.460022Z"
    },
    "papermill": {
     "duration": 0.835554,
     "end_time": "2022-10-30T18:30:18.464635",
     "exception": false,
     "start_time": "2022-10-30T18:30:17.629081",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A spec_tbl_df: 704054 × 12</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>ride_id</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>rideable_type</th><th scope=col>tripduration</th><th scope=col>start_station_id</th><th scope=col>start_station_name</th><th scope=col>end_station_id</th><th scope=col>end_station_name</th><th scope=col>member_casual</th><th scope=col>gender</th><th scope=col>birthyear</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>25223640</td><td>2019-10-01 00:01:39</td><td>2019-10-01 00:17:20</td><td>2215</td><td> 940</td><td> 20</td><td><span style=white-space:pre-wrap>Sheffield Ave &amp; Kingsbury St  </span></td><td>309</td><td><span style=white-space:pre-wrap>Leavitt St &amp; Armitage Ave     </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1987</td></tr>\n",
       "\t<tr><td>25223641</td><td>2019-10-01 00:02:16</td><td>2019-10-01 00:06:34</td><td>6328</td><td> 258</td><td> 19</td><td>Throop (Loomis) St &amp; Taylor St</td><td>241</td><td><span style=white-space:pre-wrap>Morgan St &amp; Polk St           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1998</td></tr>\n",
       "\t<tr><td>25223642</td><td>2019-10-01 00:04:32</td><td>2019-10-01 00:18:43</td><td>3003</td><td> 850</td><td> 84</td><td><span style=white-space:pre-wrap>Milwaukee Ave &amp; Grand Ave     </span></td><td>199</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Grand Ave        </span></td><td>Subscriber</td><td>Female</td><td>1991</td></tr>\n",
       "\t<tr><td>25223643</td><td>2019-10-01 00:04:32</td><td>2019-10-01 00:43:43</td><td>3275</td><td>2350</td><td>313</td><td>Lakeview Ave &amp; Fullerton Pkwy </td><td>290</td><td><span style=white-space:pre-wrap>Kedzie Ave &amp; Palmer Ct        </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1990</td></tr>\n",
       "\t<tr><td>25223644</td><td>2019-10-01 00:04:34</td><td>2019-10-01 00:35:42</td><td>5294</td><td>1867</td><td>210</td><td><span style=white-space:pre-wrap>Ashland Ave &amp; Division St     </span></td><td>382</td><td><span style=white-space:pre-wrap>Western Ave &amp; Congress Pkwy   </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1987</td></tr>\n",
       "\t<tr><td>25223645</td><td>2019-10-01 00:04:38</td><td>2019-10-01 00:10:51</td><td>1891</td><td> 373</td><td>156</td><td><span style=white-space:pre-wrap>Clark St &amp; Wellington Ave     </span></td><td>226</td><td><span style=white-space:pre-wrap>Racine Ave &amp; Belmont Ave      </span></td><td>Subscriber</td><td>Female</td><td>1994</td></tr>\n",
       "\t<tr><td>25223646</td><td>2019-10-01 00:04:52</td><td>2019-10-01 00:22:45</td><td>1061</td><td>1072</td><td> 84</td><td><span style=white-space:pre-wrap>Milwaukee Ave &amp; Grand Ave     </span></td><td>142</td><td><span style=white-space:pre-wrap>McClurg Ct &amp; Erie St          </span></td><td>Subscriber</td><td>Female</td><td>1991</td></tr>\n",
       "\t<tr><td>25223647</td><td>2019-10-01 00:04:57</td><td>2019-10-01 00:29:16</td><td>1274</td><td>1458</td><td>156</td><td><span style=white-space:pre-wrap>Clark St &amp; Wellington Ave     </span></td><td>463</td><td><span style=white-space:pre-wrap>Clark St &amp; Berwyn Ave         </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1995</td></tr>\n",
       "\t<tr><td>25223648</td><td>2019-10-01 00:05:20</td><td>2019-10-01 00:29:18</td><td>6011</td><td>1437</td><td>156</td><td><span style=white-space:pre-wrap>Clark St &amp; Wellington Ave     </span></td><td>463</td><td><span style=white-space:pre-wrap>Clark St &amp; Berwyn Ave         </span></td><td>Subscriber</td><td>Female</td><td>1993</td></tr>\n",
       "\t<tr><td>25223649</td><td>2019-10-01 00:05:20</td><td>2019-10-01 02:23:46</td><td>2957</td><td>8306</td><td>336</td><td><span style=white-space:pre-wrap>Cottage Grove Ave &amp; 47th St   </span></td><td>336</td><td><span style=white-space:pre-wrap>Cottage Grove Ave &amp; 47th St   </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25223650</td><td>2019-10-01 00:05:30</td><td>2019-10-01 00:37:36</td><td>2564</td><td>1925</td><td> 77</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St       </span></td><td>506</td><td><span style=white-space:pre-wrap>Spaulding Ave &amp; Armitage Ave  </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1977</td></tr>\n",
       "\t<tr><td>25223651</td><td>2019-10-01 00:07:25</td><td>2019-10-01 00:19:53</td><td>3601</td><td> 748</td><td>198</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St         </span></td><td>331</td><td><span style=white-space:pre-wrap>Halsted St &amp; Clybourn Ave     </span></td><td>Subscriber</td><td>Female</td><td>1980</td></tr>\n",
       "\t<tr><td>25223652</td><td>2019-10-01 00:08:40</td><td>2019-10-01 00:26:00</td><td> 711</td><td>1039</td><td> 66</td><td><span style=white-space:pre-wrap>Clinton St &amp; Lake St          </span></td><td> 16</td><td><span style=white-space:pre-wrap>Paulina Ave &amp; North Ave       </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>Male  </span></td><td>1994</td></tr>\n",
       "\t<tr><td>25223653</td><td>2019-10-01 00:08:52</td><td>2019-10-01 00:29:17</td><td>5005</td><td>1224</td><td>240</td><td><span style=white-space:pre-wrap>Sheridan Rd &amp; Irving Park Rd  </span></td><td>230</td><td><span style=white-space:pre-wrap>Lincoln Ave &amp; Roscoe St       </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25223655</td><td>2019-10-01 00:10:03</td><td>2019-10-01 00:15:30</td><td>1730</td><td> 326</td><td> 66</td><td><span style=white-space:pre-wrap>Clinton St &amp; Lake St          </span></td><td> 88</td><td><span style=white-space:pre-wrap>Racine Ave &amp; Randolph St      </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1992</td></tr>\n",
       "\t<tr><td>25223656</td><td>2019-10-01 00:10:46</td><td>2019-10-01 00:16:04</td><td>4595</td><td> 318</td><td>373</td><td><span style=white-space:pre-wrap>Kedzie Ave &amp; Chicago Ave      </span></td><td>377</td><td><span style=white-space:pre-wrap>Kedzie Ave &amp; Lake St          </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25223657</td><td>2019-10-01 00:12:04</td><td>2019-10-01 01:13:36</td><td>2958</td><td>3692</td><td> 74</td><td><span style=white-space:pre-wrap>Kingsbury St &amp; Erie St        </span></td><td>402</td><td><span style=white-space:pre-wrap>Shields Ave &amp; 31st St         </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td>Female</td><td>1962</td></tr>\n",
       "\t<tr><td>25223658</td><td>2019-10-01 00:12:47</td><td>2019-10-01 00:17:55</td><td>1489</td><td> 308</td><td>289</td><td><span style=white-space:pre-wrap>Wells St &amp; Concord Ln         </span></td><td>176</td><td><span style=white-space:pre-wrap>Clark St &amp; Elm St             </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1992</td></tr>\n",
       "\t<tr><td>25223659</td><td>2019-10-01 00:13:21</td><td>2019-10-01 00:34:12</td><td>3602</td><td>1251</td><td>106</td><td><span style=white-space:pre-wrap>State St &amp; Pearson St         </span></td><td>334</td><td><span style=white-space:pre-wrap>Lake Shore Dr &amp; Belmont Ave   </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25223660</td><td>2019-10-01 00:15:07</td><td>2019-10-01 00:40:34</td><td>4228</td><td>1527</td><td>133</td><td><span style=white-space:pre-wrap>Kingsbury St &amp; Kinzie St      </span></td><td>673</td><td><span style=white-space:pre-wrap>Lincoln Park Conservatory     </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td>Female</td><td>1995</td></tr>\n",
       "\t<tr><td>25223661</td><td>2019-10-01 00:15:22</td><td>2019-10-01 00:40:42</td><td> 447</td><td>1520</td><td>133</td><td><span style=white-space:pre-wrap>Kingsbury St &amp; Kinzie St      </span></td><td>673</td><td><span style=white-space:pre-wrap>Lincoln Park Conservatory     </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25223662</td><td>2019-10-01 00:16:09</td><td>2019-10-01 00:41:05</td><td>1368</td><td>1496</td><td> 29</td><td><span style=white-space:pre-wrap>Noble St &amp; Milwaukee Ave      </span></td><td>498</td><td><span style=white-space:pre-wrap>California Ave &amp; Fletcher St  </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25223663</td><td>2019-10-01 00:17:09</td><td>2019-10-01 00:22:01</td><td>5232</td><td> 292</td><td> 13</td><td><span style=white-space:pre-wrap>Wilton Ave &amp; Diversey Pkwy    </span></td><td>117</td><td><span style=white-space:pre-wrap>Wilton Ave &amp; Belmont Ave      </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1991</td></tr>\n",
       "\t<tr><td>25223664</td><td>2019-10-01 00:17:09</td><td>2019-10-01 00:29:51</td><td>2188</td><td> 761</td><td>491</td><td><span style=white-space:pre-wrap>Talman Ave &amp; Addison St       </span></td><td>630</td><td><span style=white-space:pre-wrap>Kildare Ave &amp; Montrose Ave    </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>Male  </span></td><td>1990</td></tr>\n",
       "\t<tr><td>25223665</td><td>2019-10-01 00:18:23</td><td>2019-10-01 00:25:17</td><td>6402</td><td> 413</td><td>309</td><td><span style=white-space:pre-wrap>Leavitt St &amp; Armitage Ave     </span></td><td>123</td><td>California Ave &amp; Milwaukee Ave</td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1987</td></tr>\n",
       "\t<tr><td>25223666</td><td>2019-10-01 00:18:32</td><td>2019-10-01 00:45:33</td><td>2388</td><td>1621</td><td>103</td><td><span style=white-space:pre-wrap>Clinton St &amp; Polk St          </span></td><td>103</td><td><span style=white-space:pre-wrap>Clinton St &amp; Polk St          </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25223667</td><td>2019-10-01 00:20:34</td><td>2019-10-01 00:25:03</td><td>5658</td><td> 269</td><td>264</td><td><span style=white-space:pre-wrap>Stetson Ave &amp; South Water St  </span></td><td><span style=white-space:pre-wrap>  7</span></td><td><span style=white-space:pre-wrap>Field Blvd &amp; South Water St   </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1967</td></tr>\n",
       "\t<tr><td>25223668</td><td>2019-10-01 00:21:06</td><td>2019-10-01 00:27:18</td><td>5354</td><td> 371</td><td>169</td><td><span style=white-space:pre-wrap>Canal St &amp; Harrison St        </span></td><td> 66</td><td><span style=white-space:pre-wrap>Clinton St &amp; Lake St          </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1964</td></tr>\n",
       "\t<tr><td>25223669</td><td>2019-10-01 00:21:19</td><td>2019-10-01 00:52:23</td><td>5479</td><td>1863</td><td>323</td><td><span style=white-space:pre-wrap>Sheridan Rd &amp; Lawrence Ave    </span></td><td>465</td><td><span style=white-space:pre-wrap>Marine Dr &amp; Ainslie St        </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25223670</td><td>2019-10-01 00:21:32</td><td>2019-10-01 00:30:22</td><td>6321</td><td> 530</td><td>291</td><td><span style=white-space:pre-wrap>Wells St &amp; Evergreen Ave      </span></td><td>161</td><td><span style=white-space:pre-wrap>Rush St &amp; Superior St         </span></td><td>Subscriber</td><td>Female</td><td>1991</td></tr>\n",
       "\t<tr><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr>\n",
       "\t<tr><td>25962873</td><td>2019-12-31 23:30:31</td><td>2019-12-31 23:34:49</td><td>2382</td><td> 257</td><td>148</td><td><span style=white-space:pre-wrap>State St &amp; 33rd St                 </span></td><td>402</td><td><span style=white-space:pre-wrap>Shields Ave &amp; 31st St             </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1995</td></tr>\n",
       "\t<tr><td>25962874</td><td>2019-12-31 23:31:35</td><td>2019-12-31 23:50:47</td><td>3388</td><td>1152</td><td>174</td><td><span style=white-space:pre-wrap>Canal St &amp; Madison St              </span></td><td> 33</td><td><span style=white-space:pre-wrap>State St &amp; Van Buren St           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1985</td></tr>\n",
       "\t<tr><td>25962875</td><td>2019-12-31 23:31:59</td><td>2019-12-31 23:40:41</td><td>3213</td><td> 522</td><td>277</td><td><span style=white-space:pre-wrap>Ashland Ave &amp; Grand Ave            </span></td><td>130</td><td><span style=white-space:pre-wrap>Damen Ave &amp; Division St           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1984</td></tr>\n",
       "\t<tr><td>25962876</td><td>2019-12-31 23:32:47</td><td>2019-12-31 23:45:47</td><td>4599</td><td> 780</td><td>275</td><td><span style=white-space:pre-wrap>Ashland Ave &amp; 13th St              </span></td><td>205</td><td><span style=white-space:pre-wrap>Paulina St &amp; 18th St              </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1987</td></tr>\n",
       "\t<tr><td>25962877</td><td>2019-12-31 23:35:20</td><td>2019-12-31 23:39:45</td><td>1914</td><td> 265</td><td>417</td><td><span style=white-space:pre-wrap>Cornell Ave &amp; Hyde Park Blvd       </span></td><td>345</td><td><span style=white-space:pre-wrap>Lake Park Ave &amp; 56th St           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1993</td></tr>\n",
       "\t<tr><td>25962878</td><td>2019-12-31 23:35:28</td><td>2019-12-31 23:40:59</td><td>3775</td><td> 330</td><td>160</td><td><span style=white-space:pre-wrap>Campbell Ave &amp; North Ave           </span></td><td>309</td><td><span style=white-space:pre-wrap>Leavitt St &amp; Armitage Ave         </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1991</td></tr>\n",
       "\t<tr><td>25962879</td><td>2019-12-31 23:36:30</td><td>2019-12-31 23:56:19</td><td>4877</td><td>1189</td><td> 90</td><td>Millennium Park                    </td><td> 90</td><td>Millennium Park                   </td><td>Subscriber</td><td>Male  </td><td>1992</td></tr>\n",
       "\t<tr><td>25962880</td><td>2019-12-31 23:40:08</td><td>2019-12-31 23:48:46</td><td>6330</td><td> 517</td><td>241</td><td><span style=white-space:pre-wrap>Morgan St &amp; Polk St                </span></td><td> 15</td><td><span style=white-space:pre-wrap>Racine Ave &amp; 18th St              </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1994</td></tr>\n",
       "\t<tr><td>25962881</td><td>2019-12-31 23:41:31</td><td>2019-12-31 23:50:18</td><td>6025</td><td> 527</td><td>159</td><td><span style=white-space:pre-wrap>Claremont Ave &amp; Hirsch St          </span></td><td> 20</td><td><span style=white-space:pre-wrap>Sheffield Ave &amp; Kingsbury St      </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1989</td></tr>\n",
       "\t<tr><td>25962882</td><td>2019-12-31 23:41:49</td><td>2020-01-01 00:28:39</td><td> 269</td><td>2809</td><td>394</td><td><span style=white-space:pre-wrap>Clark St &amp; 9th St (AMLI)           </span></td><td>394</td><td><span style=white-space:pre-wrap>Clark St &amp; 9th St (AMLI)          </span></td><td>Subscriber</td><td>Female</td><td>1974</td></tr>\n",
       "\t<tr><td>25962885</td><td>2019-12-31 23:42:11</td><td>2020-01-01 00:24:21</td><td> 389</td><td>2530</td><td>145</td><td>Mies van der Rohe Way &amp; Chestnut St</td><td> 26</td><td><span style=white-space:pre-wrap>McClurg Ct &amp; Illinois St          </span></td><td>Subscriber</td><td>Female</td><td>1979</td></tr>\n",
       "\t<tr><td>25962886</td><td>2019-12-31 23:42:41</td><td>2020-01-01 00:39:20</td><td>3701</td><td>3398</td><td>232</td><td><span style=white-space:pre-wrap>Pine Grove Ave &amp; Waveland Ave      </span></td><td>232</td><td><span style=white-space:pre-wrap>Pine Grove Ave &amp; Waveland Ave     </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1977</td></tr>\n",
       "\t<tr><td>25962887</td><td>2019-12-31 23:43:41</td><td>2020-01-01 00:56:43</td><td><span style=white-space:pre-wrap>  73</span></td><td>4381</td><td>289</td><td><span style=white-space:pre-wrap>Wells St &amp; Concord Ln              </span></td><td>289</td><td><span style=white-space:pre-wrap>Wells St &amp; Concord Ln             </span></td><td>Subscriber</td><td>Female</td><td>1996</td></tr>\n",
       "\t<tr><td>25962888</td><td>2019-12-31 23:44:59</td><td>2019-12-31 23:50:34</td><td>6053</td><td> 335</td><td>144</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Webster Ave          </span></td><td>289</td><td><span style=white-space:pre-wrap>Wells St &amp; Concord Ln             </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1989</td></tr>\n",
       "\t<tr><td>25962889</td><td>2019-12-31 23:45:35</td><td>2019-12-31 23:48:17</td><td>2076</td><td> 161</td><td>140</td><td><span style=white-space:pre-wrap>Dearborn Pkwy &amp; Delaware Pl        </span></td><td>161</td><td><span style=white-space:pre-wrap>Rush St &amp; Superior St             </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1994</td></tr>\n",
       "\t<tr><td>25962890</td><td>2019-12-31 23:46:19</td><td>2019-12-31 23:53:51</td><td><span style=white-space:pre-wrap>  41</span></td><td> 451</td><td>641</td><td>Central Park Ave &amp; Bloomingdale Ave</td><td>259</td><td>California Ave &amp; Francis Pl (Temp)</td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1966</td></tr>\n",
       "\t<tr><td>25962891</td><td>2019-12-31 23:49:38</td><td>2020-01-01 00:15:19</td><td>2936</td><td>1540</td><td> 90</td><td><span style=white-space:pre-wrap>Millennium Park                    </span></td><td> 76</td><td><span style=white-space:pre-wrap>Lake Shore Dr &amp; Monroe St         </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25962892</td><td>2019-12-31 23:49:43</td><td>2020-01-01 00:21:51</td><td>1671</td><td>1927</td><td> 90</td><td><span style=white-space:pre-wrap>Millennium Park                    </span></td><td> 76</td><td><span style=white-space:pre-wrap>Lake Shore Dr &amp; Monroe St         </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25962893</td><td>2019-12-31 23:49:51</td><td>2020-01-01 00:22:08</td><td>3925</td><td>1936</td><td> 90</td><td><span style=white-space:pre-wrap>Millennium Park                    </span></td><td> 76</td><td><span style=white-space:pre-wrap>Lake Shore Dr &amp; Monroe St         </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25962894</td><td>2019-12-31 23:49:53</td><td>2020-01-01 00:22:30</td><td>2898</td><td>1956</td><td> 90</td><td><span style=white-space:pre-wrap>Millennium Park                    </span></td><td> 76</td><td><span style=white-space:pre-wrap>Lake Shore Dr &amp; Monroe St         </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25962895</td><td>2019-12-31 23:50:05</td><td>2019-12-31 23:53:33</td><td>1720</td><td> 208</td><td>624</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Van Buren St         </span></td><td> 81</td><td><span style=white-space:pre-wrap>Daley Center Plaza                </span></td><td>Subscriber</td><td>Female</td><td>1990</td></tr>\n",
       "\t<tr><td>25962896</td><td>2019-12-31 23:50:19</td><td>2019-12-31 23:55:37</td><td>4561</td><td> 318</td><td>255</td><td><span style=white-space:pre-wrap>Indiana Ave &amp; Roosevelt Rd         </span></td><td><span style=white-space:pre-wrap>  3</span></td><td><span style=white-space:pre-wrap>Shedd Aquarium                    </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1990</td></tr>\n",
       "\t<tr><td>25962897</td><td>2019-12-31 23:51:19</td><td>2019-12-31 23:55:33</td><td>5654</td><td> 254</td><td>638</td><td><span style=white-space:pre-wrap>Clinton St &amp; Jackson Blvd          </span></td><td>134</td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd          </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1997</td></tr>\n",
       "\t<tr><td>25962898</td><td>2019-12-31 23:54:38</td><td>2020-01-01 00:04:38</td><td> 606</td><td> 599</td><td>455</td><td><span style=white-space:pre-wrap>Maplewood Ave &amp; Peterson Ave       </span></td><td>467</td><td><span style=white-space:pre-wrap>Western Ave &amp; Lunt Ave            </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1986</td></tr>\n",
       "\t<tr><td>25962899</td><td>2019-12-31 23:54:54</td><td>2020-01-01 00:22:02</td><td>5996</td><td>1628</td><td>145</td><td>Mies van der Rohe Way &amp; Chestnut St</td><td> 25</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Pearson St         </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1992</td></tr>\n",
       "\t<tr><td>25962900</td><td>2019-12-31 23:56:13</td><td>2020-01-01 00:15:45</td><td>2196</td><td>1172</td><td>112</td><td><span style=white-space:pre-wrap>Green St &amp; Randolph St             </span></td><td>225</td><td><span style=white-space:pre-wrap>Halsted St &amp; Dickens Ave          </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1981</td></tr>\n",
       "\t<tr><td>25962901</td><td>2019-12-31 23:56:34</td><td>2020-01-01 00:22:08</td><td>4877</td><td>1533</td><td> 90</td><td>Millennium Park                    </td><td> 90</td><td>Millennium Park                   </td><td>Subscriber</td><td>Male  </td><td>1992</td></tr>\n",
       "\t<tr><td>25962902</td><td>2019-12-31 23:57:05</td><td>2020-01-01 00:05:46</td><td> 863</td><td> 520</td><td>623</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 8th St              </span></td><td> 52</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Lake St            </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1967</td></tr>\n",
       "\t<tr><td>25962903</td><td>2019-12-31 23:57:11</td><td>2020-01-01 00:05:45</td><td>2637</td><td> 514</td><td>623</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 8th St              </span></td><td> 52</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Lake St            </span></td><td>Subscriber</td><td>Female</td><td>1970</td></tr>\n",
       "\t<tr><td>25962904</td><td>2019-12-31 23:57:17</td><td>2019-12-31 23:59:18</td><td>5930</td><td> 120</td><td>256</td><td><span style=white-space:pre-wrap>Broadway &amp; Sheridan Rd             </span></td><td>240</td><td><span style=white-space:pre-wrap>Sheridan Rd &amp; Irving Park Rd      </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1982</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A spec\\_tbl\\_df: 704054 × 12\n",
       "\\begin{tabular}{llllllllllll}\n",
       " ride\\_id & started\\_at & ended\\_at & rideable\\_type & tripduration & start\\_station\\_id & start\\_station\\_name & end\\_station\\_id & end\\_station\\_name & member\\_casual & gender & birthyear\\\\\n",
       " <dbl> & <dttm> & <dttm> & <dbl> & <dbl> & <dbl> & <chr> & <dbl> & <chr> & <chr> & <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 25223640 & 2019-10-01 00:01:39 & 2019-10-01 00:17:20 & 2215 &  940 &  20 & Sheffield Ave \\& Kingsbury St   & 309 & Leavitt St \\& Armitage Ave      & Subscriber & Male   & 1987\\\\\n",
       "\t 25223641 & 2019-10-01 00:02:16 & 2019-10-01 00:06:34 & 6328 &  258 &  19 & Throop (Loomis) St \\& Taylor St & 241 & Morgan St \\& Polk St            & Subscriber & Male   & 1998\\\\\n",
       "\t 25223642 & 2019-10-01 00:04:32 & 2019-10-01 00:18:43 & 3003 &  850 &  84 & Milwaukee Ave \\& Grand Ave      & 199 & Wabash Ave \\& Grand Ave         & Subscriber & Female & 1991\\\\\n",
       "\t 25223643 & 2019-10-01 00:04:32 & 2019-10-01 00:43:43 & 3275 & 2350 & 313 & Lakeview Ave \\& Fullerton Pkwy  & 290 & Kedzie Ave \\& Palmer Ct         & Subscriber & Male   & 1990\\\\\n",
       "\t 25223644 & 2019-10-01 00:04:34 & 2019-10-01 00:35:42 & 5294 & 1867 & 210 & Ashland Ave \\& Division St      & 382 & Western Ave \\& Congress Pkwy    & Subscriber & Male   & 1987\\\\\n",
       "\t 25223645 & 2019-10-01 00:04:38 & 2019-10-01 00:10:51 & 1891 &  373 & 156 & Clark St \\& Wellington Ave      & 226 & Racine Ave \\& Belmont Ave       & Subscriber & Female & 1994\\\\\n",
       "\t 25223646 & 2019-10-01 00:04:52 & 2019-10-01 00:22:45 & 1061 & 1072 &  84 & Milwaukee Ave \\& Grand Ave      & 142 & McClurg Ct \\& Erie St           & Subscriber & Female & 1991\\\\\n",
       "\t 25223647 & 2019-10-01 00:04:57 & 2019-10-01 00:29:16 & 1274 & 1458 & 156 & Clark St \\& Wellington Ave      & 463 & Clark St \\& Berwyn Ave          & Subscriber & Male   & 1995\\\\\n",
       "\t 25223648 & 2019-10-01 00:05:20 & 2019-10-01 00:29:18 & 6011 & 1437 & 156 & Clark St \\& Wellington Ave      & 463 & Clark St \\& Berwyn Ave          & Subscriber & Female & 1993\\\\\n",
       "\t 25223649 & 2019-10-01 00:05:20 & 2019-10-01 02:23:46 & 2957 & 8306 & 336 & Cottage Grove Ave \\& 47th St    & 336 & Cottage Grove Ave \\& 47th St    & Customer   & NA     &   NA\\\\\n",
       "\t 25223650 & 2019-10-01 00:05:30 & 2019-10-01 00:37:36 & 2564 & 1925 &  77 & Clinton St \\& Madison St        & 506 & Spaulding Ave \\& Armitage Ave   & Subscriber & Male   & 1977\\\\\n",
       "\t 25223651 & 2019-10-01 00:07:25 & 2019-10-01 00:19:53 & 3601 &  748 & 198 & Green St \\& Madison St          & 331 & Halsted St \\& Clybourn Ave      & Subscriber & Female & 1980\\\\\n",
       "\t 25223652 & 2019-10-01 00:08:40 & 2019-10-01 00:26:00 &  711 & 1039 &  66 & Clinton St \\& Lake St           &  16 & Paulina Ave \\& North Ave        & Customer   & Male   & 1994\\\\\n",
       "\t 25223653 & 2019-10-01 00:08:52 & 2019-10-01 00:29:17 & 5005 & 1224 & 240 & Sheridan Rd \\& Irving Park Rd   & 230 & Lincoln Ave \\& Roscoe St        & Customer   & NA     &   NA\\\\\n",
       "\t 25223655 & 2019-10-01 00:10:03 & 2019-10-01 00:15:30 & 1730 &  326 &  66 & Clinton St \\& Lake St           &  88 & Racine Ave \\& Randolph St       & Subscriber & Male   & 1992\\\\\n",
       "\t 25223656 & 2019-10-01 00:10:46 & 2019-10-01 00:16:04 & 4595 &  318 & 373 & Kedzie Ave \\& Chicago Ave       & 377 & Kedzie Ave \\& Lake St           & Customer   & NA     &   NA\\\\\n",
       "\t 25223657 & 2019-10-01 00:12:04 & 2019-10-01 01:13:36 & 2958 & 3692 &  74 & Kingsbury St \\& Erie St         & 402 & Shields Ave \\& 31st St          & Customer   & Female & 1962\\\\\n",
       "\t 25223658 & 2019-10-01 00:12:47 & 2019-10-01 00:17:55 & 1489 &  308 & 289 & Wells St \\& Concord Ln          & 176 & Clark St \\& Elm St              & Subscriber & Male   & 1992\\\\\n",
       "\t 25223659 & 2019-10-01 00:13:21 & 2019-10-01 00:34:12 & 3602 & 1251 & 106 & State St \\& Pearson St          & 334 & Lake Shore Dr \\& Belmont Ave    & Customer   & NA     &   NA\\\\\n",
       "\t 25223660 & 2019-10-01 00:15:07 & 2019-10-01 00:40:34 & 4228 & 1527 & 133 & Kingsbury St \\& Kinzie St       & 673 & Lincoln Park Conservatory      & Customer   & Female & 1995\\\\\n",
       "\t 25223661 & 2019-10-01 00:15:22 & 2019-10-01 00:40:42 &  447 & 1520 & 133 & Kingsbury St \\& Kinzie St       & 673 & Lincoln Park Conservatory      & Customer   & NA     &   NA\\\\\n",
       "\t 25223662 & 2019-10-01 00:16:09 & 2019-10-01 00:41:05 & 1368 & 1496 &  29 & Noble St \\& Milwaukee Ave       & 498 & California Ave \\& Fletcher St   & Customer   & NA     &   NA\\\\\n",
       "\t 25223663 & 2019-10-01 00:17:09 & 2019-10-01 00:22:01 & 5232 &  292 &  13 & Wilton Ave \\& Diversey Pkwy     & 117 & Wilton Ave \\& Belmont Ave       & Subscriber & Male   & 1991\\\\\n",
       "\t 25223664 & 2019-10-01 00:17:09 & 2019-10-01 00:29:51 & 2188 &  761 & 491 & Talman Ave \\& Addison St        & 630 & Kildare Ave \\& Montrose Ave     & Customer   & Male   & 1990\\\\\n",
       "\t 25223665 & 2019-10-01 00:18:23 & 2019-10-01 00:25:17 & 6402 &  413 & 309 & Leavitt St \\& Armitage Ave      & 123 & California Ave \\& Milwaukee Ave & Subscriber & Male   & 1987\\\\\n",
       "\t 25223666 & 2019-10-01 00:18:32 & 2019-10-01 00:45:33 & 2388 & 1621 & 103 & Clinton St \\& Polk St           & 103 & Clinton St \\& Polk St           & Customer   & NA     &   NA\\\\\n",
       "\t 25223667 & 2019-10-01 00:20:34 & 2019-10-01 00:25:03 & 5658 &  269 & 264 & Stetson Ave \\& South Water St   &   7 & Field Blvd \\& South Water St    & Subscriber & Male   & 1967\\\\\n",
       "\t 25223668 & 2019-10-01 00:21:06 & 2019-10-01 00:27:18 & 5354 &  371 & 169 & Canal St \\& Harrison St         &  66 & Clinton St \\& Lake St           & Subscriber & Male   & 1964\\\\\n",
       "\t 25223669 & 2019-10-01 00:21:19 & 2019-10-01 00:52:23 & 5479 & 1863 & 323 & Sheridan Rd \\& Lawrence Ave     & 465 & Marine Dr \\& Ainslie St         & Customer   & NA     &   NA\\\\\n",
       "\t 25223670 & 2019-10-01 00:21:32 & 2019-10-01 00:30:22 & 6321 &  530 & 291 & Wells St \\& Evergreen Ave       & 161 & Rush St \\& Superior St          & Subscriber & Female & 1991\\\\\n",
       "\t ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮\\\\\n",
       "\t 25962873 & 2019-12-31 23:30:31 & 2019-12-31 23:34:49 & 2382 &  257 & 148 & State St \\& 33rd St                  & 402 & Shields Ave \\& 31st St              & Subscriber & Male   & 1995\\\\\n",
       "\t 25962874 & 2019-12-31 23:31:35 & 2019-12-31 23:50:47 & 3388 & 1152 & 174 & Canal St \\& Madison St               &  33 & State St \\& Van Buren St            & Subscriber & Male   & 1985\\\\\n",
       "\t 25962875 & 2019-12-31 23:31:59 & 2019-12-31 23:40:41 & 3213 &  522 & 277 & Ashland Ave \\& Grand Ave             & 130 & Damen Ave \\& Division St            & Subscriber & Male   & 1984\\\\\n",
       "\t 25962876 & 2019-12-31 23:32:47 & 2019-12-31 23:45:47 & 4599 &  780 & 275 & Ashland Ave \\& 13th St               & 205 & Paulina St \\& 18th St               & Subscriber & Male   & 1987\\\\\n",
       "\t 25962877 & 2019-12-31 23:35:20 & 2019-12-31 23:39:45 & 1914 &  265 & 417 & Cornell Ave \\& Hyde Park Blvd        & 345 & Lake Park Ave \\& 56th St            & Subscriber & Male   & 1993\\\\\n",
       "\t 25962878 & 2019-12-31 23:35:28 & 2019-12-31 23:40:59 & 3775 &  330 & 160 & Campbell Ave \\& North Ave            & 309 & Leavitt St \\& Armitage Ave          & Subscriber & Male   & 1991\\\\\n",
       "\t 25962879 & 2019-12-31 23:36:30 & 2019-12-31 23:56:19 & 4877 & 1189 &  90 & Millennium Park                     &  90 & Millennium Park                    & Subscriber & Male   & 1992\\\\\n",
       "\t 25962880 & 2019-12-31 23:40:08 & 2019-12-31 23:48:46 & 6330 &  517 & 241 & Morgan St \\& Polk St                 &  15 & Racine Ave \\& 18th St               & Subscriber & Male   & 1994\\\\\n",
       "\t 25962881 & 2019-12-31 23:41:31 & 2019-12-31 23:50:18 & 6025 &  527 & 159 & Claremont Ave \\& Hirsch St           &  20 & Sheffield Ave \\& Kingsbury St       & Subscriber & Male   & 1989\\\\\n",
       "\t 25962882 & 2019-12-31 23:41:49 & 2020-01-01 00:28:39 &  269 & 2809 & 394 & Clark St \\& 9th St (AMLI)            & 394 & Clark St \\& 9th St (AMLI)           & Subscriber & Female & 1974\\\\\n",
       "\t 25962885 & 2019-12-31 23:42:11 & 2020-01-01 00:24:21 &  389 & 2530 & 145 & Mies van der Rohe Way \\& Chestnut St &  26 & McClurg Ct \\& Illinois St           & Subscriber & Female & 1979\\\\\n",
       "\t 25962886 & 2019-12-31 23:42:41 & 2020-01-01 00:39:20 & 3701 & 3398 & 232 & Pine Grove Ave \\& Waveland Ave       & 232 & Pine Grove Ave \\& Waveland Ave      & Subscriber & Male   & 1977\\\\\n",
       "\t 25962887 & 2019-12-31 23:43:41 & 2020-01-01 00:56:43 &   73 & 4381 & 289 & Wells St \\& Concord Ln               & 289 & Wells St \\& Concord Ln              & Subscriber & Female & 1996\\\\\n",
       "\t 25962888 & 2019-12-31 23:44:59 & 2019-12-31 23:50:34 & 6053 &  335 & 144 & Larrabee St \\& Webster Ave           & 289 & Wells St \\& Concord Ln              & Subscriber & Male   & 1989\\\\\n",
       "\t 25962889 & 2019-12-31 23:45:35 & 2019-12-31 23:48:17 & 2076 &  161 & 140 & Dearborn Pkwy \\& Delaware Pl         & 161 & Rush St \\& Superior St              & Subscriber & Male   & 1994\\\\\n",
       "\t 25962890 & 2019-12-31 23:46:19 & 2019-12-31 23:53:51 &   41 &  451 & 641 & Central Park Ave \\& Bloomingdale Ave & 259 & California Ave \\& Francis Pl (Temp) & Subscriber & Male   & 1966\\\\\n",
       "\t 25962891 & 2019-12-31 23:49:38 & 2020-01-01 00:15:19 & 2936 & 1540 &  90 & Millennium Park                     &  76 & Lake Shore Dr \\& Monroe St          & Customer   & NA     &   NA\\\\\n",
       "\t 25962892 & 2019-12-31 23:49:43 & 2020-01-01 00:21:51 & 1671 & 1927 &  90 & Millennium Park                     &  76 & Lake Shore Dr \\& Monroe St          & Customer   & NA     &   NA\\\\\n",
       "\t 25962893 & 2019-12-31 23:49:51 & 2020-01-01 00:22:08 & 3925 & 1936 &  90 & Millennium Park                     &  76 & Lake Shore Dr \\& Monroe St          & Customer   & NA     &   NA\\\\\n",
       "\t 25962894 & 2019-12-31 23:49:53 & 2020-01-01 00:22:30 & 2898 & 1956 &  90 & Millennium Park                     &  76 & Lake Shore Dr \\& Monroe St          & Customer   & NA     &   NA\\\\\n",
       "\t 25962895 & 2019-12-31 23:50:05 & 2019-12-31 23:53:33 & 1720 &  208 & 624 & Dearborn St \\& Van Buren St          &  81 & Daley Center Plaza                 & Subscriber & Female & 1990\\\\\n",
       "\t 25962896 & 2019-12-31 23:50:19 & 2019-12-31 23:55:37 & 4561 &  318 & 255 & Indiana Ave \\& Roosevelt Rd          &   3 & Shedd Aquarium                     & Subscriber & Male   & 1990\\\\\n",
       "\t 25962897 & 2019-12-31 23:51:19 & 2019-12-31 23:55:33 & 5654 &  254 & 638 & Clinton St \\& Jackson Blvd           & 134 & Peoria St \\& Jackson Blvd           & Subscriber & Male   & 1997\\\\\n",
       "\t 25962898 & 2019-12-31 23:54:38 & 2020-01-01 00:04:38 &  606 &  599 & 455 & Maplewood Ave \\& Peterson Ave        & 467 & Western Ave \\& Lunt Ave             & Subscriber & Male   & 1986\\\\\n",
       "\t 25962899 & 2019-12-31 23:54:54 & 2020-01-01 00:22:02 & 5996 & 1628 & 145 & Mies van der Rohe Way \\& Chestnut St &  25 & Michigan Ave \\& Pearson St          & Subscriber & Male   & 1992\\\\\n",
       "\t 25962900 & 2019-12-31 23:56:13 & 2020-01-01 00:15:45 & 2196 & 1172 & 112 & Green St \\& Randolph St              & 225 & Halsted St \\& Dickens Ave           & Subscriber & Male   & 1981\\\\\n",
       "\t 25962901 & 2019-12-31 23:56:34 & 2020-01-01 00:22:08 & 4877 & 1533 &  90 & Millennium Park                     &  90 & Millennium Park                    & Subscriber & Male   & 1992\\\\\n",
       "\t 25962902 & 2019-12-31 23:57:05 & 2020-01-01 00:05:46 &  863 &  520 & 623 & Michigan Ave \\& 8th St               &  52 & Michigan Ave \\& Lake St             & Subscriber & Male   & 1967\\\\\n",
       "\t 25962903 & 2019-12-31 23:57:11 & 2020-01-01 00:05:45 & 2637 &  514 & 623 & Michigan Ave \\& 8th St               &  52 & Michigan Ave \\& Lake St             & Subscriber & Female & 1970\\\\\n",
       "\t 25962904 & 2019-12-31 23:57:17 & 2019-12-31 23:59:18 & 5930 &  120 & 256 & Broadway \\& Sheridan Rd              & 240 & Sheridan Rd \\& Irving Park Rd       & Subscriber & Male   & 1982\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A spec_tbl_df: 704054 × 12\n",
       "\n",
       "| ride_id &lt;dbl&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | rideable_type &lt;dbl&gt; | tripduration &lt;dbl&gt; | start_station_id &lt;dbl&gt; | start_station_name &lt;chr&gt; | end_station_id &lt;dbl&gt; | end_station_name &lt;chr&gt; | member_casual &lt;chr&gt; | gender &lt;chr&gt; | birthyear &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 25223640 | 2019-10-01 00:01:39 | 2019-10-01 00:17:20 | 2215 |  940 |  20 | Sheffield Ave &amp; Kingsbury St   | 309 | Leavitt St &amp; Armitage Ave      | Subscriber | Male   | 1987 |\n",
       "| 25223641 | 2019-10-01 00:02:16 | 2019-10-01 00:06:34 | 6328 |  258 |  19 | Throop (Loomis) St &amp; Taylor St | 241 | Morgan St &amp; Polk St            | Subscriber | Male   | 1998 |\n",
       "| 25223642 | 2019-10-01 00:04:32 | 2019-10-01 00:18:43 | 3003 |  850 |  84 | Milwaukee Ave &amp; Grand Ave      | 199 | Wabash Ave &amp; Grand Ave         | Subscriber | Female | 1991 |\n",
       "| 25223643 | 2019-10-01 00:04:32 | 2019-10-01 00:43:43 | 3275 | 2350 | 313 | Lakeview Ave &amp; Fullerton Pkwy  | 290 | Kedzie Ave &amp; Palmer Ct         | Subscriber | Male   | 1990 |\n",
       "| 25223644 | 2019-10-01 00:04:34 | 2019-10-01 00:35:42 | 5294 | 1867 | 210 | Ashland Ave &amp; Division St      | 382 | Western Ave &amp; Congress Pkwy    | Subscriber | Male   | 1987 |\n",
       "| 25223645 | 2019-10-01 00:04:38 | 2019-10-01 00:10:51 | 1891 |  373 | 156 | Clark St &amp; Wellington Ave      | 226 | Racine Ave &amp; Belmont Ave       | Subscriber | Female | 1994 |\n",
       "| 25223646 | 2019-10-01 00:04:52 | 2019-10-01 00:22:45 | 1061 | 1072 |  84 | Milwaukee Ave &amp; Grand Ave      | 142 | McClurg Ct &amp; Erie St           | Subscriber | Female | 1991 |\n",
       "| 25223647 | 2019-10-01 00:04:57 | 2019-10-01 00:29:16 | 1274 | 1458 | 156 | Clark St &amp; Wellington Ave      | 463 | Clark St &amp; Berwyn Ave          | Subscriber | Male   | 1995 |\n",
       "| 25223648 | 2019-10-01 00:05:20 | 2019-10-01 00:29:18 | 6011 | 1437 | 156 | Clark St &amp; Wellington Ave      | 463 | Clark St &amp; Berwyn Ave          | Subscriber | Female | 1993 |\n",
       "| 25223649 | 2019-10-01 00:05:20 | 2019-10-01 02:23:46 | 2957 | 8306 | 336 | Cottage Grove Ave &amp; 47th St    | 336 | Cottage Grove Ave &amp; 47th St    | Customer   | NA     |   NA |\n",
       "| 25223650 | 2019-10-01 00:05:30 | 2019-10-01 00:37:36 | 2564 | 1925 |  77 | Clinton St &amp; Madison St        | 506 | Spaulding Ave &amp; Armitage Ave   | Subscriber | Male   | 1977 |\n",
       "| 25223651 | 2019-10-01 00:07:25 | 2019-10-01 00:19:53 | 3601 |  748 | 198 | Green St &amp; Madison St          | 331 | Halsted St &amp; Clybourn Ave      | Subscriber | Female | 1980 |\n",
       "| 25223652 | 2019-10-01 00:08:40 | 2019-10-01 00:26:00 |  711 | 1039 |  66 | Clinton St &amp; Lake St           |  16 | Paulina Ave &amp; North Ave        | Customer   | Male   | 1994 |\n",
       "| 25223653 | 2019-10-01 00:08:52 | 2019-10-01 00:29:17 | 5005 | 1224 | 240 | Sheridan Rd &amp; Irving Park Rd   | 230 | Lincoln Ave &amp; Roscoe St        | Customer   | NA     |   NA |\n",
       "| 25223655 | 2019-10-01 00:10:03 | 2019-10-01 00:15:30 | 1730 |  326 |  66 | Clinton St &amp; Lake St           |  88 | Racine Ave &amp; Randolph St       | Subscriber | Male   | 1992 |\n",
       "| 25223656 | 2019-10-01 00:10:46 | 2019-10-01 00:16:04 | 4595 |  318 | 373 | Kedzie Ave &amp; Chicago Ave       | 377 | Kedzie Ave &amp; Lake St           | Customer   | NA     |   NA |\n",
       "| 25223657 | 2019-10-01 00:12:04 | 2019-10-01 01:13:36 | 2958 | 3692 |  74 | Kingsbury St &amp; Erie St         | 402 | Shields Ave &amp; 31st St          | Customer   | Female | 1962 |\n",
       "| 25223658 | 2019-10-01 00:12:47 | 2019-10-01 00:17:55 | 1489 |  308 | 289 | Wells St &amp; Concord Ln          | 176 | Clark St &amp; Elm St              | Subscriber | Male   | 1992 |\n",
       "| 25223659 | 2019-10-01 00:13:21 | 2019-10-01 00:34:12 | 3602 | 1251 | 106 | State St &amp; Pearson St          | 334 | Lake Shore Dr &amp; Belmont Ave    | Customer   | NA     |   NA |\n",
       "| 25223660 | 2019-10-01 00:15:07 | 2019-10-01 00:40:34 | 4228 | 1527 | 133 | Kingsbury St &amp; Kinzie St       | 673 | Lincoln Park Conservatory      | Customer   | Female | 1995 |\n",
       "| 25223661 | 2019-10-01 00:15:22 | 2019-10-01 00:40:42 |  447 | 1520 | 133 | Kingsbury St &amp; Kinzie St       | 673 | Lincoln Park Conservatory      | Customer   | NA     |   NA |\n",
       "| 25223662 | 2019-10-01 00:16:09 | 2019-10-01 00:41:05 | 1368 | 1496 |  29 | Noble St &amp; Milwaukee Ave       | 498 | California Ave &amp; Fletcher St   | Customer   | NA     |   NA |\n",
       "| 25223663 | 2019-10-01 00:17:09 | 2019-10-01 00:22:01 | 5232 |  292 |  13 | Wilton Ave &amp; Diversey Pkwy     | 117 | Wilton Ave &amp; Belmont Ave       | Subscriber | Male   | 1991 |\n",
       "| 25223664 | 2019-10-01 00:17:09 | 2019-10-01 00:29:51 | 2188 |  761 | 491 | Talman Ave &amp; Addison St        | 630 | Kildare Ave &amp; Montrose Ave     | Customer   | Male   | 1990 |\n",
       "| 25223665 | 2019-10-01 00:18:23 | 2019-10-01 00:25:17 | 6402 |  413 | 309 | Leavitt St &amp; Armitage Ave      | 123 | California Ave &amp; Milwaukee Ave | Subscriber | Male   | 1987 |\n",
       "| 25223666 | 2019-10-01 00:18:32 | 2019-10-01 00:45:33 | 2388 | 1621 | 103 | Clinton St &amp; Polk St           | 103 | Clinton St &amp; Polk St           | Customer   | NA     |   NA |\n",
       "| 25223667 | 2019-10-01 00:20:34 | 2019-10-01 00:25:03 | 5658 |  269 | 264 | Stetson Ave &amp; South Water St   |   7 | Field Blvd &amp; South Water St    | Subscriber | Male   | 1967 |\n",
       "| 25223668 | 2019-10-01 00:21:06 | 2019-10-01 00:27:18 | 5354 |  371 | 169 | Canal St &amp; Harrison St         |  66 | Clinton St &amp; Lake St           | Subscriber | Male   | 1964 |\n",
       "| 25223669 | 2019-10-01 00:21:19 | 2019-10-01 00:52:23 | 5479 | 1863 | 323 | Sheridan Rd &amp; Lawrence Ave     | 465 | Marine Dr &amp; Ainslie St         | Customer   | NA     |   NA |\n",
       "| 25223670 | 2019-10-01 00:21:32 | 2019-10-01 00:30:22 | 6321 |  530 | 291 | Wells St &amp; Evergreen Ave       | 161 | Rush St &amp; Superior St          | Subscriber | Female | 1991 |\n",
       "| ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ |\n",
       "| 25962873 | 2019-12-31 23:30:31 | 2019-12-31 23:34:49 | 2382 |  257 | 148 | State St &amp; 33rd St                  | 402 | Shields Ave &amp; 31st St              | Subscriber | Male   | 1995 |\n",
       "| 25962874 | 2019-12-31 23:31:35 | 2019-12-31 23:50:47 | 3388 | 1152 | 174 | Canal St &amp; Madison St               |  33 | State St &amp; Van Buren St            | Subscriber | Male   | 1985 |\n",
       "| 25962875 | 2019-12-31 23:31:59 | 2019-12-31 23:40:41 | 3213 |  522 | 277 | Ashland Ave &amp; Grand Ave             | 130 | Damen Ave &amp; Division St            | Subscriber | Male   | 1984 |\n",
       "| 25962876 | 2019-12-31 23:32:47 | 2019-12-31 23:45:47 | 4599 |  780 | 275 | Ashland Ave &amp; 13th St               | 205 | Paulina St &amp; 18th St               | Subscriber | Male   | 1987 |\n",
       "| 25962877 | 2019-12-31 23:35:20 | 2019-12-31 23:39:45 | 1914 |  265 | 417 | Cornell Ave &amp; Hyde Park Blvd        | 345 | Lake Park Ave &amp; 56th St            | Subscriber | Male   | 1993 |\n",
       "| 25962878 | 2019-12-31 23:35:28 | 2019-12-31 23:40:59 | 3775 |  330 | 160 | Campbell Ave &amp; North Ave            | 309 | Leavitt St &amp; Armitage Ave          | Subscriber | Male   | 1991 |\n",
       "| 25962879 | 2019-12-31 23:36:30 | 2019-12-31 23:56:19 | 4877 | 1189 |  90 | Millennium Park                     |  90 | Millennium Park                    | Subscriber | Male   | 1992 |\n",
       "| 25962880 | 2019-12-31 23:40:08 | 2019-12-31 23:48:46 | 6330 |  517 | 241 | Morgan St &amp; Polk St                 |  15 | Racine Ave &amp; 18th St               | Subscriber | Male   | 1994 |\n",
       "| 25962881 | 2019-12-31 23:41:31 | 2019-12-31 23:50:18 | 6025 |  527 | 159 | Claremont Ave &amp; Hirsch St           |  20 | Sheffield Ave &amp; Kingsbury St       | Subscriber | Male   | 1989 |\n",
       "| 25962882 | 2019-12-31 23:41:49 | 2020-01-01 00:28:39 |  269 | 2809 | 394 | Clark St &amp; 9th St (AMLI)            | 394 | Clark St &amp; 9th St (AMLI)           | Subscriber | Female | 1974 |\n",
       "| 25962885 | 2019-12-31 23:42:11 | 2020-01-01 00:24:21 |  389 | 2530 | 145 | Mies van der Rohe Way &amp; Chestnut St |  26 | McClurg Ct &amp; Illinois St           | Subscriber | Female | 1979 |\n",
       "| 25962886 | 2019-12-31 23:42:41 | 2020-01-01 00:39:20 | 3701 | 3398 | 232 | Pine Grove Ave &amp; Waveland Ave       | 232 | Pine Grove Ave &amp; Waveland Ave      | Subscriber | Male   | 1977 |\n",
       "| 25962887 | 2019-12-31 23:43:41 | 2020-01-01 00:56:43 |   73 | 4381 | 289 | Wells St &amp; Concord Ln               | 289 | Wells St &amp; Concord Ln              | Subscriber | Female | 1996 |\n",
       "| 25962888 | 2019-12-31 23:44:59 | 2019-12-31 23:50:34 | 6053 |  335 | 144 | Larrabee St &amp; Webster Ave           | 289 | Wells St &amp; Concord Ln              | Subscriber | Male   | 1989 |\n",
       "| 25962889 | 2019-12-31 23:45:35 | 2019-12-31 23:48:17 | 2076 |  161 | 140 | Dearborn Pkwy &amp; Delaware Pl         | 161 | Rush St &amp; Superior St              | Subscriber | Male   | 1994 |\n",
       "| 25962890 | 2019-12-31 23:46:19 | 2019-12-31 23:53:51 |   41 |  451 | 641 | Central Park Ave &amp; Bloomingdale Ave | 259 | California Ave &amp; Francis Pl (Temp) | Subscriber | Male   | 1966 |\n",
       "| 25962891 | 2019-12-31 23:49:38 | 2020-01-01 00:15:19 | 2936 | 1540 |  90 | Millennium Park                     |  76 | Lake Shore Dr &amp; Monroe St          | Customer   | NA     |   NA |\n",
       "| 25962892 | 2019-12-31 23:49:43 | 2020-01-01 00:21:51 | 1671 | 1927 |  90 | Millennium Park                     |  76 | Lake Shore Dr &amp; Monroe St          | Customer   | NA     |   NA |\n",
       "| 25962893 | 2019-12-31 23:49:51 | 2020-01-01 00:22:08 | 3925 | 1936 |  90 | Millennium Park                     |  76 | Lake Shore Dr &amp; Monroe St          | Customer   | NA     |   NA |\n",
       "| 25962894 | 2019-12-31 23:49:53 | 2020-01-01 00:22:30 | 2898 | 1956 |  90 | Millennium Park                     |  76 | Lake Shore Dr &amp; Monroe St          | Customer   | NA     |   NA |\n",
       "| 25962895 | 2019-12-31 23:50:05 | 2019-12-31 23:53:33 | 1720 |  208 | 624 | Dearborn St &amp; Van Buren St          |  81 | Daley Center Plaza                 | Subscriber | Female | 1990 |\n",
       "| 25962896 | 2019-12-31 23:50:19 | 2019-12-31 23:55:37 | 4561 |  318 | 255 | Indiana Ave &amp; Roosevelt Rd          |   3 | Shedd Aquarium                     | Subscriber | Male   | 1990 |\n",
       "| 25962897 | 2019-12-31 23:51:19 | 2019-12-31 23:55:33 | 5654 |  254 | 638 | Clinton St &amp; Jackson Blvd           | 134 | Peoria St &amp; Jackson Blvd           | Subscriber | Male   | 1997 |\n",
       "| 25962898 | 2019-12-31 23:54:38 | 2020-01-01 00:04:38 |  606 |  599 | 455 | Maplewood Ave &amp; Peterson Ave        | 467 | Western Ave &amp; Lunt Ave             | Subscriber | Male   | 1986 |\n",
       "| 25962899 | 2019-12-31 23:54:54 | 2020-01-01 00:22:02 | 5996 | 1628 | 145 | Mies van der Rohe Way &amp; Chestnut St |  25 | Michigan Ave &amp; Pearson St          | Subscriber | Male   | 1992 |\n",
       "| 25962900 | 2019-12-31 23:56:13 | 2020-01-01 00:15:45 | 2196 | 1172 | 112 | Green St &amp; Randolph St              | 225 | Halsted St &amp; Dickens Ave           | Subscriber | Male   | 1981 |\n",
       "| 25962901 | 2019-12-31 23:56:34 | 2020-01-01 00:22:08 | 4877 | 1533 |  90 | Millennium Park                     |  90 | Millennium Park                    | Subscriber | Male   | 1992 |\n",
       "| 25962902 | 2019-12-31 23:57:05 | 2020-01-01 00:05:46 |  863 |  520 | 623 | Michigan Ave &amp; 8th St               |  52 | Michigan Ave &amp; Lake St             | Subscriber | Male   | 1967 |\n",
       "| 25962903 | 2019-12-31 23:57:11 | 2020-01-01 00:05:45 | 2637 |  514 | 623 | Michigan Ave &amp; 8th St               |  52 | Michigan Ave &amp; Lake St             | Subscriber | Female | 1970 |\n",
       "| 25962904 | 2019-12-31 23:57:17 | 2019-12-31 23:59:18 | 5930 |  120 | 256 | Broadway &amp; Sheridan Rd              | 240 | Sheridan Rd &amp; Irving Park Rd       | Subscriber | Male   | 1982 |\n",
       "\n"
      ],
      "text/plain": [
       "       ride_id  started_at          ended_at            rideable_type\n",
       "1      25223640 2019-10-01 00:01:39 2019-10-01 00:17:20 2215         \n",
       "2      25223641 2019-10-01 00:02:16 2019-10-01 00:06:34 6328         \n",
       "3      25223642 2019-10-01 00:04:32 2019-10-01 00:18:43 3003         \n",
       "4      25223643 2019-10-01 00:04:32 2019-10-01 00:43:43 3275         \n",
       "5      25223644 2019-10-01 00:04:34 2019-10-01 00:35:42 5294         \n",
       "6      25223645 2019-10-01 00:04:38 2019-10-01 00:10:51 1891         \n",
       "7      25223646 2019-10-01 00:04:52 2019-10-01 00:22:45 1061         \n",
       "8      25223647 2019-10-01 00:04:57 2019-10-01 00:29:16 1274         \n",
       "9      25223648 2019-10-01 00:05:20 2019-10-01 00:29:18 6011         \n",
       "10     25223649 2019-10-01 00:05:20 2019-10-01 02:23:46 2957         \n",
       "11     25223650 2019-10-01 00:05:30 2019-10-01 00:37:36 2564         \n",
       "12     25223651 2019-10-01 00:07:25 2019-10-01 00:19:53 3601         \n",
       "13     25223652 2019-10-01 00:08:40 2019-10-01 00:26:00  711         \n",
       "14     25223653 2019-10-01 00:08:52 2019-10-01 00:29:17 5005         \n",
       "15     25223655 2019-10-01 00:10:03 2019-10-01 00:15:30 1730         \n",
       "16     25223656 2019-10-01 00:10:46 2019-10-01 00:16:04 4595         \n",
       "17     25223657 2019-10-01 00:12:04 2019-10-01 01:13:36 2958         \n",
       "18     25223658 2019-10-01 00:12:47 2019-10-01 00:17:55 1489         \n",
       "19     25223659 2019-10-01 00:13:21 2019-10-01 00:34:12 3602         \n",
       "20     25223660 2019-10-01 00:15:07 2019-10-01 00:40:34 4228         \n",
       "21     25223661 2019-10-01 00:15:22 2019-10-01 00:40:42  447         \n",
       "22     25223662 2019-10-01 00:16:09 2019-10-01 00:41:05 1368         \n",
       "23     25223663 2019-10-01 00:17:09 2019-10-01 00:22:01 5232         \n",
       "24     25223664 2019-10-01 00:17:09 2019-10-01 00:29:51 2188         \n",
       "25     25223665 2019-10-01 00:18:23 2019-10-01 00:25:17 6402         \n",
       "26     25223666 2019-10-01 00:18:32 2019-10-01 00:45:33 2388         \n",
       "27     25223667 2019-10-01 00:20:34 2019-10-01 00:25:03 5658         \n",
       "28     25223668 2019-10-01 00:21:06 2019-10-01 00:27:18 5354         \n",
       "29     25223669 2019-10-01 00:21:19 2019-10-01 00:52:23 5479         \n",
       "30     25223670 2019-10-01 00:21:32 2019-10-01 00:30:22 6321         \n",
       "⋮      ⋮        ⋮                   ⋮                   ⋮            \n",
       "704025 25962873 2019-12-31 23:30:31 2019-12-31 23:34:49 2382         \n",
       "704026 25962874 2019-12-31 23:31:35 2019-12-31 23:50:47 3388         \n",
       "704027 25962875 2019-12-31 23:31:59 2019-12-31 23:40:41 3213         \n",
       "704028 25962876 2019-12-31 23:32:47 2019-12-31 23:45:47 4599         \n",
       "704029 25962877 2019-12-31 23:35:20 2019-12-31 23:39:45 1914         \n",
       "704030 25962878 2019-12-31 23:35:28 2019-12-31 23:40:59 3775         \n",
       "704031 25962879 2019-12-31 23:36:30 2019-12-31 23:56:19 4877         \n",
       "704032 25962880 2019-12-31 23:40:08 2019-12-31 23:48:46 6330         \n",
       "704033 25962881 2019-12-31 23:41:31 2019-12-31 23:50:18 6025         \n",
       "704034 25962882 2019-12-31 23:41:49 2020-01-01 00:28:39  269         \n",
       "704035 25962885 2019-12-31 23:42:11 2020-01-01 00:24:21  389         \n",
       "704036 25962886 2019-12-31 23:42:41 2020-01-01 00:39:20 3701         \n",
       "704037 25962887 2019-12-31 23:43:41 2020-01-01 00:56:43   73         \n",
       "704038 25962888 2019-12-31 23:44:59 2019-12-31 23:50:34 6053         \n",
       "704039 25962889 2019-12-31 23:45:35 2019-12-31 23:48:17 2076         \n",
       "704040 25962890 2019-12-31 23:46:19 2019-12-31 23:53:51   41         \n",
       "704041 25962891 2019-12-31 23:49:38 2020-01-01 00:15:19 2936         \n",
       "704042 25962892 2019-12-31 23:49:43 2020-01-01 00:21:51 1671         \n",
       "704043 25962893 2019-12-31 23:49:51 2020-01-01 00:22:08 3925         \n",
       "704044 25962894 2019-12-31 23:49:53 2020-01-01 00:22:30 2898         \n",
       "704045 25962895 2019-12-31 23:50:05 2019-12-31 23:53:33 1720         \n",
       "704046 25962896 2019-12-31 23:50:19 2019-12-31 23:55:37 4561         \n",
       "704047 25962897 2019-12-31 23:51:19 2019-12-31 23:55:33 5654         \n",
       "704048 25962898 2019-12-31 23:54:38 2020-01-01 00:04:38  606         \n",
       "704049 25962899 2019-12-31 23:54:54 2020-01-01 00:22:02 5996         \n",
       "704050 25962900 2019-12-31 23:56:13 2020-01-01 00:15:45 2196         \n",
       "704051 25962901 2019-12-31 23:56:34 2020-01-01 00:22:08 4877         \n",
       "704052 25962902 2019-12-31 23:57:05 2020-01-01 00:05:46  863         \n",
       "704053 25962903 2019-12-31 23:57:11 2020-01-01 00:05:45 2637         \n",
       "704054 25962904 2019-12-31 23:57:17 2019-12-31 23:59:18 5930         \n",
       "       tripduration start_station_id start_station_name                 \n",
       "1       940          20              Sheffield Ave & Kingsbury St       \n",
       "2       258          19              Throop (Loomis) St & Taylor St     \n",
       "3       850          84              Milwaukee Ave & Grand Ave          \n",
       "4      2350         313              Lakeview Ave & Fullerton Pkwy      \n",
       "5      1867         210              Ashland Ave & Division St          \n",
       "6       373         156              Clark St & Wellington Ave          \n",
       "7      1072          84              Milwaukee Ave & Grand Ave          \n",
       "8      1458         156              Clark St & Wellington Ave          \n",
       "9      1437         156              Clark St & Wellington Ave          \n",
       "10     8306         336              Cottage Grove Ave & 47th St        \n",
       "11     1925          77              Clinton St & Madison St            \n",
       "12      748         198              Green St & Madison St              \n",
       "13     1039          66              Clinton St & Lake St               \n",
       "14     1224         240              Sheridan Rd & Irving Park Rd       \n",
       "15      326          66              Clinton St & Lake St               \n",
       "16      318         373              Kedzie Ave & Chicago Ave           \n",
       "17     3692          74              Kingsbury St & Erie St             \n",
       "18      308         289              Wells St & Concord Ln              \n",
       "19     1251         106              State St & Pearson St              \n",
       "20     1527         133              Kingsbury St & Kinzie St           \n",
       "21     1520         133              Kingsbury St & Kinzie St           \n",
       "22     1496          29              Noble St & Milwaukee Ave           \n",
       "23      292          13              Wilton Ave & Diversey Pkwy         \n",
       "24      761         491              Talman Ave & Addison St            \n",
       "25      413         309              Leavitt St & Armitage Ave          \n",
       "26     1621         103              Clinton St & Polk St               \n",
       "27      269         264              Stetson Ave & South Water St       \n",
       "28      371         169              Canal St & Harrison St             \n",
       "29     1863         323              Sheridan Rd & Lawrence Ave         \n",
       "30      530         291              Wells St & Evergreen Ave           \n",
       "⋮      ⋮            ⋮                ⋮                                  \n",
       "704025  257         148              State St & 33rd St                 \n",
       "704026 1152         174              Canal St & Madison St              \n",
       "704027  522         277              Ashland Ave & Grand Ave            \n",
       "704028  780         275              Ashland Ave & 13th St              \n",
       "704029  265         417              Cornell Ave & Hyde Park Blvd       \n",
       "704030  330         160              Campbell Ave & North Ave           \n",
       "704031 1189          90              Millennium Park                    \n",
       "704032  517         241              Morgan St & Polk St                \n",
       "704033  527         159              Claremont Ave & Hirsch St          \n",
       "704034 2809         394              Clark St & 9th St (AMLI)           \n",
       "704035 2530         145              Mies van der Rohe Way & Chestnut St\n",
       "704036 3398         232              Pine Grove Ave & Waveland Ave      \n",
       "704037 4381         289              Wells St & Concord Ln              \n",
       "704038  335         144              Larrabee St & Webster Ave          \n",
       "704039  161         140              Dearborn Pkwy & Delaware Pl        \n",
       "704040  451         641              Central Park Ave & Bloomingdale Ave\n",
       "704041 1540          90              Millennium Park                    \n",
       "704042 1927          90              Millennium Park                    \n",
       "704043 1936          90              Millennium Park                    \n",
       "704044 1956          90              Millennium Park                    \n",
       "704045  208         624              Dearborn St & Van Buren St         \n",
       "704046  318         255              Indiana Ave & Roosevelt Rd         \n",
       "704047  254         638              Clinton St & Jackson Blvd          \n",
       "704048  599         455              Maplewood Ave & Peterson Ave       \n",
       "704049 1628         145              Mies van der Rohe Way & Chestnut St\n",
       "704050 1172         112              Green St & Randolph St             \n",
       "704051 1533          90              Millennium Park                    \n",
       "704052  520         623              Michigan Ave & 8th St              \n",
       "704053  514         623              Michigan Ave & 8th St              \n",
       "704054  120         256              Broadway & Sheridan Rd             \n",
       "       end_station_id end_station_name                   member_casual gender\n",
       "1      309            Leavitt St & Armitage Ave          Subscriber    Male  \n",
       "2      241            Morgan St & Polk St                Subscriber    Male  \n",
       "3      199            Wabash Ave & Grand Ave             Subscriber    Female\n",
       "4      290            Kedzie Ave & Palmer Ct             Subscriber    Male  \n",
       "5      382            Western Ave & Congress Pkwy        Subscriber    Male  \n",
       "6      226            Racine Ave & Belmont Ave           Subscriber    Female\n",
       "7      142            McClurg Ct & Erie St               Subscriber    Female\n",
       "8      463            Clark St & Berwyn Ave              Subscriber    Male  \n",
       "9      463            Clark St & Berwyn Ave              Subscriber    Female\n",
       "10     336            Cottage Grove Ave & 47th St        Customer      NA    \n",
       "11     506            Spaulding Ave & Armitage Ave       Subscriber    Male  \n",
       "12     331            Halsted St & Clybourn Ave          Subscriber    Female\n",
       "13      16            Paulina Ave & North Ave            Customer      Male  \n",
       "14     230            Lincoln Ave & Roscoe St            Customer      NA    \n",
       "15      88            Racine Ave & Randolph St           Subscriber    Male  \n",
       "16     377            Kedzie Ave & Lake St               Customer      NA    \n",
       "17     402            Shields Ave & 31st St              Customer      Female\n",
       "18     176            Clark St & Elm St                  Subscriber    Male  \n",
       "19     334            Lake Shore Dr & Belmont Ave        Customer      NA    \n",
       "20     673            Lincoln Park Conservatory          Customer      Female\n",
       "21     673            Lincoln Park Conservatory          Customer      NA    \n",
       "22     498            California Ave & Fletcher St       Customer      NA    \n",
       "23     117            Wilton Ave & Belmont Ave           Subscriber    Male  \n",
       "24     630            Kildare Ave & Montrose Ave         Customer      Male  \n",
       "25     123            California Ave & Milwaukee Ave     Subscriber    Male  \n",
       "26     103            Clinton St & Polk St               Customer      NA    \n",
       "27       7            Field Blvd & South Water St        Subscriber    Male  \n",
       "28      66            Clinton St & Lake St               Subscriber    Male  \n",
       "29     465            Marine Dr & Ainslie St             Customer      NA    \n",
       "30     161            Rush St & Superior St              Subscriber    Female\n",
       "⋮      ⋮              ⋮                                  ⋮             ⋮     \n",
       "704025 402            Shields Ave & 31st St              Subscriber    Male  \n",
       "704026  33            State St & Van Buren St            Subscriber    Male  \n",
       "704027 130            Damen Ave & Division St            Subscriber    Male  \n",
       "704028 205            Paulina St & 18th St               Subscriber    Male  \n",
       "704029 345            Lake Park Ave & 56th St            Subscriber    Male  \n",
       "704030 309            Leavitt St & Armitage Ave          Subscriber    Male  \n",
       "704031  90            Millennium Park                    Subscriber    Male  \n",
       "704032  15            Racine Ave & 18th St               Subscriber    Male  \n",
       "704033  20            Sheffield Ave & Kingsbury St       Subscriber    Male  \n",
       "704034 394            Clark St & 9th St (AMLI)           Subscriber    Female\n",
       "704035  26            McClurg Ct & Illinois St           Subscriber    Female\n",
       "704036 232            Pine Grove Ave & Waveland Ave      Subscriber    Male  \n",
       "704037 289            Wells St & Concord Ln              Subscriber    Female\n",
       "704038 289            Wells St & Concord Ln              Subscriber    Male  \n",
       "704039 161            Rush St & Superior St              Subscriber    Male  \n",
       "704040 259            California Ave & Francis Pl (Temp) Subscriber    Male  \n",
       "704041  76            Lake Shore Dr & Monroe St          Customer      NA    \n",
       "704042  76            Lake Shore Dr & Monroe St          Customer      NA    \n",
       "704043  76            Lake Shore Dr & Monroe St          Customer      NA    \n",
       "704044  76            Lake Shore Dr & Monroe St          Customer      NA    \n",
       "704045  81            Daley Center Plaza                 Subscriber    Female\n",
       "704046   3            Shedd Aquarium                     Subscriber    Male  \n",
       "704047 134            Peoria St & Jackson Blvd           Subscriber    Male  \n",
       "704048 467            Western Ave & Lunt Ave             Subscriber    Male  \n",
       "704049  25            Michigan Ave & Pearson St          Subscriber    Male  \n",
       "704050 225            Halsted St & Dickens Ave           Subscriber    Male  \n",
       "704051  90            Millennium Park                    Subscriber    Male  \n",
       "704052  52            Michigan Ave & Lake St             Subscriber    Male  \n",
       "704053  52            Michigan Ave & Lake St             Subscriber    Female\n",
       "704054 240            Sheridan Rd & Irving Park Rd       Subscriber    Male  \n",
       "       birthyear\n",
       "1      1987     \n",
       "2      1998     \n",
       "3      1991     \n",
       "4      1990     \n",
       "5      1987     \n",
       "6      1994     \n",
       "7      1991     \n",
       "8      1995     \n",
       "9      1993     \n",
       "10       NA     \n",
       "11     1977     \n",
       "12     1980     \n",
       "13     1994     \n",
       "14       NA     \n",
       "15     1992     \n",
       "16       NA     \n",
       "17     1962     \n",
       "18     1992     \n",
       "19       NA     \n",
       "20     1995     \n",
       "21       NA     \n",
       "22       NA     \n",
       "23     1991     \n",
       "24     1990     \n",
       "25     1987     \n",
       "26       NA     \n",
       "27     1967     \n",
       "28     1964     \n",
       "29       NA     \n",
       "30     1991     \n",
       "⋮      ⋮        \n",
       "704025 1995     \n",
       "704026 1985     \n",
       "704027 1984     \n",
       "704028 1987     \n",
       "704029 1993     \n",
       "704030 1991     \n",
       "704031 1992     \n",
       "704032 1994     \n",
       "704033 1989     \n",
       "704034 1974     \n",
       "704035 1979     \n",
       "704036 1977     \n",
       "704037 1996     \n",
       "704038 1989     \n",
       "704039 1994     \n",
       "704040 1966     \n",
       "704041   NA     \n",
       "704042   NA     \n",
       "704043   NA     \n",
       "704044   NA     \n",
       "704045 1990     \n",
       "704046 1990     \n",
       "704047 1997     \n",
       "704048 1986     \n",
       "704049 1992     \n",
       "704050 1981     \n",
       "704051 1992     \n",
       "704052 1967     \n",
       "704053 1970     \n",
       "704054 1982     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A spec_tbl_df: 1640718 × 12</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>ride_id</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>rideable_type</th><th scope=col>tripduration</th><th scope=col>start_station_id</th><th scope=col>start_station_name</th><th scope=col>end_station_id</th><th scope=col>end_station_name</th><th scope=col>member_casual</th><th scope=col>gender</th><th scope=col>birthyear</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>23479388</td><td>2019-07-01 00:00:27</td><td>2019-07-01 00:20:41</td><td>3591</td><td><span style=white-space:pre-wrap>  1214</span></td><td>117</td><td><span style=white-space:pre-wrap>Wilton Ave &amp; Belmont Ave      </span></td><td>497</td><td><span style=white-space:pre-wrap>Kimball Ave &amp; Belmont Ave    </span></td><td>Subscriber</td><td>Male</td><td>1992</td></tr>\n",
       "\t<tr><td>23479389</td><td>2019-07-01 00:01:16</td><td>2019-07-01 00:18:44</td><td>5353</td><td><span style=white-space:pre-wrap>  1048</span></td><td>381</td><td><span style=white-space:pre-wrap>Western Ave &amp; Monroe St       </span></td><td>203</td><td><span style=white-space:pre-wrap>Western Ave &amp; 21st St        </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479390</td><td>2019-07-01 00:01:48</td><td>2019-07-01 00:27:42</td><td>6180</td><td><span style=white-space:pre-wrap>  1554</span></td><td>313</td><td>Lakeview Ave &amp; Fullerton Pkwy </td><td>144</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Webster Ave    </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479391</td><td>2019-07-01 00:02:07</td><td>2019-07-01 00:27:10</td><td>5540</td><td><span style=white-space:pre-wrap>  1503</span></td><td>313</td><td>Lakeview Ave &amp; Fullerton Pkwy </td><td>144</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Webster Ave    </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479392</td><td>2019-07-01 00:02:13</td><td>2019-07-01 00:22:26</td><td>6014</td><td><span style=white-space:pre-wrap>  1213</span></td><td>168</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 14th St        </span></td><td> 62</td><td><span style=white-space:pre-wrap>McCormick Place              </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479393</td><td>2019-07-01 00:02:21</td><td>2019-07-01 00:07:31</td><td>4941</td><td><span style=white-space:pre-wrap>   310</span></td><td>300</td><td><span style=white-space:pre-wrap>Broadway &amp; Barry Ave          </span></td><td>232</td><td>Pine Grove Ave &amp; Waveland Ave</td><td>Subscriber</td><td>Male</td><td>1990</td></tr>\n",
       "\t<tr><td>23479394</td><td>2019-07-01 00:02:24</td><td>2019-07-01 00:23:12</td><td>3770</td><td><span style=white-space:pre-wrap>  1248</span></td><td>168</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 14th St        </span></td><td> 62</td><td><span style=white-space:pre-wrap>McCormick Place              </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479395</td><td>2019-07-01 00:02:26</td><td>2019-07-01 00:28:16</td><td>5442</td><td><span style=white-space:pre-wrap>  1550</span></td><td>313</td><td>Lakeview Ave &amp; Fullerton Pkwy </td><td>144</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Webster Ave    </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479396</td><td>2019-07-01 00:02:34</td><td>2019-07-01 00:28:57</td><td>2957</td><td><span style=white-space:pre-wrap>  1583</span></td><td> 43</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Washington St  </span></td><td>195</td><td><span style=white-space:pre-wrap>Columbus Dr &amp; Randolph St    </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479397</td><td>2019-07-01 00:02:45</td><td>2019-07-01 00:29:14</td><td>6091</td><td><span style=white-space:pre-wrap>  1589</span></td><td> 43</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Washington St  </span></td><td>195</td><td><span style=white-space:pre-wrap>Columbus Dr &amp; Randolph St    </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479398</td><td>2019-07-01 00:02:57</td><td>2019-07-01 00:29:05</td><td>4116</td><td><span style=white-space:pre-wrap>  1568</span></td><td>511</td><td>Albany Ave &amp; Bloomingdale Ave </td><td> 84</td><td><span style=white-space:pre-wrap>Milwaukee Ave &amp; Grand Ave    </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479399</td><td>2019-07-01 00:03:07</td><td>2019-07-01 00:28:50</td><td>4948</td><td><span style=white-space:pre-wrap>  1543</span></td><td> 43</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Washington St  </span></td><td>195</td><td><span style=white-space:pre-wrap>Columbus Dr &amp; Randolph St    </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479400</td><td>2019-07-01 00:04:09</td><td>2019-07-01 00:36:56</td><td> 307</td><td><span style=white-space:pre-wrap>  1967</span></td><td> 24</td><td><span style=white-space:pre-wrap>Fairbanks Ct &amp; Grand Ave      </span></td><td> 24</td><td><span style=white-space:pre-wrap>Fairbanks Ct &amp; Grand Ave     </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479401</td><td>2019-07-01 00:04:25</td><td>2019-07-01 00:36:56</td><td>2422</td><td><span style=white-space:pre-wrap>  1951</span></td><td> 24</td><td><span style=white-space:pre-wrap>Fairbanks Ct &amp; Grand Ave      </span></td><td> 24</td><td><span style=white-space:pre-wrap>Fairbanks Ct &amp; Grand Ave     </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479402</td><td>2019-07-01 00:04:41</td><td>2019-07-01 00:37:22</td><td>3369</td><td><span style=white-space:pre-wrap>  1961</span></td><td> 24</td><td><span style=white-space:pre-wrap>Fairbanks Ct &amp; Grand Ave      </span></td><td> 24</td><td><span style=white-space:pre-wrap>Fairbanks Ct &amp; Grand Ave     </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479403</td><td>2019-07-01 00:05:18</td><td>2019-07-01 00:37:08</td><td>4050</td><td><span style=white-space:pre-wrap>  1910</span></td><td> 24</td><td><span style=white-space:pre-wrap>Fairbanks Ct &amp; Grand Ave      </span></td><td> 24</td><td><span style=white-space:pre-wrap>Fairbanks Ct &amp; Grand Ave     </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479404</td><td>2019-07-01 00:06:06</td><td>2019-07-01 00:33:33</td><td>1535</td><td><span style=white-space:pre-wrap>  1647</span></td><td> 43</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Washington St  </span></td><td> 43</td><td>Michigan Ave &amp; Washington St </td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479405</td><td>2019-07-01 00:06:10</td><td>2019-07-01 00:33:08</td><td>4722</td><td><span style=white-space:pre-wrap>  1618</span></td><td> 43</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Washington St  </span></td><td> 43</td><td>Michigan Ave &amp; Washington St </td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479406</td><td>2019-07-01 00:06:51</td><td>2019-07-01 00:26:22</td><td>2758</td><td><span style=white-space:pre-wrap>  1171</span></td><td>624</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Van Buren St    </span></td><td>237</td><td><span style=white-space:pre-wrap>MLK Jr Dr &amp; 29th St          </span></td><td>Subscriber</td><td>Male</td><td>1995</td></tr>\n",
       "\t<tr><td>23479407</td><td>2019-07-01 00:06:55</td><td>2019-07-01 00:33:28</td><td>1614</td><td><span style=white-space:pre-wrap>  1593</span></td><td> 43</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Washington St  </span></td><td> 43</td><td>Michigan Ave &amp; Washington St </td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479408</td><td>2019-07-01 00:08:24</td><td>2019-07-01 00:20:07</td><td>2447</td><td><span style=white-space:pre-wrap>   703</span></td><td>239</td><td><span style=white-space:pre-wrap>Western Ave &amp; Leland Ave      </span></td><td>455</td><td>Maplewood Ave &amp; Peterson Ave </td><td>Subscriber</td><td>Male</td><td>1970</td></tr>\n",
       "\t<tr><td>23479409</td><td>2019-07-01 00:08:40</td><td>2019-07-01 00:27:50</td><td>6336</td><td><span style=white-space:pre-wrap>  1150</span></td><td>257</td><td><span style=white-space:pre-wrap>Lincoln Ave &amp; Waveland Ave    </span></td><td>295</td><td><span style=white-space:pre-wrap>Broadway &amp; Argyle St         </span></td><td>Subscriber</td><td>Male</td><td>1993</td></tr>\n",
       "\t<tr><td>23479410</td><td>2019-07-01 00:08:45</td><td>2019-07-01 00:19:24</td><td>3249</td><td><span style=white-space:pre-wrap>   639</span></td><td>309</td><td><span style=white-space:pre-wrap>Leavitt St &amp; Armitage Ave     </span></td><td>113</td><td><span style=white-space:pre-wrap>Bissell St &amp; Armitage Ave    </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479411</td><td>2019-07-01 00:10:20</td><td>2019-07-01 00:19:36</td><td>3632</td><td><span style=white-space:pre-wrap>   556</span></td><td> 76</td><td><span style=white-space:pre-wrap>Lake Shore Dr &amp; Monroe St     </span></td><td> 59</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Roosevelt Rd    </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479412</td><td>2019-07-01 00:10:47</td><td>2019-07-01 01:46:44</td><td>3154</td><td>  5757</td><td> 90</td><td>Millennium Park               </td><td> 90</td><td>Millennium Park              </td><td>Customer  </td><td>NA  </td><td>  NA</td></tr>\n",
       "\t<tr><td>23479414</td><td>2019-07-01 00:11:17</td><td>2019-07-01 00:25:36</td><td>2138</td><td><span style=white-space:pre-wrap>   859</span></td><td>313</td><td>Lakeview Ave &amp; Fullerton Pkwy </td><td> 58</td><td>Marshfield Ave &amp; Cortland St </td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479415</td><td>2019-07-01 00:11:22</td><td>2019-07-01 01:46:44</td><td>1713</td><td>  5722</td><td> 90</td><td>Millennium Park               </td><td> 90</td><td>Millennium Park              </td><td>Customer  </td><td>NA  </td><td>  NA</td></tr>\n",
       "\t<tr><td>23479416</td><td>2019-07-01 00:14:40</td><td>2019-07-02 07:53:48</td><td>1122</td><td>113948</td><td>123</td><td>California Ave &amp; Milwaukee Ave</td><td>509</td><td><span style=white-space:pre-wrap>Troy St &amp; North Ave          </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479417</td><td>2019-07-01 00:14:58</td><td>2019-07-01 01:15:58</td><td> 356</td><td><span style=white-space:pre-wrap>  3660</span></td><td>123</td><td>California Ave &amp; Milwaukee Ave</td><td>222</td><td><span style=white-space:pre-wrap>Milwaukee Ave &amp; Rockwell St  </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA  </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479418</td><td>2019-07-01 00:15:06</td><td>2019-07-01 00:36:40</td><td>4525</td><td><span style=white-space:pre-wrap>  1294</span></td><td>240</td><td><span style=white-space:pre-wrap>Sheridan Rd &amp; Irving Park Rd  </span></td><td>326</td><td><span style=white-space:pre-wrap>Clark St &amp; Leland Ave        </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td>Male</td><td>1987</td></tr>\n",
       "\t<tr><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr>\n",
       "\t<tr><td>25223610</td><td>2019-09-30 23:44:28</td><td>2019-09-30 23:50:15</td><td>5387</td><td> 347</td><td> 22</td><td><span style=white-space:pre-wrap>May St &amp; Taylor St                     </span></td><td>282</td><td><span style=white-space:pre-wrap>Halsted St &amp; Maxwell St         </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1995</td></tr>\n",
       "\t<tr><td>25223611</td><td>2019-09-30 23:45:47</td><td>2019-10-01 00:06:31</td><td>5747</td><td>1244</td><td>664</td><td><span style=white-space:pre-wrap>Leavitt St &amp; Belmont Ave (*)           </span></td><td>313</td><td><span style=white-space:pre-wrap>Lakeview Ave &amp; Fullerton Pkwy   </span></td><td>Subscriber</td><td>Female</td><td>1996</td></tr>\n",
       "\t<tr><td>25223612</td><td>2019-09-30 23:46:37</td><td>2019-10-01 00:10:19</td><td>4333</td><td>1421</td><td>591</td><td><span style=white-space:pre-wrap>Kilbourn Ave &amp; Milwaukee Ave           </span></td><td>123</td><td><span style=white-space:pre-wrap>California Ave &amp; Milwaukee Ave  </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25223613</td><td>2019-09-30 23:47:11</td><td>2019-10-01 00:12:26</td><td>6228</td><td>1514</td><td>232</td><td><span style=white-space:pre-wrap>Pine Grove Ave &amp; Waveland Ave          </span></td><td>257</td><td><span style=white-space:pre-wrap>Lincoln Ave &amp; Waveland Ave      </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>Male  </span></td><td>1999</td></tr>\n",
       "\t<tr><td>25223614</td><td>2019-09-30 23:47:31</td><td>2019-09-30 23:56:55</td><td> 488</td><td> 563</td><td>596</td><td><span style=white-space:pre-wrap>Benson Ave &amp; Church St                 </span></td><td>600</td><td><span style=white-space:pre-wrap>Dodge Ave &amp; Church St           </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>Male  </span></td><td>1971</td></tr>\n",
       "\t<tr><td>25223615</td><td>2019-09-30 23:47:41</td><td>2019-10-01 00:28:15</td><td> 406</td><td>2433</td><td>302</td><td><span style=white-space:pre-wrap>Sheffield Ave &amp; Wrightwood Ave         </span></td><td> 85</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Oak St           </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25223616</td><td>2019-09-30 23:47:57</td><td>2019-09-30 23:50:40</td><td>3584</td><td> 163</td><td>302</td><td><span style=white-space:pre-wrap>Sheffield Ave &amp; Wrightwood Ave         </span></td><td>349</td><td><span style=white-space:pre-wrap>Halsted St &amp; Wrightwood Ave     </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1992</td></tr>\n",
       "\t<tr><td>25223617</td><td>2019-09-30 23:48:12</td><td>2019-09-30 23:53:16</td><td>4970</td><td> 304</td><td>654</td><td><span style=white-space:pre-wrap>Racine Ave &amp; Washington Blvd (*)       </span></td><td>186</td><td><span style=white-space:pre-wrap>Ogden Ave &amp; Race Ave            </span></td><td>Subscriber</td><td>Female</td><td>1989</td></tr>\n",
       "\t<tr><td>25223618</td><td>2019-09-30 23:48:29</td><td>2019-10-01 00:12:16</td><td>2370</td><td>1426</td><td>232</td><td><span style=white-space:pre-wrap>Pine Grove Ave &amp; Waveland Ave          </span></td><td>257</td><td><span style=white-space:pre-wrap>Lincoln Ave &amp; Waveland Ave      </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>Male  </span></td><td>1989</td></tr>\n",
       "\t<tr><td>25223619</td><td>2019-09-30 23:48:39</td><td>2019-10-01 00:13:07</td><td>4737</td><td>1468</td><td>490</td><td><span style=white-space:pre-wrap>Troy St &amp; Elston Ave                   </span></td><td>296</td><td><span style=white-space:pre-wrap>Broadway &amp; Belmont Ave          </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1994</td></tr>\n",
       "\t<tr><td>25223620</td><td>2019-09-30 23:49:24</td><td>2019-09-30 23:56:47</td><td>3182</td><td> 443</td><td>232</td><td><span style=white-space:pre-wrap>Pine Grove Ave &amp; Waveland Ave          </span></td><td>117</td><td><span style=white-space:pre-wrap>Wilton Ave &amp; Belmont Ave        </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25223621</td><td>2019-09-30 23:49:26</td><td>2019-10-01 00:12:34</td><td>1867</td><td>1387</td><td>232</td><td><span style=white-space:pre-wrap>Pine Grove Ave &amp; Waveland Ave          </span></td><td>257</td><td><span style=white-space:pre-wrap>Lincoln Ave &amp; Waveland Ave      </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25223622</td><td>2019-09-30 23:51:33</td><td>2019-10-01 00:15:18</td><td>3892</td><td>1425</td><td> 50</td><td><span style=white-space:pre-wrap>Clark St &amp; Ida B Wells Dr              </span></td><td>280</td><td><span style=white-space:pre-wrap>Morgan St &amp; 31st St             </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1985</td></tr>\n",
       "\t<tr><td>25223623</td><td>2019-09-30 23:51:27</td><td>2019-10-01 00:10:39</td><td>3422</td><td>1151</td><td>331</td><td><span style=white-space:pre-wrap>Halsted St &amp; Clybourn Ave              </span></td><td>637</td><td><span style=white-space:pre-wrap>Wood St &amp; Chicago Ave (*)       </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1993</td></tr>\n",
       "\t<tr><td>25223624</td><td>2019-09-30 23:51:38</td><td>2019-10-01 00:28:28</td><td>5507</td><td>2209</td><td>349</td><td><span style=white-space:pre-wrap>Halsted St &amp; Wrightwood Ave            </span></td><td> 85</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Oak St           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1992</td></tr>\n",
       "\t<tr><td>25223625</td><td>2019-09-30 23:51:45</td><td>2019-10-01 00:12:43</td><td>5387</td><td>1257</td><td>282</td><td><span style=white-space:pre-wrap>Halsted St &amp; Maxwell St                </span></td><td>148</td><td><span style=white-space:pre-wrap>State St &amp; 33rd St              </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td>1999</td></tr>\n",
       "\t<tr><td>25223626</td><td>2019-09-30 23:51:49</td><td>2019-10-01 00:01:12</td><td>1908</td><td> 563</td><td>195</td><td><span style=white-space:pre-wrap>Columbus Dr &amp; Randolph St              </span></td><td> 77</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St         </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1969</td></tr>\n",
       "\t<tr><td>25223627</td><td>2019-09-30 23:52:37</td><td>2019-10-01 00:03:15</td><td>5232</td><td> 638</td><td>331</td><td><span style=white-space:pre-wrap>Halsted St &amp; Clybourn Ave              </span></td><td> 13</td><td><span style=white-space:pre-wrap>Wilton Ave &amp; Diversey Pkwy      </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1993</td></tr>\n",
       "\t<tr><td>25223628</td><td>2019-09-30 23:52:53</td><td>2019-10-01 00:19:53</td><td> 803</td><td>1620</td><td>225</td><td><span style=white-space:pre-wrap>Halsted St &amp; Dickens Ave               </span></td><td>260</td><td><span style=white-space:pre-wrap>Kedzie Ave &amp; Milwaukee Ave      </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25223629</td><td>2019-09-30 23:53:05</td><td>2019-10-01 00:06:27</td><td>4600</td><td> 801</td><td>238</td><td>Wolcott (Ravenswood) Ave &amp; Montrose Ave</td><td>251</td><td><span style=white-space:pre-wrap>Clarendon Ave &amp; Leland Ave      </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1980</td></tr>\n",
       "\t<tr><td>25223630</td><td>2019-09-30 23:54:03</td><td>2019-10-01 00:09:59</td><td>1788</td><td> 955</td><td>228</td><td><span style=white-space:pre-wrap>Damen Ave &amp; Melrose Ave                </span></td><td>240</td><td><span style=white-space:pre-wrap>Sheridan Rd &amp; Irving Park Rd    </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1986</td></tr>\n",
       "\t<tr><td>25223631</td><td>2019-09-30 23:55:26</td><td>2019-10-01 00:06:47</td><td>4409</td><td> 680</td><td> 54</td><td><span style=white-space:pre-wrap>Ogden Ave &amp; Chicago Ave                </span></td><td>346</td><td><span style=white-space:pre-wrap>Ada St &amp; Washington Blvd        </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1989</td></tr>\n",
       "\t<tr><td>25223632</td><td>2019-09-30 23:55:40</td><td>2019-10-01 00:29:01</td><td>5488</td><td>2001</td><td> 52</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Lake St                 </span></td><td>289</td><td><span style=white-space:pre-wrap>Wells St &amp; Concord Ln           </span></td><td>Subscriber</td><td>Female</td><td>1995</td></tr>\n",
       "\t<tr><td>25223633</td><td>2019-09-30 23:56:09</td><td>2019-10-01 00:30:33</td><td>5181</td><td>2063</td><td>264</td><td><span style=white-space:pre-wrap>Stetson Ave &amp; South Water St           </span></td><td>623</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 8th St           </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25223634</td><td>2019-09-30 23:56:12</td><td>2019-10-01 00:30:21</td><td> 400</td><td>2049</td><td>264</td><td><span style=white-space:pre-wrap>Stetson Ave &amp; South Water St           </span></td><td>623</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 8th St           </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>25223635</td><td>2019-09-30 23:56:27</td><td>2019-10-01 00:06:20</td><td>5690</td><td> 593</td><td> 84</td><td><span style=white-space:pre-wrap>Milwaukee Ave &amp; Grand Ave              </span></td><td>134</td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd        </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1993</td></tr>\n",
       "\t<tr><td>25223636</td><td>2019-09-30 23:57:02</td><td>2019-10-01 00:02:13</td><td>5079</td><td> 310</td><td>268</td><td><span style=white-space:pre-wrap>Lake Shore Dr &amp; North Blvd             </span></td><td> 85</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Oak St           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1992</td></tr>\n",
       "\t<tr><td>25223637</td><td>2019-09-30 23:57:45</td><td>2019-10-01 00:01:41</td><td>5535</td><td> 235</td><td>423</td><td><span style=white-space:pre-wrap>University Ave &amp; 57th St               </span></td><td>426</td><td><span style=white-space:pre-wrap>Ellis Ave &amp; 60th St             </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>Male  </span></td><td>2000</td></tr>\n",
       "\t<tr><td>25223638</td><td>2019-09-30 23:57:47</td><td>2019-10-01 00:04:41</td><td>6120</td><td> 414</td><td>110</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Erie St                  </span></td><td> 31</td><td>Franklin St &amp; Chicago Ave (Temp)</td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1986</td></tr>\n",
       "\t<tr><td>25223639</td><td>2019-09-30 23:59:37</td><td>2019-10-01 00:05:17</td><td><span style=white-space:pre-wrap>  60</span></td><td> 339</td><td>265</td><td><span style=white-space:pre-wrap>Cottage Grove Ave &amp; Oakwood Blvd       </span></td><td>179</td><td><span style=white-space:pre-wrap>MLK Jr Dr &amp; Pershing Rd         </span></td><td>Subscriber</td><td>Female</td><td>1996</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A spec\\_tbl\\_df: 1640718 × 12\n",
       "\\begin{tabular}{llllllllllll}\n",
       " ride\\_id & started\\_at & ended\\_at & rideable\\_type & tripduration & start\\_station\\_id & start\\_station\\_name & end\\_station\\_id & end\\_station\\_name & member\\_casual & gender & birthyear\\\\\n",
       " <dbl> & <dttm> & <dttm> & <dbl> & <dbl> & <dbl> & <chr> & <dbl> & <chr> & <chr> & <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 23479388 & 2019-07-01 00:00:27 & 2019-07-01 00:20:41 & 3591 &   1214 & 117 & Wilton Ave \\& Belmont Ave       & 497 & Kimball Ave \\& Belmont Ave     & Subscriber & Male & 1992\\\\\n",
       "\t 23479389 & 2019-07-01 00:01:16 & 2019-07-01 00:18:44 & 5353 &   1048 & 381 & Western Ave \\& Monroe St        & 203 & Western Ave \\& 21st St         & Customer   & NA   &   NA\\\\\n",
       "\t 23479390 & 2019-07-01 00:01:48 & 2019-07-01 00:27:42 & 6180 &   1554 & 313 & Lakeview Ave \\& Fullerton Pkwy  & 144 & Larrabee St \\& Webster Ave     & Customer   & NA   &   NA\\\\\n",
       "\t 23479391 & 2019-07-01 00:02:07 & 2019-07-01 00:27:10 & 5540 &   1503 & 313 & Lakeview Ave \\& Fullerton Pkwy  & 144 & Larrabee St \\& Webster Ave     & Customer   & NA   &   NA\\\\\n",
       "\t 23479392 & 2019-07-01 00:02:13 & 2019-07-01 00:22:26 & 6014 &   1213 & 168 & Michigan Ave \\& 14th St         &  62 & McCormick Place               & Customer   & NA   &   NA\\\\\n",
       "\t 23479393 & 2019-07-01 00:02:21 & 2019-07-01 00:07:31 & 4941 &    310 & 300 & Broadway \\& Barry Ave           & 232 & Pine Grove Ave \\& Waveland Ave & Subscriber & Male & 1990\\\\\n",
       "\t 23479394 & 2019-07-01 00:02:24 & 2019-07-01 00:23:12 & 3770 &   1248 & 168 & Michigan Ave \\& 14th St         &  62 & McCormick Place               & Customer   & NA   &   NA\\\\\n",
       "\t 23479395 & 2019-07-01 00:02:26 & 2019-07-01 00:28:16 & 5442 &   1550 & 313 & Lakeview Ave \\& Fullerton Pkwy  & 144 & Larrabee St \\& Webster Ave     & Customer   & NA   &   NA\\\\\n",
       "\t 23479396 & 2019-07-01 00:02:34 & 2019-07-01 00:28:57 & 2957 &   1583 &  43 & Michigan Ave \\& Washington St   & 195 & Columbus Dr \\& Randolph St     & Customer   & NA   &   NA\\\\\n",
       "\t 23479397 & 2019-07-01 00:02:45 & 2019-07-01 00:29:14 & 6091 &   1589 &  43 & Michigan Ave \\& Washington St   & 195 & Columbus Dr \\& Randolph St     & Customer   & NA   &   NA\\\\\n",
       "\t 23479398 & 2019-07-01 00:02:57 & 2019-07-01 00:29:05 & 4116 &   1568 & 511 & Albany Ave \\& Bloomingdale Ave  &  84 & Milwaukee Ave \\& Grand Ave     & Customer   & NA   &   NA\\\\\n",
       "\t 23479399 & 2019-07-01 00:03:07 & 2019-07-01 00:28:50 & 4948 &   1543 &  43 & Michigan Ave \\& Washington St   & 195 & Columbus Dr \\& Randolph St     & Customer   & NA   &   NA\\\\\n",
       "\t 23479400 & 2019-07-01 00:04:09 & 2019-07-01 00:36:56 &  307 &   1967 &  24 & Fairbanks Ct \\& Grand Ave       &  24 & Fairbanks Ct \\& Grand Ave      & Customer   & NA   &   NA\\\\\n",
       "\t 23479401 & 2019-07-01 00:04:25 & 2019-07-01 00:36:56 & 2422 &   1951 &  24 & Fairbanks Ct \\& Grand Ave       &  24 & Fairbanks Ct \\& Grand Ave      & Customer   & NA   &   NA\\\\\n",
       "\t 23479402 & 2019-07-01 00:04:41 & 2019-07-01 00:37:22 & 3369 &   1961 &  24 & Fairbanks Ct \\& Grand Ave       &  24 & Fairbanks Ct \\& Grand Ave      & Customer   & NA   &   NA\\\\\n",
       "\t 23479403 & 2019-07-01 00:05:18 & 2019-07-01 00:37:08 & 4050 &   1910 &  24 & Fairbanks Ct \\& Grand Ave       &  24 & Fairbanks Ct \\& Grand Ave      & Customer   & NA   &   NA\\\\\n",
       "\t 23479404 & 2019-07-01 00:06:06 & 2019-07-01 00:33:33 & 1535 &   1647 &  43 & Michigan Ave \\& Washington St   &  43 & Michigan Ave \\& Washington St  & Customer   & NA   &   NA\\\\\n",
       "\t 23479405 & 2019-07-01 00:06:10 & 2019-07-01 00:33:08 & 4722 &   1618 &  43 & Michigan Ave \\& Washington St   &  43 & Michigan Ave \\& Washington St  & Customer   & NA   &   NA\\\\\n",
       "\t 23479406 & 2019-07-01 00:06:51 & 2019-07-01 00:26:22 & 2758 &   1171 & 624 & Dearborn St \\& Van Buren St     & 237 & MLK Jr Dr \\& 29th St           & Subscriber & Male & 1995\\\\\n",
       "\t 23479407 & 2019-07-01 00:06:55 & 2019-07-01 00:33:28 & 1614 &   1593 &  43 & Michigan Ave \\& Washington St   &  43 & Michigan Ave \\& Washington St  & Customer   & NA   &   NA\\\\\n",
       "\t 23479408 & 2019-07-01 00:08:24 & 2019-07-01 00:20:07 & 2447 &    703 & 239 & Western Ave \\& Leland Ave       & 455 & Maplewood Ave \\& Peterson Ave  & Subscriber & Male & 1970\\\\\n",
       "\t 23479409 & 2019-07-01 00:08:40 & 2019-07-01 00:27:50 & 6336 &   1150 & 257 & Lincoln Ave \\& Waveland Ave     & 295 & Broadway \\& Argyle St          & Subscriber & Male & 1993\\\\\n",
       "\t 23479410 & 2019-07-01 00:08:45 & 2019-07-01 00:19:24 & 3249 &    639 & 309 & Leavitt St \\& Armitage Ave      & 113 & Bissell St \\& Armitage Ave     & Customer   & NA   &   NA\\\\\n",
       "\t 23479411 & 2019-07-01 00:10:20 & 2019-07-01 00:19:36 & 3632 &    556 &  76 & Lake Shore Dr \\& Monroe St      &  59 & Wabash Ave \\& Roosevelt Rd     & Customer   & NA   &   NA\\\\\n",
       "\t 23479412 & 2019-07-01 00:10:47 & 2019-07-01 01:46:44 & 3154 &   5757 &  90 & Millennium Park                &  90 & Millennium Park               & Customer   & NA   &   NA\\\\\n",
       "\t 23479414 & 2019-07-01 00:11:17 & 2019-07-01 00:25:36 & 2138 &    859 & 313 & Lakeview Ave \\& Fullerton Pkwy  &  58 & Marshfield Ave \\& Cortland St  & Customer   & NA   &   NA\\\\\n",
       "\t 23479415 & 2019-07-01 00:11:22 & 2019-07-01 01:46:44 & 1713 &   5722 &  90 & Millennium Park                &  90 & Millennium Park               & Customer   & NA   &   NA\\\\\n",
       "\t 23479416 & 2019-07-01 00:14:40 & 2019-07-02 07:53:48 & 1122 & 113948 & 123 & California Ave \\& Milwaukee Ave & 509 & Troy St \\& North Ave           & Customer   & NA   &   NA\\\\\n",
       "\t 23479417 & 2019-07-01 00:14:58 & 2019-07-01 01:15:58 &  356 &   3660 & 123 & California Ave \\& Milwaukee Ave & 222 & Milwaukee Ave \\& Rockwell St   & Customer   & NA   &   NA\\\\\n",
       "\t 23479418 & 2019-07-01 00:15:06 & 2019-07-01 00:36:40 & 4525 &   1294 & 240 & Sheridan Rd \\& Irving Park Rd   & 326 & Clark St \\& Leland Ave         & Customer   & Male & 1987\\\\\n",
       "\t ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮\\\\\n",
       "\t 25223610 & 2019-09-30 23:44:28 & 2019-09-30 23:50:15 & 5387 &  347 &  22 & May St \\& Taylor St                      & 282 & Halsted St \\& Maxwell St          & Subscriber & Male   & 1995\\\\\n",
       "\t 25223611 & 2019-09-30 23:45:47 & 2019-10-01 00:06:31 & 5747 & 1244 & 664 & Leavitt St \\& Belmont Ave (*)            & 313 & Lakeview Ave \\& Fullerton Pkwy    & Subscriber & Female & 1996\\\\\n",
       "\t 25223612 & 2019-09-30 23:46:37 & 2019-10-01 00:10:19 & 4333 & 1421 & 591 & Kilbourn Ave \\& Milwaukee Ave            & 123 & California Ave \\& Milwaukee Ave   & Customer   & NA     &   NA\\\\\n",
       "\t 25223613 & 2019-09-30 23:47:11 & 2019-10-01 00:12:26 & 6228 & 1514 & 232 & Pine Grove Ave \\& Waveland Ave           & 257 & Lincoln Ave \\& Waveland Ave       & Customer   & Male   & 1999\\\\\n",
       "\t 25223614 & 2019-09-30 23:47:31 & 2019-09-30 23:56:55 &  488 &  563 & 596 & Benson Ave \\& Church St                  & 600 & Dodge Ave \\& Church St            & Customer   & Male   & 1971\\\\\n",
       "\t 25223615 & 2019-09-30 23:47:41 & 2019-10-01 00:28:15 &  406 & 2433 & 302 & Sheffield Ave \\& Wrightwood Ave          &  85 & Michigan Ave \\& Oak St            & Customer   & NA     &   NA\\\\\n",
       "\t 25223616 & 2019-09-30 23:47:57 & 2019-09-30 23:50:40 & 3584 &  163 & 302 & Sheffield Ave \\& Wrightwood Ave          & 349 & Halsted St \\& Wrightwood Ave      & Subscriber & Male   & 1992\\\\\n",
       "\t 25223617 & 2019-09-30 23:48:12 & 2019-09-30 23:53:16 & 4970 &  304 & 654 & Racine Ave \\& Washington Blvd (*)        & 186 & Ogden Ave \\& Race Ave             & Subscriber & Female & 1989\\\\\n",
       "\t 25223618 & 2019-09-30 23:48:29 & 2019-10-01 00:12:16 & 2370 & 1426 & 232 & Pine Grove Ave \\& Waveland Ave           & 257 & Lincoln Ave \\& Waveland Ave       & Customer   & Male   & 1989\\\\\n",
       "\t 25223619 & 2019-09-30 23:48:39 & 2019-10-01 00:13:07 & 4737 & 1468 & 490 & Troy St \\& Elston Ave                    & 296 & Broadway \\& Belmont Ave           & Subscriber & Male   & 1994\\\\\n",
       "\t 25223620 & 2019-09-30 23:49:24 & 2019-09-30 23:56:47 & 3182 &  443 & 232 & Pine Grove Ave \\& Waveland Ave           & 117 & Wilton Ave \\& Belmont Ave         & Customer   & NA     &   NA\\\\\n",
       "\t 25223621 & 2019-09-30 23:49:26 & 2019-10-01 00:12:34 & 1867 & 1387 & 232 & Pine Grove Ave \\& Waveland Ave           & 257 & Lincoln Ave \\& Waveland Ave       & Customer   & NA     &   NA\\\\\n",
       "\t 25223622 & 2019-09-30 23:51:33 & 2019-10-01 00:15:18 & 3892 & 1425 &  50 & Clark St \\& Ida B Wells Dr               & 280 & Morgan St \\& 31st St              & Subscriber & Male   & 1985\\\\\n",
       "\t 25223623 & 2019-09-30 23:51:27 & 2019-10-01 00:10:39 & 3422 & 1151 & 331 & Halsted St \\& Clybourn Ave               & 637 & Wood St \\& Chicago Ave (*)        & Subscriber & Male   & 1993\\\\\n",
       "\t 25223624 & 2019-09-30 23:51:38 & 2019-10-01 00:28:28 & 5507 & 2209 & 349 & Halsted St \\& Wrightwood Ave             &  85 & Michigan Ave \\& Oak St            & Subscriber & Male   & 1992\\\\\n",
       "\t 25223625 & 2019-09-30 23:51:45 & 2019-10-01 00:12:43 & 5387 & 1257 & 282 & Halsted St \\& Maxwell St                 & 148 & State St \\& 33rd St               & Customer   & NA     & 1999\\\\\n",
       "\t 25223626 & 2019-09-30 23:51:49 & 2019-10-01 00:01:12 & 1908 &  563 & 195 & Columbus Dr \\& Randolph St               &  77 & Clinton St \\& Madison St          & Subscriber & Male   & 1969\\\\\n",
       "\t 25223627 & 2019-09-30 23:52:37 & 2019-10-01 00:03:15 & 5232 &  638 & 331 & Halsted St \\& Clybourn Ave               &  13 & Wilton Ave \\& Diversey Pkwy       & Subscriber & Male   & 1993\\\\\n",
       "\t 25223628 & 2019-09-30 23:52:53 & 2019-10-01 00:19:53 &  803 & 1620 & 225 & Halsted St \\& Dickens Ave                & 260 & Kedzie Ave \\& Milwaukee Ave       & Customer   & NA     &   NA\\\\\n",
       "\t 25223629 & 2019-09-30 23:53:05 & 2019-10-01 00:06:27 & 4600 &  801 & 238 & Wolcott (Ravenswood) Ave \\& Montrose Ave & 251 & Clarendon Ave \\& Leland Ave       & Subscriber & Male   & 1980\\\\\n",
       "\t 25223630 & 2019-09-30 23:54:03 & 2019-10-01 00:09:59 & 1788 &  955 & 228 & Damen Ave \\& Melrose Ave                 & 240 & Sheridan Rd \\& Irving Park Rd     & Subscriber & Male   & 1986\\\\\n",
       "\t 25223631 & 2019-09-30 23:55:26 & 2019-10-01 00:06:47 & 4409 &  680 &  54 & Ogden Ave \\& Chicago Ave                 & 346 & Ada St \\& Washington Blvd         & Subscriber & Male   & 1989\\\\\n",
       "\t 25223632 & 2019-09-30 23:55:40 & 2019-10-01 00:29:01 & 5488 & 2001 &  52 & Michigan Ave \\& Lake St                  & 289 & Wells St \\& Concord Ln            & Subscriber & Female & 1995\\\\\n",
       "\t 25223633 & 2019-09-30 23:56:09 & 2019-10-01 00:30:33 & 5181 & 2063 & 264 & Stetson Ave \\& South Water St            & 623 & Michigan Ave \\& 8th St            & Customer   & NA     &   NA\\\\\n",
       "\t 25223634 & 2019-09-30 23:56:12 & 2019-10-01 00:30:21 &  400 & 2049 & 264 & Stetson Ave \\& South Water St            & 623 & Michigan Ave \\& 8th St            & Customer   & NA     &   NA\\\\\n",
       "\t 25223635 & 2019-09-30 23:56:27 & 2019-10-01 00:06:20 & 5690 &  593 &  84 & Milwaukee Ave \\& Grand Ave               & 134 & Peoria St \\& Jackson Blvd         & Subscriber & Male   & 1993\\\\\n",
       "\t 25223636 & 2019-09-30 23:57:02 & 2019-10-01 00:02:13 & 5079 &  310 & 268 & Lake Shore Dr \\& North Blvd              &  85 & Michigan Ave \\& Oak St            & Subscriber & Male   & 1992\\\\\n",
       "\t 25223637 & 2019-09-30 23:57:45 & 2019-10-01 00:01:41 & 5535 &  235 & 423 & University Ave \\& 57th St                & 426 & Ellis Ave \\& 60th St              & Customer   & Male   & 2000\\\\\n",
       "\t 25223638 & 2019-09-30 23:57:47 & 2019-10-01 00:04:41 & 6120 &  414 & 110 & Dearborn St \\& Erie St                   &  31 & Franklin St \\& Chicago Ave (Temp) & Subscriber & Male   & 1986\\\\\n",
       "\t 25223639 & 2019-09-30 23:59:37 & 2019-10-01 00:05:17 &   60 &  339 & 265 & Cottage Grove Ave \\& Oakwood Blvd        & 179 & MLK Jr Dr \\& Pershing Rd          & Subscriber & Female & 1996\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A spec_tbl_df: 1640718 × 12\n",
       "\n",
       "| ride_id &lt;dbl&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | rideable_type &lt;dbl&gt; | tripduration &lt;dbl&gt; | start_station_id &lt;dbl&gt; | start_station_name &lt;chr&gt; | end_station_id &lt;dbl&gt; | end_station_name &lt;chr&gt; | member_casual &lt;chr&gt; | gender &lt;chr&gt; | birthyear &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 23479388 | 2019-07-01 00:00:27 | 2019-07-01 00:20:41 | 3591 |   1214 | 117 | Wilton Ave &amp; Belmont Ave       | 497 | Kimball Ave &amp; Belmont Ave     | Subscriber | Male | 1992 |\n",
       "| 23479389 | 2019-07-01 00:01:16 | 2019-07-01 00:18:44 | 5353 |   1048 | 381 | Western Ave &amp; Monroe St        | 203 | Western Ave &amp; 21st St         | Customer   | NA   |   NA |\n",
       "| 23479390 | 2019-07-01 00:01:48 | 2019-07-01 00:27:42 | 6180 |   1554 | 313 | Lakeview Ave &amp; Fullerton Pkwy  | 144 | Larrabee St &amp; Webster Ave     | Customer   | NA   |   NA |\n",
       "| 23479391 | 2019-07-01 00:02:07 | 2019-07-01 00:27:10 | 5540 |   1503 | 313 | Lakeview Ave &amp; Fullerton Pkwy  | 144 | Larrabee St &amp; Webster Ave     | Customer   | NA   |   NA |\n",
       "| 23479392 | 2019-07-01 00:02:13 | 2019-07-01 00:22:26 | 6014 |   1213 | 168 | Michigan Ave &amp; 14th St         |  62 | McCormick Place               | Customer   | NA   |   NA |\n",
       "| 23479393 | 2019-07-01 00:02:21 | 2019-07-01 00:07:31 | 4941 |    310 | 300 | Broadway &amp; Barry Ave           | 232 | Pine Grove Ave &amp; Waveland Ave | Subscriber | Male | 1990 |\n",
       "| 23479394 | 2019-07-01 00:02:24 | 2019-07-01 00:23:12 | 3770 |   1248 | 168 | Michigan Ave &amp; 14th St         |  62 | McCormick Place               | Customer   | NA   |   NA |\n",
       "| 23479395 | 2019-07-01 00:02:26 | 2019-07-01 00:28:16 | 5442 |   1550 | 313 | Lakeview Ave &amp; Fullerton Pkwy  | 144 | Larrabee St &amp; Webster Ave     | Customer   | NA   |   NA |\n",
       "| 23479396 | 2019-07-01 00:02:34 | 2019-07-01 00:28:57 | 2957 |   1583 |  43 | Michigan Ave &amp; Washington St   | 195 | Columbus Dr &amp; Randolph St     | Customer   | NA   |   NA |\n",
       "| 23479397 | 2019-07-01 00:02:45 | 2019-07-01 00:29:14 | 6091 |   1589 |  43 | Michigan Ave &amp; Washington St   | 195 | Columbus Dr &amp; Randolph St     | Customer   | NA   |   NA |\n",
       "| 23479398 | 2019-07-01 00:02:57 | 2019-07-01 00:29:05 | 4116 |   1568 | 511 | Albany Ave &amp; Bloomingdale Ave  |  84 | Milwaukee Ave &amp; Grand Ave     | Customer   | NA   |   NA |\n",
       "| 23479399 | 2019-07-01 00:03:07 | 2019-07-01 00:28:50 | 4948 |   1543 |  43 | Michigan Ave &amp; Washington St   | 195 | Columbus Dr &amp; Randolph St     | Customer   | NA   |   NA |\n",
       "| 23479400 | 2019-07-01 00:04:09 | 2019-07-01 00:36:56 |  307 |   1967 |  24 | Fairbanks Ct &amp; Grand Ave       |  24 | Fairbanks Ct &amp; Grand Ave      | Customer   | NA   |   NA |\n",
       "| 23479401 | 2019-07-01 00:04:25 | 2019-07-01 00:36:56 | 2422 |   1951 |  24 | Fairbanks Ct &amp; Grand Ave       |  24 | Fairbanks Ct &amp; Grand Ave      | Customer   | NA   |   NA |\n",
       "| 23479402 | 2019-07-01 00:04:41 | 2019-07-01 00:37:22 | 3369 |   1961 |  24 | Fairbanks Ct &amp; Grand Ave       |  24 | Fairbanks Ct &amp; Grand Ave      | Customer   | NA   |   NA |\n",
       "| 23479403 | 2019-07-01 00:05:18 | 2019-07-01 00:37:08 | 4050 |   1910 |  24 | Fairbanks Ct &amp; Grand Ave       |  24 | Fairbanks Ct &amp; Grand Ave      | Customer   | NA   |   NA |\n",
       "| 23479404 | 2019-07-01 00:06:06 | 2019-07-01 00:33:33 | 1535 |   1647 |  43 | Michigan Ave &amp; Washington St   |  43 | Michigan Ave &amp; Washington St  | Customer   | NA   |   NA |\n",
       "| 23479405 | 2019-07-01 00:06:10 | 2019-07-01 00:33:08 | 4722 |   1618 |  43 | Michigan Ave &amp; Washington St   |  43 | Michigan Ave &amp; Washington St  | Customer   | NA   |   NA |\n",
       "| 23479406 | 2019-07-01 00:06:51 | 2019-07-01 00:26:22 | 2758 |   1171 | 624 | Dearborn St &amp; Van Buren St     | 237 | MLK Jr Dr &amp; 29th St           | Subscriber | Male | 1995 |\n",
       "| 23479407 | 2019-07-01 00:06:55 | 2019-07-01 00:33:28 | 1614 |   1593 |  43 | Michigan Ave &amp; Washington St   |  43 | Michigan Ave &amp; Washington St  | Customer   | NA   |   NA |\n",
       "| 23479408 | 2019-07-01 00:08:24 | 2019-07-01 00:20:07 | 2447 |    703 | 239 | Western Ave &amp; Leland Ave       | 455 | Maplewood Ave &amp; Peterson Ave  | Subscriber | Male | 1970 |\n",
       "| 23479409 | 2019-07-01 00:08:40 | 2019-07-01 00:27:50 | 6336 |   1150 | 257 | Lincoln Ave &amp; Waveland Ave     | 295 | Broadway &amp; Argyle St          | Subscriber | Male | 1993 |\n",
       "| 23479410 | 2019-07-01 00:08:45 | 2019-07-01 00:19:24 | 3249 |    639 | 309 | Leavitt St &amp; Armitage Ave      | 113 | Bissell St &amp; Armitage Ave     | Customer   | NA   |   NA |\n",
       "| 23479411 | 2019-07-01 00:10:20 | 2019-07-01 00:19:36 | 3632 |    556 |  76 | Lake Shore Dr &amp; Monroe St      |  59 | Wabash Ave &amp; Roosevelt Rd     | Customer   | NA   |   NA |\n",
       "| 23479412 | 2019-07-01 00:10:47 | 2019-07-01 01:46:44 | 3154 |   5757 |  90 | Millennium Park                |  90 | Millennium Park               | Customer   | NA   |   NA |\n",
       "| 23479414 | 2019-07-01 00:11:17 | 2019-07-01 00:25:36 | 2138 |    859 | 313 | Lakeview Ave &amp; Fullerton Pkwy  |  58 | Marshfield Ave &amp; Cortland St  | Customer   | NA   |   NA |\n",
       "| 23479415 | 2019-07-01 00:11:22 | 2019-07-01 01:46:44 | 1713 |   5722 |  90 | Millennium Park                |  90 | Millennium Park               | Customer   | NA   |   NA |\n",
       "| 23479416 | 2019-07-01 00:14:40 | 2019-07-02 07:53:48 | 1122 | 113948 | 123 | California Ave &amp; Milwaukee Ave | 509 | Troy St &amp; North Ave           | Customer   | NA   |   NA |\n",
       "| 23479417 | 2019-07-01 00:14:58 | 2019-07-01 01:15:58 |  356 |   3660 | 123 | California Ave &amp; Milwaukee Ave | 222 | Milwaukee Ave &amp; Rockwell St   | Customer   | NA   |   NA |\n",
       "| 23479418 | 2019-07-01 00:15:06 | 2019-07-01 00:36:40 | 4525 |   1294 | 240 | Sheridan Rd &amp; Irving Park Rd   | 326 | Clark St &amp; Leland Ave         | Customer   | Male | 1987 |\n",
       "| ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ |\n",
       "| 25223610 | 2019-09-30 23:44:28 | 2019-09-30 23:50:15 | 5387 |  347 |  22 | May St &amp; Taylor St                      | 282 | Halsted St &amp; Maxwell St          | Subscriber | Male   | 1995 |\n",
       "| 25223611 | 2019-09-30 23:45:47 | 2019-10-01 00:06:31 | 5747 | 1244 | 664 | Leavitt St &amp; Belmont Ave (*)            | 313 | Lakeview Ave &amp; Fullerton Pkwy    | Subscriber | Female | 1996 |\n",
       "| 25223612 | 2019-09-30 23:46:37 | 2019-10-01 00:10:19 | 4333 | 1421 | 591 | Kilbourn Ave &amp; Milwaukee Ave            | 123 | California Ave &amp; Milwaukee Ave   | Customer   | NA     |   NA |\n",
       "| 25223613 | 2019-09-30 23:47:11 | 2019-10-01 00:12:26 | 6228 | 1514 | 232 | Pine Grove Ave &amp; Waveland Ave           | 257 | Lincoln Ave &amp; Waveland Ave       | Customer   | Male   | 1999 |\n",
       "| 25223614 | 2019-09-30 23:47:31 | 2019-09-30 23:56:55 |  488 |  563 | 596 | Benson Ave &amp; Church St                  | 600 | Dodge Ave &amp; Church St            | Customer   | Male   | 1971 |\n",
       "| 25223615 | 2019-09-30 23:47:41 | 2019-10-01 00:28:15 |  406 | 2433 | 302 | Sheffield Ave &amp; Wrightwood Ave          |  85 | Michigan Ave &amp; Oak St            | Customer   | NA     |   NA |\n",
       "| 25223616 | 2019-09-30 23:47:57 | 2019-09-30 23:50:40 | 3584 |  163 | 302 | Sheffield Ave &amp; Wrightwood Ave          | 349 | Halsted St &amp; Wrightwood Ave      | Subscriber | Male   | 1992 |\n",
       "| 25223617 | 2019-09-30 23:48:12 | 2019-09-30 23:53:16 | 4970 |  304 | 654 | Racine Ave &amp; Washington Blvd (*)        | 186 | Ogden Ave &amp; Race Ave             | Subscriber | Female | 1989 |\n",
       "| 25223618 | 2019-09-30 23:48:29 | 2019-10-01 00:12:16 | 2370 | 1426 | 232 | Pine Grove Ave &amp; Waveland Ave           | 257 | Lincoln Ave &amp; Waveland Ave       | Customer   | Male   | 1989 |\n",
       "| 25223619 | 2019-09-30 23:48:39 | 2019-10-01 00:13:07 | 4737 | 1468 | 490 | Troy St &amp; Elston Ave                    | 296 | Broadway &amp; Belmont Ave           | Subscriber | Male   | 1994 |\n",
       "| 25223620 | 2019-09-30 23:49:24 | 2019-09-30 23:56:47 | 3182 |  443 | 232 | Pine Grove Ave &amp; Waveland Ave           | 117 | Wilton Ave &amp; Belmont Ave         | Customer   | NA     |   NA |\n",
       "| 25223621 | 2019-09-30 23:49:26 | 2019-10-01 00:12:34 | 1867 | 1387 | 232 | Pine Grove Ave &amp; Waveland Ave           | 257 | Lincoln Ave &amp; Waveland Ave       | Customer   | NA     |   NA |\n",
       "| 25223622 | 2019-09-30 23:51:33 | 2019-10-01 00:15:18 | 3892 | 1425 |  50 | Clark St &amp; Ida B Wells Dr               | 280 | Morgan St &amp; 31st St              | Subscriber | Male   | 1985 |\n",
       "| 25223623 | 2019-09-30 23:51:27 | 2019-10-01 00:10:39 | 3422 | 1151 | 331 | Halsted St &amp; Clybourn Ave               | 637 | Wood St &amp; Chicago Ave (*)        | Subscriber | Male   | 1993 |\n",
       "| 25223624 | 2019-09-30 23:51:38 | 2019-10-01 00:28:28 | 5507 | 2209 | 349 | Halsted St &amp; Wrightwood Ave             |  85 | Michigan Ave &amp; Oak St            | Subscriber | Male   | 1992 |\n",
       "| 25223625 | 2019-09-30 23:51:45 | 2019-10-01 00:12:43 | 5387 | 1257 | 282 | Halsted St &amp; Maxwell St                 | 148 | State St &amp; 33rd St               | Customer   | NA     | 1999 |\n",
       "| 25223626 | 2019-09-30 23:51:49 | 2019-10-01 00:01:12 | 1908 |  563 | 195 | Columbus Dr &amp; Randolph St               |  77 | Clinton St &amp; Madison St          | Subscriber | Male   | 1969 |\n",
       "| 25223627 | 2019-09-30 23:52:37 | 2019-10-01 00:03:15 | 5232 |  638 | 331 | Halsted St &amp; Clybourn Ave               |  13 | Wilton Ave &amp; Diversey Pkwy       | Subscriber | Male   | 1993 |\n",
       "| 25223628 | 2019-09-30 23:52:53 | 2019-10-01 00:19:53 |  803 | 1620 | 225 | Halsted St &amp; Dickens Ave                | 260 | Kedzie Ave &amp; Milwaukee Ave       | Customer   | NA     |   NA |\n",
       "| 25223629 | 2019-09-30 23:53:05 | 2019-10-01 00:06:27 | 4600 |  801 | 238 | Wolcott (Ravenswood) Ave &amp; Montrose Ave | 251 | Clarendon Ave &amp; Leland Ave       | Subscriber | Male   | 1980 |\n",
       "| 25223630 | 2019-09-30 23:54:03 | 2019-10-01 00:09:59 | 1788 |  955 | 228 | Damen Ave &amp; Melrose Ave                 | 240 | Sheridan Rd &amp; Irving Park Rd     | Subscriber | Male   | 1986 |\n",
       "| 25223631 | 2019-09-30 23:55:26 | 2019-10-01 00:06:47 | 4409 |  680 |  54 | Ogden Ave &amp; Chicago Ave                 | 346 | Ada St &amp; Washington Blvd         | Subscriber | Male   | 1989 |\n",
       "| 25223632 | 2019-09-30 23:55:40 | 2019-10-01 00:29:01 | 5488 | 2001 |  52 | Michigan Ave &amp; Lake St                  | 289 | Wells St &amp; Concord Ln            | Subscriber | Female | 1995 |\n",
       "| 25223633 | 2019-09-30 23:56:09 | 2019-10-01 00:30:33 | 5181 | 2063 | 264 | Stetson Ave &amp; South Water St            | 623 | Michigan Ave &amp; 8th St            | Customer   | NA     |   NA |\n",
       "| 25223634 | 2019-09-30 23:56:12 | 2019-10-01 00:30:21 |  400 | 2049 | 264 | Stetson Ave &amp; South Water St            | 623 | Michigan Ave &amp; 8th St            | Customer   | NA     |   NA |\n",
       "| 25223635 | 2019-09-30 23:56:27 | 2019-10-01 00:06:20 | 5690 |  593 |  84 | Milwaukee Ave &amp; Grand Ave               | 134 | Peoria St &amp; Jackson Blvd         | Subscriber | Male   | 1993 |\n",
       "| 25223636 | 2019-09-30 23:57:02 | 2019-10-01 00:02:13 | 5079 |  310 | 268 | Lake Shore Dr &amp; North Blvd              |  85 | Michigan Ave &amp; Oak St            | Subscriber | Male   | 1992 |\n",
       "| 25223637 | 2019-09-30 23:57:45 | 2019-10-01 00:01:41 | 5535 |  235 | 423 | University Ave &amp; 57th St                | 426 | Ellis Ave &amp; 60th St              | Customer   | Male   | 2000 |\n",
       "| 25223638 | 2019-09-30 23:57:47 | 2019-10-01 00:04:41 | 6120 |  414 | 110 | Dearborn St &amp; Erie St                   |  31 | Franklin St &amp; Chicago Ave (Temp) | Subscriber | Male   | 1986 |\n",
       "| 25223639 | 2019-09-30 23:59:37 | 2019-10-01 00:05:17 |   60 |  339 | 265 | Cottage Grove Ave &amp; Oakwood Blvd        | 179 | MLK Jr Dr &amp; Pershing Rd          | Subscriber | Female | 1996 |\n",
       "\n"
      ],
      "text/plain": [
       "        ride_id  started_at          ended_at            rideable_type\n",
       "1       23479388 2019-07-01 00:00:27 2019-07-01 00:20:41 3591         \n",
       "2       23479389 2019-07-01 00:01:16 2019-07-01 00:18:44 5353         \n",
       "3       23479390 2019-07-01 00:01:48 2019-07-01 00:27:42 6180         \n",
       "4       23479391 2019-07-01 00:02:07 2019-07-01 00:27:10 5540         \n",
       "5       23479392 2019-07-01 00:02:13 2019-07-01 00:22:26 6014         \n",
       "6       23479393 2019-07-01 00:02:21 2019-07-01 00:07:31 4941         \n",
       "7       23479394 2019-07-01 00:02:24 2019-07-01 00:23:12 3770         \n",
       "8       23479395 2019-07-01 00:02:26 2019-07-01 00:28:16 5442         \n",
       "9       23479396 2019-07-01 00:02:34 2019-07-01 00:28:57 2957         \n",
       "10      23479397 2019-07-01 00:02:45 2019-07-01 00:29:14 6091         \n",
       "11      23479398 2019-07-01 00:02:57 2019-07-01 00:29:05 4116         \n",
       "12      23479399 2019-07-01 00:03:07 2019-07-01 00:28:50 4948         \n",
       "13      23479400 2019-07-01 00:04:09 2019-07-01 00:36:56  307         \n",
       "14      23479401 2019-07-01 00:04:25 2019-07-01 00:36:56 2422         \n",
       "15      23479402 2019-07-01 00:04:41 2019-07-01 00:37:22 3369         \n",
       "16      23479403 2019-07-01 00:05:18 2019-07-01 00:37:08 4050         \n",
       "17      23479404 2019-07-01 00:06:06 2019-07-01 00:33:33 1535         \n",
       "18      23479405 2019-07-01 00:06:10 2019-07-01 00:33:08 4722         \n",
       "19      23479406 2019-07-01 00:06:51 2019-07-01 00:26:22 2758         \n",
       "20      23479407 2019-07-01 00:06:55 2019-07-01 00:33:28 1614         \n",
       "21      23479408 2019-07-01 00:08:24 2019-07-01 00:20:07 2447         \n",
       "22      23479409 2019-07-01 00:08:40 2019-07-01 00:27:50 6336         \n",
       "23      23479410 2019-07-01 00:08:45 2019-07-01 00:19:24 3249         \n",
       "24      23479411 2019-07-01 00:10:20 2019-07-01 00:19:36 3632         \n",
       "25      23479412 2019-07-01 00:10:47 2019-07-01 01:46:44 3154         \n",
       "26      23479414 2019-07-01 00:11:17 2019-07-01 00:25:36 2138         \n",
       "27      23479415 2019-07-01 00:11:22 2019-07-01 01:46:44 1713         \n",
       "28      23479416 2019-07-01 00:14:40 2019-07-02 07:53:48 1122         \n",
       "29      23479417 2019-07-01 00:14:58 2019-07-01 01:15:58  356         \n",
       "30      23479418 2019-07-01 00:15:06 2019-07-01 00:36:40 4525         \n",
       "⋮       ⋮        ⋮                   ⋮                   ⋮            \n",
       "1640689 25223610 2019-09-30 23:44:28 2019-09-30 23:50:15 5387         \n",
       "1640690 25223611 2019-09-30 23:45:47 2019-10-01 00:06:31 5747         \n",
       "1640691 25223612 2019-09-30 23:46:37 2019-10-01 00:10:19 4333         \n",
       "1640692 25223613 2019-09-30 23:47:11 2019-10-01 00:12:26 6228         \n",
       "1640693 25223614 2019-09-30 23:47:31 2019-09-30 23:56:55  488         \n",
       "1640694 25223615 2019-09-30 23:47:41 2019-10-01 00:28:15  406         \n",
       "1640695 25223616 2019-09-30 23:47:57 2019-09-30 23:50:40 3584         \n",
       "1640696 25223617 2019-09-30 23:48:12 2019-09-30 23:53:16 4970         \n",
       "1640697 25223618 2019-09-30 23:48:29 2019-10-01 00:12:16 2370         \n",
       "1640698 25223619 2019-09-30 23:48:39 2019-10-01 00:13:07 4737         \n",
       "1640699 25223620 2019-09-30 23:49:24 2019-09-30 23:56:47 3182         \n",
       "1640700 25223621 2019-09-30 23:49:26 2019-10-01 00:12:34 1867         \n",
       "1640701 25223622 2019-09-30 23:51:33 2019-10-01 00:15:18 3892         \n",
       "1640702 25223623 2019-09-30 23:51:27 2019-10-01 00:10:39 3422         \n",
       "1640703 25223624 2019-09-30 23:51:38 2019-10-01 00:28:28 5507         \n",
       "1640704 25223625 2019-09-30 23:51:45 2019-10-01 00:12:43 5387         \n",
       "1640705 25223626 2019-09-30 23:51:49 2019-10-01 00:01:12 1908         \n",
       "1640706 25223627 2019-09-30 23:52:37 2019-10-01 00:03:15 5232         \n",
       "1640707 25223628 2019-09-30 23:52:53 2019-10-01 00:19:53  803         \n",
       "1640708 25223629 2019-09-30 23:53:05 2019-10-01 00:06:27 4600         \n",
       "1640709 25223630 2019-09-30 23:54:03 2019-10-01 00:09:59 1788         \n",
       "1640710 25223631 2019-09-30 23:55:26 2019-10-01 00:06:47 4409         \n",
       "1640711 25223632 2019-09-30 23:55:40 2019-10-01 00:29:01 5488         \n",
       "1640712 25223633 2019-09-30 23:56:09 2019-10-01 00:30:33 5181         \n",
       "1640713 25223634 2019-09-30 23:56:12 2019-10-01 00:30:21  400         \n",
       "1640714 25223635 2019-09-30 23:56:27 2019-10-01 00:06:20 5690         \n",
       "1640715 25223636 2019-09-30 23:57:02 2019-10-01 00:02:13 5079         \n",
       "1640716 25223637 2019-09-30 23:57:45 2019-10-01 00:01:41 5535         \n",
       "1640717 25223638 2019-09-30 23:57:47 2019-10-01 00:04:41 6120         \n",
       "1640718 25223639 2019-09-30 23:59:37 2019-10-01 00:05:17   60         \n",
       "        tripduration start_station_id start_station_name                     \n",
       "1         1214       117              Wilton Ave & Belmont Ave               \n",
       "2         1048       381              Western Ave & Monroe St                \n",
       "3         1554       313              Lakeview Ave & Fullerton Pkwy          \n",
       "4         1503       313              Lakeview Ave & Fullerton Pkwy          \n",
       "5         1213       168              Michigan Ave & 14th St                 \n",
       "6          310       300              Broadway & Barry Ave                   \n",
       "7         1248       168              Michigan Ave & 14th St                 \n",
       "8         1550       313              Lakeview Ave & Fullerton Pkwy          \n",
       "9         1583        43              Michigan Ave & Washington St           \n",
       "10        1589        43              Michigan Ave & Washington St           \n",
       "11        1568       511              Albany Ave & Bloomingdale Ave          \n",
       "12        1543        43              Michigan Ave & Washington St           \n",
       "13        1967        24              Fairbanks Ct & Grand Ave               \n",
       "14        1951        24              Fairbanks Ct & Grand Ave               \n",
       "15        1961        24              Fairbanks Ct & Grand Ave               \n",
       "16        1910        24              Fairbanks Ct & Grand Ave               \n",
       "17        1647        43              Michigan Ave & Washington St           \n",
       "18        1618        43              Michigan Ave & Washington St           \n",
       "19        1171       624              Dearborn St & Van Buren St             \n",
       "20        1593        43              Michigan Ave & Washington St           \n",
       "21         703       239              Western Ave & Leland Ave               \n",
       "22        1150       257              Lincoln Ave & Waveland Ave             \n",
       "23         639       309              Leavitt St & Armitage Ave              \n",
       "24         556        76              Lake Shore Dr & Monroe St              \n",
       "25        5757        90              Millennium Park                        \n",
       "26         859       313              Lakeview Ave & Fullerton Pkwy          \n",
       "27        5722        90              Millennium Park                        \n",
       "28      113948       123              California Ave & Milwaukee Ave         \n",
       "29        3660       123              California Ave & Milwaukee Ave         \n",
       "30        1294       240              Sheridan Rd & Irving Park Rd           \n",
       "⋮       ⋮            ⋮                ⋮                                      \n",
       "1640689  347          22              May St & Taylor St                     \n",
       "1640690 1244         664              Leavitt St & Belmont Ave (*)           \n",
       "1640691 1421         591              Kilbourn Ave & Milwaukee Ave           \n",
       "1640692 1514         232              Pine Grove Ave & Waveland Ave          \n",
       "1640693  563         596              Benson Ave & Church St                 \n",
       "1640694 2433         302              Sheffield Ave & Wrightwood Ave         \n",
       "1640695  163         302              Sheffield Ave & Wrightwood Ave         \n",
       "1640696  304         654              Racine Ave & Washington Blvd (*)       \n",
       "1640697 1426         232              Pine Grove Ave & Waveland Ave          \n",
       "1640698 1468         490              Troy St & Elston Ave                   \n",
       "1640699  443         232              Pine Grove Ave & Waveland Ave          \n",
       "1640700 1387         232              Pine Grove Ave & Waveland Ave          \n",
       "1640701 1425          50              Clark St & Ida B Wells Dr              \n",
       "1640702 1151         331              Halsted St & Clybourn Ave              \n",
       "1640703 2209         349              Halsted St & Wrightwood Ave            \n",
       "1640704 1257         282              Halsted St & Maxwell St                \n",
       "1640705  563         195              Columbus Dr & Randolph St              \n",
       "1640706  638         331              Halsted St & Clybourn Ave              \n",
       "1640707 1620         225              Halsted St & Dickens Ave               \n",
       "1640708  801         238              Wolcott (Ravenswood) Ave & Montrose Ave\n",
       "1640709  955         228              Damen Ave & Melrose Ave                \n",
       "1640710  680          54              Ogden Ave & Chicago Ave                \n",
       "1640711 2001          52              Michigan Ave & Lake St                 \n",
       "1640712 2063         264              Stetson Ave & South Water St           \n",
       "1640713 2049         264              Stetson Ave & South Water St           \n",
       "1640714  593          84              Milwaukee Ave & Grand Ave              \n",
       "1640715  310         268              Lake Shore Dr & North Blvd             \n",
       "1640716  235         423              University Ave & 57th St               \n",
       "1640717  414         110              Dearborn St & Erie St                  \n",
       "1640718  339         265              Cottage Grove Ave & Oakwood Blvd       \n",
       "        end_station_id end_station_name                 member_casual gender\n",
       "1       497            Kimball Ave & Belmont Ave        Subscriber    Male  \n",
       "2       203            Western Ave & 21st St            Customer      NA    \n",
       "3       144            Larrabee St & Webster Ave        Customer      NA    \n",
       "4       144            Larrabee St & Webster Ave        Customer      NA    \n",
       "5        62            McCormick Place                  Customer      NA    \n",
       "6       232            Pine Grove Ave & Waveland Ave    Subscriber    Male  \n",
       "7        62            McCormick Place                  Customer      NA    \n",
       "8       144            Larrabee St & Webster Ave        Customer      NA    \n",
       "9       195            Columbus Dr & Randolph St        Customer      NA    \n",
       "10      195            Columbus Dr & Randolph St        Customer      NA    \n",
       "11       84            Milwaukee Ave & Grand Ave        Customer      NA    \n",
       "12      195            Columbus Dr & Randolph St        Customer      NA    \n",
       "13       24            Fairbanks Ct & Grand Ave         Customer      NA    \n",
       "14       24            Fairbanks Ct & Grand Ave         Customer      NA    \n",
       "15       24            Fairbanks Ct & Grand Ave         Customer      NA    \n",
       "16       24            Fairbanks Ct & Grand Ave         Customer      NA    \n",
       "17       43            Michigan Ave & Washington St     Customer      NA    \n",
       "18       43            Michigan Ave & Washington St     Customer      NA    \n",
       "19      237            MLK Jr Dr & 29th St              Subscriber    Male  \n",
       "20       43            Michigan Ave & Washington St     Customer      NA    \n",
       "21      455            Maplewood Ave & Peterson Ave     Subscriber    Male  \n",
       "22      295            Broadway & Argyle St             Subscriber    Male  \n",
       "23      113            Bissell St & Armitage Ave        Customer      NA    \n",
       "24       59            Wabash Ave & Roosevelt Rd        Customer      NA    \n",
       "25       90            Millennium Park                  Customer      NA    \n",
       "26       58            Marshfield Ave & Cortland St     Customer      NA    \n",
       "27       90            Millennium Park                  Customer      NA    \n",
       "28      509            Troy St & North Ave              Customer      NA    \n",
       "29      222            Milwaukee Ave & Rockwell St      Customer      NA    \n",
       "30      326            Clark St & Leland Ave            Customer      Male  \n",
       "⋮       ⋮              ⋮                                ⋮             ⋮     \n",
       "1640689 282            Halsted St & Maxwell St          Subscriber    Male  \n",
       "1640690 313            Lakeview Ave & Fullerton Pkwy    Subscriber    Female\n",
       "1640691 123            California Ave & Milwaukee Ave   Customer      NA    \n",
       "1640692 257            Lincoln Ave & Waveland Ave       Customer      Male  \n",
       "1640693 600            Dodge Ave & Church St            Customer      Male  \n",
       "1640694  85            Michigan Ave & Oak St            Customer      NA    \n",
       "1640695 349            Halsted St & Wrightwood Ave      Subscriber    Male  \n",
       "1640696 186            Ogden Ave & Race Ave             Subscriber    Female\n",
       "1640697 257            Lincoln Ave & Waveland Ave       Customer      Male  \n",
       "1640698 296            Broadway & Belmont Ave           Subscriber    Male  \n",
       "1640699 117            Wilton Ave & Belmont Ave         Customer      NA    \n",
       "1640700 257            Lincoln Ave & Waveland Ave       Customer      NA    \n",
       "1640701 280            Morgan St & 31st St              Subscriber    Male  \n",
       "1640702 637            Wood St & Chicago Ave (*)        Subscriber    Male  \n",
       "1640703  85            Michigan Ave & Oak St            Subscriber    Male  \n",
       "1640704 148            State St & 33rd St               Customer      NA    \n",
       "1640705  77            Clinton St & Madison St          Subscriber    Male  \n",
       "1640706  13            Wilton Ave & Diversey Pkwy       Subscriber    Male  \n",
       "1640707 260            Kedzie Ave & Milwaukee Ave       Customer      NA    \n",
       "1640708 251            Clarendon Ave & Leland Ave       Subscriber    Male  \n",
       "1640709 240            Sheridan Rd & Irving Park Rd     Subscriber    Male  \n",
       "1640710 346            Ada St & Washington Blvd         Subscriber    Male  \n",
       "1640711 289            Wells St & Concord Ln            Subscriber    Female\n",
       "1640712 623            Michigan Ave & 8th St            Customer      NA    \n",
       "1640713 623            Michigan Ave & 8th St            Customer      NA    \n",
       "1640714 134            Peoria St & Jackson Blvd         Subscriber    Male  \n",
       "1640715  85            Michigan Ave & Oak St            Subscriber    Male  \n",
       "1640716 426            Ellis Ave & 60th St              Customer      Male  \n",
       "1640717  31            Franklin St & Chicago Ave (Temp) Subscriber    Male  \n",
       "1640718 179            MLK Jr Dr & Pershing Rd          Subscriber    Female\n",
       "        birthyear\n",
       "1       1992     \n",
       "2         NA     \n",
       "3         NA     \n",
       "4         NA     \n",
       "5         NA     \n",
       "6       1990     \n",
       "7         NA     \n",
       "8         NA     \n",
       "9         NA     \n",
       "10        NA     \n",
       "11        NA     \n",
       "12        NA     \n",
       "13        NA     \n",
       "14        NA     \n",
       "15        NA     \n",
       "16        NA     \n",
       "17        NA     \n",
       "18        NA     \n",
       "19      1995     \n",
       "20        NA     \n",
       "21      1970     \n",
       "22      1993     \n",
       "23        NA     \n",
       "24        NA     \n",
       "25        NA     \n",
       "26        NA     \n",
       "27        NA     \n",
       "28        NA     \n",
       "29        NA     \n",
       "30      1987     \n",
       "⋮       ⋮        \n",
       "1640689 1995     \n",
       "1640690 1996     \n",
       "1640691   NA     \n",
       "1640692 1999     \n",
       "1640693 1971     \n",
       "1640694   NA     \n",
       "1640695 1992     \n",
       "1640696 1989     \n",
       "1640697 1989     \n",
       "1640698 1994     \n",
       "1640699   NA     \n",
       "1640700   NA     \n",
       "1640701 1985     \n",
       "1640702 1993     \n",
       "1640703 1992     \n",
       "1640704 1999     \n",
       "1640705 1969     \n",
       "1640706 1993     \n",
       "1640707   NA     \n",
       "1640708 1980     \n",
       "1640709 1986     \n",
       "1640710 1989     \n",
       "1640711 1995     \n",
       "1640712   NA     \n",
       "1640713   NA     \n",
       "1640714 1993     \n",
       "1640715 1992     \n",
       "1640716 2000     \n",
       "1640717 1986     \n",
       "1640718 1996     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A spec_tbl_df: 1108163 × 12</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>ride_id</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>rideable_type</th><th scope=col>01 - Rental Details Duration In Seconds Uncapped</th><th scope=col>start_station_id</th><th scope=col>start_station_name</th><th scope=col>end_station_id</th><th scope=col>end_station_name</th><th scope=col>member_casual</th><th scope=col>Member Gender</th><th scope=col>05 - Member Details Member Birthday Year</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>22178529</td><td>2019-04-01 00:02:22</td><td>2019-04-01 00:09:48</td><td>6251</td><td> 446</td><td> 81</td><td><span style=white-space:pre-wrap>Daley Center Plaza             </span></td><td> 56</td><td><span style=white-space:pre-wrap>Desplaines St &amp; Kinzie St           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1975</td></tr>\n",
       "\t<tr><td>22178530</td><td>2019-04-01 00:03:02</td><td>2019-04-01 00:20:30</td><td>6226</td><td>1048</td><td>317</td><td><span style=white-space:pre-wrap>Wood St &amp; Taylor St            </span></td><td> 59</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Roosevelt Rd           </span></td><td>Subscriber</td><td>Female</td><td>1984</td></tr>\n",
       "\t<tr><td>22178531</td><td>2019-04-01 00:11:07</td><td>2019-04-01 00:15:19</td><td>5649</td><td> 252</td><td>283</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Jackson Blvd      </span></td><td>174</td><td><span style=white-space:pre-wrap>Canal St &amp; Madison St               </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1990</td></tr>\n",
       "\t<tr><td>22178532</td><td>2019-04-01 00:13:01</td><td>2019-04-01 00:18:58</td><td>4151</td><td> 357</td><td> 26</td><td><span style=white-space:pre-wrap>McClurg Ct &amp; Illinois St       </span></td><td>133</td><td><span style=white-space:pre-wrap>Kingsbury St &amp; Kinzie St            </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1993</td></tr>\n",
       "\t<tr><td>22178533</td><td>2019-04-01 00:19:26</td><td>2019-04-01 00:36:13</td><td>3270</td><td>1007</td><td>202</td><td><span style=white-space:pre-wrap>Halsted St &amp; 18th St           </span></td><td>129</td><td><span style=white-space:pre-wrap>Blue Island Ave &amp; 18th St           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1992</td></tr>\n",
       "\t<tr><td>22178534</td><td>2019-04-01 00:19:39</td><td>2019-04-01 00:23:56</td><td>3123</td><td> 257</td><td>420</td><td><span style=white-space:pre-wrap>Ellis Ave &amp; 55th St            </span></td><td>426</td><td><span style=white-space:pre-wrap>Ellis Ave &amp; 60th St                 </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1999</td></tr>\n",
       "\t<tr><td>22178535</td><td>2019-04-01 00:26:33</td><td>2019-04-01 00:35:41</td><td>6418</td><td> 548</td><td>503</td><td><span style=white-space:pre-wrap>Drake Ave &amp; Fullerton Ave      </span></td><td>500</td><td><span style=white-space:pre-wrap>Central Park Ave &amp; Elbridge Ave     </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1969</td></tr>\n",
       "\t<tr><td>22178536</td><td>2019-04-01 00:29:48</td><td>2019-04-01 00:36:11</td><td>4513</td><td> 383</td><td>260</td><td><span style=white-space:pre-wrap>Kedzie Ave &amp; Milwaukee Ave     </span></td><td>499</td><td><span style=white-space:pre-wrap>Kosciuszko Park                     </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1991</td></tr>\n",
       "\t<tr><td>22178537</td><td>2019-04-01 00:32:07</td><td>2019-04-01 01:07:44</td><td>3280</td><td>2137</td><td>211</td><td><span style=white-space:pre-wrap>St. Clair St &amp; Erie St         </span></td><td>211</td><td><span style=white-space:pre-wrap>St. Clair St &amp; Erie St              </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>22178538</td><td>2019-04-01 00:32:19</td><td>2019-04-01 01:07:39</td><td>5534</td><td>2120</td><td>211</td><td><span style=white-space:pre-wrap>St. Clair St &amp; Erie St         </span></td><td>211</td><td><span style=white-space:pre-wrap>St. Clair St &amp; Erie St              </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>22178539</td><td>2019-04-01 00:36:20</td><td>2019-04-01 00:41:17</td><td>4666</td><td> 297</td><td>304</td><td><span style=white-space:pre-wrap>Broadway &amp; Waveland Ave        </span></td><td>232</td><td><span style=white-space:pre-wrap>Pine Grove Ave &amp; Waveland Ave       </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1975</td></tr>\n",
       "\t<tr><td>22178540</td><td>2019-04-01 00:58:38</td><td>2019-04-01 01:04:43</td><td>3735</td><td> 365</td><td> 37</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Adams St         </span></td><td>337</td><td><span style=white-space:pre-wrap>Clark St &amp; Chicago Ave              </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1991</td></tr>\n",
       "\t<tr><td>22178541</td><td>2019-04-01 01:09:41</td><td>2019-04-01 01:12:26</td><td>6108</td><td> 165</td><td> 75</td><td><span style=white-space:pre-wrap>Canal St &amp; Jackson Blvd        </span></td><td> 36</td><td><span style=white-space:pre-wrap>Franklin St &amp; Jackson Blvd          </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1990</td></tr>\n",
       "\t<tr><td>22178542</td><td>2019-04-01 01:13:15</td><td>2019-04-01 01:20:38</td><td>6157</td><td> 443</td><td>334</td><td><span style=white-space:pre-wrap>Lake Shore Dr &amp; Belmont Ave    </span></td><td>256</td><td><span style=white-space:pre-wrap>Broadway &amp; Sheridan Rd              </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1989</td></tr>\n",
       "\t<tr><td>22178543</td><td>2019-04-01 01:18:09</td><td>2019-04-01 01:23:02</td><td>4384</td><td> 293</td><td> 39</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Adams St          </span></td><td>255</td><td><span style=white-space:pre-wrap>Indiana Ave &amp; Roosevelt Rd          </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1969</td></tr>\n",
       "\t<tr><td>22178544</td><td>2019-04-01 01:28:21</td><td>2019-04-01 01:31:45</td><td>4022</td><td> 204</td><td>287</td><td><span style=white-space:pre-wrap>Franklin St &amp; Monroe St        </span></td><td> 89</td><td>Financial Pl &amp; Ida B Wells Dr (Temp)</td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1994</td></tr>\n",
       "\t<tr><td>22178545</td><td>2019-04-01 01:31:35</td><td>2019-04-01 01:35:28</td><td>2748</td><td> 233</td><td>148</td><td><span style=white-space:pre-wrap>State St &amp; 33rd St             </span></td><td>272</td><td><span style=white-space:pre-wrap>Indiana Ave &amp; 31st St               </span></td><td>Subscriber</td><td>Female</td><td>1989</td></tr>\n",
       "\t<tr><td>22178546</td><td>2019-04-01 01:53:56</td><td>2019-04-01 02:03:02</td><td>5351</td><td> 546</td><td> 59</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Roosevelt Rd      </span></td><td> 36</td><td><span style=white-space:pre-wrap>Franklin St &amp; Jackson Blvd          </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1958</td></tr>\n",
       "\t<tr><td>22178547</td><td>2019-04-01 02:10:56</td><td>2019-04-01 02:31:45</td><td>1406</td><td>1249</td><td>240</td><td><span style=white-space:pre-wrap>Sheridan Rd &amp; Irving Park Rd   </span></td><td>325</td><td><span style=white-space:pre-wrap>Clark St &amp; Winnemac Ave             </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>22178548</td><td>2019-04-01 02:12:53</td><td>2019-04-01 02:16:56</td><td>3325</td><td> 243</td><td>430</td><td><span style=white-space:pre-wrap>MLK Jr Dr &amp; 63rd St            </span></td><td>427</td><td><span style=white-space:pre-wrap>Cottage Grove Ave &amp; 63rd St         </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1985</td></tr>\n",
       "\t<tr><td>22178549</td><td>2019-04-01 02:27:02</td><td>2019-04-01 02:30:10</td><td><span style=white-space:pre-wrap>  93</span></td><td> 188</td><td>257</td><td><span style=white-space:pre-wrap>Lincoln Ave &amp; Waveland Ave     </span></td><td>230</td><td><span style=white-space:pre-wrap>Lincoln Ave &amp; Roscoe St             </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1981</td></tr>\n",
       "\t<tr><td>22178550</td><td>2019-04-01 02:37:48</td><td>2019-04-01 02:41:35</td><td>3325</td><td> 227</td><td>427</td><td><span style=white-space:pre-wrap>Cottage Grove Ave &amp; 63rd St    </span></td><td>430</td><td><span style=white-space:pre-wrap>MLK Jr Dr &amp; 63rd St                 </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1985</td></tr>\n",
       "\t<tr><td>22178551</td><td>2019-04-01 02:42:51</td><td>2019-04-01 02:48:26</td><td>3193</td><td> 335</td><td>172</td><td><span style=white-space:pre-wrap>Rush St &amp; Cedar St             </span></td><td>635</td><td><span style=white-space:pre-wrap>Fairbanks St &amp; Superior St (*)      </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1992</td></tr>\n",
       "\t<tr><td>22178552</td><td>2019-04-01 02:58:12</td><td>2019-04-01 03:09:14</td><td>1167</td><td> 662</td><td>304</td><td><span style=white-space:pre-wrap>Broadway &amp; Waveland Ave        </span></td><td>246</td><td><span style=white-space:pre-wrap>Ashland Ave &amp; Belle Plaine Ave      </span></td><td>Subscriber</td><td>Female</td><td>1959</td></tr>\n",
       "\t<tr><td>22178554</td><td>2019-04-01 02:59:22</td><td>2019-04-01 03:09:14</td><td>6418</td><td> 592</td><td>500</td><td>Central Park Ave &amp; Elbridge Ave</td><td>503</td><td><span style=white-space:pre-wrap>Drake Ave &amp; Fullerton Ave           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1969</td></tr>\n",
       "\t<tr><td>22178555</td><td>2019-04-01 03:01:13</td><td>2019-04-01 03:04:39</td><td>1627</td><td> 206</td><td> 90</td><td><span style=white-space:pre-wrap>Millennium Park                </span></td><td> 44</td><td><span style=white-space:pre-wrap>State St &amp; Randolph St              </span></td><td>Subscriber</td><td>Female</td><td>1992</td></tr>\n",
       "\t<tr><td>22178556</td><td>2019-04-01 03:15:06</td><td>2019-04-01 03:20:10</td><td>6065</td><td> 304</td><td>299</td><td><span style=white-space:pre-wrap>Halsted St &amp; Roscoe St         </span></td><td>334</td><td><span style=white-space:pre-wrap>Lake Shore Dr &amp; Belmont Ave         </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1989</td></tr>\n",
       "\t<tr><td>22178557</td><td>2019-04-01 03:46:31</td><td>2019-04-01 03:51:23</td><td>5578</td><td> 292</td><td> 15</td><td><span style=white-space:pre-wrap>Racine Ave &amp; 18th St           </span></td><td>205</td><td><span style=white-space:pre-wrap>Paulina St &amp; 18th St                </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1981</td></tr>\n",
       "\t<tr><td>22178558</td><td>2019-04-01 03:46:46</td><td>2019-04-01 04:17:05</td><td>1065</td><td>1819</td><td> 19</td><td><span style=white-space:pre-wrap>Loomis St &amp; Taylor St (*)      </span></td><td> 31</td><td><span style=white-space:pre-wrap>Franklin St &amp; Chicago Ave           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1997</td></tr>\n",
       "\t<tr><td>22178559</td><td>2019-04-01 04:01:10</td><td>2019-04-01 04:12:50</td><td> 268</td><td> 700</td><td>260</td><td><span style=white-space:pre-wrap>Kedzie Ave &amp; Milwaukee Ave     </span></td><td>485</td><td><span style=white-space:pre-wrap>Sawyer Ave &amp; Irving Park Rd         </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>Male  </span></td><td>1975</td></tr>\n",
       "\t<tr><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr>\n",
       "\t<tr><td>23479349</td><td>2019-06-30 23:44:37</td><td>2019-07-01 00:10:31</td><td> 957</td><td>1554</td><td><span style=white-space:pre-wrap>  2</span></td><td><span style=white-space:pre-wrap>Buckingham Fountain (Temp)   </span></td><td> 52</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Lake St              </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479350</td><td>2019-06-30 23:45:02</td><td>2019-07-01 00:10:11</td><td>5142</td><td>1509</td><td><span style=white-space:pre-wrap>  2</span></td><td><span style=white-space:pre-wrap>Buckingham Fountain (Temp)   </span></td><td> 52</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Lake St              </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479351</td><td>2019-06-30 23:45:10</td><td>2019-06-30 23:54:15</td><td>5047</td><td> 545</td><td>300</td><td><span style=white-space:pre-wrap>Broadway &amp; Barry Ave         </span></td><td>144</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Webster Ave           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1980</td></tr>\n",
       "\t<tr><td>23479353</td><td>2019-06-30 23:46:05</td><td>2019-07-01 00:17:16</td><td> 240</td><td>1871</td><td> 59</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Roosevelt Rd    </span></td><td><span style=white-space:pre-wrap>  6</span></td><td><span style=white-space:pre-wrap>Dusable Harbor                      </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td>Female</td><td>1997</td></tr>\n",
       "\t<tr><td>23479354</td><td>2019-06-30 23:46:16</td><td>2019-07-01 00:17:16</td><td>5166</td><td>1860</td><td> 59</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Roosevelt Rd    </span></td><td><span style=white-space:pre-wrap>  6</span></td><td><span style=white-space:pre-wrap>Dusable Harbor                      </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td>Female</td><td>1997</td></tr>\n",
       "\t<tr><td>23479355</td><td>2019-06-30 23:46:19</td><td>2019-06-30 23:55:05</td><td>2092</td><td> 526</td><td>299</td><td><span style=white-space:pre-wrap>Halsted St &amp; Roscoe St       </span></td><td>254</td><td><span style=white-space:pre-wrap>Pine Grove Ave &amp; Irving Park Rd     </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1981</td></tr>\n",
       "\t<tr><td>23479357</td><td>2019-06-30 23:47:26</td><td>2019-07-01 00:17:15</td><td>1132</td><td>1789</td><td> 59</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Roosevelt Rd    </span></td><td><span style=white-space:pre-wrap>  6</span></td><td><span style=white-space:pre-wrap>Dusable Harbor                      </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td>Female</td><td>1998</td></tr>\n",
       "\t<tr><td>23479358</td><td>2019-06-30 23:48:34</td><td>2019-07-01 00:01:29</td><td>3131</td><td> 775</td><td> 29</td><td><span style=white-space:pre-wrap>Noble St &amp; Milwaukee Ave     </span></td><td>123</td><td><span style=white-space:pre-wrap>California Ave &amp; Milwaukee Ave      </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1987</td></tr>\n",
       "\t<tr><td>23479360</td><td>2019-06-30 23:49:18</td><td>2019-06-30 23:55:18</td><td>3597</td><td> 360</td><td>212</td><td><span style=white-space:pre-wrap>Wells St &amp; Hubbard St        </span></td><td> 98</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Washington St          </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>Male  </span></td><td>1989</td></tr>\n",
       "\t<tr><td>23479361</td><td>2019-06-30 23:49:29</td><td>2019-07-01 00:00:57</td><td>2099</td><td> 688</td><td>310</td><td><span style=white-space:pre-wrap>Damen Ave &amp; Charleston St    </span></td><td>210</td><td><span style=white-space:pre-wrap>Ashland Ave &amp; Division St           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1978</td></tr>\n",
       "\t<tr><td>23479362</td><td>2019-06-30 23:49:46</td><td>2019-07-01 00:31:52</td><td>6399</td><td>2526</td><td>392</td><td><span style=white-space:pre-wrap>Perry Ave &amp; 69th St          </span></td><td>392</td><td><span style=white-space:pre-wrap>Perry Ave &amp; 69th St                 </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1957</td></tr>\n",
       "\t<tr><td>23479364</td><td>2019-06-30 23:49:59</td><td>2019-07-01 00:04:58</td><td>1923</td><td> 899</td><td>228</td><td><span style=white-space:pre-wrap>Damen Ave &amp; Melrose Ave      </span></td><td>223</td><td><span style=white-space:pre-wrap>Clifton Ave &amp; Armitage Ave          </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1989</td></tr>\n",
       "\t<tr><td>23479365</td><td>2019-06-30 23:49:59</td><td>2019-06-30 23:55:47</td><td>2962</td><td> 348</td><td> 50</td><td><span style=white-space:pre-wrap>Clark St &amp; Ida B Wells Dr    </span></td><td>321</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; 9th St                 </span></td><td>Subscriber</td><td>Female</td><td>1986</td></tr>\n",
       "\t<tr><td>23479366</td><td>2019-06-30 23:50:02</td><td>2019-07-01 00:06:32</td><td>3410</td><td> 990</td><td>260</td><td><span style=white-space:pre-wrap>Kedzie Ave &amp; Milwaukee Ave   </span></td><td>128</td><td><span style=white-space:pre-wrap>Damen Ave &amp; Chicago Ave             </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1996</td></tr>\n",
       "\t<tr><td>23479368</td><td>2019-06-30 23:51:02</td><td>2019-07-01 00:02:46</td><td> 143</td><td> 704</td><td> 36</td><td><span style=white-space:pre-wrap>Franklin St &amp; Jackson Blvd   </span></td><td>199</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Grand Ave              </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1992</td></tr>\n",
       "\t<tr><td>23479371</td><td>2019-06-30 23:52:34</td><td>2019-07-01 00:05:48</td><td>5156</td><td> 794</td><td>114</td><td>Sheffield Ave &amp; Waveland Ave </td><td>324</td><td><span style=white-space:pre-wrap>Stockton Dr &amp; Wrightwood Ave        </span></td><td>Subscriber</td><td>Female</td><td>1990</td></tr>\n",
       "\t<tr><td>23479373</td><td>2019-06-30 23:53:59</td><td>2019-07-01 00:53:58</td><td> 648</td><td>3599</td><td>268</td><td><span style=white-space:pre-wrap>Lake Shore Dr &amp; North Blvd   </span></td><td>220</td><td><span style=white-space:pre-wrap>Clark St &amp; Drummond Pl              </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1987</td></tr>\n",
       "\t<tr><td>23479374</td><td>2019-06-30 23:54:04</td><td>2019-07-01 00:54:05</td><td>4883</td><td>3601</td><td>268</td><td><span style=white-space:pre-wrap>Lake Shore Dr &amp; North Blvd   </span></td><td>220</td><td><span style=white-space:pre-wrap>Clark St &amp; Drummond Pl              </span></td><td>Subscriber</td><td>Female</td><td>1986</td></tr>\n",
       "\t<tr><td>23479376</td><td>2019-06-30 23:54:19</td><td>2019-07-01 00:04:45</td><td>1577</td><td> 626</td><td>227</td><td>Southport Ave &amp; Waveland Ave </td><td>632</td><td><span style=white-space:pre-wrap>Clark St &amp; Newport St               </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479377</td><td>2019-06-30 23:55:24</td><td>2019-07-01 00:04:58</td><td>1759</td><td> 574</td><td> 81</td><td><span style=white-space:pre-wrap>Daley Center Plaza           </span></td><td> 56</td><td><span style=white-space:pre-wrap>Desplaines St &amp; Kinzie St           </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1975</td></tr>\n",
       "\t<tr><td>23479378</td><td>2019-06-30 23:55:58</td><td>2019-07-01 00:13:59</td><td> 429</td><td>1081</td><td>283</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Jackson Blvd    </span></td><td>273</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; 18th St              </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1984</td></tr>\n",
       "\t<tr><td>23479379</td><td>2019-06-30 23:56:00</td><td>2019-06-30 23:58:49</td><td>4889</td><td> 169</td><td>225</td><td><span style=white-space:pre-wrap>Halsted St &amp; Dickens Ave     </span></td><td>224</td><td><span style=white-space:pre-wrap>Halsted St &amp; Willow St              </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1987</td></tr>\n",
       "\t<tr><td>23479380</td><td>2019-06-30 23:57:00</td><td>2019-07-01 00:04:02</td><td> 993</td><td> 422</td><td>106</td><td><span style=white-space:pre-wrap>State St &amp; Pearson St        </span></td><td>620</td><td>Orleans St &amp; Chestnut St (NEXT Apts)</td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1964</td></tr>\n",
       "\t<tr><td>23479381</td><td>2019-06-30 23:57:54</td><td>2019-07-01 00:10:47</td><td>1044</td><td> 773</td><td>215</td><td><span style=white-space:pre-wrap>Damen Ave &amp; Madison St       </span></td><td> 69</td><td><span style=white-space:pre-wrap>Damen Ave &amp; Pierce Ave              </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1962</td></tr>\n",
       "\t<tr><td>23479382</td><td>2019-06-30 23:57:55</td><td>2019-07-01 01:20:55</td><td>4281</td><td>4980</td><td>515</td><td><span style=white-space:pre-wrap>Paulina St &amp; Howard St       </span></td><td>451</td><td><span style=white-space:pre-wrap>Sheridan Rd &amp; Loyola Ave            </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479383</td><td>2019-06-30 23:58:00</td><td>2019-07-01 00:20:22</td><td>4573</td><td>1342</td><td>206</td><td><span style=white-space:pre-wrap>Halsted St &amp; Archer Ave      </span></td><td>206</td><td><span style=white-space:pre-wrap>Halsted St &amp; Archer Ave             </span></td><td><span style=white-space:pre-wrap>Customer  </span></td><td><span style=white-space:pre-wrap>NA    </span></td><td><span style=white-space:pre-wrap>  NA</span></td></tr>\n",
       "\t<tr><td>23479384</td><td>2019-06-30 23:58:04</td><td>2019-07-01 00:14:17</td><td>6301</td><td> 973</td><td>199</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Grand Ave       </span></td><td>338</td><td><span style=white-space:pre-wrap>Calumet Ave &amp; 18th St               </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1980</td></tr>\n",
       "\t<tr><td>23479385</td><td>2019-06-30 23:58:20</td><td>2019-07-01 00:25:51</td><td>4472</td><td>1651</td><td>319</td><td>Greenview Ave &amp; Diversey Pkwy</td><td>337</td><td><span style=white-space:pre-wrap>Clark St &amp; Chicago Ave              </span></td><td>Subscriber</td><td>Female</td><td>1991</td></tr>\n",
       "\t<tr><td>23479386</td><td>2019-06-30 23:58:52</td><td>2019-07-01 00:11:24</td><td>5021</td><td> 752</td><td>226</td><td><span style=white-space:pre-wrap>Racine Ave &amp; Belmont Ave     </span></td><td>300</td><td><span style=white-space:pre-wrap>Broadway &amp; Barry Ave                </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1992</td></tr>\n",
       "\t<tr><td>23479387</td><td>2019-06-30 23:59:05</td><td>2019-07-01 00:26:14</td><td>4749</td><td>1629</td><td> 85</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Oak St        </span></td><td>249</td><td><span style=white-space:pre-wrap>Montrose Harbor                     </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1987</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A spec\\_tbl\\_df: 1108163 × 12\n",
       "\\begin{tabular}{llllllllllll}\n",
       " ride\\_id & started\\_at & ended\\_at & rideable\\_type & 01 - Rental Details Duration In Seconds Uncapped & start\\_station\\_id & start\\_station\\_name & end\\_station\\_id & end\\_station\\_name & member\\_casual & Member Gender & 05 - Member Details Member Birthday Year\\\\\n",
       " <dbl> & <dttm> & <dttm> & <dbl> & <dbl> & <dbl> & <chr> & <dbl> & <chr> & <chr> & <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 22178529 & 2019-04-01 00:02:22 & 2019-04-01 00:09:48 & 6251 &  446 &  81 & Daley Center Plaza              &  56 & Desplaines St \\& Kinzie St            & Subscriber & Male   & 1975\\\\\n",
       "\t 22178530 & 2019-04-01 00:03:02 & 2019-04-01 00:20:30 & 6226 & 1048 & 317 & Wood St \\& Taylor St             &  59 & Wabash Ave \\& Roosevelt Rd            & Subscriber & Female & 1984\\\\\n",
       "\t 22178531 & 2019-04-01 00:11:07 & 2019-04-01 00:15:19 & 5649 &  252 & 283 & LaSalle St \\& Jackson Blvd       & 174 & Canal St \\& Madison St                & Subscriber & Male   & 1990\\\\\n",
       "\t 22178532 & 2019-04-01 00:13:01 & 2019-04-01 00:18:58 & 4151 &  357 &  26 & McClurg Ct \\& Illinois St        & 133 & Kingsbury St \\& Kinzie St             & Subscriber & Male   & 1993\\\\\n",
       "\t 22178533 & 2019-04-01 00:19:26 & 2019-04-01 00:36:13 & 3270 & 1007 & 202 & Halsted St \\& 18th St            & 129 & Blue Island Ave \\& 18th St            & Subscriber & Male   & 1992\\\\\n",
       "\t 22178534 & 2019-04-01 00:19:39 & 2019-04-01 00:23:56 & 3123 &  257 & 420 & Ellis Ave \\& 55th St             & 426 & Ellis Ave \\& 60th St                  & Subscriber & Male   & 1999\\\\\n",
       "\t 22178535 & 2019-04-01 00:26:33 & 2019-04-01 00:35:41 & 6418 &  548 & 503 & Drake Ave \\& Fullerton Ave       & 500 & Central Park Ave \\& Elbridge Ave      & Subscriber & Male   & 1969\\\\\n",
       "\t 22178536 & 2019-04-01 00:29:48 & 2019-04-01 00:36:11 & 4513 &  383 & 260 & Kedzie Ave \\& Milwaukee Ave      & 499 & Kosciuszko Park                      & Subscriber & Male   & 1991\\\\\n",
       "\t 22178537 & 2019-04-01 00:32:07 & 2019-04-01 01:07:44 & 3280 & 2137 & 211 & St. Clair St \\& Erie St          & 211 & St. Clair St \\& Erie St               & Customer   & NA     &   NA\\\\\n",
       "\t 22178538 & 2019-04-01 00:32:19 & 2019-04-01 01:07:39 & 5534 & 2120 & 211 & St. Clair St \\& Erie St          & 211 & St. Clair St \\& Erie St               & Customer   & NA     &   NA\\\\\n",
       "\t 22178539 & 2019-04-01 00:36:20 & 2019-04-01 00:41:17 & 4666 &  297 & 304 & Broadway \\& Waveland Ave         & 232 & Pine Grove Ave \\& Waveland Ave        & Subscriber & Male   & 1975\\\\\n",
       "\t 22178540 & 2019-04-01 00:58:38 & 2019-04-01 01:04:43 & 3735 &  365 &  37 & Dearborn St \\& Adams St          & 337 & Clark St \\& Chicago Ave               & Subscriber & Male   & 1991\\\\\n",
       "\t 22178541 & 2019-04-01 01:09:41 & 2019-04-01 01:12:26 & 6108 &  165 &  75 & Canal St \\& Jackson Blvd         &  36 & Franklin St \\& Jackson Blvd           & Subscriber & Male   & 1990\\\\\n",
       "\t 22178542 & 2019-04-01 01:13:15 & 2019-04-01 01:20:38 & 6157 &  443 & 334 & Lake Shore Dr \\& Belmont Ave     & 256 & Broadway \\& Sheridan Rd               & Subscriber & Male   & 1989\\\\\n",
       "\t 22178543 & 2019-04-01 01:18:09 & 2019-04-01 01:23:02 & 4384 &  293 &  39 & Wabash Ave \\& Adams St           & 255 & Indiana Ave \\& Roosevelt Rd           & Subscriber & Male   & 1969\\\\\n",
       "\t 22178544 & 2019-04-01 01:28:21 & 2019-04-01 01:31:45 & 4022 &  204 & 287 & Franklin St \\& Monroe St         &  89 & Financial Pl \\& Ida B Wells Dr (Temp) & Subscriber & Male   & 1994\\\\\n",
       "\t 22178545 & 2019-04-01 01:31:35 & 2019-04-01 01:35:28 & 2748 &  233 & 148 & State St \\& 33rd St              & 272 & Indiana Ave \\& 31st St                & Subscriber & Female & 1989\\\\\n",
       "\t 22178546 & 2019-04-01 01:53:56 & 2019-04-01 02:03:02 & 5351 &  546 &  59 & Wabash Ave \\& Roosevelt Rd       &  36 & Franklin St \\& Jackson Blvd           & Subscriber & Male   & 1958\\\\\n",
       "\t 22178547 & 2019-04-01 02:10:56 & 2019-04-01 02:31:45 & 1406 & 1249 & 240 & Sheridan Rd \\& Irving Park Rd    & 325 & Clark St \\& Winnemac Ave              & Customer   & NA     &   NA\\\\\n",
       "\t 22178548 & 2019-04-01 02:12:53 & 2019-04-01 02:16:56 & 3325 &  243 & 430 & MLK Jr Dr \\& 63rd St             & 427 & Cottage Grove Ave \\& 63rd St          & Subscriber & Male   & 1985\\\\\n",
       "\t 22178549 & 2019-04-01 02:27:02 & 2019-04-01 02:30:10 &   93 &  188 & 257 & Lincoln Ave \\& Waveland Ave      & 230 & Lincoln Ave \\& Roscoe St              & Subscriber & Male   & 1981\\\\\n",
       "\t 22178550 & 2019-04-01 02:37:48 & 2019-04-01 02:41:35 & 3325 &  227 & 427 & Cottage Grove Ave \\& 63rd St     & 430 & MLK Jr Dr \\& 63rd St                  & Subscriber & Male   & 1985\\\\\n",
       "\t 22178551 & 2019-04-01 02:42:51 & 2019-04-01 02:48:26 & 3193 &  335 & 172 & Rush St \\& Cedar St              & 635 & Fairbanks St \\& Superior St (*)       & Subscriber & Male   & 1992\\\\\n",
       "\t 22178552 & 2019-04-01 02:58:12 & 2019-04-01 03:09:14 & 1167 &  662 & 304 & Broadway \\& Waveland Ave         & 246 & Ashland Ave \\& Belle Plaine Ave       & Subscriber & Female & 1959\\\\\n",
       "\t 22178554 & 2019-04-01 02:59:22 & 2019-04-01 03:09:14 & 6418 &  592 & 500 & Central Park Ave \\& Elbridge Ave & 503 & Drake Ave \\& Fullerton Ave            & Subscriber & Male   & 1969\\\\\n",
       "\t 22178555 & 2019-04-01 03:01:13 & 2019-04-01 03:04:39 & 1627 &  206 &  90 & Millennium Park                 &  44 & State St \\& Randolph St               & Subscriber & Female & 1992\\\\\n",
       "\t 22178556 & 2019-04-01 03:15:06 & 2019-04-01 03:20:10 & 6065 &  304 & 299 & Halsted St \\& Roscoe St          & 334 & Lake Shore Dr \\& Belmont Ave          & Subscriber & Male   & 1989\\\\\n",
       "\t 22178557 & 2019-04-01 03:46:31 & 2019-04-01 03:51:23 & 5578 &  292 &  15 & Racine Ave \\& 18th St            & 205 & Paulina St \\& 18th St                 & Subscriber & Male   & 1981\\\\\n",
       "\t 22178558 & 2019-04-01 03:46:46 & 2019-04-01 04:17:05 & 1065 & 1819 &  19 & Loomis St \\& Taylor St (*)       &  31 & Franklin St \\& Chicago Ave            & Subscriber & Male   & 1997\\\\\n",
       "\t 22178559 & 2019-04-01 04:01:10 & 2019-04-01 04:12:50 &  268 &  700 & 260 & Kedzie Ave \\& Milwaukee Ave      & 485 & Sawyer Ave \\& Irving Park Rd          & Customer   & Male   & 1975\\\\\n",
       "\t ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮\\\\\n",
       "\t 23479349 & 2019-06-30 23:44:37 & 2019-07-01 00:10:31 &  957 & 1554 &   2 & Buckingham Fountain (Temp)    &  52 & Michigan Ave \\& Lake St               & Customer   & NA     &   NA\\\\\n",
       "\t 23479350 & 2019-06-30 23:45:02 & 2019-07-01 00:10:11 & 5142 & 1509 &   2 & Buckingham Fountain (Temp)    &  52 & Michigan Ave \\& Lake St               & Customer   & NA     &   NA\\\\\n",
       "\t 23479351 & 2019-06-30 23:45:10 & 2019-06-30 23:54:15 & 5047 &  545 & 300 & Broadway \\& Barry Ave          & 144 & Larrabee St \\& Webster Ave            & Subscriber & Male   & 1980\\\\\n",
       "\t 23479353 & 2019-06-30 23:46:05 & 2019-07-01 00:17:16 &  240 & 1871 &  59 & Wabash Ave \\& Roosevelt Rd     &   6 & Dusable Harbor                       & Customer   & Female & 1997\\\\\n",
       "\t 23479354 & 2019-06-30 23:46:16 & 2019-07-01 00:17:16 & 5166 & 1860 &  59 & Wabash Ave \\& Roosevelt Rd     &   6 & Dusable Harbor                       & Customer   & Female & 1997\\\\\n",
       "\t 23479355 & 2019-06-30 23:46:19 & 2019-06-30 23:55:05 & 2092 &  526 & 299 & Halsted St \\& Roscoe St        & 254 & Pine Grove Ave \\& Irving Park Rd      & Subscriber & Male   & 1981\\\\\n",
       "\t 23479357 & 2019-06-30 23:47:26 & 2019-07-01 00:17:15 & 1132 & 1789 &  59 & Wabash Ave \\& Roosevelt Rd     &   6 & Dusable Harbor                       & Customer   & Female & 1998\\\\\n",
       "\t 23479358 & 2019-06-30 23:48:34 & 2019-07-01 00:01:29 & 3131 &  775 &  29 & Noble St \\& Milwaukee Ave      & 123 & California Ave \\& Milwaukee Ave       & Subscriber & Male   & 1987\\\\\n",
       "\t 23479360 & 2019-06-30 23:49:18 & 2019-06-30 23:55:18 & 3597 &  360 & 212 & Wells St \\& Hubbard St         &  98 & LaSalle St \\& Washington St           & Customer   & Male   & 1989\\\\\n",
       "\t 23479361 & 2019-06-30 23:49:29 & 2019-07-01 00:00:57 & 2099 &  688 & 310 & Damen Ave \\& Charleston St     & 210 & Ashland Ave \\& Division St            & Subscriber & Male   & 1978\\\\\n",
       "\t 23479362 & 2019-06-30 23:49:46 & 2019-07-01 00:31:52 & 6399 & 2526 & 392 & Perry Ave \\& 69th St           & 392 & Perry Ave \\& 69th St                  & Subscriber & Male   & 1957\\\\\n",
       "\t 23479364 & 2019-06-30 23:49:59 & 2019-07-01 00:04:58 & 1923 &  899 & 228 & Damen Ave \\& Melrose Ave       & 223 & Clifton Ave \\& Armitage Ave           & Subscriber & Male   & 1989\\\\\n",
       "\t 23479365 & 2019-06-30 23:49:59 & 2019-06-30 23:55:47 & 2962 &  348 &  50 & Clark St \\& Ida B Wells Dr     & 321 & Wabash Ave \\& 9th St                  & Subscriber & Female & 1986\\\\\n",
       "\t 23479366 & 2019-06-30 23:50:02 & 2019-07-01 00:06:32 & 3410 &  990 & 260 & Kedzie Ave \\& Milwaukee Ave    & 128 & Damen Ave \\& Chicago Ave              & Subscriber & Male   & 1996\\\\\n",
       "\t 23479368 & 2019-06-30 23:51:02 & 2019-07-01 00:02:46 &  143 &  704 &  36 & Franklin St \\& Jackson Blvd    & 199 & Wabash Ave \\& Grand Ave               & Subscriber & Male   & 1992\\\\\n",
       "\t 23479371 & 2019-06-30 23:52:34 & 2019-07-01 00:05:48 & 5156 &  794 & 114 & Sheffield Ave \\& Waveland Ave  & 324 & Stockton Dr \\& Wrightwood Ave         & Subscriber & Female & 1990\\\\\n",
       "\t 23479373 & 2019-06-30 23:53:59 & 2019-07-01 00:53:58 &  648 & 3599 & 268 & Lake Shore Dr \\& North Blvd    & 220 & Clark St \\& Drummond Pl               & Subscriber & Male   & 1987\\\\\n",
       "\t 23479374 & 2019-06-30 23:54:04 & 2019-07-01 00:54:05 & 4883 & 3601 & 268 & Lake Shore Dr \\& North Blvd    & 220 & Clark St \\& Drummond Pl               & Subscriber & Female & 1986\\\\\n",
       "\t 23479376 & 2019-06-30 23:54:19 & 2019-07-01 00:04:45 & 1577 &  626 & 227 & Southport Ave \\& Waveland Ave  & 632 & Clark St \\& Newport St                & Customer   & NA     &   NA\\\\\n",
       "\t 23479377 & 2019-06-30 23:55:24 & 2019-07-01 00:04:58 & 1759 &  574 &  81 & Daley Center Plaza            &  56 & Desplaines St \\& Kinzie St            & Subscriber & Male   & 1975\\\\\n",
       "\t 23479378 & 2019-06-30 23:55:58 & 2019-07-01 00:13:59 &  429 & 1081 & 283 & LaSalle St \\& Jackson Blvd     & 273 & Michigan Ave \\& 18th St               & Subscriber & Male   & 1984\\\\\n",
       "\t 23479379 & 2019-06-30 23:56:00 & 2019-06-30 23:58:49 & 4889 &  169 & 225 & Halsted St \\& Dickens Ave      & 224 & Halsted St \\& Willow St               & Subscriber & Male   & 1987\\\\\n",
       "\t 23479380 & 2019-06-30 23:57:00 & 2019-07-01 00:04:02 &  993 &  422 & 106 & State St \\& Pearson St         & 620 & Orleans St \\& Chestnut St (NEXT Apts) & Subscriber & Male   & 1964\\\\\n",
       "\t 23479381 & 2019-06-30 23:57:54 & 2019-07-01 00:10:47 & 1044 &  773 & 215 & Damen Ave \\& Madison St        &  69 & Damen Ave \\& Pierce Ave               & Subscriber & Male   & 1962\\\\\n",
       "\t 23479382 & 2019-06-30 23:57:55 & 2019-07-01 01:20:55 & 4281 & 4980 & 515 & Paulina St \\& Howard St        & 451 & Sheridan Rd \\& Loyola Ave             & Customer   & NA     &   NA\\\\\n",
       "\t 23479383 & 2019-06-30 23:58:00 & 2019-07-01 00:20:22 & 4573 & 1342 & 206 & Halsted St \\& Archer Ave       & 206 & Halsted St \\& Archer Ave              & Customer   & NA     &   NA\\\\\n",
       "\t 23479384 & 2019-06-30 23:58:04 & 2019-07-01 00:14:17 & 6301 &  973 & 199 & Wabash Ave \\& Grand Ave        & 338 & Calumet Ave \\& 18th St                & Subscriber & Male   & 1980\\\\\n",
       "\t 23479385 & 2019-06-30 23:58:20 & 2019-07-01 00:25:51 & 4472 & 1651 & 319 & Greenview Ave \\& Diversey Pkwy & 337 & Clark St \\& Chicago Ave               & Subscriber & Female & 1991\\\\\n",
       "\t 23479386 & 2019-06-30 23:58:52 & 2019-07-01 00:11:24 & 5021 &  752 & 226 & Racine Ave \\& Belmont Ave      & 300 & Broadway \\& Barry Ave                 & Subscriber & Male   & 1992\\\\\n",
       "\t 23479387 & 2019-06-30 23:59:05 & 2019-07-01 00:26:14 & 4749 & 1629 &  85 & Michigan Ave \\& Oak St         & 249 & Montrose Harbor                      & Subscriber & Male   & 1987\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A spec_tbl_df: 1108163 × 12\n",
       "\n",
       "| ride_id &lt;dbl&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | rideable_type &lt;dbl&gt; | 01 - Rental Details Duration In Seconds Uncapped &lt;dbl&gt; | start_station_id &lt;dbl&gt; | start_station_name &lt;chr&gt; | end_station_id &lt;dbl&gt; | end_station_name &lt;chr&gt; | member_casual &lt;chr&gt; | Member Gender &lt;chr&gt; | 05 - Member Details Member Birthday Year &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 22178529 | 2019-04-01 00:02:22 | 2019-04-01 00:09:48 | 6251 |  446 |  81 | Daley Center Plaza              |  56 | Desplaines St &amp; Kinzie St            | Subscriber | Male   | 1975 |\n",
       "| 22178530 | 2019-04-01 00:03:02 | 2019-04-01 00:20:30 | 6226 | 1048 | 317 | Wood St &amp; Taylor St             |  59 | Wabash Ave &amp; Roosevelt Rd            | Subscriber | Female | 1984 |\n",
       "| 22178531 | 2019-04-01 00:11:07 | 2019-04-01 00:15:19 | 5649 |  252 | 283 | LaSalle St &amp; Jackson Blvd       | 174 | Canal St &amp; Madison St                | Subscriber | Male   | 1990 |\n",
       "| 22178532 | 2019-04-01 00:13:01 | 2019-04-01 00:18:58 | 4151 |  357 |  26 | McClurg Ct &amp; Illinois St        | 133 | Kingsbury St &amp; Kinzie St             | Subscriber | Male   | 1993 |\n",
       "| 22178533 | 2019-04-01 00:19:26 | 2019-04-01 00:36:13 | 3270 | 1007 | 202 | Halsted St &amp; 18th St            | 129 | Blue Island Ave &amp; 18th St            | Subscriber | Male   | 1992 |\n",
       "| 22178534 | 2019-04-01 00:19:39 | 2019-04-01 00:23:56 | 3123 |  257 | 420 | Ellis Ave &amp; 55th St             | 426 | Ellis Ave &amp; 60th St                  | Subscriber | Male   | 1999 |\n",
       "| 22178535 | 2019-04-01 00:26:33 | 2019-04-01 00:35:41 | 6418 |  548 | 503 | Drake Ave &amp; Fullerton Ave       | 500 | Central Park Ave &amp; Elbridge Ave      | Subscriber | Male   | 1969 |\n",
       "| 22178536 | 2019-04-01 00:29:48 | 2019-04-01 00:36:11 | 4513 |  383 | 260 | Kedzie Ave &amp; Milwaukee Ave      | 499 | Kosciuszko Park                      | Subscriber | Male   | 1991 |\n",
       "| 22178537 | 2019-04-01 00:32:07 | 2019-04-01 01:07:44 | 3280 | 2137 | 211 | St. Clair St &amp; Erie St          | 211 | St. Clair St &amp; Erie St               | Customer   | NA     |   NA |\n",
       "| 22178538 | 2019-04-01 00:32:19 | 2019-04-01 01:07:39 | 5534 | 2120 | 211 | St. Clair St &amp; Erie St          | 211 | St. Clair St &amp; Erie St               | Customer   | NA     |   NA |\n",
       "| 22178539 | 2019-04-01 00:36:20 | 2019-04-01 00:41:17 | 4666 |  297 | 304 | Broadway &amp; Waveland Ave         | 232 | Pine Grove Ave &amp; Waveland Ave        | Subscriber | Male   | 1975 |\n",
       "| 22178540 | 2019-04-01 00:58:38 | 2019-04-01 01:04:43 | 3735 |  365 |  37 | Dearborn St &amp; Adams St          | 337 | Clark St &amp; Chicago Ave               | Subscriber | Male   | 1991 |\n",
       "| 22178541 | 2019-04-01 01:09:41 | 2019-04-01 01:12:26 | 6108 |  165 |  75 | Canal St &amp; Jackson Blvd         |  36 | Franklin St &amp; Jackson Blvd           | Subscriber | Male   | 1990 |\n",
       "| 22178542 | 2019-04-01 01:13:15 | 2019-04-01 01:20:38 | 6157 |  443 | 334 | Lake Shore Dr &amp; Belmont Ave     | 256 | Broadway &amp; Sheridan Rd               | Subscriber | Male   | 1989 |\n",
       "| 22178543 | 2019-04-01 01:18:09 | 2019-04-01 01:23:02 | 4384 |  293 |  39 | Wabash Ave &amp; Adams St           | 255 | Indiana Ave &amp; Roosevelt Rd           | Subscriber | Male   | 1969 |\n",
       "| 22178544 | 2019-04-01 01:28:21 | 2019-04-01 01:31:45 | 4022 |  204 | 287 | Franklin St &amp; Monroe St         |  89 | Financial Pl &amp; Ida B Wells Dr (Temp) | Subscriber | Male   | 1994 |\n",
       "| 22178545 | 2019-04-01 01:31:35 | 2019-04-01 01:35:28 | 2748 |  233 | 148 | State St &amp; 33rd St              | 272 | Indiana Ave &amp; 31st St                | Subscriber | Female | 1989 |\n",
       "| 22178546 | 2019-04-01 01:53:56 | 2019-04-01 02:03:02 | 5351 |  546 |  59 | Wabash Ave &amp; Roosevelt Rd       |  36 | Franklin St &amp; Jackson Blvd           | Subscriber | Male   | 1958 |\n",
       "| 22178547 | 2019-04-01 02:10:56 | 2019-04-01 02:31:45 | 1406 | 1249 | 240 | Sheridan Rd &amp; Irving Park Rd    | 325 | Clark St &amp; Winnemac Ave              | Customer   | NA     |   NA |\n",
       "| 22178548 | 2019-04-01 02:12:53 | 2019-04-01 02:16:56 | 3325 |  243 | 430 | MLK Jr Dr &amp; 63rd St             | 427 | Cottage Grove Ave &amp; 63rd St          | Subscriber | Male   | 1985 |\n",
       "| 22178549 | 2019-04-01 02:27:02 | 2019-04-01 02:30:10 |   93 |  188 | 257 | Lincoln Ave &amp; Waveland Ave      | 230 | Lincoln Ave &amp; Roscoe St              | Subscriber | Male   | 1981 |\n",
       "| 22178550 | 2019-04-01 02:37:48 | 2019-04-01 02:41:35 | 3325 |  227 | 427 | Cottage Grove Ave &amp; 63rd St     | 430 | MLK Jr Dr &amp; 63rd St                  | Subscriber | Male   | 1985 |\n",
       "| 22178551 | 2019-04-01 02:42:51 | 2019-04-01 02:48:26 | 3193 |  335 | 172 | Rush St &amp; Cedar St              | 635 | Fairbanks St &amp; Superior St (*)       | Subscriber | Male   | 1992 |\n",
       "| 22178552 | 2019-04-01 02:58:12 | 2019-04-01 03:09:14 | 1167 |  662 | 304 | Broadway &amp; Waveland Ave         | 246 | Ashland Ave &amp; Belle Plaine Ave       | Subscriber | Female | 1959 |\n",
       "| 22178554 | 2019-04-01 02:59:22 | 2019-04-01 03:09:14 | 6418 |  592 | 500 | Central Park Ave &amp; Elbridge Ave | 503 | Drake Ave &amp; Fullerton Ave            | Subscriber | Male   | 1969 |\n",
       "| 22178555 | 2019-04-01 03:01:13 | 2019-04-01 03:04:39 | 1627 |  206 |  90 | Millennium Park                 |  44 | State St &amp; Randolph St               | Subscriber | Female | 1992 |\n",
       "| 22178556 | 2019-04-01 03:15:06 | 2019-04-01 03:20:10 | 6065 |  304 | 299 | Halsted St &amp; Roscoe St          | 334 | Lake Shore Dr &amp; Belmont Ave          | Subscriber | Male   | 1989 |\n",
       "| 22178557 | 2019-04-01 03:46:31 | 2019-04-01 03:51:23 | 5578 |  292 |  15 | Racine Ave &amp; 18th St            | 205 | Paulina St &amp; 18th St                 | Subscriber | Male   | 1981 |\n",
       "| 22178558 | 2019-04-01 03:46:46 | 2019-04-01 04:17:05 | 1065 | 1819 |  19 | Loomis St &amp; Taylor St (*)       |  31 | Franklin St &amp; Chicago Ave            | Subscriber | Male   | 1997 |\n",
       "| 22178559 | 2019-04-01 04:01:10 | 2019-04-01 04:12:50 |  268 |  700 | 260 | Kedzie Ave &amp; Milwaukee Ave      | 485 | Sawyer Ave &amp; Irving Park Rd          | Customer   | Male   | 1975 |\n",
       "| ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ |\n",
       "| 23479349 | 2019-06-30 23:44:37 | 2019-07-01 00:10:31 |  957 | 1554 |   2 | Buckingham Fountain (Temp)    |  52 | Michigan Ave &amp; Lake St               | Customer   | NA     |   NA |\n",
       "| 23479350 | 2019-06-30 23:45:02 | 2019-07-01 00:10:11 | 5142 | 1509 |   2 | Buckingham Fountain (Temp)    |  52 | Michigan Ave &amp; Lake St               | Customer   | NA     |   NA |\n",
       "| 23479351 | 2019-06-30 23:45:10 | 2019-06-30 23:54:15 | 5047 |  545 | 300 | Broadway &amp; Barry Ave          | 144 | Larrabee St &amp; Webster Ave            | Subscriber | Male   | 1980 |\n",
       "| 23479353 | 2019-06-30 23:46:05 | 2019-07-01 00:17:16 |  240 | 1871 |  59 | Wabash Ave &amp; Roosevelt Rd     |   6 | Dusable Harbor                       | Customer   | Female | 1997 |\n",
       "| 23479354 | 2019-06-30 23:46:16 | 2019-07-01 00:17:16 | 5166 | 1860 |  59 | Wabash Ave &amp; Roosevelt Rd     |   6 | Dusable Harbor                       | Customer   | Female | 1997 |\n",
       "| 23479355 | 2019-06-30 23:46:19 | 2019-06-30 23:55:05 | 2092 |  526 | 299 | Halsted St &amp; Roscoe St        | 254 | Pine Grove Ave &amp; Irving Park Rd      | Subscriber | Male   | 1981 |\n",
       "| 23479357 | 2019-06-30 23:47:26 | 2019-07-01 00:17:15 | 1132 | 1789 |  59 | Wabash Ave &amp; Roosevelt Rd     |   6 | Dusable Harbor                       | Customer   | Female | 1998 |\n",
       "| 23479358 | 2019-06-30 23:48:34 | 2019-07-01 00:01:29 | 3131 |  775 |  29 | Noble St &amp; Milwaukee Ave      | 123 | California Ave &amp; Milwaukee Ave       | Subscriber | Male   | 1987 |\n",
       "| 23479360 | 2019-06-30 23:49:18 | 2019-06-30 23:55:18 | 3597 |  360 | 212 | Wells St &amp; Hubbard St         |  98 | LaSalle St &amp; Washington St           | Customer   | Male   | 1989 |\n",
       "| 23479361 | 2019-06-30 23:49:29 | 2019-07-01 00:00:57 | 2099 |  688 | 310 | Damen Ave &amp; Charleston St     | 210 | Ashland Ave &amp; Division St            | Subscriber | Male   | 1978 |\n",
       "| 23479362 | 2019-06-30 23:49:46 | 2019-07-01 00:31:52 | 6399 | 2526 | 392 | Perry Ave &amp; 69th St           | 392 | Perry Ave &amp; 69th St                  | Subscriber | Male   | 1957 |\n",
       "| 23479364 | 2019-06-30 23:49:59 | 2019-07-01 00:04:58 | 1923 |  899 | 228 | Damen Ave &amp; Melrose Ave       | 223 | Clifton Ave &amp; Armitage Ave           | Subscriber | Male   | 1989 |\n",
       "| 23479365 | 2019-06-30 23:49:59 | 2019-06-30 23:55:47 | 2962 |  348 |  50 | Clark St &amp; Ida B Wells Dr     | 321 | Wabash Ave &amp; 9th St                  | Subscriber | Female | 1986 |\n",
       "| 23479366 | 2019-06-30 23:50:02 | 2019-07-01 00:06:32 | 3410 |  990 | 260 | Kedzie Ave &amp; Milwaukee Ave    | 128 | Damen Ave &amp; Chicago Ave              | Subscriber | Male   | 1996 |\n",
       "| 23479368 | 2019-06-30 23:51:02 | 2019-07-01 00:02:46 |  143 |  704 |  36 | Franklin St &amp; Jackson Blvd    | 199 | Wabash Ave &amp; Grand Ave               | Subscriber | Male   | 1992 |\n",
       "| 23479371 | 2019-06-30 23:52:34 | 2019-07-01 00:05:48 | 5156 |  794 | 114 | Sheffield Ave &amp; Waveland Ave  | 324 | Stockton Dr &amp; Wrightwood Ave         | Subscriber | Female | 1990 |\n",
       "| 23479373 | 2019-06-30 23:53:59 | 2019-07-01 00:53:58 |  648 | 3599 | 268 | Lake Shore Dr &amp; North Blvd    | 220 | Clark St &amp; Drummond Pl               | Subscriber | Male   | 1987 |\n",
       "| 23479374 | 2019-06-30 23:54:04 | 2019-07-01 00:54:05 | 4883 | 3601 | 268 | Lake Shore Dr &amp; North Blvd    | 220 | Clark St &amp; Drummond Pl               | Subscriber | Female | 1986 |\n",
       "| 23479376 | 2019-06-30 23:54:19 | 2019-07-01 00:04:45 | 1577 |  626 | 227 | Southport Ave &amp; Waveland Ave  | 632 | Clark St &amp; Newport St                | Customer   | NA     |   NA |\n",
       "| 23479377 | 2019-06-30 23:55:24 | 2019-07-01 00:04:58 | 1759 |  574 |  81 | Daley Center Plaza            |  56 | Desplaines St &amp; Kinzie St            | Subscriber | Male   | 1975 |\n",
       "| 23479378 | 2019-06-30 23:55:58 | 2019-07-01 00:13:59 |  429 | 1081 | 283 | LaSalle St &amp; Jackson Blvd     | 273 | Michigan Ave &amp; 18th St               | Subscriber | Male   | 1984 |\n",
       "| 23479379 | 2019-06-30 23:56:00 | 2019-06-30 23:58:49 | 4889 |  169 | 225 | Halsted St &amp; Dickens Ave      | 224 | Halsted St &amp; Willow St               | Subscriber | Male   | 1987 |\n",
       "| 23479380 | 2019-06-30 23:57:00 | 2019-07-01 00:04:02 |  993 |  422 | 106 | State St &amp; Pearson St         | 620 | Orleans St &amp; Chestnut St (NEXT Apts) | Subscriber | Male   | 1964 |\n",
       "| 23479381 | 2019-06-30 23:57:54 | 2019-07-01 00:10:47 | 1044 |  773 | 215 | Damen Ave &amp; Madison St        |  69 | Damen Ave &amp; Pierce Ave               | Subscriber | Male   | 1962 |\n",
       "| 23479382 | 2019-06-30 23:57:55 | 2019-07-01 01:20:55 | 4281 | 4980 | 515 | Paulina St &amp; Howard St        | 451 | Sheridan Rd &amp; Loyola Ave             | Customer   | NA     |   NA |\n",
       "| 23479383 | 2019-06-30 23:58:00 | 2019-07-01 00:20:22 | 4573 | 1342 | 206 | Halsted St &amp; Archer Ave       | 206 | Halsted St &amp; Archer Ave              | Customer   | NA     |   NA |\n",
       "| 23479384 | 2019-06-30 23:58:04 | 2019-07-01 00:14:17 | 6301 |  973 | 199 | Wabash Ave &amp; Grand Ave        | 338 | Calumet Ave &amp; 18th St                | Subscriber | Male   | 1980 |\n",
       "| 23479385 | 2019-06-30 23:58:20 | 2019-07-01 00:25:51 | 4472 | 1651 | 319 | Greenview Ave &amp; Diversey Pkwy | 337 | Clark St &amp; Chicago Ave               | Subscriber | Female | 1991 |\n",
       "| 23479386 | 2019-06-30 23:58:52 | 2019-07-01 00:11:24 | 5021 |  752 | 226 | Racine Ave &amp; Belmont Ave      | 300 | Broadway &amp; Barry Ave                 | Subscriber | Male   | 1992 |\n",
       "| 23479387 | 2019-06-30 23:59:05 | 2019-07-01 00:26:14 | 4749 | 1629 |  85 | Michigan Ave &amp; Oak St         | 249 | Montrose Harbor                      | Subscriber | Male   | 1987 |\n",
       "\n"
      ],
      "text/plain": [
       "        ride_id  started_at          ended_at            rideable_type\n",
       "1       22178529 2019-04-01 00:02:22 2019-04-01 00:09:48 6251         \n",
       "2       22178530 2019-04-01 00:03:02 2019-04-01 00:20:30 6226         \n",
       "3       22178531 2019-04-01 00:11:07 2019-04-01 00:15:19 5649         \n",
       "4       22178532 2019-04-01 00:13:01 2019-04-01 00:18:58 4151         \n",
       "5       22178533 2019-04-01 00:19:26 2019-04-01 00:36:13 3270         \n",
       "6       22178534 2019-04-01 00:19:39 2019-04-01 00:23:56 3123         \n",
       "7       22178535 2019-04-01 00:26:33 2019-04-01 00:35:41 6418         \n",
       "8       22178536 2019-04-01 00:29:48 2019-04-01 00:36:11 4513         \n",
       "9       22178537 2019-04-01 00:32:07 2019-04-01 01:07:44 3280         \n",
       "10      22178538 2019-04-01 00:32:19 2019-04-01 01:07:39 5534         \n",
       "11      22178539 2019-04-01 00:36:20 2019-04-01 00:41:17 4666         \n",
       "12      22178540 2019-04-01 00:58:38 2019-04-01 01:04:43 3735         \n",
       "13      22178541 2019-04-01 01:09:41 2019-04-01 01:12:26 6108         \n",
       "14      22178542 2019-04-01 01:13:15 2019-04-01 01:20:38 6157         \n",
       "15      22178543 2019-04-01 01:18:09 2019-04-01 01:23:02 4384         \n",
       "16      22178544 2019-04-01 01:28:21 2019-04-01 01:31:45 4022         \n",
       "17      22178545 2019-04-01 01:31:35 2019-04-01 01:35:28 2748         \n",
       "18      22178546 2019-04-01 01:53:56 2019-04-01 02:03:02 5351         \n",
       "19      22178547 2019-04-01 02:10:56 2019-04-01 02:31:45 1406         \n",
       "20      22178548 2019-04-01 02:12:53 2019-04-01 02:16:56 3325         \n",
       "21      22178549 2019-04-01 02:27:02 2019-04-01 02:30:10   93         \n",
       "22      22178550 2019-04-01 02:37:48 2019-04-01 02:41:35 3325         \n",
       "23      22178551 2019-04-01 02:42:51 2019-04-01 02:48:26 3193         \n",
       "24      22178552 2019-04-01 02:58:12 2019-04-01 03:09:14 1167         \n",
       "25      22178554 2019-04-01 02:59:22 2019-04-01 03:09:14 6418         \n",
       "26      22178555 2019-04-01 03:01:13 2019-04-01 03:04:39 1627         \n",
       "27      22178556 2019-04-01 03:15:06 2019-04-01 03:20:10 6065         \n",
       "28      22178557 2019-04-01 03:46:31 2019-04-01 03:51:23 5578         \n",
       "29      22178558 2019-04-01 03:46:46 2019-04-01 04:17:05 1065         \n",
       "30      22178559 2019-04-01 04:01:10 2019-04-01 04:12:50  268         \n",
       "⋮       ⋮        ⋮                   ⋮                   ⋮            \n",
       "1108134 23479349 2019-06-30 23:44:37 2019-07-01 00:10:31  957         \n",
       "1108135 23479350 2019-06-30 23:45:02 2019-07-01 00:10:11 5142         \n",
       "1108136 23479351 2019-06-30 23:45:10 2019-06-30 23:54:15 5047         \n",
       "1108137 23479353 2019-06-30 23:46:05 2019-07-01 00:17:16  240         \n",
       "1108138 23479354 2019-06-30 23:46:16 2019-07-01 00:17:16 5166         \n",
       "1108139 23479355 2019-06-30 23:46:19 2019-06-30 23:55:05 2092         \n",
       "1108140 23479357 2019-06-30 23:47:26 2019-07-01 00:17:15 1132         \n",
       "1108141 23479358 2019-06-30 23:48:34 2019-07-01 00:01:29 3131         \n",
       "1108142 23479360 2019-06-30 23:49:18 2019-06-30 23:55:18 3597         \n",
       "1108143 23479361 2019-06-30 23:49:29 2019-07-01 00:00:57 2099         \n",
       "1108144 23479362 2019-06-30 23:49:46 2019-07-01 00:31:52 6399         \n",
       "1108145 23479364 2019-06-30 23:49:59 2019-07-01 00:04:58 1923         \n",
       "1108146 23479365 2019-06-30 23:49:59 2019-06-30 23:55:47 2962         \n",
       "1108147 23479366 2019-06-30 23:50:02 2019-07-01 00:06:32 3410         \n",
       "1108148 23479368 2019-06-30 23:51:02 2019-07-01 00:02:46  143         \n",
       "1108149 23479371 2019-06-30 23:52:34 2019-07-01 00:05:48 5156         \n",
       "1108150 23479373 2019-06-30 23:53:59 2019-07-01 00:53:58  648         \n",
       "1108151 23479374 2019-06-30 23:54:04 2019-07-01 00:54:05 4883         \n",
       "1108152 23479376 2019-06-30 23:54:19 2019-07-01 00:04:45 1577         \n",
       "1108153 23479377 2019-06-30 23:55:24 2019-07-01 00:04:58 1759         \n",
       "1108154 23479378 2019-06-30 23:55:58 2019-07-01 00:13:59  429         \n",
       "1108155 23479379 2019-06-30 23:56:00 2019-06-30 23:58:49 4889         \n",
       "1108156 23479380 2019-06-30 23:57:00 2019-07-01 00:04:02  993         \n",
       "1108157 23479381 2019-06-30 23:57:54 2019-07-01 00:10:47 1044         \n",
       "1108158 23479382 2019-06-30 23:57:55 2019-07-01 01:20:55 4281         \n",
       "1108159 23479383 2019-06-30 23:58:00 2019-07-01 00:20:22 4573         \n",
       "1108160 23479384 2019-06-30 23:58:04 2019-07-01 00:14:17 6301         \n",
       "1108161 23479385 2019-06-30 23:58:20 2019-07-01 00:25:51 4472         \n",
       "1108162 23479386 2019-06-30 23:58:52 2019-07-01 00:11:24 5021         \n",
       "1108163 23479387 2019-06-30 23:59:05 2019-07-01 00:26:14 4749         \n",
       "        01 - Rental Details Duration In Seconds Uncapped start_station_id\n",
       "1        446                                              81             \n",
       "2       1048                                             317             \n",
       "3        252                                             283             \n",
       "4        357                                              26             \n",
       "5       1007                                             202             \n",
       "6        257                                             420             \n",
       "7        548                                             503             \n",
       "8        383                                             260             \n",
       "9       2137                                             211             \n",
       "10      2120                                             211             \n",
       "11       297                                             304             \n",
       "12       365                                              37             \n",
       "13       165                                              75             \n",
       "14       443                                             334             \n",
       "15       293                                              39             \n",
       "16       204                                             287             \n",
       "17       233                                             148             \n",
       "18       546                                              59             \n",
       "19      1249                                             240             \n",
       "20       243                                             430             \n",
       "21       188                                             257             \n",
       "22       227                                             427             \n",
       "23       335                                             172             \n",
       "24       662                                             304             \n",
       "25       592                                             500             \n",
       "26       206                                              90             \n",
       "27       304                                             299             \n",
       "28       292                                              15             \n",
       "29      1819                                              19             \n",
       "30       700                                             260             \n",
       "⋮       ⋮                                                ⋮               \n",
       "1108134 1554                                               2             \n",
       "1108135 1509                                               2             \n",
       "1108136  545                                             300             \n",
       "1108137 1871                                              59             \n",
       "1108138 1860                                              59             \n",
       "1108139  526                                             299             \n",
       "1108140 1789                                              59             \n",
       "1108141  775                                              29             \n",
       "1108142  360                                             212             \n",
       "1108143  688                                             310             \n",
       "1108144 2526                                             392             \n",
       "1108145  899                                             228             \n",
       "1108146  348                                              50             \n",
       "1108147  990                                             260             \n",
       "1108148  704                                              36             \n",
       "1108149  794                                             114             \n",
       "1108150 3599                                             268             \n",
       "1108151 3601                                             268             \n",
       "1108152  626                                             227             \n",
       "1108153  574                                              81             \n",
       "1108154 1081                                             283             \n",
       "1108155  169                                             225             \n",
       "1108156  422                                             106             \n",
       "1108157  773                                             215             \n",
       "1108158 4980                                             515             \n",
       "1108159 1342                                             206             \n",
       "1108160  973                                             199             \n",
       "1108161 1651                                             319             \n",
       "1108162  752                                             226             \n",
       "1108163 1629                                              85             \n",
       "        start_station_name              end_station_id\n",
       "1       Daley Center Plaza               56           \n",
       "2       Wood St & Taylor St              59           \n",
       "3       LaSalle St & Jackson Blvd       174           \n",
       "4       McClurg Ct & Illinois St        133           \n",
       "5       Halsted St & 18th St            129           \n",
       "6       Ellis Ave & 55th St             426           \n",
       "7       Drake Ave & Fullerton Ave       500           \n",
       "8       Kedzie Ave & Milwaukee Ave      499           \n",
       "9       St. Clair St & Erie St          211           \n",
       "10      St. Clair St & Erie St          211           \n",
       "11      Broadway & Waveland Ave         232           \n",
       "12      Dearborn St & Adams St          337           \n",
       "13      Canal St & Jackson Blvd          36           \n",
       "14      Lake Shore Dr & Belmont Ave     256           \n",
       "15      Wabash Ave & Adams St           255           \n",
       "16      Franklin St & Monroe St          89           \n",
       "17      State St & 33rd St              272           \n",
       "18      Wabash Ave & Roosevelt Rd        36           \n",
       "19      Sheridan Rd & Irving Park Rd    325           \n",
       "20      MLK Jr Dr & 63rd St             427           \n",
       "21      Lincoln Ave & Waveland Ave      230           \n",
       "22      Cottage Grove Ave & 63rd St     430           \n",
       "23      Rush St & Cedar St              635           \n",
       "24      Broadway & Waveland Ave         246           \n",
       "25      Central Park Ave & Elbridge Ave 503           \n",
       "26      Millennium Park                  44           \n",
       "27      Halsted St & Roscoe St          334           \n",
       "28      Racine Ave & 18th St            205           \n",
       "29      Loomis St & Taylor St (*)        31           \n",
       "30      Kedzie Ave & Milwaukee Ave      485           \n",
       "⋮       ⋮                               ⋮             \n",
       "1108134 Buckingham Fountain (Temp)       52           \n",
       "1108135 Buckingham Fountain (Temp)       52           \n",
       "1108136 Broadway & Barry Ave            144           \n",
       "1108137 Wabash Ave & Roosevelt Rd         6           \n",
       "1108138 Wabash Ave & Roosevelt Rd         6           \n",
       "1108139 Halsted St & Roscoe St          254           \n",
       "1108140 Wabash Ave & Roosevelt Rd         6           \n",
       "1108141 Noble St & Milwaukee Ave        123           \n",
       "1108142 Wells St & Hubbard St            98           \n",
       "1108143 Damen Ave & Charleston St       210           \n",
       "1108144 Perry Ave & 69th St             392           \n",
       "1108145 Damen Ave & Melrose Ave         223           \n",
       "1108146 Clark St & Ida B Wells Dr       321           \n",
       "1108147 Kedzie Ave & Milwaukee Ave      128           \n",
       "1108148 Franklin St & Jackson Blvd      199           \n",
       "1108149 Sheffield Ave & Waveland Ave    324           \n",
       "1108150 Lake Shore Dr & North Blvd      220           \n",
       "1108151 Lake Shore Dr & North Blvd      220           \n",
       "1108152 Southport Ave & Waveland Ave    632           \n",
       "1108153 Daley Center Plaza               56           \n",
       "1108154 LaSalle St & Jackson Blvd       273           \n",
       "1108155 Halsted St & Dickens Ave        224           \n",
       "1108156 State St & Pearson St           620           \n",
       "1108157 Damen Ave & Madison St           69           \n",
       "1108158 Paulina St & Howard St          451           \n",
       "1108159 Halsted St & Archer Ave         206           \n",
       "1108160 Wabash Ave & Grand Ave          338           \n",
       "1108161 Greenview Ave & Diversey Pkwy   337           \n",
       "1108162 Racine Ave & Belmont Ave        300           \n",
       "1108163 Michigan Ave & Oak St           249           \n",
       "        end_station_name                     member_casual Member Gender\n",
       "1       Desplaines St & Kinzie St            Subscriber    Male         \n",
       "2       Wabash Ave & Roosevelt Rd            Subscriber    Female       \n",
       "3       Canal St & Madison St                Subscriber    Male         \n",
       "4       Kingsbury St & Kinzie St             Subscriber    Male         \n",
       "5       Blue Island Ave & 18th St            Subscriber    Male         \n",
       "6       Ellis Ave & 60th St                  Subscriber    Male         \n",
       "7       Central Park Ave & Elbridge Ave      Subscriber    Male         \n",
       "8       Kosciuszko Park                      Subscriber    Male         \n",
       "9       St. Clair St & Erie St               Customer      NA           \n",
       "10      St. Clair St & Erie St               Customer      NA           \n",
       "11      Pine Grove Ave & Waveland Ave        Subscriber    Male         \n",
       "12      Clark St & Chicago Ave               Subscriber    Male         \n",
       "13      Franklin St & Jackson Blvd           Subscriber    Male         \n",
       "14      Broadway & Sheridan Rd               Subscriber    Male         \n",
       "15      Indiana Ave & Roosevelt Rd           Subscriber    Male         \n",
       "16      Financial Pl & Ida B Wells Dr (Temp) Subscriber    Male         \n",
       "17      Indiana Ave & 31st St                Subscriber    Female       \n",
       "18      Franklin St & Jackson Blvd           Subscriber    Male         \n",
       "19      Clark St & Winnemac Ave              Customer      NA           \n",
       "20      Cottage Grove Ave & 63rd St          Subscriber    Male         \n",
       "21      Lincoln Ave & Roscoe St              Subscriber    Male         \n",
       "22      MLK Jr Dr & 63rd St                  Subscriber    Male         \n",
       "23      Fairbanks St & Superior St (*)       Subscriber    Male         \n",
       "24      Ashland Ave & Belle Plaine Ave       Subscriber    Female       \n",
       "25      Drake Ave & Fullerton Ave            Subscriber    Male         \n",
       "26      State St & Randolph St               Subscriber    Female       \n",
       "27      Lake Shore Dr & Belmont Ave          Subscriber    Male         \n",
       "28      Paulina St & 18th St                 Subscriber    Male         \n",
       "29      Franklin St & Chicago Ave            Subscriber    Male         \n",
       "30      Sawyer Ave & Irving Park Rd          Customer      Male         \n",
       "⋮       ⋮                                    ⋮             ⋮            \n",
       "1108134 Michigan Ave & Lake St               Customer      NA           \n",
       "1108135 Michigan Ave & Lake St               Customer      NA           \n",
       "1108136 Larrabee St & Webster Ave            Subscriber    Male         \n",
       "1108137 Dusable Harbor                       Customer      Female       \n",
       "1108138 Dusable Harbor                       Customer      Female       \n",
       "1108139 Pine Grove Ave & Irving Park Rd      Subscriber    Male         \n",
       "1108140 Dusable Harbor                       Customer      Female       \n",
       "1108141 California Ave & Milwaukee Ave       Subscriber    Male         \n",
       "1108142 LaSalle St & Washington St           Customer      Male         \n",
       "1108143 Ashland Ave & Division St            Subscriber    Male         \n",
       "1108144 Perry Ave & 69th St                  Subscriber    Male         \n",
       "1108145 Clifton Ave & Armitage Ave           Subscriber    Male         \n",
       "1108146 Wabash Ave & 9th St                  Subscriber    Female       \n",
       "1108147 Damen Ave & Chicago Ave              Subscriber    Male         \n",
       "1108148 Wabash Ave & Grand Ave               Subscriber    Male         \n",
       "1108149 Stockton Dr & Wrightwood Ave         Subscriber    Female       \n",
       "1108150 Clark St & Drummond Pl               Subscriber    Male         \n",
       "1108151 Clark St & Drummond Pl               Subscriber    Female       \n",
       "1108152 Clark St & Newport St                Customer      NA           \n",
       "1108153 Desplaines St & Kinzie St            Subscriber    Male         \n",
       "1108154 Michigan Ave & 18th St               Subscriber    Male         \n",
       "1108155 Halsted St & Willow St               Subscriber    Male         \n",
       "1108156 Orleans St & Chestnut St (NEXT Apts) Subscriber    Male         \n",
       "1108157 Damen Ave & Pierce Ave               Subscriber    Male         \n",
       "1108158 Sheridan Rd & Loyola Ave             Customer      NA           \n",
       "1108159 Halsted St & Archer Ave              Customer      NA           \n",
       "1108160 Calumet Ave & 18th St                Subscriber    Male         \n",
       "1108161 Clark St & Chicago Ave               Subscriber    Female       \n",
       "1108162 Broadway & Barry Ave                 Subscriber    Male         \n",
       "1108163 Montrose Harbor                      Subscriber    Male         \n",
       "        05 - Member Details Member Birthday Year\n",
       "1       1975                                    \n",
       "2       1984                                    \n",
       "3       1990                                    \n",
       "4       1993                                    \n",
       "5       1992                                    \n",
       "6       1999                                    \n",
       "7       1969                                    \n",
       "8       1991                                    \n",
       "9         NA                                    \n",
       "10        NA                                    \n",
       "11      1975                                    \n",
       "12      1991                                    \n",
       "13      1990                                    \n",
       "14      1989                                    \n",
       "15      1969                                    \n",
       "16      1994                                    \n",
       "17      1989                                    \n",
       "18      1958                                    \n",
       "19        NA                                    \n",
       "20      1985                                    \n",
       "21      1981                                    \n",
       "22      1985                                    \n",
       "23      1992                                    \n",
       "24      1959                                    \n",
       "25      1969                                    \n",
       "26      1992                                    \n",
       "27      1989                                    \n",
       "28      1981                                    \n",
       "29      1997                                    \n",
       "30      1975                                    \n",
       "⋮       ⋮                                       \n",
       "1108134   NA                                    \n",
       "1108135   NA                                    \n",
       "1108136 1980                                    \n",
       "1108137 1997                                    \n",
       "1108138 1997                                    \n",
       "1108139 1981                                    \n",
       "1108140 1998                                    \n",
       "1108141 1987                                    \n",
       "1108142 1989                                    \n",
       "1108143 1978                                    \n",
       "1108144 1957                                    \n",
       "1108145 1989                                    \n",
       "1108146 1986                                    \n",
       "1108147 1996                                    \n",
       "1108148 1992                                    \n",
       "1108149 1990                                    \n",
       "1108150 1987                                    \n",
       "1108151 1986                                    \n",
       "1108152   NA                                    \n",
       "1108153 1975                                    \n",
       "1108154 1984                                    \n",
       "1108155 1987                                    \n",
       "1108156 1964                                    \n",
       "1108157 1962                                    \n",
       "1108158   NA                                    \n",
       "1108159   NA                                    \n",
       "1108160 1980                                    \n",
       "1108161 1991                                    \n",
       "1108162 1992                                    \n",
       "1108163 1987                                    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "(q4_2019 <- rename(q4_2019\n",
    "                   ,ride_id = trip_id\n",
    "                   ,rideable_type = bikeid \n",
    "                   ,started_at = start_time  \n",
    "                   ,ended_at = end_time  \n",
    "                   ,start_station_name = from_station_name \n",
    "                   ,start_station_id = from_station_id \n",
    "                   ,end_station_name = to_station_name \n",
    "                   ,end_station_id = to_station_id \n",
    "                   ,member_casual = usertype))\n",
    "\n",
    "(q3_2019 <- rename(q3_2019\n",
    "                   ,ride_id = trip_id\n",
    "                   ,rideable_type = bikeid \n",
    "                   ,started_at = start_time  \n",
    "                   ,ended_at = end_time  \n",
    "                   ,start_station_name = from_station_name \n",
    "                   ,start_station_id = from_station_id \n",
    "                   ,end_station_name = to_station_name \n",
    "                   ,end_station_id = to_station_id \n",
    "                   ,member_casual = usertype))\n",
    "\n",
    "(q2_2019 <- rename(q2_2019\n",
    "                   ,ride_id = \"01 - Rental Details Rental ID\"\n",
    "                   ,rideable_type = \"01 - Rental Details Bike ID\" \n",
    "                   ,started_at = \"01 - Rental Details Local Start Time\"  \n",
    "                   ,ended_at = \"01 - Rental Details Local End Time\"  \n",
    "                   ,start_station_name = \"03 - Rental Start Station Name\" \n",
    "                   ,start_station_id = \"03 - Rental Start Station ID\"\n",
    "                   ,end_station_name = \"02 - Rental End Station Name\" \n",
    "                   ,end_station_id = \"02 - Rental End Station ID\"\n",
    "                   ,member_casual = \"User Type\"))\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "eb021fe0",
   "metadata": {
    "papermill": {
     "duration": 0.019451,
     "end_time": "2022-10-30T18:30:18.503329",
     "exception": false,
     "start_time": "2022-10-30T18:30:18.483878",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Check the dataframes for inconsistencies and missing data.\n",
    "str() function is used to display the internal structure of an object."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "7c48603c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:30:18.545187Z",
     "iopub.status.busy": "2022-10-30T18:30:18.543657Z",
     "iopub.status.idle": "2022-10-30T18:30:18.677059Z",
     "shell.execute_reply": "2022-10-30T18:30:18.675406Z"
    },
    "papermill": {
     "duration": 0.156784,
     "end_time": "2022-10-30T18:30:18.679586",
     "exception": false,
     "start_time": "2022-10-30T18:30:18.522802",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "spec_tbl_df [426,887 × 13] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:426887] \"EACB19130B0CDA4A\" \"8FED874C809DC021\" \"789F3C21E472CA96\" \"C9A388DAC6ABF313\" ...\n",
      " $ rideable_type     : chr [1:426887] \"docked_bike\" \"docked_bike\" \"docked_bike\" \"docked_bike\" ...\n",
      " $ started_at        : POSIXct[1:426887], format: \"2020-01-21 20:06:59\" \"2020-01-30 14:22:39\" ...\n",
      " $ ended_at          : POSIXct[1:426887], format: \"2020-01-21 20:14:30\" \"2020-01-30 14:26:22\" ...\n",
      " $ start_station_name: chr [1:426887] \"Western Ave & Leland Ave\" \"Clark St & Montrose Ave\" \"Broadway & Belmont Ave\" \"Clark St & Randolph St\" ...\n",
      " $ start_station_id  : num [1:426887] 239 234 296 51 66 212 96 96 212 38 ...\n",
      " $ end_station_name  : chr [1:426887] \"Clark St & Leland Ave\" \"Southport Ave & Irving Park Rd\" \"Wilton Ave & Belmont Ave\" \"Fairbanks Ct & Grand Ave\" ...\n",
      " $ end_station_id    : num [1:426887] 326 318 117 24 212 96 212 212 96 100 ...\n",
      " $ start_lat         : num [1:426887] 42 42 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num [1:426887] -87.7 -87.7 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num [1:426887] 42 42 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num [1:426887] -87.7 -87.7 -87.7 -87.6 -87.6 ...\n",
      " $ member_casual     : chr [1:426887] \"member\" \"member\" \"member\" \"member\" ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n",
      "spec_tbl_df [704,054 × 12] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : num [1:704054] 25223640 25223641 25223642 25223643 25223644 ...\n",
      " $ started_at        : POSIXct[1:704054], format: \"2019-10-01 00:01:39\" \"2019-10-01 00:02:16\" ...\n",
      " $ ended_at          : POSIXct[1:704054], format: \"2019-10-01 00:17:20\" \"2019-10-01 00:06:34\" ...\n",
      " $ rideable_type     : num [1:704054] 2215 6328 3003 3275 5294 ...\n",
      " $ tripduration      : num [1:704054] 940 258 850 2350 1867 ...\n",
      " $ start_station_id  : num [1:704054] 20 19 84 313 210 156 84 156 156 336 ...\n",
      " $ start_station_name: chr [1:704054] \"Sheffield Ave & Kingsbury St\" \"Throop (Loomis) St & Taylor St\" \"Milwaukee Ave & Grand Ave\" \"Lakeview Ave & Fullerton Pkwy\" ...\n",
      " $ end_station_id    : num [1:704054] 309 241 199 290 382 226 142 463 463 336 ...\n",
      " $ end_station_name  : chr [1:704054] \"Leavitt St & Armitage Ave\" \"Morgan St & Polk St\" \"Wabash Ave & Grand Ave\" \"Kedzie Ave & Palmer Ct\" ...\n",
      " $ member_casual     : chr [1:704054] \"Subscriber\" \"Subscriber\" \"Subscriber\" \"Subscriber\" ...\n",
      " $ gender            : chr [1:704054] \"Male\" \"Male\" \"Female\" \"Male\" ...\n",
      " $ birthyear         : num [1:704054] 1987 1998 1991 1990 1987 ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   trip_id = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_time = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   end_time = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   bikeid = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   tripduration = \u001b[32mcol_number()\u001b[39m,\n",
      "  ..   from_station_id = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   from_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   to_station_id = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   to_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   usertype = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   gender = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   birthyear = \u001b[32mcol_double()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n",
      "spec_tbl_df [1,640,718 × 12] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : num [1:1640718] 23479388 23479389 23479390 23479391 23479392 ...\n",
      " $ started_at        : POSIXct[1:1640718], format: \"2019-07-01 00:00:27\" \"2019-07-01 00:01:16\" ...\n",
      " $ ended_at          : POSIXct[1:1640718], format: \"2019-07-01 00:20:41\" \"2019-07-01 00:18:44\" ...\n",
      " $ rideable_type     : num [1:1640718] 3591 5353 6180 5540 6014 ...\n",
      " $ tripduration      : num [1:1640718] 1214 1048 1554 1503 1213 ...\n",
      " $ start_station_id  : num [1:1640718] 117 381 313 313 168 300 168 313 43 43 ...\n",
      " $ start_station_name: chr [1:1640718] \"Wilton Ave & Belmont Ave\" \"Western Ave & Monroe St\" \"Lakeview Ave & Fullerton Pkwy\" \"Lakeview Ave & Fullerton Pkwy\" ...\n",
      " $ end_station_id    : num [1:1640718] 497 203 144 144 62 232 62 144 195 195 ...\n",
      " $ end_station_name  : chr [1:1640718] \"Kimball Ave & Belmont Ave\" \"Western Ave & 21st St\" \"Larrabee St & Webster Ave\" \"Larrabee St & Webster Ave\" ...\n",
      " $ member_casual     : chr [1:1640718] \"Subscriber\" \"Customer\" \"Customer\" \"Customer\" ...\n",
      " $ gender            : chr [1:1640718] \"Male\" NA NA NA ...\n",
      " $ birthyear         : num [1:1640718] 1992 NA NA NA NA ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   trip_id = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_time = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   end_time = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   bikeid = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   tripduration = \u001b[32mcol_number()\u001b[39m,\n",
      "  ..   from_station_id = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   from_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   to_station_id = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   to_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   usertype = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   gender = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   birthyear = \u001b[32mcol_double()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n",
      "spec_tbl_df [1,108,163 × 12] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id                                         : num [1:1108163] 22178529 22178530 22178531 22178532 22178533 ...\n",
      " $ started_at                                      : POSIXct[1:1108163], format: \"2019-04-01 00:02:22\" \"2019-04-01 00:03:02\" ...\n",
      " $ ended_at                                        : POSIXct[1:1108163], format: \"2019-04-01 00:09:48\" \"2019-04-01 00:20:30\" ...\n",
      " $ rideable_type                                   : num [1:1108163] 6251 6226 5649 4151 3270 ...\n",
      " $ 01 - Rental Details Duration In Seconds Uncapped: num [1:1108163] 446 1048 252 357 1007 ...\n",
      " $ start_station_id                                : num [1:1108163] 81 317 283 26 202 420 503 260 211 211 ...\n",
      " $ start_station_name                              : chr [1:1108163] \"Daley Center Plaza\" \"Wood St & Taylor St\" \"LaSalle St & Jackson Blvd\" \"McClurg Ct & Illinois St\" ...\n",
      " $ end_station_id                                  : num [1:1108163] 56 59 174 133 129 426 500 499 211 211 ...\n",
      " $ end_station_name                                : chr [1:1108163] \"Desplaines St & Kinzie St\" \"Wabash Ave & Roosevelt Rd\" \"Canal St & Madison St\" \"Kingsbury St & Kinzie St\" ...\n",
      " $ member_casual                                   : chr [1:1108163] \"Subscriber\" \"Subscriber\" \"Subscriber\" \"Subscriber\" ...\n",
      " $ Member Gender                                   : chr [1:1108163] \"Male\" \"Female\" \"Male\" \"Male\" ...\n",
      " $ 05 - Member Details Member Birthday Year        : num [1:1108163] 1975 1984 1990 1993 1992 ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   `01 - Rental Details Rental ID` = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   `01 - Rental Details Local Start Time` = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   `01 - Rental Details Local End Time` = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   `01 - Rental Details Bike ID` = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   `01 - Rental Details Duration In Seconds Uncapped` = \u001b[32mcol_number()\u001b[39m,\n",
      "  ..   `03 - Rental Start Station ID` = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   `03 - Rental Start Station Name` = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   `02 - Rental End Station ID` = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   `02 - Rental End Station Name` = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   `User Type` = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   `Member Gender` = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   `05 - Member Details Member Birthday Year` = \u001b[32mcol_double()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n"
     ]
    }
   ],
   "source": [
    "str(q1_2020)\n",
    "str(q4_2019)\n",
    "str(q3_2019)\n",
    "str(q2_2019)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1c0343b7",
   "metadata": {
    "papermill": {
     "duration": 0.020267,
     "end_time": "2022-10-30T18:30:18.720488",
     "exception": false,
     "start_time": "2022-10-30T18:30:18.700221",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Convert ride_id and rideable_type to character as they were numbers so that they can stack correctly.\n",
    "mutate() function is used to create a new variable from a data set. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "c37d63fa",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:30:18.763270Z",
     "iopub.status.busy": "2022-10-30T18:30:18.761811Z",
     "iopub.status.idle": "2022-10-30T18:30:18.799756Z",
     "shell.execute_reply": "2022-10-30T18:30:18.797996Z"
    },
    "papermill": {
     "duration": 0.062327,
     "end_time": "2022-10-30T18:30:18.802296",
     "exception": false,
     "start_time": "2022-10-30T18:30:18.739969",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "q4_2019 <-  mutate(q4_2019, ride_id = as.character(ride_id)\n",
    "                   ,rideable_type = as.character(rideable_type)) \n",
    "q3_2019 <-  mutate(q3_2019, ride_id = as.character(ride_id)\n",
    "                   ,rideable_type = as.character(rideable_type)) \n",
    "q2_2019 <-  mutate(q2_2019, ride_id = as.character(ride_id)\n",
    "                   ,rideable_type = as.character(rideable_type)) "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "086c6e8b",
   "metadata": {
    "papermill": {
     "duration": 0.027485,
     "end_time": "2022-10-30T18:30:18.849982",
     "exception": false,
     "start_time": "2022-10-30T18:30:18.822497",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Combine and collate all the individual quarters into one data frame after cleaning and sorting. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "f17c1c94",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:30:18.893195Z",
     "iopub.status.busy": "2022-10-30T18:30:18.891695Z",
     "iopub.status.idle": "2022-10-30T18:30:32.717221Z",
     "shell.execute_reply": "2022-10-30T18:30:32.715500Z"
    },
    "papermill": {
     "duration": 13.849645,
     "end_time": "2022-10-30T18:30:32.719645",
     "exception": false,
     "start_time": "2022-10-30T18:30:18.870000",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips <- bind_rows(q2_2019, q3_2019, q4_2019, q1_2020)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "36413c3a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:30:32.763083Z",
     "iopub.status.busy": "2022-10-30T18:30:32.761525Z",
     "iopub.status.idle": "2022-10-30T18:31:48.722559Z",
     "shell.execute_reply": "2022-10-30T18:31:48.720813Z"
    },
    "papermill": {
     "duration": 75.985125,
     "end_time": "2022-10-30T18:31:48.725316",
     "exception": false,
     "start_time": "2022-10-30T18:30:32.740191",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips %>%\n",
    "  write.csv(\"all_trips_clean.csv\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "32ea5a14",
   "metadata": {
    "papermill": {
     "duration": 0.020411,
     "end_time": "2022-10-30T18:31:48.767741",
     "exception": false,
     "start_time": "2022-10-30T18:31:48.747330",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Remove lat, long, birthyear, and gender fields as this data was dropped aty the beginning of 2020"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "5b60514f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:31:48.809804Z",
     "iopub.status.busy": "2022-10-30T18:31:48.808263Z",
     "iopub.status.idle": "2022-10-30T18:31:48.831715Z",
     "shell.execute_reply": "2022-10-30T18:31:48.830060Z"
    },
    "papermill": {
     "duration": 0.047008,
     "end_time": "2022-10-30T18:31:48.834045",
     "exception": false,
     "start_time": "2022-10-30T18:31:48.787037",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips <- all_trips %>%  \n",
    "  select(-c(start_lat, start_lng, end_lat, end_lng, birthyear, gender, \"01 - Rental Details Duration In Seconds Uncapped\", \"05 - Member Details Member Birthday Year\", \"Member Gender\", \"tripduration\"))\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b8aff6a8",
   "metadata": {
    "papermill": {
     "duration": 0.019333,
     "end_time": "2022-10-30T18:31:48.872475",
     "exception": false,
     "start_time": "2022-10-30T18:31:48.853142",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Lets have a look at the columns and tidying up so far:\n",
    "\n",
    "head() function gives us a look at 6 rows of the data setwith all the coulumns."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "8e8bfb48",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:31:48.915667Z",
     "iopub.status.busy": "2022-10-30T18:31:48.914098Z",
     "iopub.status.idle": "2022-10-30T18:31:48.941863Z",
     "shell.execute_reply": "2022-10-30T18:31:48.940122Z"
    },
    "papermill": {
     "duration": 0.051158,
     "end_time": "2022-10-30T18:31:48.943933",
     "exception": false,
     "start_time": "2022-10-30T18:31:48.892775",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>ride_id</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>rideable_type</th><th scope=col>start_station_id</th><th scope=col>start_station_name</th><th scope=col>end_station_id</th><th scope=col>end_station_name</th><th scope=col>member_casual</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>22178529</td><td>2019-04-01 00:02:22</td><td>2019-04-01 00:09:48</td><td>6251</td><td> 81</td><td><span style=white-space:pre-wrap>Daley Center Plaza       </span></td><td> 56</td><td>Desplaines St &amp; Kinzie St</td><td>Subscriber</td></tr>\n",
       "\t<tr><td>22178530</td><td>2019-04-01 00:03:02</td><td>2019-04-01 00:20:30</td><td>6226</td><td>317</td><td><span style=white-space:pre-wrap>Wood St &amp; Taylor St      </span></td><td> 59</td><td>Wabash Ave &amp; Roosevelt Rd</td><td>Subscriber</td></tr>\n",
       "\t<tr><td>22178531</td><td>2019-04-01 00:11:07</td><td>2019-04-01 00:15:19</td><td>5649</td><td>283</td><td>LaSalle St &amp; Jackson Blvd</td><td>174</td><td><span style=white-space:pre-wrap>Canal St &amp; Madison St    </span></td><td>Subscriber</td></tr>\n",
       "\t<tr><td>22178532</td><td>2019-04-01 00:13:01</td><td>2019-04-01 00:18:58</td><td>4151</td><td> 26</td><td>McClurg Ct &amp; Illinois St </td><td>133</td><td>Kingsbury St &amp; Kinzie St </td><td>Subscriber</td></tr>\n",
       "\t<tr><td>22178533</td><td>2019-04-01 00:19:26</td><td>2019-04-01 00:36:13</td><td>3270</td><td>202</td><td><span style=white-space:pre-wrap>Halsted St &amp; 18th St     </span></td><td>129</td><td>Blue Island Ave &amp; 18th St</td><td>Subscriber</td></tr>\n",
       "\t<tr><td>22178534</td><td>2019-04-01 00:19:39</td><td>2019-04-01 00:23:56</td><td>3123</td><td>420</td><td><span style=white-space:pre-wrap>Ellis Ave &amp; 55th St      </span></td><td>426</td><td><span style=white-space:pre-wrap>Ellis Ave &amp; 60th St      </span></td><td>Subscriber</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 9\n",
       "\\begin{tabular}{lllllllll}\n",
       " ride\\_id & started\\_at & ended\\_at & rideable\\_type & start\\_station\\_id & start\\_station\\_name & end\\_station\\_id & end\\_station\\_name & member\\_casual\\\\\n",
       " <chr> & <dttm> & <dttm> & <chr> & <dbl> & <chr> & <dbl> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t 22178529 & 2019-04-01 00:02:22 & 2019-04-01 00:09:48 & 6251 &  81 & Daley Center Plaza        &  56 & Desplaines St \\& Kinzie St & Subscriber\\\\\n",
       "\t 22178530 & 2019-04-01 00:03:02 & 2019-04-01 00:20:30 & 6226 & 317 & Wood St \\& Taylor St       &  59 & Wabash Ave \\& Roosevelt Rd & Subscriber\\\\\n",
       "\t 22178531 & 2019-04-01 00:11:07 & 2019-04-01 00:15:19 & 5649 & 283 & LaSalle St \\& Jackson Blvd & 174 & Canal St \\& Madison St     & Subscriber\\\\\n",
       "\t 22178532 & 2019-04-01 00:13:01 & 2019-04-01 00:18:58 & 4151 &  26 & McClurg Ct \\& Illinois St  & 133 & Kingsbury St \\& Kinzie St  & Subscriber\\\\\n",
       "\t 22178533 & 2019-04-01 00:19:26 & 2019-04-01 00:36:13 & 3270 & 202 & Halsted St \\& 18th St      & 129 & Blue Island Ave \\& 18th St & Subscriber\\\\\n",
       "\t 22178534 & 2019-04-01 00:19:39 & 2019-04-01 00:23:56 & 3123 & 420 & Ellis Ave \\& 55th St       & 426 & Ellis Ave \\& 60th St       & Subscriber\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 9\n",
       "\n",
       "| ride_id &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | rideable_type &lt;chr&gt; | start_station_id &lt;dbl&gt; | start_station_name &lt;chr&gt; | end_station_id &lt;dbl&gt; | end_station_name &lt;chr&gt; | member_casual &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| 22178529 | 2019-04-01 00:02:22 | 2019-04-01 00:09:48 | 6251 |  81 | Daley Center Plaza        |  56 | Desplaines St &amp; Kinzie St | Subscriber |\n",
       "| 22178530 | 2019-04-01 00:03:02 | 2019-04-01 00:20:30 | 6226 | 317 | Wood St &amp; Taylor St       |  59 | Wabash Ave &amp; Roosevelt Rd | Subscriber |\n",
       "| 22178531 | 2019-04-01 00:11:07 | 2019-04-01 00:15:19 | 5649 | 283 | LaSalle St &amp; Jackson Blvd | 174 | Canal St &amp; Madison St     | Subscriber |\n",
       "| 22178532 | 2019-04-01 00:13:01 | 2019-04-01 00:18:58 | 4151 |  26 | McClurg Ct &amp; Illinois St  | 133 | Kingsbury St &amp; Kinzie St  | Subscriber |\n",
       "| 22178533 | 2019-04-01 00:19:26 | 2019-04-01 00:36:13 | 3270 | 202 | Halsted St &amp; 18th St      | 129 | Blue Island Ave &amp; 18th St | Subscriber |\n",
       "| 22178534 | 2019-04-01 00:19:39 | 2019-04-01 00:23:56 | 3123 | 420 | Ellis Ave &amp; 55th St       | 426 | Ellis Ave &amp; 60th St       | Subscriber |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id  started_at          ended_at            rideable_type\n",
       "1 22178529 2019-04-01 00:02:22 2019-04-01 00:09:48 6251         \n",
       "2 22178530 2019-04-01 00:03:02 2019-04-01 00:20:30 6226         \n",
       "3 22178531 2019-04-01 00:11:07 2019-04-01 00:15:19 5649         \n",
       "4 22178532 2019-04-01 00:13:01 2019-04-01 00:18:58 4151         \n",
       "5 22178533 2019-04-01 00:19:26 2019-04-01 00:36:13 3270         \n",
       "6 22178534 2019-04-01 00:19:39 2019-04-01 00:23:56 3123         \n",
       "  start_station_id start_station_name        end_station_id\n",
       "1  81              Daley Center Plaza         56           \n",
       "2 317              Wood St & Taylor St        59           \n",
       "3 283              LaSalle St & Jackson Blvd 174           \n",
       "4  26              McClurg Ct & Illinois St  133           \n",
       "5 202              Halsted St & 18th St      129           \n",
       "6 420              Ellis Ave & 55th St       426           \n",
       "  end_station_name          member_casual\n",
       "1 Desplaines St & Kinzie St Subscriber   \n",
       "2 Wabash Ave & Roosevelt Rd Subscriber   \n",
       "3 Canal St & Madison St     Subscriber   \n",
       "4 Kingsbury St & Kinzie St  Subscriber   \n",
       "5 Blue Island Ave & 18th St Subscriber   \n",
       "6 Ellis Ave & 60th St       Subscriber   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(all_trips)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "03f15b36",
   "metadata": {
    "papermill": {
     "duration": 0.01914,
     "end_time": "2022-10-30T18:31:48.982805",
     "exception": false,
     "start_time": "2022-10-30T18:31:48.963665",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "All the coulmn names shown:\n",
    "\n",
    "colnames() does this for us."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "0ac3423c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:31:49.026757Z",
     "iopub.status.busy": "2022-10-30T18:31:49.025127Z",
     "iopub.status.idle": "2022-10-30T18:31:49.044180Z",
     "shell.execute_reply": "2022-10-30T18:31:49.042385Z"
    },
    "papermill": {
     "duration": 0.044083,
     "end_time": "2022-10-30T18:31:49.046936",
     "exception": false,
     "start_time": "2022-10-30T18:31:49.002853",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'started_at'</li><li>'ended_at'</li><li>'rideable_type'</li><li>'start_station_id'</li><li>'start_station_name'</li><li>'end_station_id'</li><li>'end_station_name'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'started_at'\n",
       "3. 'ended_at'\n",
       "4. 'rideable_type'\n",
       "5. 'start_station_id'\n",
       "6. 'start_station_name'\n",
       "7. 'end_station_id'\n",
       "8. 'end_station_name'\n",
       "9. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"ride_id\"            \"started_at\"         \"ended_at\"          \n",
       "[4] \"rideable_type\"      \"start_station_id\"   \"start_station_name\"\n",
       "[7] \"end_station_id\"     \"end_station_name\"   \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "colnames(all_trips)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "115524b4",
   "metadata": {
    "papermill": {
     "duration": 0.022261,
     "end_time": "2022-10-30T18:31:49.091962",
     "exception": false,
     "start_time": "2022-10-30T18:31:49.069701",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "How many rows are in the data frame:\n",
    "\n",
    "nrow() function is applied."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "1d2b0ab2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:31:49.137134Z",
     "iopub.status.busy": "2022-10-30T18:31:49.135652Z",
     "iopub.status.idle": "2022-10-30T18:31:49.152076Z",
     "shell.execute_reply": "2022-10-30T18:31:49.150446Z"
    },
    "papermill": {
     "duration": 0.040691,
     "end_time": "2022-10-30T18:31:49.154247",
     "exception": false,
     "start_time": "2022-10-30T18:31:49.113556",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3879822"
      ],
      "text/latex": [
       "3879822"
      ],
      "text/markdown": [
       "3879822"
      ],
      "text/plain": [
       "[1] 3879822"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "nrow(all_trips)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5c42a1f6",
   "metadata": {
    "papermill": {
     "duration": 0.020502,
     "end_time": "2022-10-30T18:31:49.195937",
     "exception": false,
     "start_time": "2022-10-30T18:31:49.175435",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We also want to see a summary of the statistical nature of the data frame:\n",
    "\n",
    "summary() function will do this."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "a23495d7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:31:49.241976Z",
     "iopub.status.busy": "2022-10-30T18:31:49.240429Z",
     "iopub.status.idle": "2022-10-30T18:31:52.614146Z",
     "shell.execute_reply": "2022-10-30T18:31:52.612577Z"
    },
    "papermill": {
     "duration": 3.398703,
     "end_time": "2022-10-30T18:31:52.616638",
     "exception": false,
     "start_time": "2022-10-30T18:31:49.217935",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   ride_id            started_at                     ended_at                  \n",
       " Length:3879822     Min.   :2019-04-01 00:02:22   Min.   :2019-04-01 00:09:48  \n",
       " Class :character   1st Qu.:2019-06-23 07:49:09   1st Qu.:2019-06-23 08:20:27  \n",
       " Mode  :character   Median :2019-08-14 17:43:38   Median :2019-08-14 18:02:04  \n",
       "                    Mean   :2019-08-26 00:49:59   Mean   :2019-08-26 01:14:37  \n",
       "                    3rd Qu.:2019-10-12 12:10:21   3rd Qu.:2019-10-12 12:36:16  \n",
       "                    Max.   :2020-03-31 23:51:34   Max.   :2020-05-19 20:10:34  \n",
       "                                                                               \n",
       " rideable_type      start_station_id start_station_name end_station_id \n",
       " Length:3879822     Min.   :  1.0    Length:3879822     Min.   :  1.0  \n",
       " Class :character   1st Qu.: 77.0    Class :character   1st Qu.: 77.0  \n",
       " Mode  :character   Median :174.0    Mode  :character   Median :174.0  \n",
       "                    Mean   :202.9                       Mean   :203.8  \n",
       "                    3rd Qu.:291.0                       3rd Qu.:291.0  \n",
       "                    Max.   :675.0                       Max.   :675.0  \n",
       "                                                        NA's   :1      \n",
       " end_station_name   member_casual     \n",
       " Length:3879822     Length:3879822    \n",
       " Class :character   Class :character  \n",
       " Mode  :character   Mode  :character  \n",
       "                                      \n",
       "                                      \n",
       "                                      \n",
       "                                      "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(all_trips)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "002d6e9d",
   "metadata": {
    "papermill": {
     "duration": 0.055217,
     "end_time": "2022-10-30T18:31:52.692027",
     "exception": false,
     "start_time": "2022-10-30T18:31:52.636810",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Dimensions of the data frame is next:\n",
    "\n",
    "dim() function gives us the dimensions."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "fb38401c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:31:52.735465Z",
     "iopub.status.busy": "2022-10-30T18:31:52.733941Z",
     "iopub.status.idle": "2022-10-30T18:31:52.749889Z",
     "shell.execute_reply": "2022-10-30T18:31:52.748140Z"
    },
    "papermill": {
     "duration": 0.040023,
     "end_time": "2022-10-30T18:31:52.752271",
     "exception": false,
     "start_time": "2022-10-30T18:31:52.712248",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>3879822</li><li>9</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 3879822\n",
       "\\item 9\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 3879822\n",
       "2. 9\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 3879822       9"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dim(all_trips)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "18986956",
   "metadata": {
    "papermill": {
     "duration": 0.02044,
     "end_time": "2022-10-30T18:31:52.793593",
     "exception": false,
     "start_time": "2022-10-30T18:31:52.773153",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "And lastly lets look at a list of coulmns and data types:\n",
    "\n",
    "str() function as used before shows this."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "ff7257d2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:31:52.836143Z",
     "iopub.status.busy": "2022-10-30T18:31:52.834727Z",
     "iopub.status.idle": "2022-10-30T18:31:52.869253Z",
     "shell.execute_reply": "2022-10-30T18:31:52.866992Z"
    },
    "papermill": {
     "duration": 0.058745,
     "end_time": "2022-10-30T18:31:52.872195",
     "exception": false,
     "start_time": "2022-10-30T18:31:52.813450",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [3,879,822 × 9] (S3: tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:3879822] \"22178529\" \"22178530\" \"22178531\" \"22178532\" ...\n",
      " $ started_at        : POSIXct[1:3879822], format: \"2019-04-01 00:02:22\" \"2019-04-01 00:03:02\" ...\n",
      " $ ended_at          : POSIXct[1:3879822], format: \"2019-04-01 00:09:48\" \"2019-04-01 00:20:30\" ...\n",
      " $ rideable_type     : chr [1:3879822] \"6251\" \"6226\" \"5649\" \"4151\" ...\n",
      " $ start_station_id  : num [1:3879822] 81 317 283 26 202 420 503 260 211 211 ...\n",
      " $ start_station_name: chr [1:3879822] \"Daley Center Plaza\" \"Wood St & Taylor St\" \"LaSalle St & Jackson Blvd\" \"McClurg Ct & Illinois St\" ...\n",
      " $ end_station_id    : num [1:3879822] 56 59 174 133 129 426 500 499 211 211 ...\n",
      " $ end_station_name  : chr [1:3879822] \"Desplaines St & Kinzie St\" \"Wabash Ave & Roosevelt Rd\" \"Canal St & Madison St\" \"Kingsbury St & Kinzie St\" ...\n",
      " $ member_casual     : chr [1:3879822] \"Subscriber\" \"Subscriber\" \"Subscriber\" \"Subscriber\" ...\n"
     ]
    }
   ],
   "source": [
    "str(all_trips)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "61fd9dff",
   "metadata": {
    "papermill": {
     "duration": 0.02006,
     "end_time": "2022-10-30T18:31:52.912845",
     "exception": false,
     "start_time": "2022-10-30T18:31:52.892785",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**STEP 3: Clean-up before analysis**\n",
    "\n",
    "\n",
    "\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d2379547",
   "metadata": {
    "papermill": {
     "duration": 0.019818,
     "end_time": "2022-10-30T18:31:52.952367",
     "exception": false,
     "start_time": "2022-10-30T18:31:52.932549",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "There are four issues which need to be addressed before analysis can take place. Thes need to be fixed in order to make inferences into the data and give feedback and recommendations. \n",
    "\n",
    "(1) In the \"member_casual\" column, there are two names for members (\"member\" and \"Subscriber\") and two names for casual riders (\"Customer\" and \"casual\"). We will need to consolidate that from four to two labels.\n",
    "\n",
    "Firstly lets look at the observations which make up the different usertypes."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "b022e35a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:31:52.995152Z",
     "iopub.status.busy": "2022-10-30T18:31:52.993532Z",
     "iopub.status.idle": "2022-10-30T18:31:53.235415Z",
     "shell.execute_reply": "2022-10-30T18:31:53.233712Z"
    },
    "papermill": {
     "duration": 0.265623,
     "end_time": "2022-10-30T18:31:53.237694",
     "exception": false,
     "start_time": "2022-10-30T18:31:52.972071",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "    casual   Customer     member Subscriber \n",
       "     48480     857474     378407    2595461 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "table(all_trips$member_casual)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a031dd56",
   "metadata": {
    "papermill": {
     "duration": 0.020977,
     "end_time": "2022-10-30T18:31:53.279639",
     "exception": false,
     "start_time": "2022-10-30T18:31:53.258662",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Reassign to the current 2020 labels.\n",
    "\n",
    "mutate() function reassigns the subscriber to member and customer to casual."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "fb647442",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:31:53.323255Z",
     "iopub.status.busy": "2022-10-30T18:31:53.321552Z",
     "iopub.status.idle": "2022-10-30T18:31:55.490906Z",
     "shell.execute_reply": "2022-10-30T18:31:55.489224Z"
    },
    "papermill": {
     "duration": 2.193617,
     "end_time": "2022-10-30T18:31:55.493230",
     "exception": false,
     "start_time": "2022-10-30T18:31:53.299613",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips <-  all_trips %>% \n",
    "  mutate(member_casual = recode(member_casual\n",
    "                           ,\"Subscriber\" = \"member\"\n",
    "                           ,\"Customer\" = \"casual\"))\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "676b819a",
   "metadata": {
    "papermill": {
     "duration": 0.020267,
     "end_time": "2022-10-30T18:31:55.533419",
     "exception": false,
     "start_time": "2022-10-30T18:31:55.513152",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Check to see that the observations were reassigned to the correct labels."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "b57e6da4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:31:55.577244Z",
     "iopub.status.busy": "2022-10-30T18:31:55.575541Z",
     "iopub.status.idle": "2022-10-30T18:31:55.784056Z",
     "shell.execute_reply": "2022-10-30T18:31:55.782262Z"
    },
    "papermill": {
     "duration": 0.232555,
     "end_time": "2022-10-30T18:31:55.786338",
     "exception": false,
     "start_time": "2022-10-30T18:31:55.553783",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       " casual  member \n",
       " 905954 2973868 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "table(all_trips$member_casual)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "beb651e9",
   "metadata": {
    "papermill": {
     "duration": 0.020151,
     "end_time": "2022-10-30T18:31:55.826626",
     "exception": false,
     "start_time": "2022-10-30T18:31:55.806475",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "(2) The data can only be aggregated at the ride-level, which is too granular. We will want to add some additional columns of data -- such as day, month, year -- that provide additional opportunities to aggregate the data.\n",
    "\n",
    "Add the date, month, day, and year of ech ride. \n",
    "\n",
    "#The default format is yyyy-mm-dd"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "7a83a740",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:31:55.870073Z",
     "iopub.status.busy": "2022-10-30T18:31:55.868430Z",
     "iopub.status.idle": "2022-10-30T18:32:02.633572Z",
     "shell.execute_reply": "2022-10-30T18:32:02.631883Z"
    },
    "papermill": {
     "duration": 6.789446,
     "end_time": "2022-10-30T18:32:02.636118",
     "exception": false,
     "start_time": "2022-10-30T18:31:55.846672",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips$date <- as.Date(all_trips$started_at) \n",
    "all_trips$month <- format(as.Date(all_trips$date), \"%m\")\n",
    "all_trips$day <- format(as.Date(all_trips$date), \"%d\")\n",
    "all_trips$year <- format(as.Date(all_trips$date), \"%Y\")\n",
    "all_trips$day_of_week <- format(as.Date(all_trips$date), \"%A\")\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "db0bdcbb",
   "metadata": {
    "papermill": {
     "duration": 0.020305,
     "end_time": "2022-10-30T18:32:02.676812",
     "exception": false,
     "start_time": "2022-10-30T18:32:02.656507",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "(3) We will want to add a calculated field for length of ride since the 2020Q1 data did not have the \"tripduration\" column. We will add \"ride_length\" to the entire dataframe for consistency.\n",
    "\n",
    "Add a ride length calculation to all the trips."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "3710c083",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:32:02.720549Z",
     "iopub.status.busy": "2022-10-30T18:32:02.719080Z",
     "iopub.status.idle": "2022-10-30T18:32:02.763290Z",
     "shell.execute_reply": "2022-10-30T18:32:02.761620Z"
    },
    "papermill": {
     "duration": 0.069118,
     "end_time": "2022-10-30T18:32:02.765990",
     "exception": false,
     "start_time": "2022-10-30T18:32:02.696872",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips$ride_length <- difftime(all_trips$ended_at,all_trips$started_at)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4e9e39c8",
   "metadata": {
    "papermill": {
     "duration": 0.020497,
     "end_time": "2022-10-30T18:32:02.807343",
     "exception": false,
     "start_time": "2022-10-30T18:32:02.786846",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Have a look at the structure of the coulumns:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "fc02f20e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:32:02.851809Z",
     "iopub.status.busy": "2022-10-30T18:32:02.850372Z",
     "iopub.status.idle": "2022-10-30T18:32:02.893637Z",
     "shell.execute_reply": "2022-10-30T18:32:02.891300Z"
    },
    "papermill": {
     "duration": 0.068309,
     "end_time": "2022-10-30T18:32:02.896513",
     "exception": false,
     "start_time": "2022-10-30T18:32:02.828204",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [3,879,822 × 15] (S3: tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:3879822] \"22178529\" \"22178530\" \"22178531\" \"22178532\" ...\n",
      " $ started_at        : POSIXct[1:3879822], format: \"2019-04-01 00:02:22\" \"2019-04-01 00:03:02\" ...\n",
      " $ ended_at          : POSIXct[1:3879822], format: \"2019-04-01 00:09:48\" \"2019-04-01 00:20:30\" ...\n",
      " $ rideable_type     : chr [1:3879822] \"6251\" \"6226\" \"5649\" \"4151\" ...\n",
      " $ start_station_id  : num [1:3879822] 81 317 283 26 202 420 503 260 211 211 ...\n",
      " $ start_station_name: chr [1:3879822] \"Daley Center Plaza\" \"Wood St & Taylor St\" \"LaSalle St & Jackson Blvd\" \"McClurg Ct & Illinois St\" ...\n",
      " $ end_station_id    : num [1:3879822] 56 59 174 133 129 426 500 499 211 211 ...\n",
      " $ end_station_name  : chr [1:3879822] \"Desplaines St & Kinzie St\" \"Wabash Ave & Roosevelt Rd\" \"Canal St & Madison St\" \"Kingsbury St & Kinzie St\" ...\n",
      " $ member_casual     : chr [1:3879822] \"member\" \"member\" \"member\" \"member\" ...\n",
      " $ date              : Date[1:3879822], format: \"2019-04-01\" \"2019-04-01\" ...\n",
      " $ month             : chr [1:3879822] \"04\" \"04\" \"04\" \"04\" ...\n",
      " $ day               : chr [1:3879822] \"01\" \"01\" \"01\" \"01\" ...\n",
      " $ year              : chr [1:3879822] \"2019\" \"2019\" \"2019\" \"2019\" ...\n",
      " $ day_of_week       : chr [1:3879822] \"Monday\" \"Monday\" \"Monday\" \"Monday\" ...\n",
      " $ ride_length       : 'difftime' num [1:3879822] 446 1048 252 357 ...\n",
      "  ..- attr(*, \"units\")= chr \"secs\"\n"
     ]
    }
   ],
   "source": [
    "str(all_trips)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "025b6fae",
   "metadata": {
    "papermill": {
     "duration": 0.020246,
     "end_time": "2022-10-30T18:32:02.937693",
     "exception": false,
     "start_time": "2022-10-30T18:32:02.917447",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "\"ride length' needs to be converted to a numeric value to run calcualtions on it. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "5919243c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:32:02.981324Z",
     "iopub.status.busy": "2022-10-30T18:32:02.979803Z",
     "iopub.status.idle": "2022-10-30T18:32:07.808694Z",
     "shell.execute_reply": "2022-10-30T18:32:07.807116Z"
    },
    "papermill": {
     "duration": 4.853072,
     "end_time": "2022-10-30T18:32:07.811012",
     "exception": false,
     "start_time": "2022-10-30T18:32:02.957940",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips$ride_length <- as.numeric(as.character(all_trips$ride_length))\n",
    "is.numeric(all_trips$ride_length)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d6498745",
   "metadata": {
    "papermill": {
     "duration": 0.020659,
     "end_time": "2022-10-30T18:32:07.852365",
     "exception": false,
     "start_time": "2022-10-30T18:32:07.831706",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Convert the ride length to minutes:"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bbc4eeb0",
   "metadata": {
    "papermill": {
     "duration": 0.02058,
     "end_time": "2022-10-30T18:32:07.893433",
     "exception": false,
     "start_time": "2022-10-30T18:32:07.872853",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "(4) There are some rides where tripduration shows up as negative, including several hundred rides where Divvy took bikes out of circulation for Quality Control reasons. We will want to delete these rides.\n",
    "\n",
    "We will create a new version of the data frame, as the data will be cleaned and removed. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "c22c0257",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:32:07.939172Z",
     "iopub.status.busy": "2022-10-30T18:32:07.937725Z",
     "iopub.status.idle": "2022-10-30T18:32:09.317298Z",
     "shell.execute_reply": "2022-10-30T18:32:09.315584Z"
    },
    "papermill": {
     "duration": 1.404871,
     "end_time": "2022-10-30T18:32:09.319563",
     "exception": false,
     "start_time": "2022-10-30T18:32:07.914692",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips_v2 <- all_trips[!(all_trips$start_station_name == \"HQ QR\" | all_trips$ride_length<0),]"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5dfb9dd7",
   "metadata": {
    "papermill": {
     "duration": 0.02073,
     "end_time": "2022-10-30T18:32:09.361482",
     "exception": false,
     "start_time": "2022-10-30T18:32:09.340752",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Analyze:\n",
    "\n",
    "## Guiding Questions:\n",
    "\n",
    "● How should you organize your data to perform analysis on it?\n",
    "\n",
    "    The data has been organised into specific headings for analysis in order to measure different components and understand different characters within\n",
    "    the data frame.\n",
    "\n",
    "● Has your data been properly formatted?\n",
    "\n",
    "    Formatting took place to seperate out the year/month/week and day in correct order, as well as format the different member types to conform to the\n",
    "    current status. There were a few coulumns which needed to be excluded as they were not part of the new structuring of the companies data structures.\n",
    "\n",
    "● What surprises did you discover in the data?\n",
    "\n",
    "    - The average duration of a ride length was 24 minutes for all trips.\n",
    "    \n",
    "    - The average casual rider length was 59 minutes.\n",
    "    - The average member rider length was 14 minutes.\n",
    "    \n",
    "    - The max duration casual rider all trips length was 2607  hours.\n",
    "    - The max duration member rider all trips length was  2512 hours.\n",
    "    \n",
    "    - All trips taken by casual members outweighed the trips by members during the week, as shown by average ride length. \n",
    "    \n",
    "   \n",
    "● What trends or relationships did you find in the data?\n",
    "\n",
    "    - Friday was the longest average duration trips (62 mins) for casual members, however Saturday ilicited the most rides. \n",
    "    \n",
    "    - Saturdays was the longest average duration trips (16 mins) for members, however the most rides was performed on Tuesday.\n",
    "    \n",
    "    - There is an inverse relationship between causal number of rides and members number of rides, during the week, members ilicit more rides.\n",
    "    \n",
    "    - The highest number of rides by a member and the lowest number of rides by a casual member are both recorded on the same day, namely Tuesday.\n",
    "    \n",
    "    - Weekends ilicited similar numbers of rides for both casual and members.\n",
    "\n",
    "● How will these insights help answer your business questions?\n",
    "\n",
    "    These insights directly answer the business questions which the company is \n",
    "    trying to answer to equate the more weekly members to annual members.\n",
    "\n",
    "\n",
    "## Tasks:\n",
    "\n",
    "1. Aggregate your data so it’s useful and accessible. ☑︎\n",
    "\n",
    "2. Organize and format your data.                     ☑︎\n",
    "\n",
    "3. Perform calculations.                              ☑︎\n",
    "\n",
    "4. Identify trends and relationships.                 ☑︎\n",
    "\n",
    "## Delverable:\n",
    "\n",
    "☑︎ A summary of your analysis"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2457dbe4",
   "metadata": {
    "papermill": {
     "duration": 0.020728,
     "end_time": "2022-10-30T18:32:09.402573",
     "exception": false,
     "start_time": "2022-10-30T18:32:09.381845",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**STEP 4: Conduct analysis**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "512c0cae",
   "metadata": {
    "papermill": {
     "duration": 0.020847,
     "end_time": "2022-10-30T18:32:09.444896",
     "exception": false,
     "start_time": "2022-10-30T18:32:09.424049",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "A) Analysis on ride length:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "724cb583",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:32:09.489449Z",
     "iopub.status.busy": "2022-10-30T18:32:09.487905Z",
     "iopub.status.idle": "2022-10-30T18:32:09.739133Z",
     "shell.execute_reply": "2022-10-30T18:32:09.737390Z"
    },
    "papermill": {
     "duration": 0.276187,
     "end_time": "2022-10-30T18:32:09.741474",
     "exception": false,
     "start_time": "2022-10-30T18:32:09.465287",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. \n",
       "      1     412     712    1479    1289 9387024 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(all_trips_v2$ride_length)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "15aa489c",
   "metadata": {
    "papermill": {
     "duration": 0.020773,
     "end_time": "2022-10-30T18:32:09.782984",
     "exception": false,
     "start_time": "2022-10-30T18:32:09.762211",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "B) Compare and summarize the members and casual members:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "e7441925",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:32:09.827450Z",
     "iopub.status.busy": "2022-10-30T18:32:09.825922Z",
     "iopub.status.idle": "2022-10-30T18:32:21.044264Z",
     "shell.execute_reply": "2022-10-30T18:32:21.042149Z"
    },
    "papermill": {
     "duration": 11.243802,
     "end_time": "2022-10-30T18:32:21.047415",
     "exception": false,
     "start_time": "2022-10-30T18:32:09.803613",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_v2$member_casual</th><th scope=col>all_trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>3552.7502</td></tr>\n",
       "\t<tr><td>member</td><td> 850.0662</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " all\\_trips\\_v2\\$member\\_casual & all\\_trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 3552.7502\\\\\n",
       "\t member &  850.0662\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| all_trips_v2$member_casual &lt;chr&gt; | all_trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 3552.7502 |\n",
       "| member |  850.0662 |\n",
       "\n"
      ],
      "text/plain": [
       "  all_trips_v2$member_casual all_trips_v2$ride_length\n",
       "1 casual                     3552.7502               \n",
       "2 member                      850.0662               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_v2$member_casual</th><th scope=col>all_trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>1546</td></tr>\n",
       "\t<tr><td>member</td><td> 589</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " all\\_trips\\_v2\\$member\\_casual & all\\_trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 1546\\\\\n",
       "\t member &  589\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| all_trips_v2$member_casual &lt;chr&gt; | all_trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 1546 |\n",
       "| member |  589 |\n",
       "\n"
      ],
      "text/plain": [
       "  all_trips_v2$member_casual all_trips_v2$ride_length\n",
       "1 casual                     1546                    \n",
       "2 member                      589                    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_v2$member_casual</th><th scope=col>all_trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>9387024</td></tr>\n",
       "\t<tr><td>member</td><td>9056634</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " all\\_trips\\_v2\\$member\\_casual & all\\_trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 9387024\\\\\n",
       "\t member & 9056634\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| all_trips_v2$member_casual &lt;chr&gt; | all_trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 9387024 |\n",
       "| member | 9056634 |\n",
       "\n"
      ],
      "text/plain": [
       "  all_trips_v2$member_casual all_trips_v2$ride_length\n",
       "1 casual                     9387024                 \n",
       "2 member                     9056634                 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_v2$member_casual</th><th scope=col>all_trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>2</td></tr>\n",
       "\t<tr><td>member</td><td>1</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " all\\_trips\\_v2\\$member\\_casual & all\\_trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 2\\\\\n",
       "\t member & 1\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| all_trips_v2$member_casual &lt;chr&gt; | all_trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 2 |\n",
       "| member | 1 |\n",
       "\n"
      ],
      "text/plain": [
       "  all_trips_v2$member_casual all_trips_v2$ride_length\n",
       "1 casual                     2                       \n",
       "2 member                     1                       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = mean)\n",
    "aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = median)\n",
    "aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = max)\n",
    "aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = min)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "29507a19",
   "metadata": {
    "papermill": {
     "duration": 0.021035,
     "end_time": "2022-10-30T18:32:21.090380",
     "exception": false,
     "start_time": "2022-10-30T18:32:21.069345",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "C) Lets have alook at the average ride time for members and casual members on a weekly basis:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "be9ccdfb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:32:21.135455Z",
     "iopub.status.busy": "2022-10-30T18:32:21.134027Z",
     "iopub.status.idle": "2022-10-30T18:32:24.055353Z",
     "shell.execute_reply": "2022-10-30T18:32:24.053134Z"
    },
    "papermill": {
     "duration": 2.94704,
     "end_time": "2022-10-30T18:32:24.058317",
     "exception": false,
     "start_time": "2022-10-30T18:32:21.111277",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 14 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_v2$member_casual</th><th scope=col>all_trips_v2$day_of_week</th><th scope=col>all_trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Friday   </td><td>3773.8351</td></tr>\n",
       "\t<tr><td>member</td><td>Friday   </td><td> 824.5305</td></tr>\n",
       "\t<tr><td>casual</td><td>Monday   </td><td>3372.2869</td></tr>\n",
       "\t<tr><td>member</td><td>Monday   </td><td> 842.5726</td></tr>\n",
       "\t<tr><td>casual</td><td>Saturday </td><td>3331.9138</td></tr>\n",
       "\t<tr><td>member</td><td>Saturday </td><td> 968.9337</td></tr>\n",
       "\t<tr><td>casual</td><td>Sunday   </td><td>3581.4054</td></tr>\n",
       "\t<tr><td>member</td><td>Sunday   </td><td> 919.9746</td></tr>\n",
       "\t<tr><td>casual</td><td>Thursday </td><td>3682.9847</td></tr>\n",
       "\t<tr><td>member</td><td>Thursday </td><td> 823.9278</td></tr>\n",
       "\t<tr><td>casual</td><td>Tuesday  </td><td>3596.3599</td></tr>\n",
       "\t<tr><td>member</td><td>Tuesday  </td><td> 826.1427</td></tr>\n",
       "\t<tr><td>casual</td><td>Wednesday</td><td>3718.6619</td></tr>\n",
       "\t<tr><td>member</td><td>Wednesday</td><td> 823.9996</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 14 × 3\n",
       "\\begin{tabular}{lll}\n",
       " all\\_trips\\_v2\\$member\\_casual & all\\_trips\\_v2\\$day\\_of\\_week & all\\_trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Friday    & 3773.8351\\\\\n",
       "\t member & Friday    &  824.5305\\\\\n",
       "\t casual & Monday    & 3372.2869\\\\\n",
       "\t member & Monday    &  842.5726\\\\\n",
       "\t casual & Saturday  & 3331.9138\\\\\n",
       "\t member & Saturday  &  968.9337\\\\\n",
       "\t casual & Sunday    & 3581.4054\\\\\n",
       "\t member & Sunday    &  919.9746\\\\\n",
       "\t casual & Thursday  & 3682.9847\\\\\n",
       "\t member & Thursday  &  823.9278\\\\\n",
       "\t casual & Tuesday   & 3596.3599\\\\\n",
       "\t member & Tuesday   &  826.1427\\\\\n",
       "\t casual & Wednesday & 3718.6619\\\\\n",
       "\t member & Wednesday &  823.9996\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 14 × 3\n",
       "\n",
       "| all_trips_v2$member_casual &lt;chr&gt; | all_trips_v2$day_of_week &lt;chr&gt; | all_trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | Friday    | 3773.8351 |\n",
       "| member | Friday    |  824.5305 |\n",
       "| casual | Monday    | 3372.2869 |\n",
       "| member | Monday    |  842.5726 |\n",
       "| casual | Saturday  | 3331.9138 |\n",
       "| member | Saturday  |  968.9337 |\n",
       "| casual | Sunday    | 3581.4054 |\n",
       "| member | Sunday    |  919.9746 |\n",
       "| casual | Thursday  | 3682.9847 |\n",
       "| member | Thursday  |  823.9278 |\n",
       "| casual | Tuesday   | 3596.3599 |\n",
       "| member | Tuesday   |  826.1427 |\n",
       "| casual | Wednesday | 3718.6619 |\n",
       "| member | Wednesday |  823.9996 |\n",
       "\n"
      ],
      "text/plain": [
       "   all_trips_v2$member_casual all_trips_v2$day_of_week all_trips_v2$ride_length\n",
       "1  casual                     Friday                   3773.8351               \n",
       "2  member                     Friday                    824.5305               \n",
       "3  casual                     Monday                   3372.2869               \n",
       "4  member                     Monday                    842.5726               \n",
       "5  casual                     Saturday                 3331.9138               \n",
       "6  member                     Saturday                  968.9337               \n",
       "7  casual                     Sunday                   3581.4054               \n",
       "8  member                     Sunday                    919.9746               \n",
       "9  casual                     Thursday                 3682.9847               \n",
       "10 member                     Thursday                  823.9278               \n",
       "11 casual                     Tuesday                  3596.3599               \n",
       "12 member                     Tuesday                   826.1427               \n",
       "13 casual                     Wednesday                3718.6619               \n",
       "14 member                     Wednesday                 823.9996               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual + all_trips_v2$day_of_week, FUN = mean)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d5f996d7",
   "metadata": {
    "papermill": {
     "duration": 0.021344,
     "end_time": "2022-10-30T18:32:24.101030",
     "exception": false,
     "start_time": "2022-10-30T18:32:24.079686",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The days of the week are not in order so the fix is:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "e671909e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:32:24.146842Z",
     "iopub.status.busy": "2022-10-30T18:32:24.145377Z",
     "iopub.status.idle": "2022-10-30T18:32:24.231437Z",
     "shell.execute_reply": "2022-10-30T18:32:24.229763Z"
    },
    "papermill": {
     "duration": 0.112267,
     "end_time": "2022-10-30T18:32:24.234480",
     "exception": false,
     "start_time": "2022-10-30T18:32:24.122213",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips_v2$day_of_week <- ordered(all_trips_v2$day_of_week, levels=c(\"Sunday\", \"Monday\", \"Tuesday\", \"Wednesday\", \"Thursday\", \"Friday\", \"Saturday\"))\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 28,
   "id": "c3576bc5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:32:24.281238Z",
     "iopub.status.busy": "2022-10-30T18:32:24.279818Z",
     "iopub.status.idle": "2022-10-30T18:32:26.472738Z",
     "shell.execute_reply": "2022-10-30T18:32:26.470508Z"
    },
    "papermill": {
     "duration": 2.219813,
     "end_time": "2022-10-30T18:32:26.475617",
     "exception": false,
     "start_time": "2022-10-30T18:32:24.255804",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 14 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_v2$member_casual</th><th scope=col>all_trips_v2$day_of_week</th><th scope=col>all_trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Sunday   </td><td>3581.4054</td></tr>\n",
       "\t<tr><td>member</td><td>Sunday   </td><td> 919.9746</td></tr>\n",
       "\t<tr><td>casual</td><td>Monday   </td><td>3372.2869</td></tr>\n",
       "\t<tr><td>member</td><td>Monday   </td><td> 842.5726</td></tr>\n",
       "\t<tr><td>casual</td><td>Tuesday  </td><td>3596.3599</td></tr>\n",
       "\t<tr><td>member</td><td>Tuesday  </td><td> 826.1427</td></tr>\n",
       "\t<tr><td>casual</td><td>Wednesday</td><td>3718.6619</td></tr>\n",
       "\t<tr><td>member</td><td>Wednesday</td><td> 823.9996</td></tr>\n",
       "\t<tr><td>casual</td><td>Thursday </td><td>3682.9847</td></tr>\n",
       "\t<tr><td>member</td><td>Thursday </td><td> 823.9278</td></tr>\n",
       "\t<tr><td>casual</td><td>Friday   </td><td>3773.8351</td></tr>\n",
       "\t<tr><td>member</td><td>Friday   </td><td> 824.5305</td></tr>\n",
       "\t<tr><td>casual</td><td>Saturday </td><td>3331.9138</td></tr>\n",
       "\t<tr><td>member</td><td>Saturday </td><td> 968.9337</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 14 × 3\n",
       "\\begin{tabular}{lll}\n",
       " all\\_trips\\_v2\\$member\\_casual & all\\_trips\\_v2\\$day\\_of\\_week & all\\_trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <ord> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Sunday    & 3581.4054\\\\\n",
       "\t member & Sunday    &  919.9746\\\\\n",
       "\t casual & Monday    & 3372.2869\\\\\n",
       "\t member & Monday    &  842.5726\\\\\n",
       "\t casual & Tuesday   & 3596.3599\\\\\n",
       "\t member & Tuesday   &  826.1427\\\\\n",
       "\t casual & Wednesday & 3718.6619\\\\\n",
       "\t member & Wednesday &  823.9996\\\\\n",
       "\t casual & Thursday  & 3682.9847\\\\\n",
       "\t member & Thursday  &  823.9278\\\\\n",
       "\t casual & Friday    & 3773.8351\\\\\n",
       "\t member & Friday    &  824.5305\\\\\n",
       "\t casual & Saturday  & 3331.9138\\\\\n",
       "\t member & Saturday  &  968.9337\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 14 × 3\n",
       "\n",
       "| all_trips_v2$member_casual &lt;chr&gt; | all_trips_v2$day_of_week &lt;ord&gt; | all_trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | Sunday    | 3581.4054 |\n",
       "| member | Sunday    |  919.9746 |\n",
       "| casual | Monday    | 3372.2869 |\n",
       "| member | Monday    |  842.5726 |\n",
       "| casual | Tuesday   | 3596.3599 |\n",
       "| member | Tuesday   |  826.1427 |\n",
       "| casual | Wednesday | 3718.6619 |\n",
       "| member | Wednesday |  823.9996 |\n",
       "| casual | Thursday  | 3682.9847 |\n",
       "| member | Thursday  |  823.9278 |\n",
       "| casual | Friday    | 3773.8351 |\n",
       "| member | Friday    |  824.5305 |\n",
       "| casual | Saturday  | 3331.9138 |\n",
       "| member | Saturday  |  968.9337 |\n",
       "\n"
      ],
      "text/plain": [
       "   all_trips_v2$member_casual all_trips_v2$day_of_week all_trips_v2$ride_length\n",
       "1  casual                     Sunday                   3581.4054               \n",
       "2  member                     Sunday                    919.9746               \n",
       "3  casual                     Monday                   3372.2869               \n",
       "4  member                     Monday                    842.5726               \n",
       "5  casual                     Tuesday                  3596.3599               \n",
       "6  member                     Tuesday                   826.1427               \n",
       "7  casual                     Wednesday                3718.6619               \n",
       "8  member                     Wednesday                 823.9996               \n",
       "9  casual                     Thursday                 3682.9847               \n",
       "10 member                     Thursday                  823.9278               \n",
       "11 casual                     Friday                   3773.8351               \n",
       "12 member                     Friday                    824.5305               \n",
       "13 casual                     Saturday                 3331.9138               \n",
       "14 member                     Saturday                  968.9337               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual + all_trips_v2$day_of_week, FUN = mean)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "aa94850b",
   "metadata": {
    "papermill": {
     "duration": 0.022925,
     "end_time": "2022-10-30T18:32:26.520193",
     "exception": false,
     "start_time": "2022-10-30T18:32:26.497268",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "D) We are going to analyse the ridership data by type and weekday:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 29,
   "id": "f311fc6d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:32:26.567390Z",
     "iopub.status.busy": "2022-10-30T18:32:26.565958Z",
     "iopub.status.idle": "2022-10-30T18:32:30.626161Z",
     "shell.execute_reply": "2022-10-30T18:32:30.624523Z"
    },
    "papermill": {
     "duration": 4.086274,
     "end_time": "2022-10-30T18:32:30.628503",
     "exception": false,
     "start_time": "2022-10-30T18:32:26.542229",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 14 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>weekday</th><th scope=col>number_of_rides</th><th scope=col>average_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Sun</td><td>181293</td><td>3581.4054</td></tr>\n",
       "\t<tr><td>casual</td><td>Mon</td><td>103296</td><td>3372.2869</td></tr>\n",
       "\t<tr><td>casual</td><td>Tue</td><td> 90510</td><td>3596.3599</td></tr>\n",
       "\t<tr><td>casual</td><td>Wed</td><td> 92457</td><td>3718.6619</td></tr>\n",
       "\t<tr><td>casual</td><td>Thu</td><td>102679</td><td>3682.9847</td></tr>\n",
       "\t<tr><td>casual</td><td>Fri</td><td>122404</td><td>3773.8351</td></tr>\n",
       "\t<tr><td>casual</td><td>Sat</td><td>209543</td><td>3331.9138</td></tr>\n",
       "\t<tr><td>member</td><td>Sun</td><td>267965</td><td> 919.9746</td></tr>\n",
       "\t<tr><td>member</td><td>Mon</td><td>472196</td><td> 842.5726</td></tr>\n",
       "\t<tr><td>member</td><td>Tue</td><td>508445</td><td> 826.1427</td></tr>\n",
       "\t<tr><td>member</td><td>Wed</td><td>500329</td><td> 823.9996</td></tr>\n",
       "\t<tr><td>member</td><td>Thu</td><td>484177</td><td> 823.9278</td></tr>\n",
       "\t<tr><td>member</td><td>Fri</td><td>452790</td><td> 824.5305</td></tr>\n",
       "\t<tr><td>member</td><td>Sat</td><td>287958</td><td> 968.9337</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 14 × 4\n",
       "\\begin{tabular}{llll}\n",
       " member\\_casual & weekday & number\\_of\\_rides & average\\_duration\\\\\n",
       " <chr> & <ord> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Sun & 181293 & 3581.4054\\\\\n",
       "\t casual & Mon & 103296 & 3372.2869\\\\\n",
       "\t casual & Tue &  90510 & 3596.3599\\\\\n",
       "\t casual & Wed &  92457 & 3718.6619\\\\\n",
       "\t casual & Thu & 102679 & 3682.9847\\\\\n",
       "\t casual & Fri & 122404 & 3773.8351\\\\\n",
       "\t casual & Sat & 209543 & 3331.9138\\\\\n",
       "\t member & Sun & 267965 &  919.9746\\\\\n",
       "\t member & Mon & 472196 &  842.5726\\\\\n",
       "\t member & Tue & 508445 &  826.1427\\\\\n",
       "\t member & Wed & 500329 &  823.9996\\\\\n",
       "\t member & Thu & 484177 &  823.9278\\\\\n",
       "\t member & Fri & 452790 &  824.5305\\\\\n",
       "\t member & Sat & 287958 &  968.9337\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 14 × 4\n",
       "\n",
       "| member_casual &lt;chr&gt; | weekday &lt;ord&gt; | number_of_rides &lt;int&gt; | average_duration &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| casual | Sun | 181293 | 3581.4054 |\n",
       "| casual | Mon | 103296 | 3372.2869 |\n",
       "| casual | Tue |  90510 | 3596.3599 |\n",
       "| casual | Wed |  92457 | 3718.6619 |\n",
       "| casual | Thu | 102679 | 3682.9847 |\n",
       "| casual | Fri | 122404 | 3773.8351 |\n",
       "| casual | Sat | 209543 | 3331.9138 |\n",
       "| member | Sun | 267965 |  919.9746 |\n",
       "| member | Mon | 472196 |  842.5726 |\n",
       "| member | Tue | 508445 |  826.1427 |\n",
       "| member | Wed | 500329 |  823.9996 |\n",
       "| member | Thu | 484177 |  823.9278 |\n",
       "| member | Fri | 452790 |  824.5305 |\n",
       "| member | Sat | 287958 |  968.9337 |\n",
       "\n"
      ],
      "text/plain": [
       "   member_casual weekday number_of_rides average_duration\n",
       "1  casual        Sun     181293          3581.4054       \n",
       "2  casual        Mon     103296          3372.2869       \n",
       "3  casual        Tue      90510          3596.3599       \n",
       "4  casual        Wed      92457          3718.6619       \n",
       "5  casual        Thu     102679          3682.9847       \n",
       "6  casual        Fri     122404          3773.8351       \n",
       "7  casual        Sat     209543          3331.9138       \n",
       "8  member        Sun     267965           919.9746       \n",
       "9  member        Mon     472196           842.5726       \n",
       "10 member        Tue     508445           826.1427       \n",
       "11 member        Wed     500329           823.9996       \n",
       "12 member        Thu     484177           823.9278       \n",
       "13 member        Fri     452790           824.5305       \n",
       "14 member        Sat     287958           968.9337       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips_v2 %>% \n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>%  #creates weekday field using wday()\n",
    "  group_by(member_casual, weekday) %>%  #groups by usertype and weekday\n",
    "  summarise(number_of_rides = n()\t\t\t\t\t\t\t#calculates the number of rides and average duration \n",
    "  ,average_duration = mean(ride_length)) %>% \t\t# calculates the average duration\n",
    "  arrange(member_casual, weekday)\t\t\t\t\t\t\t\t# sorts\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7c5807cc",
   "metadata": {
    "papermill": {
     "duration": 0.022894,
     "end_time": "2022-10-30T18:32:30.679820",
     "exception": false,
     "start_time": "2022-10-30T18:32:30.656926",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Share:\n",
    "\n",
    "## Guiding Questions:\n",
    "\n",
    "● Were you able to answer the question of how annual members and casual riders use Cyclistic bikes differently?\n",
    "\n",
    "    - Yes this was displayed in analysing the data\n",
    "\n",
    "● What story does your data tell?\n",
    "\n",
    "    - The data tells an inverse story about two types of membership whom likely use the cyclistic bikes in a very different way. Members are very much\n",
    "    focused on inweek trips namely Monday to Friday with short duration and casual members have much longer duration trips with few rides during the\n",
    "    week and many rides over the weekend.\n",
    "\n",
    "● How do your findings relate to your original question?\n",
    "\n",
    "    - The original question was to find data in order to support a new marketing strategy in order to attract annual members. The findings distinguish \n",
    "    between the two types of members and therefore the strategy can be focused and specialised towards the specific population. \n",
    "\n",
    "● Who is your audience? What is the best way to communicate with them?\n",
    "\n",
    "    - The audience will be the casual riders, whom need to be transitioned toward annual memberships. The best way to communicate with them would be through social media and marketing advertising campaigns within local media to attract and even show the benefits of annual membership and cost differential and rider lengths. \n",
    "\n",
    "● Can data visualization help you share your findings?\n",
    "\n",
    "    - Yes, visualisations will help bolster the marketing campaing by showing visually the difference in membership type and the rider lenght and usage\n",
    "    figures.  \n",
    "\n",
    "\n",
    "\n",
    "## Tasks:\n",
    "\n",
    "1. Determine the best way to share your findings. ☑︎\n",
    "\n",
    "2. Create effective data visualizations.          ☑︎\n",
    "\n",
    "3. Present your findings.                         ☑︎\n",
    "\n",
    "\n",
    "## Delverable:\n",
    "\n",
    "☑︎ Supporting visualizations and key findings"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4dc406bb",
   "metadata": {
    "papermill": {
     "duration": 0.022084,
     "end_time": "2022-10-30T18:32:30.724062",
     "exception": false,
     "start_time": "2022-10-30T18:32:30.701978",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**STEP 4: Supporting visualisations**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "06af4bf0",
   "metadata": {
    "papermill": {
     "duration": 0.022055,
     "end_time": "2022-10-30T18:32:30.767951",
     "exception": false,
     "start_time": "2022-10-30T18:32:30.745896",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Visualisation of the number of rides by rider type:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 30,
   "id": "07e7c261",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:32:30.814658Z",
     "iopub.status.busy": "2022-10-30T18:32:30.813264Z",
     "iopub.status.idle": "2022-10-30T18:32:35.043673Z",
     "shell.execute_reply": "2022-10-30T18:32:35.041939Z"
    },
    "papermill": {
     "duration": 4.256387,
     "end_time": "2022-10-30T18:32:35.046147",
     "exception": false,
     "start_time": "2022-10-30T18:32:30.789760",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "image/png": "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\nIgh2AAAAivh/wxzbsPjQCjoAAAAASUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips_v2 %>% \n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>% \n",
    "  group_by(member_casual, weekday) %>% \n",
    "  summarise(number_of_rides = n()\n",
    "            ,average_duration = mean(ride_length)) %>% \n",
    "  arrange(member_casual, weekday)  %>% \n",
    "  ggplot(aes(x = weekday, y = number_of_rides, fill = member_casual)) +\n",
    "  geom_col(position = \"dodge\")\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bfc7fcd5",
   "metadata": {
    "papermill": {
     "duration": 0.023925,
     "end_time": "2022-10-30T18:32:35.093939",
     "exception": false,
     "start_time": "2022-10-30T18:32:35.070014",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Visualisation of the average duration of ride length:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 31,
   "id": "58f00524",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-30T18:32:35.143009Z",
     "iopub.status.busy": "2022-10-30T18:32:35.141370Z",
     "iopub.status.idle": "2022-10-30T18:32:39.381243Z",
     "shell.execute_reply": "2022-10-30T18:32:39.379526Z"
    },
    "papermill": {
     "duration": 4.267057,
     "end_time": "2022-10-30T18:32:39.383680",
     "exception": false,
     "start_time": "2022-10-30T18:32:35.116623",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdZ4BU1cGA4TOzlWXpoFQVQUXsLcinhmggihoUg4IFxV5jwxbRqGjsIoo19q6J\n2KMmVjSWxBa7Ym9YQNrCsnXm+7G6gsIyi+zMevZ5/jhz79x7zqGML3fKJtLpdAAA4JcvmesJ\nAACwfAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI5Od6Ak1r7ty5tbW1uZ7F\nD0pKSgoKCqqrq8vLy3M9l+wpKioqLi5OpVJlZWW5nkv25Ofnt27dOoQwd+7clvM14IlEom3b\ntiGE+fPn19TU5Ho62dOmTZtkMllRUVFZWZnruWSPJ7Rcz+XHOnTokOspkHuRh10qlWpWYZdI\nJJLJZCKRaFazyoJkMhlCaFGrzsvLq1t1KpVKpVK5nk6WJJPJulWn0+kW9dtdv/AWteq6J7TQ\nwlYdQkgmky3tTzi/IF6KBQCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiER+ricAwHLT5rzxWRsrHUJlCGH8eVkbEVgqV+wAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi4SdPQPyy+dMIKuv+M+6MrI0IQD1X\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACLh606AOGXzS16q6/5zytlZGxFgsVyxAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiER+ricA2dPmvPHZHK4yhKJzLs7miAC0cK7YAQBEQtgBAETCS7FZ\nfXkuHUJlCInTz8/aiABAy+GKHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQd\nAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJPJzPYGmlUgkEolErmexGM1zVk2txa66xS48\n11PIgRa46pb5J7wZrjqdTud6CjQLkYddaWlpXl5ew4+pzM5UFlJYWNipU6esD5tjyWQy56vO\n/u91CKFDhw65GHYR2V9427Ztsz7mj2V/1SUlJSUlJVkfdhGe0LKjOTyh/ciMGTNyPQWahcjD\nbv78+bW1tQ0/JvtPw9XV1fPmzcv6sDlTXFzcqlWrVCo1Z86c3M4kJ//LnT17ds7/JZ39hc+b\nN6+6ujrrwy4i+6tesGBBRUVF1oddRPZXXVVVNX/+/KwPmzPN5wkNFivysEulUksNu+xLp9PN\ncFZNpz5rWtSq66VSqVQqletZZFvz/KvX1FraX+06LW3VdU9oLW3V/IL48AQAQCSEHQBAJIQd\nAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSE\nHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk8nM9AXKjzXnjszlcZQgF\nZ03M5ogA0AK5YgcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJX3cCwC9b9r+/Kf/MC7M5\nImTOFTsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASORnZ5iquVOvuvjq517/cH4qf+XVNxx54CEDVyoNIYSQevL2y+5/6uXP\nyvLWXHvAmMP37t0q7/uDlrSrgUMAAFqu7FyxS1929J+fm9Ht0JP+cu6px/XPe/vcY06YUZMK\nIXw4+aQL73hu4E77n3LkniUfPDru6KvS3x+zpF0NHAIA0JJlI+wq5zzx+Dfl+592yMB11lht\nrQ33OeHY2opP7/imPKSrJtzxdt/RZ4wYPHCtjbY48pxD533x4G1fzg8hLHFXA4cAALRs2Qi7\nZH7nffbZZ0Dbwu/uJ/JDCCV5yco5T31aUTt0q+51m4s6bLFeaeELU74OISxpVwOHAAC0cNl4\nj11B63V33HHdEMKs//3nla+/efGfd3RZ6/ejVyhZMO21EEL/kh/msFZJ/r/emBNCqJq/+F1V\nWyzxkDqzZ8/+8ssv6+926dIlPz9L7yPMXCKRaIazyoKWueq8vLxkssV9SimZTLbA326rbjma\n4dN4TU1NrqdAs5DVP5dfP/XIA+998ennCzb/w6qJEFKV80MInQt++OhD54K86rnVYcm7Gjik\nzlNPPTV+/Pj6uzfffHO/fv0anlXlz1xV4xUUFLRv3z7rwy4i+6tOJpMtcNUhhHbt2uVi2EVk\nf+GlpaVZH/PHsr/q4uLi4uLirA+7CE9o2dEcntB+ZMaMGbmeAs1CVsOu3+EnTQhh3mfPH3z4\n2af36D929ZIQwszqVNfC765nzKiuze+QH0JIFi1+15K2Z3MVAADNUzaSaO77Tz/9QdF2W/+q\n7m5pr02371T88KNfFqy/TghT3llQ3bWwqG7X1AU17dZqF0IoKFn8riVtrx9r8ODBG220Uf3d\n4uLiWbNmNTy9kuW0zMxVV1fPmzcv68MuIvurTqVSc+bMWfrjmlL2Vx1CmD17djqd449uZ3/h\n8+bNq66uXvrjmlL2V71gwYKKioqsD7uI7K+6qqpq/vwcf4KtZT6hwWJlI+yqF0z56xVvDtjq\nls4FyRBCSNe8WV5TslLr4vbr9Ci8/MFnp/9maM8QQvW8l18sqxqxZdcQQnH7LRe7q7j9Sks6\npE5JSUlJyQ9/x2fPnt0M33aQTqdra2tzPYscaJmrTqVSqVQq17PItlQq1QJ/u1vmX22rhmYl\nG+/p7tDvgN4FlSecdc3Lb0x9/61Xb7/4uNcWtNpj1CohUTB2RL/3rjn18ZenTvvw9atPntC6\nx5DR3VuHEJa4q4FDAABatmxcsUsWrPCXC0649K+3nj/+4QXpgpVX2+DIc04Z2K4ohNB35BmH\nVE68dcLJ31Yk+qw36PSx+ye+P2pJuxo4BACgJcvSxw5a9/rVcaf/ajE7EnlD9ho7ZK/FHbOk\nXQ0cAgDQgrW4r9cCAIiVsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiER+rifQtPLy8nI9hcVIJBL5+ZH/yi9Wy1x1Xl5eMtni/gWVTCZb4G+3VbcczfBp\nvKamJtdToFloXn8ul7uSkpKltl1ldqaykIKCgvbt22d92EVkf9XJZLIFrjqE0K5du1wMu4js\nL7y0tDTrY/5Y9lddXFxcXFyc9WEX4QktO5rDE9qPzJgxI9dToFmIPOzKysqW+o+YNtmZykKq\nqqrmzp2b9WEXkf1Vp1KpmTNnZn3YRWR/1SGEmTNnplKpXIz8g+wvfO7cuVVVVVkfdhHZX3V5\neXl5eXnWh11E9lddWVlZVlaW9WEXkf1V19bWzpo1K+vDwtK1uFeIAABiJewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAA\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACKR36hHz/z8w+nzq3+6fY011lhO8wEAYBllGnYV\nMx79w+YjH3x35mL3ptPp5TclAACWRaZh99cdRj/0Xtn2B5+wzbqr5CeadEoAACyLTMPujBem\nrzryrvsvG9akswEAYJll9OGJdG3Z9OralUeu29SzAQBgmWUUdom80t+0L/7w+hebejYAACyz\n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\nkVoNqO68rRcRxaffsBYLHX0O1uOeAQDgDQQ7gEZkhYuVrOlwIceNOn2fMaZRFTYRC+wGtiWi\nA3nVN0Msd1eKZK2P3n9Us1bcBFeO4+KyHj1Phz/uimWssvhsK6lIpvTOq1KrytJsJEKz5n7X\nS6q0r1YUXuhjJa0Jdo8e7CQiz4izNZt9lHnS3VQster/uP/PQo6zf9ONiJbdKGiYPQQAYNwQ\n7AAakaubumv/VP/r4/tJV7tYEZFMOaSmT/GdL1qaiMRyp5Eh70atXjZuYHsi6jg+/jk76AY7\nxljKtqFE1DUimTF2ceMIIpJZd5k8c9GimW97KqROg0Jqgh1Tl72mlAkltmFL1+74eMuimUG2\nMqueTuYCkdWHn+4pUWsYY+EtLYhIatVf3eC7CgDAKCHYATQij7LiiUj7ABGti6u7EJFr8HHd\nboWph//l28fWykwib+Lm2WvJ9m+rNOw5OzwV7JimcpKLpUBkcSCrlDH2y2cr+3k5m5mIzJu2\neCtsU3HJNdJ53EnJ3aPBg162V5pa2Dr3fXPsoav5OWf/7aiQS8ys0ytUjLHrMb2IyGPBrw2w\nbwAA+IBjjOnvgj4AgH/g7ELPbu9f+iqndJjOw1YAAKAGgh0AGAdNVW4Ppf11xdSHd9YZuhYA\ngBcUHncCAEYgdNrs0htf/qe4cuKXswxdCwDAiwt/sQMAI+BuY35LZek/dUNcpL+hawEAeHEh\n2AEAAADwBP6lGAAAAABPINgBAAAA8ASCHQAAAABPINgBAAAA8ASCHQAAAABPINgBAAAA8ASC\nHQAAAABPINgBAAAA8ASCHQAAAABP/A9Gt2Ac/ynz4AAAAABJRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips_v2 %>% \n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>% \n",
    "  group_by(member_casual, weekday) %>% \n",
    "  summarise(number_of_rides = n()\n",
    "            ,average_duration = mean(ride_length)) %>% \n",
    "  arrange(member_casual, weekday)  %>% \n",
    "  ggplot(aes(x = weekday, y = average_duration, fill = member_casual)) +\n",
    "  geom_col(position = \"dodge\")\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8bd90a37",
   "metadata": {
    "papermill": {
     "duration": 0.02389,
     "end_time": "2022-10-30T18:32:39.431222",
     "exception": false,
     "start_time": "2022-10-30T18:32:39.407332",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Act:\n",
    "\n",
    "## Guiding Questions:\n",
    "\n",
    "● What is your final conclusion based on your analysis?\n",
    "\n",
    "    The final conclusiopn based on the analysis i have carried out is that the members utilise bikes during the week more frequently for work purposes,\n",
    "    whereby the casual members utilise the bikes for weekend endeavours, whether it be for recreation, sightseeing or administrative purposes. The \n",
    "    avergae duration of the rides of the casual members, supercedes the members, however the number of trips by members outweighs the casula members.\n",
    "    Therefore in order to target the annual membership to those that are not members, it is to appeal to a weekend annual membership or a weekly \n",
    "    membership option. \n",
    "\n",
    "● How could your team and business apply your insights?\n",
    "\n",
    "    The insights could be applied to the casual members as a duration based fee if they are casual members and if they do take on an annual membership \n",
    "    then they have unlimited rides and duration. This will encourage casual members to become annual members as their duration far outweighs their \n",
    "    rides.\n",
    "\n",
    "● What next steps would you or your stakeholders take based on your findings?\n",
    "\n",
    "    The next step would be to do an aggressive marketing campaign targeted at casual members to promote annual memberships as part of a ride duration\n",
    "    promotion.\n",
    "\n",
    "● Is there additional data you could use to expand on your findings?\n",
    "\n",
    "    Another data element which could be added would be pricing relative to miles covered and the difference per member and casual member.\n",
    "\n",
    "\n",
    "## Tasks:\n",
    "\n",
    "1. Create your portfolio.  ☑︎\n",
    "\n",
    "2. Add your case study.    ☑︎\n",
    "\n",
    "\n",
    "## Delverable:\n",
    "\n",
    "☑︎  Your top three recommendations based on your analysis\n",
    "\n",
    "1) Drop pricing for members fees and increase rates for casual members per mile traveled.\n",
    "\n",
    "2) Promote a weekly or weekend annual membership.\n",
    "\n",
    "3) Put into motion an aggressive marketing plan to promote this. "
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 158.78909,
   "end_time": "2022-10-30T18:32:39.777378",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-10-30T18:30:00.988288",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}

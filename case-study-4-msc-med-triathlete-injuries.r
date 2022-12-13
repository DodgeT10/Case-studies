{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "5e37df22",
   "metadata": {
    "papermill": {
     "duration": 0.031495,
     "end_time": "2022-12-13T05:53:58.861955",
     "exception": false,
     "start_time": "2022-12-13T05:53:58.830460",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Study\n",
    "\n",
    "Cross sectional study investigating the functional movement screen score and injury status of triathletes\n",
    "\n",
    "# Introduction\n",
    "\n",
    "Triathlon is the most modern of the endurance sports and includes the three disciplines of swimming, cycling and running. Racing, training parameters, injury occurrence and physiological effects from the past ten years has been researched on these three individual sports. Combining these three sports into one sporting event presents a number of challenges such as exposure to different race distances, weather conditions, differing training techniques and potential muscular imbalances.\n",
    "\n",
    "With increased triathlon participation, the prevalence of injuries amongst athletes has increased.Overuse injuries in triathlon are one of the main causes of competition and training non-participation, but could be avoided by pre-participation examination (PPE) for risk of injury.One method used in PPE is the Functional Movement Screen (FMS™), which is designed to assess a number of functional movement patterns proposed for sport participation. The FMS™ battery of tests are used to assess athlete pain, muscle strength, joint stability, flexibility, balance and proprioception.\n",
    "\n",
    "The FMS™ will be utilised to test functional movement patterns within a group of trained triathletes. The FMS™ is a user friendly tool which can be utilised in pre-participation screening in a variety of settings to ascertain athletes who possess or lack the ability to perform certain fundamental movements.28 The rationale behind testing triathletes with the FMS™ is to observe if triathletes who have better dynamic stability and mobility, with less compensatory movement patterns, have had fewer injuries.  Due to many chronic injuries in triathlon, the results and purpose of this study thus, could possibly support the use of the FMS as a viable tool to pre-screen triathletes.\n",
    "\n",
    "# Problem Statement \n",
    "\n",
    "Due to the prevalence of overuse injuries sustained by the competing and training triathlete, the need for identification and prevention of such injuries is warranted. The problem is the early identification, prevention and screening of the triathlete, before the injury has occurred.\n",
    "\n",
    "# Aim\n",
    "\n",
    "To determine the relationship between the FMS™ score and previous injury of Johannesburg triathletes.\n",
    "\n",
    "# Questions for analysis\n",
    "\n",
    "1. To determine the injury prevalence (past 6 months) in a group of triathletes.  \n",
    "2. To describe the FMS™ scores in a group of Johannesburg triathletes.\n",
    "3. To correlate FMS scores with previous injury.\n",
    "\n",
    "# Loading packages\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "7bfe2b95",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:53:58.926232Z",
     "iopub.status.busy": "2022-12-13T05:53:58.924790Z",
     "iopub.status.idle": "2022-12-13T05:54:00.467552Z",
     "shell.execute_reply": "2022-12-13T05:54:00.465949Z"
    },
    "papermill": {
     "duration": 1.576726,
     "end_time": "2022-12-13T05:54:00.467781",
     "exception": false,
     "start_time": "2022-12-13T05:53:58.891055",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching packages\u001b[22m ─────────────────────────────────────── tidyverse 1.3.0 ──\n",
      "\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2\u001b[39m 3.3.3     \u001b[32m✔\u001b[39m \u001b[34mpurrr  \u001b[39m 0.3.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtibble \u001b[39m 3.1.1     \u001b[32m✔\u001b[39m \u001b[34mdplyr  \u001b[39m 1.0.5\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtidyr  \u001b[39m 1.1.3     \u001b[32m✔\u001b[39m \u001b[34mstringr\u001b[39m 1.4.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mreadr  \u001b[39m 1.4.0     \u001b[32m✔\u001b[39m \u001b[34mforcats\u001b[39m 0.5.0\n",
      "\n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(readxl)\n",
    "library(tidyverse)\n",
    "library(ggplot2)\n",
    "library(tidyr)\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f9ae54b5",
   "metadata": {
    "papermill": {
     "duration": 0.029721,
     "end_time": "2022-12-13T05:54:00.527866",
     "exception": false,
     "start_time": "2022-12-13T05:54:00.498145",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Importing datasets\n",
    "For this project, i have put the data set up on kaggle for all to see and use. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "ff43b83b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:00.631174Z",
     "iopub.status.busy": "2022-12-13T05:54:00.592674Z",
     "iopub.status.idle": "2022-12-13T05:54:00.705075Z",
     "shell.execute_reply": "2022-12-13T05:54:00.703418Z"
    },
    "papermill": {
     "duration": 0.147162,
     "end_time": "2022-12-13T05:54:00.705250",
     "exception": false,
     "start_time": "2022-12-13T05:54:00.558088",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "injuries <- read_excel(\"../input/injuries/Injury_data.xlsx\")\n",
    "triathlon <- read_excel(\"../input/triathlon/Tri_and_FMS_data.xlsx\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2fc086d8",
   "metadata": {
    "papermill": {
     "duration": 0.029675,
     "end_time": "2022-12-13T05:54:00.766481",
     "exception": false,
     "start_time": "2022-12-13T05:54:00.736806",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "I already checked the data in Google Sheets. I just need to make sure that everything was imported correctly by using the head() function."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "733e114b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:00.832947Z",
     "iopub.status.busy": "2022-12-13T05:54:00.830951Z",
     "iopub.status.idle": "2022-12-13T05:54:00.871201Z",
     "shell.execute_reply": "2022-12-13T05:54:00.868903Z"
    },
    "papermill": {
     "duration": 0.074822,
     "end_time": "2022-12-13T05:54:00.871378",
     "exception": false,
     "start_time": "2022-12-13T05:54:00.796556",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 19</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>ID</th><th scope=col>Age</th><th scope=col>Run_hours_wk</th><th scope=col>Cycle_hours_week</th><th scope=col>Swim_hours_week</th><th scope=col>Total_training_hours_wk</th><th scope=col>Years_in_triathlon</th><th scope=col>Number_of_injuries_in_past_6_months_Primary</th><th scope=col>Number_of_injuries_in_past_6_months_second</th><th scope=col>Warm_up_Never0_Always1_Occasional2</th><th scope=col>Always_warm_up</th><th scope=col>Deep_Squat</th><th scope=col>Hurdle_Step</th><th scope=col>Inline_Lunge</th><th scope=col>Shoulder_Mobility</th><th scope=col>Active_SLR</th><th scope=col>Trunk_Stability_push-up</th><th scope=col>Rotary_stability</th><th scope=col>Total_FMS_score</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>1</td><td>35</td><td> 3</td><td>6</td><td>2</td><td>11</td><td> 6</td><td>1</td><td>1</td><td>0</td><td>0</td><td>2</td><td>1</td><td>2</td><td>1</td><td>2</td><td>2</td><td>2</td><td>12</td></tr>\n",
       "\t<tr><td>2</td><td>51</td><td> 4</td><td>8</td><td>2</td><td>14</td><td>10</td><td>1</td><td>0</td><td>0</td><td>0</td><td>2</td><td>2</td><td>2</td><td>3</td><td>1</td><td>1</td><td>3</td><td>14</td></tr>\n",
       "\t<tr><td>3</td><td>57</td><td> 2</td><td>9</td><td>3</td><td>14</td><td> 9</td><td>1</td><td>0</td><td>2</td><td>0</td><td>2</td><td>1</td><td>2</td><td>2</td><td>1</td><td>2</td><td>2</td><td>12</td></tr>\n",
       "\t<tr><td>4</td><td>45</td><td> 2</td><td>4</td><td>1</td><td> 7</td><td> 3</td><td>1</td><td>1</td><td>2</td><td>0</td><td>2</td><td>2</td><td>2</td><td>3</td><td>3</td><td>2</td><td>1</td><td>15</td></tr>\n",
       "\t<tr><td>5</td><td>42</td><td> 4</td><td>1</td><td>1</td><td> 6</td><td> 1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>2</td><td>2</td><td>2</td><td>2</td><td>2</td><td>2</td><td>2</td><td>14</td></tr>\n",
       "\t<tr><td>6</td><td>30</td><td>10</td><td>5</td><td>6</td><td>21</td><td> 1</td><td>1</td><td>1</td><td>2</td><td>0</td><td>2</td><td>1</td><td>2</td><td>3</td><td>2</td><td>3</td><td>2</td><td>15</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 19\n",
       "\\begin{tabular}{lllllllllllllllllll}\n",
       " ID & Age & Run\\_hours\\_wk & Cycle\\_hours\\_week & Swim\\_hours\\_week & Total\\_training\\_hours\\_wk & Years\\_in\\_triathlon & Number\\_of\\_injuries\\_in\\_past\\_6\\_months\\_Primary & Number\\_of\\_injuries\\_in\\_past\\_6\\_months\\_second & Warm\\_up\\_Never0\\_Always1\\_Occasional2 & Always\\_warm\\_up & Deep\\_Squat & Hurdle\\_Step & Inline\\_Lunge & Shoulder\\_Mobility & Active\\_SLR & Trunk\\_Stability\\_push-up & Rotary\\_stability & Total\\_FMS\\_score\\\\\n",
       " <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 1 & 35 &  3 & 6 & 2 & 11 &  6 & 1 & 1 & 0 & 0 & 2 & 1 & 2 & 1 & 2 & 2 & 2 & 12\\\\\n",
       "\t 2 & 51 &  4 & 8 & 2 & 14 & 10 & 1 & 0 & 0 & 0 & 2 & 2 & 2 & 3 & 1 & 1 & 3 & 14\\\\\n",
       "\t 3 & 57 &  2 & 9 & 3 & 14 &  9 & 1 & 0 & 2 & 0 & 2 & 1 & 2 & 2 & 1 & 2 & 2 & 12\\\\\n",
       "\t 4 & 45 &  2 & 4 & 1 &  7 &  3 & 1 & 1 & 2 & 0 & 2 & 2 & 2 & 3 & 3 & 2 & 1 & 15\\\\\n",
       "\t 5 & 42 &  4 & 1 & 1 &  6 &  1 & 1 & 1 & 0 & 0 & 2 & 2 & 2 & 2 & 2 & 2 & 2 & 14\\\\\n",
       "\t 6 & 30 & 10 & 5 & 6 & 21 &  1 & 1 & 1 & 2 & 0 & 2 & 1 & 2 & 3 & 2 & 3 & 2 & 15\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 19\n",
       "\n",
       "| ID &lt;dbl&gt; | Age &lt;dbl&gt; | Run_hours_wk &lt;dbl&gt; | Cycle_hours_week &lt;dbl&gt; | Swim_hours_week &lt;dbl&gt; | Total_training_hours_wk &lt;dbl&gt; | Years_in_triathlon &lt;dbl&gt; | Number_of_injuries_in_past_6_months_Primary &lt;dbl&gt; | Number_of_injuries_in_past_6_months_second &lt;dbl&gt; | Warm_up_Never0_Always1_Occasional2 &lt;dbl&gt; | Always_warm_up &lt;dbl&gt; | Deep_Squat &lt;dbl&gt; | Hurdle_Step &lt;dbl&gt; | Inline_Lunge &lt;dbl&gt; | Shoulder_Mobility &lt;dbl&gt; | Active_SLR &lt;dbl&gt; | Trunk_Stability_push-up &lt;dbl&gt; | Rotary_stability &lt;dbl&gt; | Total_FMS_score &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 35 |  3 | 6 | 2 | 11 |  6 | 1 | 1 | 0 | 0 | 2 | 1 | 2 | 1 | 2 | 2 | 2 | 12 |\n",
       "| 2 | 51 |  4 | 8 | 2 | 14 | 10 | 1 | 0 | 0 | 0 | 2 | 2 | 2 | 3 | 1 | 1 | 3 | 14 |\n",
       "| 3 | 57 |  2 | 9 | 3 | 14 |  9 | 1 | 0 | 2 | 0 | 2 | 1 | 2 | 2 | 1 | 2 | 2 | 12 |\n",
       "| 4 | 45 |  2 | 4 | 1 |  7 |  3 | 1 | 1 | 2 | 0 | 2 | 2 | 2 | 3 | 3 | 2 | 1 | 15 |\n",
       "| 5 | 42 |  4 | 1 | 1 |  6 |  1 | 1 | 1 | 0 | 0 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 14 |\n",
       "| 6 | 30 | 10 | 5 | 6 | 21 |  1 | 1 | 1 | 2 | 0 | 2 | 1 | 2 | 3 | 2 | 3 | 2 | 15 |\n",
       "\n"
      ],
      "text/plain": [
       "  ID Age Run_hours_wk Cycle_hours_week Swim_hours_week Total_training_hours_wk\n",
       "1 1  35   3           6                2               11                     \n",
       "2 2  51   4           8                2               14                     \n",
       "3 3  57   2           9                3               14                     \n",
       "4 4  45   2           4                1                7                     \n",
       "5 5  42   4           1                1                6                     \n",
       "6 6  30  10           5                6               21                     \n",
       "  Years_in_triathlon Number_of_injuries_in_past_6_months_Primary\n",
       "1  6                 1                                          \n",
       "2 10                 1                                          \n",
       "3  9                 1                                          \n",
       "4  3                 1                                          \n",
       "5  1                 1                                          \n",
       "6  1                 1                                          \n",
       "  Number_of_injuries_in_past_6_months_second Warm_up_Never0_Always1_Occasional2\n",
       "1 1                                          0                                 \n",
       "2 0                                          0                                 \n",
       "3 0                                          2                                 \n",
       "4 1                                          2                                 \n",
       "5 1                                          0                                 \n",
       "6 1                                          2                                 \n",
       "  Always_warm_up Deep_Squat Hurdle_Step Inline_Lunge Shoulder_Mobility\n",
       "1 0              2          1           2            1                \n",
       "2 0              2          2           2            3                \n",
       "3 0              2          1           2            2                \n",
       "4 0              2          2           2            3                \n",
       "5 0              2          2           2            2                \n",
       "6 0              2          1           2            3                \n",
       "  Active_SLR Trunk_Stability_push-up Rotary_stability Total_FMS_score\n",
       "1 2          2                       2                12             \n",
       "2 1          1                       3                14             \n",
       "3 1          2                       2                12             \n",
       "4 3          2                       1                15             \n",
       "5 2          2                       2                14             \n",
       "6 2          3                       2                15             "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(triathlon)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "91cce43b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:00.939359Z",
     "iopub.status.busy": "2022-12-13T05:54:00.937544Z",
     "iopub.status.idle": "2022-12-13T05:54:00.964546Z",
     "shell.execute_reply": "2022-12-13T05:54:00.962990Z"
    },
    "papermill": {
     "duration": 0.062462,
     "end_time": "2022-12-13T05:54:00.964694",
     "exception": false,
     "start_time": "2022-12-13T05:54:00.902232",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 6</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>ID</th><th scope=col>Region_primary_injury_Ankle1_Back2_Foot3_Hip4_Knee5_LowLeg6_UpLeg7_Other8</th><th scope=col>Primary_injury_Run1_cycle2_Weight3_Other4</th><th scope=col>Acute1_Chronic2</th><th scope=col>Chronic injury</th><th scope=col>Primary_injury_how_Collision1_Overstretch2_Overuse3_Twist4</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>1</td><td>5</td><td>1</td><td>2</td><td>1</td><td>3</td></tr>\n",
       "\t<tr><td>2</td><td>6</td><td>1</td><td>2</td><td>1</td><td>3</td></tr>\n",
       "\t<tr><td>3</td><td>6</td><td>1</td><td>2</td><td>1</td><td>3</td></tr>\n",
       "\t<tr><td>4</td><td>1</td><td>1</td><td>2</td><td>1</td><td>3</td></tr>\n",
       "\t<tr><td>5</td><td>5</td><td>1</td><td>1</td><td>0</td><td>4</td></tr>\n",
       "\t<tr><td>6</td><td>1</td><td>1</td><td>1</td><td>0</td><td>4</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 6\n",
       "\\begin{tabular}{llllll}\n",
       " ID & Region\\_primary\\_injury\\_Ankle1\\_Back2\\_Foot3\\_Hip4\\_Knee5\\_LowLeg6\\_UpLeg7\\_Other8 & Primary\\_injury\\_Run1\\_cycle2\\_Weight3\\_Other4 & Acute1\\_Chronic2 & Chronic injury & Primary\\_injury\\_how\\_Collision1\\_Overstretch2\\_Overuse3\\_Twist4\\\\\n",
       " <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 1 & 5 & 1 & 2 & 1 & 3\\\\\n",
       "\t 2 & 6 & 1 & 2 & 1 & 3\\\\\n",
       "\t 3 & 6 & 1 & 2 & 1 & 3\\\\\n",
       "\t 4 & 1 & 1 & 2 & 1 & 3\\\\\n",
       "\t 5 & 5 & 1 & 1 & 0 & 4\\\\\n",
       "\t 6 & 1 & 1 & 1 & 0 & 4\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 6\n",
       "\n",
       "| ID &lt;dbl&gt; | Region_primary_injury_Ankle1_Back2_Foot3_Hip4_Knee5_LowLeg6_UpLeg7_Other8 &lt;dbl&gt; | Primary_injury_Run1_cycle2_Weight3_Other4 &lt;dbl&gt; | Acute1_Chronic2 &lt;dbl&gt; | Chronic injury &lt;dbl&gt; | Primary_injury_how_Collision1_Overstretch2_Overuse3_Twist4 &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| 1 | 5 | 1 | 2 | 1 | 3 |\n",
       "| 2 | 6 | 1 | 2 | 1 | 3 |\n",
       "| 3 | 6 | 1 | 2 | 1 | 3 |\n",
       "| 4 | 1 | 1 | 2 | 1 | 3 |\n",
       "| 5 | 5 | 1 | 1 | 0 | 4 |\n",
       "| 6 | 1 | 1 | 1 | 0 | 4 |\n",
       "\n"
      ],
      "text/plain": [
       "  ID Region_primary_injury_Ankle1_Back2_Foot3_Hip4_Knee5_LowLeg6_UpLeg7_Other8\n",
       "1 1  5                                                                        \n",
       "2 2  6                                                                        \n",
       "3 3  6                                                                        \n",
       "4 4  1                                                                        \n",
       "5 5  5                                                                        \n",
       "6 6  1                                                                        \n",
       "  Primary_injury_Run1_cycle2_Weight3_Other4 Acute1_Chronic2 Chronic injury\n",
       "1 1                                         2               1             \n",
       "2 1                                         2               1             \n",
       "3 1                                         2               1             \n",
       "4 1                                         2               1             \n",
       "5 1                                         1               0             \n",
       "6 1                                         1               0             \n",
       "  Primary_injury_how_Collision1_Overstretch2_Overuse3_Twist4\n",
       "1 3                                                         \n",
       "2 3                                                         \n",
       "3 3                                                         \n",
       "4 3                                                         \n",
       "5 4                                                         \n",
       "6 4                                                         "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(injuries)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dc4a9507",
   "metadata": {
    "papermill": {
     "duration": 0.031351,
     "end_time": "2022-12-13T05:54:01.027666",
     "exception": false,
     "start_time": "2022-12-13T05:54:00.996315",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Now that everything is ready, I can start exploring data sets.\n",
    "\n",
    "# Exploring and summarizing data"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "6f70561d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:01.104840Z",
     "iopub.status.busy": "2022-12-13T05:54:01.103585Z",
     "iopub.status.idle": "2022-12-13T05:54:01.134621Z",
     "shell.execute_reply": "2022-12-13T05:54:01.133958Z"
    },
    "papermill": {
     "duration": 0.074891,
     "end_time": "2022-12-13T05:54:01.134784",
     "exception": false,
     "start_time": "2022-12-13T05:54:01.059893",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble[,19] [60 × 19] (S3: tbl_df/tbl/data.frame)\n",
      " $ ID                                         : num [1:60] 1 2 3 4 5 6 7 8 9 10 ...\n",
      " $ Age                                        : num [1:60] 35 51 57 45 42 30 32 30 57 44 ...\n",
      " $ Run_hours_wk                               : num [1:60] 3 4 2 2 4 10 4 5 4 3 ...\n",
      " $ Cycle_hours_week                           : num [1:60] 6 8 9 4 1 5 3 5 6 7 ...\n",
      " $ Swim_hours_week                            : num [1:60] 2 2 3 1 1 6 2 1 2 3 ...\n",
      " $ Total_training_hours_wk                    : num [1:60] 11 14 14 7 6 21 9 11 12 13 ...\n",
      " $ Years_in_triathlon                         : num [1:60] 6 10 9 3 1 1 10 3 6 3 ...\n",
      " $ Number_of_injuries_in_past_6_months_Primary: num [1:60] 1 1 1 1 1 1 1 1 1 1 ...\n",
      " $ Number_of_injuries_in_past_6_months_second : num [1:60] 1 0 0 1 1 1 1 1 1 1 ...\n",
      " $ Warm_up_Never0_Always1_Occasional2         : num [1:60] 0 0 2 2 0 2 0 1 0 1 ...\n",
      " $ Always_warm_up                             : num [1:60] 0 0 0 0 0 0 0 1 0 1 ...\n",
      " $ Deep_Squat                                 : num [1:60] 2 2 2 2 2 2 2 2 2 2 ...\n",
      " $ Hurdle_Step                                : num [1:60] 1 2 1 2 2 1 2 2 2 3 ...\n",
      " $ Inline_Lunge                               : num [1:60] 2 2 2 2 2 2 2 3 1 2 ...\n",
      " $ Shoulder_Mobility                          : num [1:60] 1 3 2 3 2 3 3 2 2 2 ...\n",
      " $ Active_SLR                                 : num [1:60] 2 1 1 3 2 2 3 2 3 3 ...\n",
      " $ Trunk_Stability_push-up                    : num [1:60] 2 1 2 2 2 3 2 2 1 1 ...\n",
      " $ Rotary_stability                           : num [1:60] 2 3 2 1 2 2 2 0 2 1 ...\n",
      " $ Total_FMS_score                            : num [1:60] 12 14 12 15 14 15 16 13 13 14 ...\n"
     ]
    }
   ],
   "source": [
    "str(triathlon)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "87f37f9d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:01.203103Z",
     "iopub.status.busy": "2022-12-13T05:54:01.201827Z",
     "iopub.status.idle": "2022-12-13T05:54:01.221609Z",
     "shell.execute_reply": "2022-12-13T05:54:01.219320Z"
    },
    "papermill": {
     "duration": 0.055353,
     "end_time": "2022-12-13T05:54:01.221796",
     "exception": false,
     "start_time": "2022-12-13T05:54:01.166443",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble[,6] [49 × 6] (S3: tbl_df/tbl/data.frame)\n",
      " $ ID                                                                       : num [1:49] 1 2 3 4 5 6 7 8 9 10 ...\n",
      " $ Region_primary_injury_Ankle1_Back2_Foot3_Hip4_Knee5_LowLeg6_UpLeg7_Other8: num [1:49] 5 6 6 1 5 1 3 2 4 3 ...\n",
      " $ Primary_injury_Run1_cycle2_Weight3_Other4                                : num [1:49] 1 1 1 1 1 1 1 1 1 1 ...\n",
      " $ Acute1_Chronic2                                                          : num [1:49] 2 2 2 2 1 1 2 2 2 2 ...\n",
      " $ Chronic injury                                                           : num [1:49] 1 1 1 1 0 0 1 1 1 1 ...\n",
      " $ Primary_injury_how_Collision1_Overstretch2_Overuse3_Twist4               : num [1:49] 3 3 3 3 4 4 3 3 3 3 ...\n"
     ]
    }
   ],
   "source": [
    "str(injuries)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e9a9aa09",
   "metadata": {
    "papermill": {
     "duration": 0.031967,
     "end_time": "2022-12-13T05:54:01.285929",
     "exception": false,
     "start_time": "2022-12-13T05:54:01.253962",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Glimpse:**\n",
    "\n",
    "As you can see from a glimpse at the data, the first 21 rows was established through the history of injury questionnaire. The last 8 rows was tested through the Functional movement Screen which gave us scores for each movement and an overall score for the FMS."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "408de983",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:01.355961Z",
     "iopub.status.busy": "2022-12-13T05:54:01.354688Z",
     "iopub.status.idle": "2022-12-13T05:54:01.383763Z",
     "shell.execute_reply": "2022-12-13T05:54:01.382369Z"
    },
    "papermill": {
     "duration": 0.065988,
     "end_time": "2022-12-13T05:54:01.383915",
     "exception": false,
     "start_time": "2022-12-13T05:54:01.317927",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "60"
      ],
      "text/latex": [
       "60"
      ],
      "text/markdown": [
       "60"
      ],
      "text/plain": [
       "[1] 60"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "49"
      ],
      "text/latex": [
       "49"
      ],
      "text/markdown": [
       "49"
      ],
      "text/plain": [
       "[1] 49"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "27"
      ],
      "text/latex": [
       "27"
      ],
      "text/markdown": [
       "27"
      ],
      "text/plain": [
       "[1] 27"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "11"
      ],
      "text/latex": [
       "11"
      ],
      "text/markdown": [
       "11"
      ],
      "text/plain": [
       "[1] 11"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "n_distinct(triathlon$ID)\n",
    "n_distinct(injuries$ID)\n",
    "n_distinct(triathlon$Age)\n",
    "n_distinct(triathlon$Total_FMS_score)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3b23181b",
   "metadata": {
    "papermill": {
     "duration": 0.034567,
     "end_time": "2022-12-13T05:54:01.452931",
     "exception": false,
     "start_time": "2022-12-13T05:54:01.418364",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Analysis:**\n",
    "\n",
    "An interesting observation coming out of the this small analysis is that out of the cohort of 60 triathletes,there were 49 injuries experienced in the past 6 months prior to testing, there were 27 different variances in age, which ilicited a FMS variance of 11 scores. I will disect this as we go on with the analysis. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "c7c0c3fb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:01.529280Z",
     "iopub.status.busy": "2022-12-13T05:54:01.528172Z",
     "iopub.status.idle": "2022-12-13T05:54:01.542943Z",
     "shell.execute_reply": "2022-12-13T05:54:01.541338Z"
    },
    "papermill": {
     "duration": 0.055925,
     "end_time": "2022-12-13T05:54:01.543096",
     "exception": false,
     "start_time": "2022-12-13T05:54:01.487171",
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
       "<ol class=list-inline><li>'ID'</li><li>'Age'</li><li>'Run_hours_wk'</li><li>'Cycle_hours_week'</li><li>'Swim_hours_week'</li><li>'Total_training_hours_wk'</li><li>'Years_in_triathlon'</li><li>'Number_of_injuries_in_past_6_months_Primary'</li><li>'Number_of_injuries_in_past_6_months_second'</li><li>'Warm_up_Never0_Always1_Occasional2'</li><li>'Always_warm_up'</li><li>'Deep_Squat'</li><li>'Hurdle_Step'</li><li>'Inline_Lunge'</li><li>'Shoulder_Mobility'</li><li>'Active_SLR'</li><li>'Trunk_Stability_push-up'</li><li>'Rotary_stability'</li><li>'Total_FMS_score'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ID'\n",
       "\\item 'Age'\n",
       "\\item 'Run\\_hours\\_wk'\n",
       "\\item 'Cycle\\_hours\\_week'\n",
       "\\item 'Swim\\_hours\\_week'\n",
       "\\item 'Total\\_training\\_hours\\_wk'\n",
       "\\item 'Years\\_in\\_triathlon'\n",
       "\\item 'Number\\_of\\_injuries\\_in\\_past\\_6\\_months\\_Primary'\n",
       "\\item 'Number\\_of\\_injuries\\_in\\_past\\_6\\_months\\_second'\n",
       "\\item 'Warm\\_up\\_Never0\\_Always1\\_Occasional2'\n",
       "\\item 'Always\\_warm\\_up'\n",
       "\\item 'Deep\\_Squat'\n",
       "\\item 'Hurdle\\_Step'\n",
       "\\item 'Inline\\_Lunge'\n",
       "\\item 'Shoulder\\_Mobility'\n",
       "\\item 'Active\\_SLR'\n",
       "\\item 'Trunk\\_Stability\\_push-up'\n",
       "\\item 'Rotary\\_stability'\n",
       "\\item 'Total\\_FMS\\_score'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ID'\n",
       "2. 'Age'\n",
       "3. 'Run_hours_wk'\n",
       "4. 'Cycle_hours_week'\n",
       "5. 'Swim_hours_week'\n",
       "6. 'Total_training_hours_wk'\n",
       "7. 'Years_in_triathlon'\n",
       "8. 'Number_of_injuries_in_past_6_months_Primary'\n",
       "9. 'Number_of_injuries_in_past_6_months_second'\n",
       "10. 'Warm_up_Never0_Always1_Occasional2'\n",
       "11. 'Always_warm_up'\n",
       "12. 'Deep_Squat'\n",
       "13. 'Hurdle_Step'\n",
       "14. 'Inline_Lunge'\n",
       "15. 'Shoulder_Mobility'\n",
       "16. 'Active_SLR'\n",
       "17. 'Trunk_Stability_push-up'\n",
       "18. 'Rotary_stability'\n",
       "19. 'Total_FMS_score'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ID\"                                         \n",
       " [2] \"Age\"                                        \n",
       " [3] \"Run_hours_wk\"                               \n",
       " [4] \"Cycle_hours_week\"                           \n",
       " [5] \"Swim_hours_week\"                            \n",
       " [6] \"Total_training_hours_wk\"                    \n",
       " [7] \"Years_in_triathlon\"                         \n",
       " [8] \"Number_of_injuries_in_past_6_months_Primary\"\n",
       " [9] \"Number_of_injuries_in_past_6_months_second\" \n",
       "[10] \"Warm_up_Never0_Always1_Occasional2\"         \n",
       "[11] \"Always_warm_up\"                             \n",
       "[12] \"Deep_Squat\"                                 \n",
       "[13] \"Hurdle_Step\"                                \n",
       "[14] \"Inline_Lunge\"                               \n",
       "[15] \"Shoulder_Mobility\"                          \n",
       "[16] \"Active_SLR\"                                 \n",
       "[17] \"Trunk_Stability_push-up\"                    \n",
       "[18] \"Rotary_stability\"                           \n",
       "[19] \"Total_FMS_score\"                            "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "colnames(triathlon)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "c1f961c5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:01.619934Z",
     "iopub.status.busy": "2022-12-13T05:54:01.618005Z",
     "iopub.status.idle": "2022-12-13T05:54:01.634995Z",
     "shell.execute_reply": "2022-12-13T05:54:01.633476Z"
    },
    "papermill": {
     "duration": 0.056429,
     "end_time": "2022-12-13T05:54:01.635173",
     "exception": false,
     "start_time": "2022-12-13T05:54:01.578744",
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
       "<ol class=list-inline><li>'ID'</li><li>'Region_primary_injury_Ankle1_Back2_Foot3_Hip4_Knee5_LowLeg6_UpLeg7_Other8'</li><li>'Primary_injury_Run1_cycle2_Weight3_Other4'</li><li>'Acute1_Chronic2'</li><li>'Chronic injury'</li><li>'Primary_injury_how_Collision1_Overstretch2_Overuse3_Twist4'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ID'\n",
       "\\item 'Region\\_primary\\_injury\\_Ankle1\\_Back2\\_Foot3\\_Hip4\\_Knee5\\_LowLeg6\\_UpLeg7\\_Other8'\n",
       "\\item 'Primary\\_injury\\_Run1\\_cycle2\\_Weight3\\_Other4'\n",
       "\\item 'Acute1\\_Chronic2'\n",
       "\\item 'Chronic injury'\n",
       "\\item 'Primary\\_injury\\_how\\_Collision1\\_Overstretch2\\_Overuse3\\_Twist4'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ID'\n",
       "2. 'Region_primary_injury_Ankle1_Back2_Foot3_Hip4_Knee5_LowLeg6_UpLeg7_Other8'\n",
       "3. 'Primary_injury_Run1_cycle2_Weight3_Other4'\n",
       "4. 'Acute1_Chronic2'\n",
       "5. 'Chronic injury'\n",
       "6. 'Primary_injury_how_Collision1_Overstretch2_Overuse3_Twist4'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"ID\"                                                                       \n",
       "[2] \"Region_primary_injury_Ankle1_Back2_Foot3_Hip4_Knee5_LowLeg6_UpLeg7_Other8\"\n",
       "[3] \"Primary_injury_Run1_cycle2_Weight3_Other4\"                                \n",
       "[4] \"Acute1_Chronic2\"                                                          \n",
       "[5] \"Chronic injury\"                                                           \n",
       "[6] \"Primary_injury_how_Collision1_Overstretch2_Overuse3_Twist4\"               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "colnames(injuries)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5b8f06c6",
   "metadata": {
    "papermill": {
     "duration": 0.035886,
     "end_time": "2022-12-13T05:54:01.707754",
     "exception": false,
     "start_time": "2022-12-13T05:54:01.671868",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Sample characteristics\n",
    "\n",
    "This information tells us about number of participants in this data set and the variances across the age, triathlon experience and volume of hours trained per week in total and per individual sport. \n",
    "\n",
    "There were 60 triathletes whom partook in the study at a mean age of 38.78 years.\n",
    "\n",
    "Let’s have a look at summary statistics of the data sets:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "1b350255",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:01.784505Z",
     "iopub.status.busy": "2022-12-13T05:54:01.783863Z",
     "iopub.status.idle": "2022-12-13T05:54:01.832939Z",
     "shell.execute_reply": "2022-12-13T05:54:01.831274Z"
    },
    "papermill": {
     "duration": 0.089897,
     "end_time": "2022-12-13T05:54:01.833095",
     "exception": false,
     "start_time": "2022-12-13T05:54:01.743198",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. \n",
       "  25.00   31.00   39.00   38.78   44.25   57.00 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       " Years_in_triathlon  Run_hours_wk    Cycle_hours_week Swim_hours_week\n",
       " Min.   : 1.000     Min.   : 0.000   Min.   : 1.000   Min.   :0.500  \n",
       " 1st Qu.: 1.000     1st Qu.: 2.000   1st Qu.: 4.000   1st Qu.:1.000  \n",
       " Median : 3.000     Median : 3.750   Median : 5.000   Median :2.000  \n",
       " Mean   : 3.783     Mean   : 3.625   Mean   : 5.408   Mean   :2.223  \n",
       " 3rd Qu.: 5.000     3rd Qu.: 4.125   3rd Qu.: 6.000   3rd Qu.:3.000  \n",
       " Max.   :12.000     Max.   :10.000   Max.   :14.000   Max.   :7.000  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. \n",
       "   4.00   13.00   15.00   14.50   16.25   18.00 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. \n",
       " 0.0000  1.0000  1.0000  0.8167  1.0000  1.0000 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Age \n",
    "\n",
    "summary(triathlon$Age)\n",
    "\n",
    "\n",
    "# Experience and total training volume & per individual sport \n",
    "\n",
    "triathlon %>%\n",
    "    select('Years_in_triathlon',\n",
    "          'Run_hours_wk',\n",
    "          'Cycle_hours_week','Swim_hours_week') %>%\n",
    "    summary()\n",
    "\n",
    "# FMS Score\n",
    "\n",
    "summary(triathlon$'Total_FMS_score')\n",
    "\n",
    "# Injury summary\n",
    "\n",
    "summary(triathlon$'Number_of_injuries_in_past_6_months_Primary')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8f5268c5",
   "metadata": {
    "papermill": {
     "duration": 0.037279,
     "end_time": "2022-12-13T05:54:01.907883",
     "exception": false,
     "start_time": "2022-12-13T05:54:01.870604",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Some interesting summary results:**\n",
    "\n",
    "* The average age of the participants was 38.78 years and (n=60) participated in filling out the injury questionnaire and performing the FMS. I have left out the gender to not create bias across the cohort.\n",
    "* Average experience of the athletes was 1.9 years, which constituted low experience, which showed where the majority of athletes experience lay either in the 1 year catagory or the 3 year catagory. \n",
    "\n",
    "* The average total score for the FMS was 14.5. It is said in literature that the minimum score requirement for the FMS is 14 in order to alleviate or prevent injury.\n",
    "\n",
    "* The number of injuries per athlete was 0.8 injuries per athlete in the prior six months to testing.\n",
    "\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "169ccd99",
   "metadata": {
    "papermill": {
     "duration": 0.037078,
     "end_time": "2022-12-13T05:54:01.982352",
     "exception": false,
     "start_time": "2022-12-13T05:54:01.945274",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Question 1?\n",
    "\n",
    "As established through what we are trying to achieve the first of the questions are:\n",
    "   \n",
    "   1. To determine the injury prevalence (past 6 months) in a group of triathletes.\n",
    "    \n",
    "As you can see from the analysis above the representation across the 60 athletes was 0.8 injuries per athlete prior to the testing and answering the questionnaire. This is however squed as there were 11 athletes who never attained an injury. Therefore the number of injuries is only relevant to 49 of the athletes. So a simple sum leads us to say that 82% of the cohort were injured prior to the testing. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a828e632",
   "metadata": {
    "papermill": {
     "duration": 0.038101,
     "end_time": "2022-12-13T05:54:02.057626",
     "exception": false,
     "start_time": "2022-12-13T05:54:02.019525",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Visualization"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "9b91fcb3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:02.137391Z",
     "iopub.status.busy": "2022-12-13T05:54:02.136240Z",
     "iopub.status.idle": "2022-12-13T05:54:02.753043Z",
     "shell.execute_reply": "2022-12-13T05:54:02.751508Z"
    },
    "papermill": {
     "duration": 0.658079,
     "end_time": "2022-12-13T05:54:02.753266",
     "exception": false,
     "start_time": "2022-12-13T05:54:02.095187",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdeYBNdePH8e+5y+wrM0wMxjZGhEiRhJLQpojKUkmRPUtFtixPpSyhUJb6tdlq\n5EFCFEKlHioxDcZOjZlh9pm7/f64mpgZ937vcubOHO/XX/ee9XPOvZlP555FsdlsAgAAABWf\nztcBAAAA4B0UOwAAAI2g2AEAAGgExQ4AAEAjKHYAAAAaQbEDAADQCIodAACARlDsAAAANKIC\nFDubNSc+yE9RFJ3eb1+2yddxKqo5dSMVRdmYke/rIAAAQC0VoNil/fZycp5JCGGzml784riv\n4wAAAJRTFaDYfTtmrRCiWufaQohfJi/3dRwAAIByqrwXO6s5feTOc4qiLHx/dYBOyTwxc1dm\noa9DAQAAlEflvdj9/dOoMwWWkNgRD8a2mFw/wmazjFtxzNehvCD3zMGv/7vhRIHF10EAAIB2\nlPdi9/WYzUKI5q8+L4ToOa2lEOLA9MUlJ7NZc1bNfPHBu26rGhoYXb1+z8H/OVdotV8uUGzK\n4zs+ebb3wy0a1goMiqx/U8vBry4+mmd2GiPz6M7xT93fNKF2qH9QtdoJdz8y5KvfLhSNnVQr\n3BhYVwjx7fuv3tW0fnhQYO3Gt/XqP2JrcuaVC0n+8E5FUYYevfjz+4NuiGvS+cH711zIcymY\n1fT3yrfH3XlLk9gqEX7BkXUSmnR7buKOo1nFJys8u3ji0M5tm0cHB0RVq/PIs6/8dpHDnAAA\nXAds5Zil4HRlo17R+e3LKrTZbIXZ+/10iqLotmbkXzmZ1ZL9QofqQghF51+vaetGcVFCiPB6\nXXtFBxXbwO/f6q1XFEVRqtRq2ObWxpH+eiFESGzHby/kOYhxKfmTKn56IUREXMM27e64MS5c\nCKE3Vl55PNM+wcSaYYaAOokjW+sM4d36Dn7tjSn9HumgVxS9X9V396UWLefPD9oKIXquHGdQ\nFL+wqk1va7f2n/VKBbPmD2weJYTQGSKatGh9Z+uWNcP9hBDG4Ebb0v/dIea8o93jI4QQiqJU\nrdMkITZCCBFQqc2TVYOFEBvSHW0pAACo0Mp1sTu99VEhRKWE14qGTK0fKYRo9fbvV072y/Q7\nhBARCY/s/ivXPiTl69nV/fXFmuvF5PlGnWIMarDo62T7EHPeiWn9GgkhopqNcxDjpbhwIUSP\n+d9aLg8wr32ppRCiSovl9vcTa4Ypil5vrLz4+/NFc/2xZrJRUQIiO2SarfYh9mJn1OvuHj4/\n1WQpmlIy2F8/PiOECIntdvDC5RpnNV+a/1gdIUSTF38qmuzzXnWFEGG1O3+VnGEfcnLnew2D\njfa9QbEDAEDDynWxW9AsWgjxwLrjRUOOfHa3ECKk2qB/J7Lm3xRsVHTGr64+6nZocYdixW7p\n7TFCiP5fHr9yMqs5q1fVYCHE0vM514pRP9AohDiUayoaUpj108svvzxpxhr724k1w4QQNw75\nrtiMH3eMFUI8tfuc/a292IVUG2C9ejLJYEc+Htq5c+dRm05dOdnFoyOEEDW7bLG/Neclhxl0\nij5wc9pVe+PczhEUOwAANK/8FjtTXnKIXqczhB/LMxcNLMzaZ9QpQoj//lNcss8tFkKExo4u\nNnth1r6ri50lLsCgN0blWYpNaPvppSZCiLu+SLlWkhG1w4UQDbq/sG73n6VOYC92k49fKjb8\n/A89hRB1e31rf2svdo2G7b16KveD5acd/+SV5kKImp0vF7v0pEFCiMj4OcUntZoaBhkpdgAA\naJvB03P0VHNm88hsi1WIS3UCSwk5dUny/S/eJIQouLhdCBESe3exCYwhLar66f8qvHzZqSX/\n2PF8sxAXAvXFL6ewyypxCUKRadsW/9D2mb2fz3nw8zlh1Rq0ub11+3u6dOv2YHyVgCsn6xAR\nUGzG4Oq3CbEq43/JQrQrGhjeOPzKaVwKZjNn7Niy/cCvB3498OuBA/v/d+iExWa7cuLsY0eF\nENGtbim+FMXwcFTgoZM8twMAAC0rv8Xus5f2CCGqtGgVf3WxM+cm7f0l9Y/Zs8SLHwghrGaT\nEKVf3Wu84pJYm80shDAE1Bkzsmepq7uhcaVrJQmN67U75Z6vVq1Yv2HjN9/u/GrNB1+t+WD8\n0MrPvrF+4Qut/g12dccSQtisBUIIm/Wqp3jp/zn5z9VgmUc+v6ttv5/P5/qFVWve8pZWD/Qf\n+uot8dEbb2+/oGhixagIIURpFVFfyjAAAKAtvj5kWLrC7P/56xRF0e/JLCg2quDS93pFEUKs\nSs212WyZp94QQoTVHF9sMlPuYfu9Ti6/txZGGfV6/+qFxU5wc93fR358e8LAEL1O0fl9cSHP\n9s9PscMPpxeb8viX9wghanTaZH9r/ym27QdX/54rHey5GqFCiMdmfVl0NYbNZruU8rK44qfY\njCMjhBCVGswtMbe1WYif4KdYAAA0rZzex+7E2tEFVltYrbGtQv2KjfILu314bIgQ4vV3koQQ\nITcMquFvyDo967uLBVdOdvK/Y2xXHkJTjC/Wj7AUnBn1zZliC3zzobtbt269MSNflCYvdeXN\nN9/cqv3woiHRdVsOn7ZoUYNIm7Xwy7R/b0S3dvT6q2e1zhr5oxCi5agbHW2qXDCb5dLS09kG\n/xqfjXow9Iofbf/a8cOVs4TGvhBh0F088sr2jKv2RuovE/dncys7AAC0ztfNsnTjaocLIe5c\nllTq2IPzWgshgqJ72t/uGNlMCFG5yeM/pV2+D8i5Xe/FBxr1Vx6xs9n+2vuiEMIv9JZPdp++\nPMhasHHmY0KI8Dr9S1y6cJm54HS4QSeEeGXdv2Eykr+6KdioKLoNaf8esVMUfZ/X1tmXYylM\nm9mvhRDCL7Rl0Z1NSj9iJxvMXN1fryj6L05kFc3461dvV/XTCyFiWq0uGpj4RD0hRFjd+7ak\nXJ7y758/aRHhb/+4OWIHAICGlcdiV3Bpp15RFEX//aXiv8Pa5aVtsNeUD//KsdlsFlPqkLtr\nCiF0hpCGt7S9JaGGXlHqPjBtWly4zhB55YyrR3WwN7Ca8U073NU2oXqwEMI/vOV3Dm9QvO3F\nO+yrq9H4lg4dO97arIFBUYQQnV79xj6BvdgNeLCeEMI/MrblrTdF+OmFEHpj1OzdfxUt51rF\nTjLY7ul3CSH0xsp33det5yP3tbyxqhDiriFTA/WKohga3tYmy2y12WzmvGOP1A+3Ly22QfOm\n9WIURfGPaDn3qfoUOwAAtK08Frs/FrYRQoTVetHBNE/HBAshmr687/J7a+GnU4fe3apxmH/g\nDXWaj3hjjclqGx0bagy+qdiM+xLn9364c+O6N/gHR8Y3ubXfuAVHswqdJbLs+XxBt7a31K4e\n7W8MvKFW/B339l628Zei0fZi90tmduKcsfe3bxkTFlgzoUX3fkO/Ophx5VIcFDupYFbThsUT\n2zRrWDnE/4Z6TR98fMCyzYdsNtvhNXN7dmx1V9dHciyXz70z559+d/zzne5oHh3sHx5dvUvf\n0b+k5ScvH9WjR49fnG8sAACoqBRbiWs5NcJmqhcclBo15tLJ19Re1aRa4dNOZv6SXXjzPw94\nAAAAKHvl9OIJl9wbHernF/DdpasuFzjzzYijeeYaD3fzVSoAAIAypoViN31QM5OpoEeHgZv2\nHcspNKedObph8Yu33v+ezhD2xuSmvk4HAABQRsrvDYrltZy6/a3jd730yf91aflh0UC9MXrs\nR9/dV6n40yAAAAC0SgvFTiiG0R/teGrcti+27T9x8oyxUo169erdcvc9DSL9fZ0MAACg7Gj3\n4gkAAIDrjBbOsQMAAICg2AEAAGgGxQ4AAEAjKHYAAAAaQbEDAADQCIodAACARlDsAAAANIJi\nBwAAoBHl7skTNpstMzPTJ6v29/e32WyFhYU+WbtmBAUFKYpSWFhoMpl8naViCwoKKigosFgs\nvg5Sgel0usDAQCFEXl6e1Wr1dZwKzL4nc3JyfB2kYjMajX5+fjabLTc319dZKjaj0ajX6/Pz\n830dxGfCw8OvNao8FjtfFYKAgACr1Uod8ZBer9fpdBQ7zxkMhtzcXHajJ/R6vcFgEEJYLBaz\n2ezrOBWYwWAwGAx8Gz1k340+/DOnGUajUVEUdmOp+CkWAABAIyh2AAAAGkGxAwAA0AiKHQAA\ngEZQ7AAAADSCYgcAAKARFDsAAACNoNgBAABoBMUOAABAIyh2AAAAGkGxAwAA0AiKHQAAgEZQ\n7AAAADSCYgcAAKARFDsAAACNoNgBAABoBMUOAABAIyh2AAAAGkGxAwAA0AiKHQAAgEZQ7AAA\nADSCYgcAAKARFDsAAACNoNgBAABoBMUOAABAIyh2AAAAGkGxAwAA0IiyLnam7N8H9Hh48fmc\nMl4vAACA5pVtsbOZPxj/2t+FljJdKQAAwPWhTIvdoZUTv8lvXJZrBAAAuH4YymxN2Sc2Tl7z\n14uLR059ek+xUenp6Xl5eUVvg4KCyizVlRRFURRFr9f7ZO0aw570Cp1Ox270RNHeY096SKfT\niSv2J9yjKIr9BXvSQ9f532ubzeZgbBkVO6sp9fXxy+4YsaBFhF/JsbNnz960aZP9dWRk5JYt\nW8omVakCAwN9uHbNCAwMZE96LjQ01NcRNCIsLMzXEbQgMjLS1xG0QFEU9qRXXLe70WJxdEpb\nGRW7zbPGn2/Uf3rbGJslo2zWiDLzz/+COuLw/y6A8oWvNICKqyyK3d8/vLPktyrvftD5WhMM\nHjy4d+/e9teKoly8eLEMUpUUFBRktVrz8/N9svaKLMLpFL76TCu08PDwnJwcs9ns6yAVmF6v\ntx/1zMrKcvz/uFfjK12cfU9eb1vtdf7+/oGBgTab7dKlS77OUrEFBATo9fqcnOv0Dhs2m83B\n0cqyKHapO34tzDo3oHu3oiEbnnt8S3DTNZ9Ns7+tVq1atWrV7K+tVmt6enoZpCrJZrNZrVb+\njqqBveoei8XCrvNE0ZkoXt+T1+fncn1utRcZjUb7C/akh6xWq06nYzeWqiyKXd1+42c/bLK/\ntlkzR4+Z0uaVGY9WqVwGqwYAALh+lEWxC6haq17Vy6/t59hF1KpTJya4DFYNAABw/eCRYgAA\nABpRdvexs1P0kevWrSvjlQIAAFwPOGIHAACgERQ7AAAAjaDYAQAAaATFDgAAQCModgAAABpB\nsQMAANAIih0AAIBGUOwAAAA0gmIHAACgERQ7AAAAjaDYAQAAaATFDgAAQCModgAAABpBsQMA\nANAIih0AAIBGUOwAAAA0gmIHAACgERQ7AAAAjaDYAQAAaATFDgAAQCModgAAABpBsQMAANAI\nih0AAIBGUOwAAAA0gmIHAACgERQ7AAAAjaDYAQAAaATFDgAAQCModgAAABpBsQMAANAIih0A\nAIBGUOwAAAA0gmIHAACgERQ7AAAAjaDYAQAAaATFDgAAQCModgAAABpBsQMAANAIih0AAIBG\nUOwAAAA0gmIHAACgERQ7AAAAjaDYAQAAaATFDgAAQCModgAAABpBsQMAANAIih0AAIBGUOwA\nAAA0gmIHAACgERQ7AAAAjaDYAQAAaATFDgAAQCModgAAABpBsQMAANAIih0AAIBGUOwAAAA0\ngmIHAACgERQ7AAAAjaDYAQAAaATFDgAAQCModgAAABpBsQMAANAIih0AAIBGUOwAAAA0gmIH\nAACgERQ7AAAAjaDYAQAAaATFDgAAQCModgAAABpBsQMAANAIih0AAIBGUOwAAAA0gmIHAACg\nERQ7AAAAjaDYAQAAaATFDgAAQCMMvg5QCr1e75P1Koqi0+l8tXZtY6+6hy+kh4r2ntf35PX2\nudi393rbaq9TFMX+gj3pIUVRFEW5bnejzWZzMFZxPLrsWa1WnY7jiBXJP/9SOVLOvmWAI3yl\nAZRnFovFQaktj0fs0tLSfLLe0NBQi8WSm5vrk7VXZJWdTuGrz7RCq1SpUlZWlslk8nWQCkyv\n10dERAghLl26ZDabpefjK12cwWAIDw+/3rba6wICAoKDg202W3p6uq+zVGyBgYEGgyErK8vX\nQXymcuVr/jNVHoudrw4i2v7hk7VrG3vVPXwhPVS097y+J6+3z8W+vdfbVquHPekV7MZS8aMn\nAACARlDsAAAANIJiBwAAoBEUOwAAAI2g2AEAAGgExQ4AAEAjKHYAAAAaQbEDAADQCIodAACA\nRlDsAAAANIJiBwAAoBEUOwAAAI2g2AEAAGgExQ4AAEAjKHYAAAAaQbEDAADQCIodAACARlDs\nAAAANIJiBwAAoBEUOwAAAI2g2AEAAGgExQ4AAEAjKHYAAAAaQbEDAADQCIodAACARlDsAAAA\nNIJiBwAAoBEUOwAAAI2g2AEAAGgExQ4AAEAjKHYAAAAaQbEDAADQCIodAACARlDsAAAANIJi\nBwAAoBEUOwAAAI2g2AEAAGgExQ4AAEAjKHYAAAAaQbEDAADQCIodAACARlDsAAAANIJiBwAA\noBEUOwAAAI2g2AEAAGgExQ4AAEAjKHYAAAAaQbEDAADQCIodAACARlDsAAAANIJiBwAAoBEU\nOwAAAI2g2AEAAGgExQ4AAEAjKHYAAAAaQbEDAADQCNliV6NZx1dm/19Sar6qaQAAAOA22WIX\nffGn/4x+smFMxG1d+72zYku6yapqLAAAALhKttj9cjzjj51fjn/uoQt7Vg19vFNMRM2HB7z0\nxY6D9DsAAIByQv4cO13DOx6cvnDlkbS03f/94LkHb9z10azu7RpHxt0yeNLbe5PTVcwIAAAA\nCS5fPKHoglvf/+SCzzb/b/eKLg0iMk/8vHDayNsbRMW3fmDumj1qRAQAAIAMl4vdqQPfzpk4\ntM2NMTVueXTTn1kNWnWdMHv5nPHP+R/f9sKjt3eaRLcDAADwDYPkdEf3bfl8zZo1n3/+05E0\nRdHVv/XeV2Y92vPRHk1qhAohhHhq2JTpk1okzHzrKTE1Sb24AAAAuBbZYlevZSdF0dVr2Wn8\nW48++miPZjXDik2gM0Td07Dy7BPB3k4IAAAAKZLFzjJq+ju9eve+NS7cwUTtViTleiUUAAAA\nXCd1jl3micmzJwwZteW82mkAAADgNqliFxTdu5q//ujyLWqnAQAAgNukip0hqOH+nctiDo0Z\nMGsVz5wAAAAon2Qvnnhi/EehdSOWjum17EVjpSoxoQH6K8empKSokA0AAAAukC12ISEhISGt\nu9VQNQwAAADcJ1vsEhMTSx1uLcjOMfl7Lw8AAADc5PKTJ4r5YWKb2BsneCUKAAAAPCF7xM5m\nzXln5HMfbv3xQp75iqHmkyfPRDR8TJVoAAAAcIXsEbv/TW03bP6n6WFxtUNyjh8/XrNxk5sS\nYnPOnwuM6b591yhVIwIAAECG7BG78fMOVm409cjeiYrNfGt4cMLryxY3qpx9YmPjht2/Op3T\nJJLT7AAAAHxM9ojdjsyCuMcfVIQQiuGZmOD9m88JIUJqdf3g8Vozey1TMSAAAADkSN/uRKcz\nZZnsrxu2qHxmbYp4obEQok6PGpc+mSvEGMezm3OOf7zg/V1/HLto8qtZ9+beg55rUT3Ik9wA\nAAAoRvaIXd+qQUeWvXaywCKEqPZAtQsH3iy0CSFExi8ZwmZ2MrMQK8ZP+Pp4SP+RE157ZUQ9\n8/9eGzPtosXmQWwAAAAUJ1vsRi56ynQhsV5UjQM5ptjOY61Zu255/IW3Zox7ePqBqJtfdjxv\nYebuVSmZj0wecfvNjeo3aj5g/LDCnIMrU3M9Dg8AAIB/yf4UW+O+eYc33jjz4016RQmodP/G\nKd17zZg/dqUlJLbdyi+fczyvzZbftm3bDpUD7G/1/tWEECYrR+wAAAC8SbHZ3CxYVlPGwSOX\nGiTE+SmysxSm/30uPfWHjYtW/Ri85MPXIvSX5/z999/Pnz9vf200Gps3b+5eJA8FBARYrdbC\nwkKfrL3iCgsLdTpNZmZWGSTRmJCQkLy8PIvF4usgFZhOpwsODhZC5Obmyu9JvtIl2fdkVtb1\ntdVe5+fn5+/vb7PZsrOzfZ2lYvPz89Pr9Xl5eb4O4hs2my0sLOxaY90vdm74aWTfaccuKYqx\n2+i3nr6zdtHwCRMmbNq0yf46MjJyy5YtZRZJAxSJYq3qh+zzAPAWbXyUnm+FNvYDAK2yWCx6\nvf5aY2V/ihVCFGac/OXA4bQcU8lRLTt1qWJ0frpey7kfrRPi76RvR40bZYta1v/GSPm1AwAA\nwDHZI3Znt02+pcuMc4Wl/5ZxKNeUEHjNjngpadv2PwO6PXB70ZBVAx7bFPPSsuk329/m5eWZ\nTJf7os1mM5udX2arhpCQEKvVmptbwa7qiIqq7HSaCxfSNBxAqypVqpSVlVX0n0YZ0MZH6flW\naGM/eJfBYAgPD09Lu7622usCAgKCg4NtNlt6erqvs1RsQUFBer3+ej43oHLla/4zJXvEbkiv\nN3Ni73n31QHxN0SUHNvg2q1OCGEu3LN82e+3d251+aiezfxbrjkgJrBogsDAwMDAy2+tVqsP\nv/E2m60sf5suMz7fKJ8HqKDK4ReyvOVxj+dboY39IM++vdfbVquHPekhvpAOyBa7zRkFM35e\n9XxN5+cUlxTZcFBD/+de/s+SIY+0C9fn79v84W8FIZP71XFjUQAAALgW2WJ3e5hfVYeH5RzQ\nGSpPemv8e4s/nf/61hwRVKt2k5ffnHJzmJ97SwMAAECpZLva3Kkd7+09q/PGVyIN0nc3uUJQ\nbIuR01q4MSMAAAAkyRa7RkPXPrwgumadxC7tm1cOLj7XwoULvR0MAAAArpEtdrtebrsgKUOI\njP+u/qPkWIodAACAz8k+K3bwgn3xfWedzMgrlaoRAQAAIEP2iN3ZQuvSOYNrRASomgYAAABu\nkz1iNyQu7MDfHJkDAAAov2SL3ZjN737etfe6/edUTQMAAAC3yf4U27XvO0bDrw/dXC0wMqbk\nVbGnTp3ydjAAAAC4RrbYxcTEiJiY2s1UDQMAAAD3yRa71atXq5oDAAAAHnJyjl1aWlp6enrZ\nRAEAAIAnnByxi4qK0hkiLab02rVrO5gsJSXFq6kAAADgMifFLi4uTmcIF0I0a8bpdQAAAOWa\nk2L3z6E4y4oVK3R+/kalDCIBAADAHVL3scs8MTkgIKDDkiS10wAAAMBtUsUuKLp3NX/90eVb\n1E4DAAAAt0kVO0NQw/07l8UcGjNg1qp0k1XtTAAAAHCD7H3snhj/UWjdiKVjei170VipSkxo\ngP7KsVwVCwAA4HOyxS4kJCQkpHW3GqqGAQAAgPtki11iYqKqOQAAAOAhqXPsAAAAUP45O2Jn\nM29b88kPvx38yxTS9OY2fR+928Ct7AAAAMolR8XOnH+kX4c7P9t7rmjI+FmP7dv5cXU/vYO5\nAAAA4BOOfordNvC+z/aeq9vp+c/Wbt7y5YphXeLP/7jiniGbyywcAAAA5Dk6Yjf9yxOBle47\n8NU7wTpFCNHx/gdPVa284bOXxPtdyioeAAAAZDk6YvdjVmGVVi/YW50QQugCh7eNMeceLItc\nAAAAcJGjYldgtQXVDLpySHCtYJuNJ08AAACUR9zuBAAAQCModgAAABrh5D526Qc+mzVrd9Hb\nkz9fEELMmjWr2GSjR4/2ejIAAAC4xEmx+2vP/DF7ig8cM2ZMsSEUOwAAAJ9zVOzWr19fZjkA\nAADgIUfF7r777nNpWe0S6n93ONmzPAAAAHCTNy+eOH3iuBeXBgAAAJdwVSwAAIBGUOwAAAA0\ngmIHAACgERQ7AAAAjaDYAQAAaATFDgAAQCModgAAABpBsQMAANAIih0AAIBGuFTsrOePHba/\nKsjYP/Wl4UPH/WfjoYtFo6fMnefVbAAAAHCBo2fFXqkw68c+d973xR9Gc8FZYc3r17jtqrPZ\nQohFc95Zmpz0ZI0QIUTfgc+rmBQAAAAOyR6xW9uv1+e/5fUdNVYIkXFk8qqz2b0/+C7j1L42\nAWnj+61RMyEAAACkyBa7SZvP1Hxg5fLXXhBCHJ6zXu9f/b2+bSNiW8zsVy/1x5lqJgQAAIAU\n2WJ3ssAc3bqm/XXihtNhtcYE6RQhRGiDUHN+ilrpAAAAIE222LUJ8z+z/mchhCn753lnshsM\n72QffvTrc4bA+mqlAwAAgDTZYjdzdNNzu57p2n9E7w6dC4X/xCfqWApOzJn49KMbTka3GKNq\nRAAAAMiQvSq26Usbpx7sMuPD+QXC2HPK110jA3L/2jpq+gdhdTt/9EVPVSMCAABAhmyx0xkq\nTfj0h3HL0jNt4ZGBeiGEf3j7TTt+vq31zREGRc2EAAAAkCJb7OxyLman52Sk//O2XrXwtBPH\n0oSoW7eu15MBAADAJbLFLi9166PtHt9w6EKpY202m/ciAQAAwB2yxe69B/tuPJzRacDork1r\n89MrAABAOSRb7Gb8nFq7x+qv339Y1TQAAABwm+ztTow6EdfnZlWjAAAAwBOyxW5806hjH+xW\nNQoAAAA8IVvsntn4adUdz/SZ9uH5XLOqgQAAAOAeR+fY1a5d+8q3ZkX8MOmpTyc/U+mG6qF+\nVzXClBQeFwsAAOBjjopds2bNig25Rc0oAAAA8ISjYpeYmFhmOQAAAOAh2XPsWrdu/dbp7JLD\nz+8e3vauvl6NBAAAAHc4uY9dUlKS/cXevXvrHDqUlBN21Wib+ce13+7eeVKlcAAAAJDnpNgl\nJCQUvf60062fljZNeJ3hXo0EAAAAdzgpdosWLbK/GDRoULtpcx6PDiw2gd4Y1ubRHqpEAwAA\ngCucFLuBAwfaX6xYsaJb/wEDq4WoHwkAAADukH1W7Pbt24UQ6WeOpWabSo6NrR8frFO8mQsA\nAAAuki12+Re+6dG254bD6aWO3Z9d2DTY6L1UAAAAcJlssXvvoT5fnwgfPnHsjdUjS45tFESr\nAwAA8DHZYjf9p9T+W0693e4GVdMAAADAbbI3KA7SK72aVlI1CgAAADwhW+wm3lplyfZzqkYB\nAACAJ2SLXd/16zLGdXnt/77JtdhUDQQAAAD3yJ5jd3fXkZZw0/gnO77ytIRpnEIAACAASURB\nVH/V6jEB+qtubpKSkqJCNgAAALhAtthFRUUJEdWt202qpgEAAIDbZItdYmKiqjkAAADgIdli\nZ1eQ9vu6jXuPHElONQXHx8e36vJQs6rFnx4LAAAAn3Ch2H0x/dkh05efL7AUDdEbo5+atGjJ\nhEe8m8nf39+7C5Sk1+sVRfHV2lXl843yeYAKymg06nSyVziVDW18lJ5vhTb2gzy9Xi+uv632\nOoPh8t9c9qSH9Hq9Tqe7bnejzeboMlbF8egiKaufqNPzs+p3PvH6+MGtGtaL0OcmH9r7zrSx\nn+w403tNysfd47wTVgir1SoZyevsf0GtVqtP1u42g0HvdBqz2eJ0moobQKv0en0Z/+egjY/S\n863Qxn7wLkVRdDqdxXJ9bbXX2XejEII96SFFURRFqXB/r73FarUajdd84pdssRtcPfQj8cDJ\nE59EGv69HtZmvtgnrsY6W7+sM+94IakQQgir1ZqeXvoTadUWGhpqsVhyc3N9sna3RUdHOZ0m\nNfWChgNoVeXKlTMzM00mU5mtURsfpedboY394F0GgyEiIuLChetrq70uMDAwODjYZrOlpaX5\nOkvFFhQUZDAYMjMzfR3EZ6KirvnPlOyvPCtTc+MHvXhlqxNCKIaIl4Yl5Kau8CgdAAAAvEG2\n2AXrdPl/5ZccXvB3gU4f4tVIAAAAcIdssRteNzx5ef+daVd1u4KLe55ZfDi87nAVggEAAMA1\nslfFPrNm8qs3jby7ZoM+w55tlVA3TMk+mvTjkvkfnsz3m7O6v6oRAQAAIEO22EU2HHb428rD\nXhiz/I2Jy/8ZWLX5Qx/OXdCnYaRK4QAAACDPhfvYVb/jiS9+evzC6WPJyckXbWH169evUyO6\nfN1iCwAA4Drm2pMnhFCiYutGxdZVJQsAAAA84EKxK8w4+cuBw2k5pdxVq2WnLlWMHLwDAADw\nJdlid3bb5Fu6zDhXWPrNsg/lmih2AAAAviVb7Ib0ejMn9p53Xx0Qf0NEybENAl39SRcAAABe\nJlvINmcUzPh51fM1Q1VNAwAAALfJ/n56e5hfVQ7LAQAAlGOyxW7u1I5je8/KMNtUTQMAAAC3\nyR6EazR07cMLomvWSezSvnnl4OJzLVy40NvBAAAA4BrZYrfr5bYLkjKEyPjv6j9KjqXYAQAA\n+JzsT7GDF+yL7zvrZEZeqVSNCAAAABnS97ErtC6dM7hGRICqaQAAAOA22SN2Q+LCDvzNkTkA\nAIDyS7bYjdn87udde6/bf07VNAAAAHCb7E+xXfu+YzT8+tDN1QIjY0peFXvq1ClvBwMAAIBr\nZItdTEyMiImp3UzVMAAAAHCfbLFbvXq102naJdT/7nCyZ3kAAADgJtlz7GScPnHci0sDAACA\nS7xZ7AAAAOBDFDsAAACNoNgBAABoBMUOAABAIyh2AAAAGkGxAwAA0AiKHQAAgEZQ7AAAADSC\nYgcAAKARUo8UK7hw9JdLVVrXDRVCCJv560+WbP9xX25wXKu2Dz3R9aaiyabMnadSSgAAADjl\n7IidrWDJ2IdCq9Z/Yf1JIYTNnN7/ztqd+z7/xvyl81+f2Pu+Jq36zii0XZ6278DnVU4LAACA\na3JS7H6b/8Czb62r/8CQiV1rCCH2TO68fNfpnhOWHTx27syf+98eds8PH0/ouuCPMokKAAAA\nR5z8FDts0o5KN44/uHaG/e1L7/wa1WTmymlPCyGEiBk+b3Pqtsqzp88Qwz5ROScAAACccHLE\n7n85plo9ehS9PZBtir3/7isn6Plk3fz09apEAwAAgCucFLsO4f7nNu8petspMiDjQOqVE/z1\nS4ber7oq0QAAAOAKJ8Vu6tjbzu8dcu9LH/2VbxFC/Of1zqe3PLXlRLZ9bMbvq3t9fiz6lvGq\nxwQAAIAzTs6xazL2q2n/u3XizH7V3x7dvnP72tVimwVf7NKgQaf77w4tOLNp07f5AQmffN69\nbLICAADAAWf3sdMFTFjxa69haxcuXPjpxq++ybAfqzv71ecfBUbU6j5y5pgxg5tGBaqfEwAA\nAE5I3aC4fptus9t0my2EOS/r3LmzGQX6atVjo8ICik3WLqH+d4eTVQgJAAAA56SK3b9TB4bW\nqNOgxjXGnj5x3OM8AAAAcBPPigUAANAIih0AAIBGUOwAAAA0gmIHAACgERQ7AAAAjaDYAQAA\naATFDgAAQCModgAAABpBsQMAANAI2WLXunXrt05nlxx+fvfwtnf1tb+eMnee13IBAADARU4e\nKZaUlGR/sXfv3jqHDiXlhF012mb+ce23u3eetL/rO/B5FRICAABAipNil5CQUPT60063flra\nNOF1hns1EgAAANzhpNgtWrTI/mLQoEHtps15PDqw2AR6Y1ibR3uoEg0AAACucFLsBg4caH+x\nYsWKbv0HDKwWon4kAAAAuMNJsSuyfft2Iaznjx2OqZMghCjI2P/G68v+1sV07Te4a8MINRMC\nAABAimyxK8z6sc+d933xh9FccFZY8/o1brvqbLYQYtGcd5YmJz1ZgyN5AAAAPiZ7u5O1/Xp9\n/lte31FjhRAZRyavOpvd+4PvMk7taxOQNr7fGjUTAgAAQIpssZu0+UzNB1Yuf+0FIcThOev1\n/tXf69s2IrbFzH71Un+cqWZCAAAASJEtdicLzNGta9pfJ244HVZrTJBOEUKENgg156eolQ4A\nAADSZItdmzD/M+t/FkKYsn+edya7wfBO9uFHvz5nCKyvVjoAAABIky12M0c3Pbfrma79R/Tu\n0LlQ+E98oo6l4MSciU8/uuFkdIsxqkYEAACADNmrYpu+tHHqwS4zPpxfIIw9p3zdNTIg96+t\no6Z/EFa380df9FQ1IgAAAGTIFjudodKET38Ytyw90xYeGagXQviHt9+04+eWzesbbXo1EwIA\nAECK7E+xdvqASvZWJ4TQB9S9t23zpFfviL1xggrBAAAA4BrZI3Y2a847I5/7cOuPF/LMVww1\nnzx5JqLhY6pEAwAAgCtkj9j9b2q7YfM/TQ+Lqx2Sc/z48ZqNm9yUEJtz/lxgTPftu0apGhEA\nAAAyZI/YjZ93sHKjqUf2TlRs5lvDgxNeX7a4UeXsExsbN+z+1emcJpH+qqYEAACAU7JH7HZk\nFsQ9/qAihFAMz8QE7998TggRUqvrB4/XmtlrmYoBAQAAIEe22IXodKYsk/11wxaVz6y9/LSJ\nOj1qXDo2V5VoAAAAcIVssetbNejIstdOFliEENUeqHbhwJuFNiGEyPglQ9jMTmYGAACA+mSL\n3chFT5kuJNaLqnEgxxTbeaw1a9ctj7/w1oxxD08/EHXzy6pGBAAAgAzZiydq3Dfv8MYbZ368\nSa8oAZXu3zile68Z88eutITEtlv55XOqRgQAAIAM2WInhKjTedCizoPsrztOXJ36csbBI5ca\nJMT5KepEAwAAgCtcKHZCiCPffTb/s81Hjx5LL/SvU6/+nd0H3tRQpWAAAABwjWyxs5ovjL2/\n3eyv/9D7hcTWigsovLBv19ZPlr375l3Dvt80t4rRybl6VvOFdUsXf/1TUmqmtVpc/IN9nuvY\nJMbj8AAAAPiX7MUTu8fePWfLsVFvr0nNyTz+52+Hj5/LSv39tYEtj2yb33HM905n/2rK2P/b\nnvbgM6Nen/piu1p58ycO/fpMjmfJAQAAcBXZYvfy8qSWM76dNbx7pOHyKXX+lW58edGelxMi\n//xwnON5LYWn3/8t/bax47u0blYvoUn3If+5J0L32bxfPQoOAACAq8kWu4M5pl59G5UYrH/8\nqbqmnN8cz2vOOxJXu/b9DSP+GaA0C/M3ZXLEDgAAwJtkz7HrER205/cMUT2k2PBj36cGVLrf\n8bz+4e3nzm1f9Db/71+Wnc2u1b9B0ZDNmzcnJSXZXwcEBPTp00cylXcZDAadThccHOyTtavK\n5xvl8wAVkaIoAQEBfn5+vg5yFW18lJ5vhTb2gzydTieuv632OoPh8t9c9qSHNPz3WobVanUw\nVrbYTV42qO4j96zatrnnbTX/GWb7cc2EnhtO9lu5XT7NsR/+++Zby0y1Oo3vHFs0cMeOHZs2\nbbK/joyMfPbZZ+UX6F16vd5oNMpPr0jc6sVmcz+PtwQGBmo7QEX5IBwrbSv8i713vBVO94Pn\nO8HxR+n5B1E2H6XnX0if/zfllBpfhjLe6orydXKstAyKEFftyfL/r5OHVPogKtwX0lssFouD\nsbLFbuXBmN7NMnu1qjXx1nZN6tUJMKcfObhn78G//cObG7+Z+fw3/065cOHCUpdQmHl0+exZ\nGw+k3/HwoCF9OgXp/t1DlSpVql69uv11eHi448Tqsf8vqeMiXILe6RTqb47PM/g8QDnJ4DnP\nt8LJEjycnSVIL6E88PDLcBVFUXQ6XZlvtTY+yvKQwee8vBPc+nvtufLyUVqtVr3+mmEUm1y9\nlO/FeXl5JQfmnts5cvhsc/17XhrVv0FUgIPZrVZrenq65Lq8KzQ01GKx5Obmys8SHR3ldJrU\n1AsehKoAGXweoJxk8JznW+F0CR7OzhIkl1AeePhlKMZgMERERFy4UKZbrY2Psjxk8Dmv74Sg\noCCDwZCZmelBKJeVq48yKuqaYWSP2JVa14ppl1D/u8PJpYywmV8b87Z/h0HvPn+vgcdUAAAA\nqMO1J084dvrE8VKH5/710YGswidvCv35xx/+XXFgfIsmkV5cOwAAwHXOm8XuWjKPHBFCfPjm\n61cODKsx/uN3WpXB2gEAAK4TZVHsYu6Yse6OMlgPAADAdU32BsUAAAAo5yh2AAAAGkGxAwAA\n0AiKHQAAgEZQ7AAAADSCYgcAAKARFDsAAACNcO0+dulnjqVmm0oOj60fH6xTpsyd56VUAAAA\ncJlsscu/8E2Ptj03HE4vdez+7MKmwca+A5/3XjAAAAC4RrbYvfdQn69PhA+fOPbG6qU84LVR\nkNGrqQAAAOAy2WI3/afU/ltOvd3uBlXTAAAAwG2yF08E6ZVeTSupGgUAAACekC12E2+tsmT7\nOVWjAAAAwBOyxa7v+nUZ47q89n/f5FpsqgYCAACAe2TPsbu760hLuGn8kx1fedq/avWYAL1y\n5diUlBQVsgEAAMAFssUuKipKiKhu3W5SNQ0AAADcJlvsEhMTVc0BAAAADzk5xy4tLS09vfSb\nEgMAAKBccXLELioqSmeItJjSa9eu7WAyzrEDAADwOSfFLi4uTmcIF0I0a9asTPIAAADATU6K\nXdGhOJlz7Nol1P/ucLIXQgEAAMB1svexk3H6xHEvLg0AAAAu8WaxAwAAgA9R7AAAADSCYgcA\nAKARFDsAAACNoNgBAABoBMUOAABAIyh2AAAAGkGxAwAA0AiKHQAAgEa4VOys548dtr8qyNg/\n9aXhQ8f9Z+Ohi0Wjp8yd59VsAAAAcIGTZ8UWKcz6sc+d933xh9FccFZY8/o1brvqbLYQYtGc\nd5YmJz1ZI0QI0Xfg8yomBQAAgEOyR+zW9uv1+W95fUeNFUJkHJm86mx27w++yzi1r01A2vh+\na9RMCAAAACmyxW7S5jM1H1i5/LUXhBCH56zX+1d/r2/biNgWM/vVS/1xppoJAQAAIEW22J0s\nMEe3rml/nbjhdFitMUE6RQgR2iDUnJ+iVjoAAABIky12bcL8z6z/WQhhyv553pnsBsM72Ycf\n/fqcIbC+WukAAAAgTbbYzRzd9NyuZ7r2H9G7Q+dC4T/xiTqWghNzJj796IaT0S3GqBoRAAAA\nMmSvim360sapB7vM+HB+gTD2nPJ118iA3L+2jpr+QVjdzh990VPViAAAAJAhW+x0hkoTPv1h\n3LL0TFt4ZKBeCOEf3n7Tjp9va31zhEFRMyEAAACkyBY7uxP7vl/11bfH/85oNX1B7+CLYVXj\naHUAAADlhPyTJ2yLB7Sr2/bBcf+ZvXjJ8n3ZhXlpiW0Sou8asdRsUzEfAAAAJMkWu6Ofdh+0\ndEf7IfMOHk+1Dwm5YfD8sV23zxvQc+Ux1eIBAABAlvRVsWO2RMSP3rZg2I21oi7P6VdtyBvr\n57WsunnEJNXiAQAAQJZssUu8kFevf7+S59N1eLxWXto672YCAACAG2SLXZRRl52cWXL4paQs\nvX81r0YCAACAO2SL3fiW0Uc+eXJPav6VA3PObHvig+TKzV5UIRgAAABcI1vsuq9aFCtOtq/T\nbNDYaUKIXz+cN3pw7zp1Op0VMQvW9FIzIQAAAKTIFrvAKg/8dnjbsx38l86aLITYOW3ynMWr\na3QdvPXgH91vCFYzIQAAAKS4cIPikFptF6w78Hb+xSNJSXl+VerVqxVilL8NHgAAANTlpNil\npaUpilKpUqWiIfqAiAZNb1M5FQAAAFzmpNhFRUXpDJEWU3rt2rUdTJaSkuLVVAAAAHCZk2IX\nFxenM4QLIZo1a1YmeQAAAOAmJ8Xun0NxlhUrVuj8/I0l71AMAACA8kHq6ofME5MDAgI6LElS\nOw0AAADcJlXsgqJ7V/PXH12+Re00AAAAcJtUsTMENdy/c1nMoTEDZq1KN1nVzgQAAAA3yN7H\n7onxH4XWjVg6pteyF42VqsSEBuivHMtVsQAAAD4nW+xCQkJCQlp3q6FqGAAAALhPttglJiaq\nmgMAAAAeki12ly5dutYoRR8YFuLnpTwAAABwk2yxi4iIuNaoyHrvpic/76U8AAAAcJNssZsy\nZcqVb60FWSnJv69N3BLRftjbozp5PxcAAABcJFvsJk+eXHJg9vGttzbquilnxMNezQQAAAA3\nSN3H7lpC4jqumnbzx0MneCsNAAAA3OZRsRNCBNcKzk9f75UoAAAA8IRHxc5q+nv2hP2GwHhv\npQEAAIDbZM+xa926dYlhljN//noqvaDlxAXezQQAAAA3yBa70uhrNe34yN19Zo6/zWtxAAAA\n4C7ZYrdnzx5VcwAAAMBDTs6xS0tLS09PL5soAAAA8ISTI3ZRUVE6Q6TFlF67dm2nywqvFv/C\n2588eUuUl7IBAADABU6KXVxcnM4QLoRo1qyZ4ynN2ee+3/HN4PuGPvnXCq+lAwAAgDQnxS4l\nJcX+IjEx0emyTm/tXLPTmiyLLVSveCEaAAAAXOHaVbHpZ46lZptKDo+tHx+sU6rcOumzz54O\notUBAAD4gmyxy7/wTY+2PTccLv1Civ3ZhU2DjX5ht/fq5b1oAAAAcIVssXvvoT5fnwgfPnHs\njdUjS45tFGT0aioAAAC4TLbYTf8ptf+WU2+3u0HVNHbBwcFlsJaSDAaDXq9XFC//lOyrzSlX\nGXweoJxk8JyHW+H5TmAJ3lqCz7m0CTqdztVZyoY2PsrykMHnXNoJBoNBp9OVw/1WNpGsVquD\nsbLFLkiv9GpayRt5nLP/C1L27JXO62v31eaUqww+D1BOMnjOw63wfCewBG8twedc2gSV/nn0\nnDY+yvKQwedc/UIqilIO91vZRHJ8BEq22E28tcqS7efuejjOC4mcycrKKoO1lBQaGmqxWHJz\nc12Zyd/pFOpvjs8z+DxAOcngOc+3wskSPJydJUgvoTzw8MtwFYPB4OfnV+ZbrY2Psjxk8Dkv\n74SgoCCDwVABv5BeExAQcK1RstWy7/p1GeO6vPZ/3+RabF5KBQAAAG+SPWJ3d9eRlnDT+Cc7\nvvK0f9XqMQFX39Ok6HZ3AAAA8BXZYhcVFSVEVLduN6maBgAAAG6TLXYyT54AAACADzk5xy4t\nLS09vfSbEgMAAKBccXLELioqSmeItJjSa9eu7WAyzrEDAADwOSfFLi4uTmcIF0I0a9asTPIA\nAADATU6KXdGhOJlz7Nol1P/ucLIXQgEAAMB13rxF8ukTx724NAAAALik3D2OAwAAAO6h2AEA\nAGgExQ4AAEAjKHYAAAAaQbEDAADQCIodAACARlDsAAAANIJiBwAAoBEUOwAAAI1wVOzuatr4\nmZ3n7K8bNmw49WSW42VNmTvPa7kAAADgIkfPij175M8/p87dPOXhcINy+PDhX3/64YdzoaVO\nedtttwkh+g58XpWMAAAAkOCo2C0c2uaumTPv3TrT/vbzHvd8fo0pbTabt4MBAADANY6KXYc3\nth/t8d0vKX9ZbLbHHnus09vL+lcNKrNkAAAAcImjYieEqNOyXZ2WQgixZs2ae3v27BUTXBah\nAAAA4Donxa7I6tWrhRAFab+v27j3yJHkVFNwfHx8qy4PNasaqGY8AAAAyJItdkKIL6Y/O2T6\n8vMFlqIhemP0U5MWLZnwiArBAAAA4BrZ+9ilrH6i+8Ql+tt6fbRpV/KJ86mnj+3e8uljrf2W\nTuze5/PjaiYEAACAFNkjdm+O/G9Itcd/++bjSINiHxJVvXar9l1scTW+HP6m6P6OagkBAAAg\nRfaI3crU3PhBLxa1OjvFEPHSsITc1BUqBAMAAIBrZItdsE6X/1d+yeEFfxfo9CFejQQAAAB3\nyBa74XXDk5f335l2VbcruLjnmcWHw+sOVyEYAAAAXCN7jt0zaya/etPIu2s26DPs2VYJdcOU\n7KNJPy6Z/+HJfL85q/urGhEAAAAyZItdZMNhh7+tPOyFMcvfmLj8n4FVmz/04dwFfRpGqhQO\nAAAA8ly4j131O5744qfHL5w+lpycfNEWVr9+/To1oq/8KbddQv3vDid7PSIAAABkuFDshBBC\nKFGxdaNi65Y67vSJ4x7nAQAAgJtkL54AAABAOUexAwAA0AiKHQAAgEZQ7AAAADSCYgcAAKAR\nFDsAAACNoNgBAABoBMUOAABAIySLnaWgoMBkUzcKAAAAPCFV7DJPTA4ICOiwJMnxZFPmzvNG\nJAAAALhDqtgFRfeu5q8/unyL48n6DnzeG5EAAADgDqliZwhquH/nsphDYwbMWpVusqqdCQAA\nAG4wSE73xPiPQutGLB3Ta9mLxkpVYkID9FeOTUlJUSEbAAAAXCBb7EJCQkJCWneroWoYAAAA\nuE+22CUmJqqaAwAAAB6SLXZ2x3b9d9VX3x7/O6PV9AW9gw/tOxvXOr6ySskAAADgEvkbFNsW\nD2hXt+2D4/4ze/GS5fuyC/PSEtskRN81YqmZ+9sBAACUA7LF7uin3Qct3dF+yLyDx1PtQ0Ju\nGDx/bNft8wb0XHlMtXgAAACQJVvsZo7ZEhE/etuCYTfWiro8p1+1IW+sn9ey6uYRk1SLBwAA\nAFmyxS7xQl69/v2UEsM7PF4rL22ddzMBAADADbLFLsqoy07OLDn8UlKW3r+aVyMBAADAHbLF\nbnzL6COfPLknNf/KgTlntj3xQXLlZi+qEAwAAACukS123VctihUn29dpNmjsNCHErx/OGz24\nd506nc6KmAVreqmZEAAAAFJki11glQd+O7zt2Q7+S2dNFkLsnDZ5zuLVNboO3nrwj+43BKuZ\nEAAAAFJcuEFxSK22C9YdeDv/4pGkpDy/KvXq1Qoxyt8GDwAAAOpy6ckT1t0r536wYW9ycnKe\nf9X4+Ph7e4/o3a6uWtEAAADgCtlDbpaCk0+2qtnmsdFLPlmX/Hdh5slfVyxd0Kd9veYPT8qy\n8OgJAAAA35Mtdt8Ovff/fjhz6/MzD6dnnj568I9jZ7Mv/PGf51r+b+20e6b+ompEAAAAyJAt\ndq+sSomMH7v73bHx4X72IX6RCeMW7R7bIPLA/PGqxQMAAIAs2WJ3KNdUu88T+mJDFUOfp+sW\nZu31dioAAAC4TLbYPVQ5MGP/2ZLDU3ZfCIi4x6uRAAAA4A7ZYjf9/QEnv+w+ff2vVw785YsJ\nPdefeGDmayoEAwAAgGsc3e5k2LBhV769u6bfxAeaLm5+Z+sb64faMpN/37XzwLnIGx/paCxQ\nOSQAAACcc1TsFi1aVHxqg+H8r7sTf91d9Dbrz3XjZ9wzoE9jtQICAABAjqNiZzKZyiwHAAAA\nPMQzwQAAADTChUeKFWac/OXA4bScUg7jtezUpQrPjQUAAPAp2WJ3dtvkW7rMOFdoKXXsoVwT\nxQ4AAMC3ZIvdkF5v5sTe8+6rA+JviCg5tkGgC0f+AAAAoAbZQrY5o2DGz6uerxmqahoAAAC4\nTfb309vD/KpyWA4AAKAcky12c6d2HNt7VobZpmoaAAAAuE32IFyjoWsfXhBds05il/bNKwcX\nn2vhwoXeDgYAAADXyBa7XS+3XZCUIUTGf1f/UXKsfLFb/HSv4DeW96kSJBsQAAAAcmR/ih28\nYF9831knM/JKJbUIW+GBrQs3pMlNDAAAABdJ38eu0Lp0zuAaEQHureb8rjdfmPt9TqHVvdkB\nAADglOwRuyFxYQf+dv9gW1Szfm/Mnjdv9gS3lwAAAADHZI/Yjdn87h0dejdLXPpgsxvcWU1I\n1ZohwlJYeo9csWLF/v377a+DgoJeeuklN1bhOaPRaDAY9Hq9dxcbGur7m//5PIPPA5STDJ7z\ncCs83wkswVtL8DmXNkGn07k6S9nQxkdZHjL4nEs7wWAwKIpSDvdb2USy2RzdokS22HXt+47R\n8OtDN1cLjIwpeVXsqVOn3EwnhBDi999/37p1q/11ZGTkpEmTPFmaPEUpdfBVxc7h3pPi7+/v\neoarqJ2hDLATvMXDrfB8J7AEmSV4/pUug/8o3NqEq2bx+SaI8vFl8Fx5+BfS59z4IMrDZ1dM\n2USyWEp/vqudbLGLiYkRMTG1m3kjUQmNGzc2m83210FBQQUFBaqsphTOPwBnYbSxBA+Vh03w\n+U7wCtX3Q0X4IFhCGS3B5wEqyBI8p42t8JCXN8F+xM5kMnkQyQ3l5YOw2WwOfl2ULXarV6/2\nUp5SPPbYY4899pj9tdVqTU9PV29dV3P+IWVlZV0HS/BQedgEn+8Er1B9P1SED4IllNESfB6g\ngizBc9rYCg95eROCgoIMBkOZb3U5+iACAq55Matssbt06dK1Rin6wLAQP5dDAQAAwKtki11E\nRMS1RkXWezc9+Xkv5QEAAICbZIvdlClTrnxrLchKSf59beKWiPbD3h7Vyfu5AAAA4CLZYjd5\n8uSSA7OPb721UddNOSMelluI3i923bp10tkAAADgAtkbFJcqJK7jGcR/6QAAEzNJREFUqmk3\nfzyU2w4DAAD4nkfFTggRXCs4P329V6IAAADAEx4VO6vp79kT9hsC472VBgAAAG6TPceudevW\nJYZZzvz566n0gpYTF3g3EwAAANwgW+xKo6/VtOMjd/eZOf42r8UBAACAu2SL3Z49e1TNAQAA\nAA95evEEAAAAyglHR+ySkpIkl9KgQQNvhAEAAID7HBW7hIQEyaXYbDZvhAEAAID7HBW7Yo8R\nK8ZqSvtozqKUXJNOH+LlUAAAAHCdo2JX6mPE7P7c/N4zA95KyTXVvKPPkqXc7gQAAMD3XL54\novDiwQm9b29w78Af0qu+8v7WlJ0f3RMfrkYyAAAAuMSl+9hZv1ky8bkRb6bkmW/vPWHJuxMb\nhvmplQsAAAAuki12l5I2Dx0w4ONdp0Lj7lz8/tJnO9ZTNRYAAABc5fynWJs5Y9nEPrGNuny6\nJ+OJV5YcT/6WVgcAAFAOOTlid/SbJc8MGPXd8awabfp8vnR+pwYRZRMLAAAArnJU7Cb1bTv9\nk+91hsrPvfb+tGc76oUlLS2t1CkrV66sTjwAAADIclTspn28SwhhMV14b9xj741ztBRuUAwA\nAOBzjord0KFDyywHAAAAPOSo2M2fP7/McgAAAMBDLt+gGAAAAOUTxQ4AAEAjKHYAAAAaQbED\nAADQCIodAACARlDsAAAANIJiBwAA/r+9O4+PurwTOP5MZnKSQBAQ8ELwQIwV0fZVL1hjkZ5a\n75ZalRXRWnVVtLqCVqsWWw+2rdoquqKtF1WrtVVrXQ9srUdVqrBW0SKsHIoSuXKQZGb2j2hA\nvAmZmTx5v//K/GbyzPf55SevTyZjQiSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSE\nHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk\nhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBA\nJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0A\nQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQd\nAEAkUvke4ENUVVXle4S1Oj5MHCvkfYBCWKEQdHAXhXAarVAgK+R9gGhW6Lg4dtFBn2kLyWSy\nqKioAHedm5Gy2ezH3FuIYZfJZPI9wlodHyaOFfI+QCGsUAg6uItCOI1WKJAV8j5ANCt0XBy7\n6KDPtIWioqJsNluAu87NSB//LIUYdvX19bl6qvJPfMQnDRPHCh1UCFvI+0nYKDr9PHSFL4QV\ncrRC3gfoIit0XBy76KCNvIWKiopUKpXzXRfQF6JHjx4fdZf32AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEIpWzZ3pqxhUzZs5a\nuCo5dMddjzzp2O2rinP21AAA3UGOXrF7dca5U257cs+DJ5x36lFVr8384cQr0tncPDMAQHeR\nk7DLNl96+5xtjrjw0NF71Ow28pRLTm5489EbF63OxVMDAHQbuQi7puWPLGlOj/nSZm03S6v3\nGlFZ8vzDb+TgqQEAuo9cvMeupWFOCGFYxdo31Q2rSN0/Z0X7zalTp86cObPt4169ek2fPj0H\nU31KvXv3tkLHFcIW8n4SNooO7qIQTqMVCmSFvA8QzQodF8cuOugzbaGoqOizfkpu5GakTCbz\nMffmIuwyaxpCCH1Ta18d7FucTNevab9ZV1e3aNGito8bGhqSyWQOpvqUOj5Mga+QSHzyp2c7\n/IbIAj8JXUgHd1EIp9EKBbJC3gfoEit0n38h824DtlCAuy6EkXIRdkUl5SGEutZMj/c2vKwl\nnawuaX/AqFGj+vfv3/ZxWVlZY2NjDqYKITQ0vO9mSUlJJpNpbW1d9+DHz7LeCh+qwFfY6AOU\nlZUlEomWlpZ1z2SBn4QCsd4uysvL16xZs953Zh08D4X/hdi4KyQSibKyshDCemeya+2ik1b4\n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\nMwAAAAAASUVORK5CYII="
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
    "triathlon %>%\n",
    "ggplot(aes(x =Age,y = Number_of_injuries_in_past_6_months_Primary, fill= Age)) + \n",
    "  geom_col(width = 0.5, fill = 'blue') + \n",
    "labs(x = 'Age', title=\"Age spread\")\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7d12a7f1",
   "metadata": {
    "papermill": {
     "duration": 0.038223,
     "end_time": "2022-12-13T05:54:02.830598",
     "exception": false,
     "start_time": "2022-12-13T05:54:02.792375",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "As you can see the in the bar graph above, the number of athletes with an injury rate of 49 injuries out of 60, equates to an injury rate of 0.8 injuries per athlete in the prior 6 months to testing. The age catagories with the most injuries were the 30 year olds and 41 year olds. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d020f11b",
   "metadata": {
    "papermill": {
     "duration": 0.038143,
     "end_time": "2022-12-13T05:54:02.906967",
     "exception": false,
     "start_time": "2022-12-13T05:54:02.868824",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Question 2?\n",
    "\n",
    "As established through what we are trying to achieve the second of the questions is:\n",
    "   \n",
    "   2. To describe the FMS™ scores in a group of Johannesburg triathletes.\n",
    "   \n",
    "   In describing the FMS scores i would like to look at each movement individually as well as holistically and determine where the most vulnerable movements are, and which ones affected the athletes the most. The Functional movement Screen (FMS) can be used to assess an individual’s overall functional movement patterns and predict injury. The FMS involves several physical tests, which comprises of movements designed to test an individual’s quality of fundamental movement patterns and identify functional limitations or asymmetries.\n",
    "scored by a medical practitioner on an ordinal scale of 0-3. A score of three indicates a perfect score for the individual test, showing that the subject was able to perform the movement correctly and without pain. A score of 2 indicates that the subject could complete the movement without pain but with some level of compensation. A score of 1 is given when the subject is unable to complete the movement as instructed. A score of 0 is recorded if the subject experiences pain with any portion of the movement.A score of ≤14 has been shown in literature to be the point at which an athlete is vulnerable to injury. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6d68db0d",
   "metadata": {
    "papermill": {
     "duration": 0.038174,
     "end_time": "2022-12-13T05:54:02.983571",
     "exception": false,
     "start_time": "2022-12-13T05:54:02.945397",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Summary"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "9f1f4fbd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:03.065255Z",
     "iopub.status.busy": "2022-12-13T05:54:03.063648Z",
     "iopub.status.idle": "2022-12-13T05:54:03.095214Z",
     "shell.execute_reply": "2022-12-13T05:54:03.093805Z"
    },
    "papermill": {
     "duration": 0.073515,
     "end_time": "2022-12-13T05:54:03.095371",
     "exception": false,
     "start_time": "2022-12-13T05:54:03.021856",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   Deep_Squat  Hurdle_Step     Inline_Lunge   Shoulder_Mobility   Active_SLR   \n",
       " Min.   :0    Min.   :1.000   Min.   :0.000   Min.   :0.000     Min.   :0.000  \n",
       " 1st Qu.:2    1st Qu.:2.000   1st Qu.:2.000   1st Qu.:2.000     1st Qu.:2.000  \n",
       " Median :2    Median :2.000   Median :2.000   Median :2.000     Median :3.000  \n",
       " Mean   :2    Mean   :1.917   Mean   :2.117   Mean   :2.233     Mean   :2.383  \n",
       " 3rd Qu.:2    3rd Qu.:2.000   3rd Qu.:3.000   3rd Qu.:3.000     3rd Qu.:3.000  \n",
       " Max.   :3    Max.   :3.000   Max.   :3.000   Max.   :3.000     Max.   :3.000  \n",
       " Trunk_Stability_push-up Rotary_stability\n",
       " Min.   :0.0             Min.   :0.00    \n",
       " 1st Qu.:1.0             1st Qu.:2.00    \n",
       " Median :2.0             Median :2.00    \n",
       " Mean   :1.9             Mean   :1.95    \n",
       " 3rd Qu.:3.0             3rd Qu.:2.00    \n",
       " Max.   :3.0             Max.   :3.00    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "triathlon %>%\n",
    "    select('Deep_Squat',\n",
    "           'Hurdle_Step',\n",
    "           'Inline_Lunge',\n",
    "           'Shoulder_Mobility',\n",
    "           'Active_SLR',\n",
    "           'Trunk_Stability_push-up',\n",
    "           'Rotary_stability') %>%\n",
    "    summary()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "be52fb31",
   "metadata": {
    "papermill": {
     "duration": 0.038454,
     "end_time": "2022-12-13T05:54:03.172459",
     "exception": false,
     "start_time": "2022-12-13T05:54:03.134005",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "All of the movements tested for the FMS were in and around the 2 average score. This score indicates that each athlete was able to do the movement, but there were discreperncies shown. A perfect score would have been 3. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "28241d4b",
   "metadata": {
    "papermill": {
     "duration": 0.038806,
     "end_time": "2022-12-13T05:54:03.250828",
     "exception": false,
     "start_time": "2022-12-13T05:54:03.212022",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Visualization"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "3b013e30",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:03.334029Z",
     "iopub.status.busy": "2022-12-13T05:54:03.332700Z",
     "iopub.status.idle": "2022-12-13T05:54:04.916943Z",
     "shell.execute_reply": "2022-12-13T05:54:04.916044Z"
    },
    "papermill": {
     "duration": 1.627244,
     "end_time": "2022-12-13T05:54:04.917165",
     "exception": false,
     "start_time": "2022-12-13T05:54:03.289921",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "`geom_smooth()` using method = 'loess' and formula 'y ~ x'\n",
      "\n"
     ]
    },
    {
     "data": {
      "image/png": "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\nM89cf/31td2h86NL5xbPX3/9ddGiRStWrDh27JhziaIoLVq06NOnz1133dWoUaMa9/DLL784\n93D8+PGqPbRs2dK5h4svvtiH1UNGP/zww5IlS1atWnXy5EnnEpPJ1LZt21tuueWuu+6KjY01\ntjxUw2KxJCYmZmRk1J1peDRN27t3765du/bs2VNcXJydnb1nzx6LxdKpU6ebb7558ODBztlu\ndFbdlGKu34+mQysPU4r5F6YUc9u+fftSUlKOHj1azTrNmzdftGjRRRfpMUeze06ePDlhwoSl\nS5dqmqYoZ51nVFV1OBxms/mee+4ZP378he56S09Pf+6557766qtq9jB8+PCxY8cGBwe7UhJT\ninmRP04pdvDgwXHjxm3YsMH50Xb+ERUUFPTII4889thjFotFn5KYUswNDocjMzPz/GNP/ynF\njh8//vnnnx8/frzqBOUMduJ/R1RERMQzzzwzfPhwX9zdX811wZqDXVDcZf0G3Pm37u0DL3yt\nWocrdgQ7/0Kwc8/XX389cuRIV+YTs1gsCxcudOPSnQ527dp19913Z2Zm1viVr0WLFp988sn5\nF9527tyZkpLiSnfpVq1azZ8/v2HDhjVWRbDzIr8LduvXrx8+fHhxcXE1/3rnx3Pnzp3nzp0b\nFRWlQ1UEO/dompaZmVlcXHzmQp2D3fbt2z/77DNnF5eqhVXBzsl5RPXt23fmzJlBQUHeLcDN\nYPfzms+WLFmy5IuvD54qDYy+9NYBd9xx5x233tAhyIjeCAQ7/0Kwc8MPP/zQr18/169/q6q6\ncuXK9u3b+7Sq2jpw4ECvXr2KiopcCU/OoarWrl17ZhPY/v37e/XqVf1n8Jl7SExMXLt2bY39\nWgh2XuRfwW7r1q233Xabs19pjSsripKcnLx8tPjz5gAAIABJREFU+XKbzebrwgh2njh16tSZ\nU/LoGex27dr18ccfi/OaK88JdlW6d+++cOFC7/aEqeaMV11G63DTwKnvfnYg8/SuDV88NbjT\nf79+a9BNHSNjLxkw8ulPV20rdnDjMeA1eXl5AwYMqFWvBofD0b9//zrVlbiwsHDw4MEupjoh\nhMPhSE9Pv/fee6vWLygoGDRokIupzrmHtLS04cOHG37bL+qmEydOpKSkuJjqhBCapu3evfvJ\nJ5/0dWHwUExMjCE92NLS0hYsWCBq0wltw4YNL730ki+LOosLF9+UgLbdbps885P/pp3es/nr\n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\ndKqk4oylFceOnYhoOdgnpQEAABgqLCzMbrcXFBQYXYirXA12Oydf/8hbPze9qkcT064Nu7Ou\n+1vf8IqcrRt+CEoYsGHzGJ+WCD9SWVm5bdu2lStX7t27NyMjQ9O0xMTEZs2a9e7d++qrr5Zj\nthZAf3a7fdOmTatXrz548GBGRobFYrnooovatGnTp0+fdu3a+ft4qq4rLS3duHHjmjVrDh06\ndPLkycDAwKSkpPbt2/fu3bt169ZGVwdpRUdHl5WV+cuNFIqLLce9o4K2J43L2j1B0So6hQe3\n/yHt3eTowt+/ad1ywEM/nnimjc8vVDocjpycHF+/ihDCZrOZzeb8/HwdXksyK1aseOGFFw4c\nOCCEUFXV2eFUVVVN0zRNa9So0YQJE/r27Vt/PoS8JSQkRNO0oqIiowvxbwEBAWFhYUKInJwc\nP+oNXVFRsWDBgpdffjkzM1NRFEVRqt5Zzgft27efOHFi586d9awqPDzcbreXlJTo9op2u33e\nvHmvvPJKbm7uX/4drrrqqokTJ3bs2FG3kjwXGBjofHdnZ2cbXYvfi4qKKiws9F32qqysPHHi\nRGVlZTXr2Gy2+Ph4HxVwjpiYmAs95Wofu035ZY2H9FWEEIp5eELwf1anCyFCGt384ZBGrwz6\nwCtVwn/Z7fZHH3102LBhhw4dci6p+uB0OBzOLw/Hjx8fMWLEiBEj9PwwAPxabm7unXfe+cQT\nT5w6dUoIoWname8s54Ndu3b1799/ypQpfpRWaysrK6tfv35jx449ffq0uMDfYdu2bTfffPPr\nr7/uX/3c4S+cM8n6xYUJV4NdiKqWF5Q7H7fsEH1i6RHn46Z3NDx9+A2flAY/UV5ePmTIkIUL\nF4ozTrLncz61bNmy/v37l5aW6lcf4J9yc3P79OmzZcsWUdM7S9O0GTNmPPzww1JmmpMnT950\n000///yzcOEMM3Xq1Keeekq/4lCfWK1Wv7iRwtVgNzTedvCDqcfKKoUQSbcmndo1za4JIUTu\njlyhVdSwMaQ2duzYTZs2ub7+jh07Ro8e7bt6AAlUVFTcd999hw8fdj2rff7559OnT/dpVfor\nKysbNmxYWlqaK38H5zofffTRnDlzfF8a6qOwsLDQ0FCjq6iBq8HusXfuKT/15aUxDXcVlTfo\n/ZSjYHPHIY+/+s+xt03ZFdP+Hz4tEXXZ999//9FHH9V2qy+++GLVqlW+qAeQw/z58zdv3lyr\n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\n4y+YAAAAAElFTkSuQmCC"
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
    "triathlon %>%\n",
    "ggplot(aes(x = Age, y = Total_FMS_score)) +\n",
    "geom_point(size = 5) +\n",
    "geom_smooth() +\n",
    "labs(Title = \"Total FMS score related to Age\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "63bdb4d2",
   "metadata": {
    "papermill": {
     "duration": 0.043035,
     "end_time": "2022-12-13T05:54:05.005257",
     "exception": false,
     "start_time": "2022-12-13T05:54:04.962222",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "As you can see from the above graph, the younger age groups up to 30 years old had a better scoring on the FMS while the post 30's age groups all scored lower."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "08c4b9a6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:05.113930Z",
     "iopub.status.busy": "2022-12-13T05:54:05.112631Z",
     "iopub.status.idle": "2022-12-13T05:54:05.411034Z",
     "shell.execute_reply": "2022-12-13T05:54:05.409846Z"
    },
    "papermill": {
     "duration": 0.354404,
     "end_time": "2022-12-13T05:54:05.411202",
     "exception": false,
     "start_time": "2022-12-13T05:54:05.056798",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\n4F/PclGu2JLwUdbR0ZFKpda0tShm7Dpa5597y5yDfviVD91U2xFVV3324mtvvO23133vf7ac\nccVpt7y8dP2HBAAockUxY/fGnd+fesfwW6Z/O87gaw+d9Ej1d3594YTOh3/961/feOONzuXS\n0tJddtklTyHDk0qlysvLoyhavnx5NpstdJzQlJSUlJSULF++vNBBAlReXp5Kpdra2lpaWgqd\nJUB9+vRpamoqqmNC38q+hQ1Q31BfbElYRWlpaTKZbG5uLnSQ9SGXy/Xtu8aXYiEvnviv3G9u\nnrvFocfHHL3dJuUP1C5a8XD77bfffvvtO5ez2WxtbW3vBwxUOp3uLHYtLS0dHR2FjhOgVCr1\nETnKrGeZTCaKoo6ODrs3H/r06dPa2tre3l7oICupLPDzv/9KK54kfFAymfxIHXLXUuwK/1Zs\n06IZT9e3HbrjoA/duvSVayYffPj81hW1I/fYW8v7jxn9oYMBAD7KCl/s3rrn0ZLKT22R+cBp\ngHNvv3H6r/8URVG/YZNHpepPPfOqZ56bPeffs2655Pt/Xt7vxKO3LFBYAIDiVfhi98jDC/qN\n2HOVlfMfuufOux+PoiiR6nPKL6d9rvLVy3827YfnXPzs4iE/uvSS0eXF8A4yAEBxKYqLJ3qL\nc+y6JZ1OV1VVRVFUV1fnHLtel8lkMpnMkiVLCh0kQFVVVel0urm5uaGhodBZAjRgwIClS5cW\n1Tl2A2sGFjbAwkULiy0Jq6ioqEilUvX1H5WLS2pqata0qfAzdgAA9ArFDgAgEIodAEAgFDsA\ngEAodgAAgVDsAAACodgBAARCsQMACIRiBwAQCMUOACAQih0AQCAUOwCAQCh2AACBUOwAAAKh\n2AEABEKxAwAIhGIHABAIxQ4AIBCKHQBAIBQ7AIBAKHYAAIFQ7AAAAtGtYpd9e+5LnUstdf/8\nyQ+O+84pP737xSX5iAUAQHelY45rrX/m4J32+v2/S9pb3oqyTVO2mXDrWw1RFF110eXXvjz7\nG0Mr8xkSAICuxZ2x+8OUSXc813TIiSdHUVQ358xb32qYfP0jdW/8bcfM4lOn3J7PhAAAxBK3\n2J1x//zN9r5l+rnfi6LopYvuTJVtes0hE6qGfOq8KVssfOa8fCYEACCWuMXu9Zb2geM361ye\ncdeb/TafWpFMRFHUd8u+7c3z8pUOAIDY4ha7HfuVzb/z2SiK2hqevWR+w5bH7d65/pX7FqTL\n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\nAAAASUVORK5CYII="
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
    "triathlon %>%\n",
    "ggplot(aes( x = Total_FMS_score, y = Number_of_injuries_in_past_6_months_Primary, fill = 'Number_of_injuries_in_past_6_months_Primary')) +\n",
    "geom_col(fill = 'green') +\n",
    "labs(x = \"Total FMS Score\", y = \"Primary injuries in the past 6 months\", Title = \"FMS score related to Primary Injuries\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8f5988e6",
   "metadata": {
    "papermill": {
     "duration": 0.042126,
     "end_time": "2022-12-13T05:54:05.495404",
     "exception": false,
     "start_time": "2022-12-13T05:54:05.453278",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Intrestingly above the 14 and 15 FMS scoring ordinal athletes also ilicited the most injuries prior to the testing in the previous six months. In literature a minimum score of 14 was deemed necessary to prevent injuries from occurring. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "88e7425e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:05.586277Z",
     "iopub.status.busy": "2022-12-13T05:54:05.585224Z",
     "iopub.status.idle": "2022-12-13T05:54:05.817354Z",
     "shell.execute_reply": "2022-12-13T05:54:05.815801Z"
    },
    "papermill": {
     "duration": 0.27988,
     "end_time": "2022-12-13T05:54:05.817513",
     "exception": false,
     "start_time": "2022-12-13T05:54:05.537633",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdeZzUdf3A8c/szt7LsguLoIIiyCWYaGaSR6KGYpn3gYp5a+V9VSqepKllqWVq\nKV6Z6C8xyxNvNEnzSk0J7zSQG3Zh2XN+f6ytINcs7DDDx+fzDx8zn5ndffthmX3xnfnOJlKp\nVAAAYN2Xl+0BAADoGMIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASyWwPsKZS\nqdS8efOyPcW6pLS0tKCgoLGxcdGiRdmeJULJZLK0tHTBggXZHiROnTt3DiEsWrSosbEx27NE\nqKSkJIRQV1eX7UEiVFBQUFpaGkKYP39+tmeJU0VFxaJFi5qamrI9yFpSVVW1optiCLvm5uZs\nT7EuSSQSeXl5iUTCvmWCvc2ovLy84G99htnbTEgmk63fvbY3Q/Ly8lpaWmxv8FQsAEA0hB0A\nQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQd\nAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSE\nHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJJLZHgAA\nVqj60W7ZHWDWiJnZHQDaxRE7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBIJFKpVLZnWCMtLS15efIUIFJ3\nJrI8wCHr9k9J4tPc3Jyfn7+iW5Nrc5QMmTdvXrZHWJeUlZUVFBQ0NjYuXLgw27NEKJlMlpWV\nzZ8/P9uDxKmysjKEsGjRooaGhmzPEqHS0tJUKlVXV5ftQZZSme0BOuRHTGFhYWlpaUd9NpbV\nuXPnhQsXNjU1ZXuQtSGVSlVVVa3o1hjC7kvyB9lRWo/RplIp+5YJiUTC3mZac3OzHc6ElpaW\n4BF1GR2yIW3HV2xv5nhkaOVJTACASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgksz0AAEAHqH60W7ZHCLNGzMzuAI7YAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARCKZ7QEAYB3QIb9g\nvnoNPjbrv12edYIjdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2\nAACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQ\ndgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACR\nEHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACRSK7lr3fDkQeVXT7usPVK21b+Pv7a8U+/8nFN/oDNthp94jH9OxWsfB0AgOVai0fs\nUg2vPfbbB2bXLbn2zvgxl941+Rv7HnvBqYd3ev/p80+/tjm1snUAAFZkLR2xm/7slaf96rmF\nDS1LraYarrznjb6H/mL/XfuEEDa9Iu+Awy+/9ZPjjtqwcPnrPcvXzrQAAOuitXTErnro4Zdf\ndc01V5235OLieU9Oa2gescsGrVeLKrfbsrzwtSemr2h97YwKALCOWktH7JLl3TcqD80NS3Vk\n46I3QgiDSj9/8dyg0uRDb8xv3GX5621Xx40b9+KLL7ZeLisru/TSSzM6fGTy8/NDCMlksnPn\nztmeJUKJRCKRSNjbjCotLS0uLs72FBFqfXDw3fsFubMhuTNJDkokEmVlZdmeIoS18sfU0tKy\nklvX9skTS2qpXxRCqE5+XnvVBfnNC+tXtN529d13333hhRdaL1dVVRUUOK+i3fLy8vLynBOd\nKb4nMyo/P781QcgEjwxfkDt/nXNnktyUTGYzadqshT+m5ubmldyazV3IKywJIcxpain732P0\n7Mbm/MrCFa23feCQIUOamppaL5eWltbX1wfSVlBQkJeX19LS0tjYmO1ZIpSXl5dMJhsaGrI9\nSJyKiopCCI2NjSv/Byurp/XnYtuja44oyvYAbT9icmcSllVUVNTY2JgL5bsW/phSqdRK/nGb\nzbArKBsSwjP/rmvqVfTZfB8sbq4Y3HlF620fePDBBx988MGtl1taWubMmbOWJ1+nVVRUFBYW\nNjU11dTUZHuWCBUUFHTq1MneZkhr2C1evNhPuEwoLy8PIdTW1mZ7kKVkPafa/jrnziQsq7Cw\ncNGiRbnwXPXa+WNayctRsnnIvahy5x6F+Y88N6P1alPdlMk1DUN37bGi9exNCgCwDshm2CUS\nhWfuN3jquIsef3nKtPfevHnM2JKew4/o2WlF61kcFQAg92X5lYb9R409O1w9/sbLbqhNDhi8\n41VnHJ2fWNk6AAArslbDLr+w5/333/+FxWGjThk2ajl3XtE6AADL5bR2AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\n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\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAA\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIpHM9gAA2VH9aLfsDjBrxMzsDgDExxE7AIBICDsAgEgIOwCA\nSAg7AIBIxHDyRFlZWbZHWJfk5+e3/te+ZUJeXl4ikbC3GVVUVJRMeuzqYGVlZa27mgtT5cIM\nbXJnmNyZJOTkMMXFxdkeJIS1sjMtLS0ruTWGB8dEIpHtEdZJ9i0TWnfV3mZUIpGIY4dz6v+i\nbVdzYapcmKFN7gyTO5OEnBwmR0ZaC2Os/EvEEHa1tbXZHmFdUlFRkZ+f39zcbN8yoaCgIJlM\n2tsMaf0X+eLFi+vr6zvgs635p1gzS36f5MIw5eXlrRdyYZi2y7kzTO5MEgyztNra2qKiorq6\nusJsTxLWVpOUlpau6CavsQMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIhEMtsD\nrDOqH+2W3QFmjZiZ3QEAgBzniB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCS8\njx3EL6fehXHNh+kUQqcOGgYgMo7YAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEIpntAVbo7+OvHf/0Kx/X5A/YbKvRJx7Tv1NBticCAMhpOXrE7p3xYy69a/I39j32glMP\n7/T+0+effm1zKtszAQDktpwMu1TDlfe80ffQS/bfddjgr+5wyhUnLfr0qVs/qc32WAAAOS0X\nw27xvCenNTSP2GWD1qtFldttWV742hPTszsVAECOy8XX2DUueiOEMKj08xfVDSpNPvTG/Lar\n77777uzZs1sv5+Xl9evXby1PmBUFBR3zKsNEItH63476hCwpmUza22Xl1IbkzjC5M0kIoaCg\nIC8vL+TGVLkwQ5vcGSZ3Jgk5OUwymRNJk/WdyYld+IKW+kUhhOrk50cTqwvymxfWt10dN27c\nww8/3Hq5qqpq4sSJa3nCrOjcuXMHfraCgoKO/YQsyd5+QU5tSO4MkzuThCWGKSwszO4kIVd3\nJutyZ5KQk8OUlZVle5AQ1srONDc3r+TWXAy7vMKSEMKcppay/PzWldmNzfmV2X6sOcTpG6yz\ncuq7N3eGyZ1JgmFWLHeGyZ1JgmFWIHcmyZ5cDLuCsiEhPPPvuqZeRZ+F3QeLmysGf57A5557\n7tlnn916OZVKtT0tSzo6depUWFjY0NBQU1OT7VkiVFBQUF5ePnfu3GwPEqeuXbuGEGpra+vr\n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\nAElFTkSuQmCC"
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
    "triathlon %>%\n",
    "ggplot(aes( x = Total_FMS_score, y = Total_training_hours_wk, fill = 'Total training hours wk')) +\n",
    "geom_col(fill = 'orange') +\n",
    "labs(x = \"Total_FMS_score\", y = 'Total training hours wk', Title = \"Total training hours related to Total FMS score\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1b9158fe",
   "metadata": {
    "papermill": {
     "duration": 0.043507,
     "end_time": "2022-12-13T05:54:05.903998",
     "exception": false,
     "start_time": "2022-12-13T05:54:05.860491",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Again like the previous graph the most training hours by the athletes also ilicited the highest training hours per week. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "604faa0c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:05.997315Z",
     "iopub.status.busy": "2022-12-13T05:54:05.995392Z",
     "iopub.status.idle": "2022-12-13T05:54:06.225240Z",
     "shell.execute_reply": "2022-12-13T05:54:06.223510Z"
    },
    "papermill": {
     "duration": 0.277158,
     "end_time": "2022-12-13T05:54:06.225398",
     "exception": false,
     "start_time": "2022-12-13T05:54:05.948240",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nO3deYCUdf3A8Wd2Z+8FdmFRRJBLLtFELZU8Ee8rFY8INfOkPFNQQ/HELDDzKBNT\n0E7QksKfV3hkaqGVR2JKoqCpoNzHwl6z8/tjcUVQGJadg2+v118zzzw7++Hx2d23zzzPTCyZ\nTEYAAGz58rI9AAAArUPYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEIp7tAVKV\nTCaXLl2a7Sm2MCUlJYWFhQ0NDdXV1dmeJVht27atrq5OJBLZHiRMxcXFRUVFjY2NK1asyPYs\nwWrTpk1NTU19fX22BwlTYWFhSUlJMplcvnx5tmcJVllZWX19fV1dXbYHyZzKysovemhLCjt/\nO1sgLy8vFovZdOmTl5fX2NhoC6dJMpnMy8vz459WsVjMPpw+9uEMiMVitnAzL8UCAARC2AEA\nBELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgB\nAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELY\nAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEIp7tAQBg\nXVVVHbM7wMKFC7I7ALSMI3YAAIEQdgAAgRB2AACBEHYAAIEQdgAAgRB2AACBEHYAAIEQdgAA\ngRB2AACBEHYAAIEQdgAAgRB2AACBEHYAAIEQdgAAgRB2AACBEHYAAIEQdgAAgRB2AACBEHYA\nAIEQdgAAgRB2AACBEHYAAIEQdgAAgRB2AACBEHYAAIEQdgAAgRB2AACBEHYAAIEQdgAAgRB2\nAACBEHYAAIEQdgAAgRB2AACBEHYAAIEQdgAAgRB2AACBEHYAAIEQdgAAgRB2AACBEHYAAIEQ\ndgAAgRB2AACBEHYAAIEQdgAAgYhne4BNUFBQkO0RtjB5eXlRFMViMZsufWKxWDwej8Vi2R4k\nTPn5+ZF9OM2a9uFkMpntQXJLa+1yTftwKz4h64vFYvn5+bZwk9iW8sPc2Njob+emat5iW8p/\n5S1RLLbF/BBtiezDGZCb+3AsluUXlJLJxtZ6qqbdOAc3cjBycx9On0QiEY9/4YG5LemI3aJF\ni7I9whamvLy8uLi4vr5+2bJl2Z4lWB06dFi2bFlDQ0O2BwlTaWlpaWlpIpFYsmRJtmcJVmVl\nZXV1dV1dXbYH+YyqqiwP0Fp/cYqLi8vLy5PJpD9h6dOuXbva2tqamppsD5I5VV/8E+IcOwCA\nQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsA\ngEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7\nAIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAI\nOwCAQAg7AIBACDsAgEAIOwCAQMSzPQAAkKqqqo7ZHiFauHBBtkfgCzliBwAQCGEHABAIYQcA\nEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEH\nABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhh\nBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAI\nYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQ\nCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcA\nEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEH\nABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhh\nBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABCITIdd/cqZZx5/7IT51c1L\nXphy+8XfOf3EU84ac+PP/rOiPsPzAAAEI7Nhl2y4d/SNH9clmhfMnjLm+5NnfPW4s66+6NQ2\nc5656uLbE8mMTgQAEIyMht0bU8Y8WbPjp/eTdeMfmNlr+PXHHzhowG77XDju/FUf/fm+D1Zm\nciQAgGBkLuxWvvvI1b/7aOSNpzcvqVn69Ly6xMFDOjfdLarYa5fywlefmp+xkQAAQhLPzLdp\nrF/wg9ET977wJ7tVFDYvrF81M4qi/qUFzUv6l8Yfnbms+e7MmTPnz1/TeQUFBbvuumtmpg1G\nfn5+FEV5eXlFRUXZniVkBQUFTZuaVhePx6MoisVi9uH0icViBQUFsVgs24Pkltba5Zr24VZ8\nwlyQa/+WvLy8eDyea1OlTzK5obPWMhR2f/rR6PkDTh+7T6dkYknzwsbaVVEUVcU/PWpYVZCf\nqK5tvjt58uTHHnus6XZlZeX06dMzM21g8vPz27Rpk+0pQlZWVpbtEQKXl5dnH06rkpKSbI+Q\nc1p3l4vFYiHtwzn4b8nPzy8uLs72FBmSSCQ28Ggmwu7jF35692tb3XHvoesszyssiaJocUNj\n2SdHOxbVJ/LXOqQHAEDqMhF2C/7yr7oV884cekzzkofPHja9bOdf3bFXFP3lP6sbuhatCbu5\nNYm2A9o1r3bFFVdceumlTbeTyeSiRYsyMG1IysvLi4qK6uvrly9fnu1ZgtW+ffvly5c3NDRk\ne5AwlZaWlpSUJBKJpUuXZnuWYFVUVKxataquri7bg3xGhw5ZHqC1/uIUFxeXlZUlk8nFixe3\nyhNmfctErbdxWkvbtm3r6upqamqyPUjmdPji/SATYdfr1NE3H7vmDeqSjcsvGXnNXlfccMJW\nHYoqqjoVTnj8+Y+HHNE1iqKG1bNmrKg78sBOzV9YUlLS/AJBY2Nja/1U/O9ofhl+w6/Hs5mS\nyaQtnCb24cywD6+vtTZIkPtwDv5b7MPNMhF2xVt3237rNbebzrGr6NazZ6eyKIpGDh1w2aRr\nn9xm1A4VDQ/d8YOSLoNP65Jzr9wDAGwRMnTxxBfpM2zspdGtU+66ccLKeN8B+958yRn5LswC\nAGiRTIddLL9y2rRpay8ZNOzCQcMyPAUAQIAy/VmxAACkibADAAiEsAMACISwAwAIhLADAAiE\nsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAI\nhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMA\nCISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLAD\nAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISw\nAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiE\nsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAI\nhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMA\nCISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLAD\nAAiEsAMACISwAwAIhLADAAhEfJPWXvzBOwtW1q+/vEvvPmV5sVYaCQCAlkg17GoWPnn8Pic+\n/Obiz330lZV1O5cVtN5UAABsslTD7q6vnfz4u+0uGDNqh20r1390QKmqAwDIslTDbuzfF5w+\n/b+37rdNWqcBAKDFUr14ojQ/dtLO7dM6CgAAmyPVsBuz+1Z3Pz0vraMAALA5Ug27U/5v2pLv\nHXbjL55clUimdSAAAFom1XPshhx+UaJd/ehvHnjFt4q23rZTcf5n3txkzpw5aZgNAIBNkGrY\nVVVVRVHVMcfslNZpAABosVTDburUqWmdAwCAzbRpnzxRu2jmtEdmzJ791oL6sj59+ux52NcG\nbl2SpskAANgkmxB2D44969yxk+bXJpqX5Bd0PO2qO+++8rg0DAYAwKZJ9arYOQ98Y+iYu/P3\nOOmXjz331rvzF7z/zl+n/+brgwrvGTP05N/PTeeEAACkJNUjduMveqi887DXnvxVZXzN9bBV\n2/bYc//Dkt27/vGC8dHQn6ZtQgAAUpLqEbspC1b1GXFpc9U1icUrLju/36oFk9MwGAAAmybV\nsCvLy6v5qGb95bUf1+bll7fqSAAAtESqYXdBr3ZvTTr92UWfabvapX87Y8Kb7XpdkIbBAADY\nNKmeY3fG766+dqeLhmzX9+Tzz9qzX6+2sZVvz3rx7tvve6+m8McPnJ7WEQEASEWqYVfZ//w3\n/9zh/O+OnPTDMZM+Wbj1rl+775afnNy/Mk3DAQCQuk14H7tt9/7Gg38ftvD9d956662lyba9\ne/fu2bVjqi/lAgCQZpv2yRNRFKvq0quqS6+0zAIAwGbYUNjttNNOKT7La6+91hrDAADQchsK\nu06dOmVsDgAANtOGwm769OkZmwMAgM20aefYLZ//3oLq+vWX9+rlrDsAgCxLNexWL3jihP2G\n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\nFgAAAABJRU5ErkJggg=="
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
    "triathlon %>%\n",
    "ggplot(aes( x = Total_FMS_score, y = Years_in_triathlon,  fill = 'Years_in_triathlon')) +\n",
    "geom_col(fill = 'yellow') +\n",
    "labs(x = \"Total_FMS_score\", y = 'Years_in_triathlon',  Title = \"Years in triathlon related to Total FMS score\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c6387c44",
   "metadata": {
    "papermill": {
     "duration": 0.05056,
     "end_time": "2022-12-13T05:54:06.322002",
     "exception": false,
     "start_time": "2022-12-13T05:54:06.271442",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "A score of 14 and 16 yielded the greatest number of years in traithlon.This could be due to expereience, or the fact that these athletes have a more rounded and complete training schedule, comprising swim/cycle/run and strength and conditioning."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "995ca5e0",
   "metadata": {
    "papermill": {
     "duration": 0.046794,
     "end_time": "2022-12-13T05:54:06.413904",
     "exception": false,
     "start_time": "2022-12-13T05:54:06.367110",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We then going to merge the two datasets by 'ID' column in order to carry out FMS score analysis on the injuries. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "baeabbca",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:06.509466Z",
     "iopub.status.busy": "2022-12-13T05:54:06.507532Z",
     "iopub.status.idle": "2022-12-13T05:54:06.528099Z",
     "shell.execute_reply": "2022-12-13T05:54:06.524737Z"
    },
    "papermill": {
     "duration": 0.069534,
     "end_time": "2022-12-13T05:54:06.528270",
     "exception": false,
     "start_time": "2022-12-13T05:54:06.458736",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "combined_data <- merge(x = triathlon,       # First data frame\n",
    "                       y = injuries,       # Second data frame\n",
    "                       by = \"ID\")      # Common column to me"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "d31a05f9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:06.628069Z",
     "iopub.status.busy": "2022-12-13T05:54:06.627072Z",
     "iopub.status.idle": "2022-12-13T05:54:06.657806Z",
     "shell.execute_reply": "2022-12-13T05:54:06.656038Z"
    },
    "papermill": {
     "duration": 0.084513,
     "end_time": "2022-12-13T05:54:06.657996",
     "exception": false,
     "start_time": "2022-12-13T05:54:06.573483",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 24</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ID</th><th scope=col>Age</th><th scope=col>Run_hours_wk</th><th scope=col>Cycle_hours_week</th><th scope=col>Swim_hours_week</th><th scope=col>Total_training_hours_wk</th><th scope=col>Years_in_triathlon</th><th scope=col>Number_of_injuries_in_past_6_months_Primary</th><th scope=col>Number_of_injuries_in_past_6_months_second</th><th scope=col>Warm_up_Never0_Always1_Occasional2</th><th scope=col>⋯</th><th scope=col>Shoulder_Mobility</th><th scope=col>Active_SLR</th><th scope=col>Trunk_Stability_push-up</th><th scope=col>Rotary_stability</th><th scope=col>Total_FMS_score</th><th scope=col>Region_primary_injury_Ankle1_Back2_Foot3_Hip4_Knee5_LowLeg6_UpLeg7_Other8</th><th scope=col>Primary_injury_Run1_cycle2_Weight3_Other4</th><th scope=col>Acute1_Chronic2</th><th scope=col>Chronic injury</th><th scope=col>Primary_injury_how_Collision1_Overstretch2_Overuse3_Twist4</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>⋯</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>1</td><td>35</td><td> 3</td><td>6</td><td>2</td><td>11</td><td> 6</td><td>1</td><td>1</td><td>0</td><td>⋯</td><td>1</td><td>2</td><td>2</td><td>2</td><td>12</td><td>5</td><td>1</td><td>2</td><td>1</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>2</td><td>51</td><td> 4</td><td>8</td><td>2</td><td>14</td><td>10</td><td>1</td><td>0</td><td>0</td><td>⋯</td><td>3</td><td>1</td><td>1</td><td>3</td><td>14</td><td>6</td><td>1</td><td>2</td><td>1</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>3</td><td>57</td><td> 2</td><td>9</td><td>3</td><td>14</td><td> 9</td><td>1</td><td>0</td><td>2</td><td>⋯</td><td>2</td><td>1</td><td>2</td><td>2</td><td>12</td><td>6</td><td>1</td><td>2</td><td>1</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>4</td><td>45</td><td> 2</td><td>4</td><td>1</td><td> 7</td><td> 3</td><td>1</td><td>1</td><td>2</td><td>⋯</td><td>3</td><td>3</td><td>2</td><td>1</td><td>15</td><td>1</td><td>1</td><td>2</td><td>1</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>5</td><td>42</td><td> 4</td><td>1</td><td>1</td><td> 6</td><td> 1</td><td>1</td><td>1</td><td>0</td><td>⋯</td><td>2</td><td>2</td><td>2</td><td>2</td><td>14</td><td>5</td><td>1</td><td>1</td><td>0</td><td>4</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>6</td><td>30</td><td>10</td><td>5</td><td>6</td><td>21</td><td> 1</td><td>1</td><td>1</td><td>2</td><td>⋯</td><td>3</td><td>2</td><td>3</td><td>2</td><td>15</td><td>1</td><td>1</td><td>1</td><td>0</td><td>4</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 24\n",
       "\\begin{tabular}{r|lllllllllllllllllllll}\n",
       "  & ID & Age & Run\\_hours\\_wk & Cycle\\_hours\\_week & Swim\\_hours\\_week & Total\\_training\\_hours\\_wk & Years\\_in\\_triathlon & Number\\_of\\_injuries\\_in\\_past\\_6\\_months\\_Primary & Number\\_of\\_injuries\\_in\\_past\\_6\\_months\\_second & Warm\\_up\\_Never0\\_Always1\\_Occasional2 & ⋯ & Shoulder\\_Mobility & Active\\_SLR & Trunk\\_Stability\\_push-up & Rotary\\_stability & Total\\_FMS\\_score & Region\\_primary\\_injury\\_Ankle1\\_Back2\\_Foot3\\_Hip4\\_Knee5\\_LowLeg6\\_UpLeg7\\_Other8 & Primary\\_injury\\_Run1\\_cycle2\\_Weight3\\_Other4 & Acute1\\_Chronic2 & Chronic injury & Primary\\_injury\\_how\\_Collision1\\_Overstretch2\\_Overuse3\\_Twist4\\\\\n",
       "  & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & ⋯ & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 1 & 35 &  3 & 6 & 2 & 11 &  6 & 1 & 1 & 0 & ⋯ & 1 & 2 & 2 & 2 & 12 & 5 & 1 & 2 & 1 & 3\\\\\n",
       "\t2 & 2 & 51 &  4 & 8 & 2 & 14 & 10 & 1 & 0 & 0 & ⋯ & 3 & 1 & 1 & 3 & 14 & 6 & 1 & 2 & 1 & 3\\\\\n",
       "\t3 & 3 & 57 &  2 & 9 & 3 & 14 &  9 & 1 & 0 & 2 & ⋯ & 2 & 1 & 2 & 2 & 12 & 6 & 1 & 2 & 1 & 3\\\\\n",
       "\t4 & 4 & 45 &  2 & 4 & 1 &  7 &  3 & 1 & 1 & 2 & ⋯ & 3 & 3 & 2 & 1 & 15 & 1 & 1 & 2 & 1 & 3\\\\\n",
       "\t5 & 5 & 42 &  4 & 1 & 1 &  6 &  1 & 1 & 1 & 0 & ⋯ & 2 & 2 & 2 & 2 & 14 & 5 & 1 & 1 & 0 & 4\\\\\n",
       "\t6 & 6 & 30 & 10 & 5 & 6 & 21 &  1 & 1 & 1 & 2 & ⋯ & 3 & 2 & 3 & 2 & 15 & 1 & 1 & 1 & 0 & 4\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 24\n",
       "\n",
       "| <!--/--> | ID &lt;dbl&gt; | Age &lt;dbl&gt; | Run_hours_wk &lt;dbl&gt; | Cycle_hours_week &lt;dbl&gt; | Swim_hours_week &lt;dbl&gt; | Total_training_hours_wk &lt;dbl&gt; | Years_in_triathlon &lt;dbl&gt; | Number_of_injuries_in_past_6_months_Primary &lt;dbl&gt; | Number_of_injuries_in_past_6_months_second &lt;dbl&gt; | Warm_up_Never0_Always1_Occasional2 &lt;dbl&gt; | ⋯ ⋯ | Shoulder_Mobility &lt;dbl&gt; | Active_SLR &lt;dbl&gt; | Trunk_Stability_push-up &lt;dbl&gt; | Rotary_stability &lt;dbl&gt; | Total_FMS_score &lt;dbl&gt; | Region_primary_injury_Ankle1_Back2_Foot3_Hip4_Knee5_LowLeg6_UpLeg7_Other8 &lt;dbl&gt; | Primary_injury_Run1_cycle2_Weight3_Other4 &lt;dbl&gt; | Acute1_Chronic2 &lt;dbl&gt; | Chronic injury &lt;dbl&gt; | Primary_injury_how_Collision1_Overstretch2_Overuse3_Twist4 &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 1 | 35 |  3 | 6 | 2 | 11 |  6 | 1 | 1 | 0 | ⋯ | 1 | 2 | 2 | 2 | 12 | 5 | 1 | 2 | 1 | 3 |\n",
       "| 2 | 2 | 51 |  4 | 8 | 2 | 14 | 10 | 1 | 0 | 0 | ⋯ | 3 | 1 | 1 | 3 | 14 | 6 | 1 | 2 | 1 | 3 |\n",
       "| 3 | 3 | 57 |  2 | 9 | 3 | 14 |  9 | 1 | 0 | 2 | ⋯ | 2 | 1 | 2 | 2 | 12 | 6 | 1 | 2 | 1 | 3 |\n",
       "| 4 | 4 | 45 |  2 | 4 | 1 |  7 |  3 | 1 | 1 | 2 | ⋯ | 3 | 3 | 2 | 1 | 15 | 1 | 1 | 2 | 1 | 3 |\n",
       "| 5 | 5 | 42 |  4 | 1 | 1 |  6 |  1 | 1 | 1 | 0 | ⋯ | 2 | 2 | 2 | 2 | 14 | 5 | 1 | 1 | 0 | 4 |\n",
       "| 6 | 6 | 30 | 10 | 5 | 6 | 21 |  1 | 1 | 1 | 2 | ⋯ | 3 | 2 | 3 | 2 | 15 | 1 | 1 | 1 | 0 | 4 |\n",
       "\n"
      ],
      "text/plain": [
       "  ID Age Run_hours_wk Cycle_hours_week Swim_hours_week Total_training_hours_wk\n",
       "1 1  35   3           6                2               11                     \n",
       "2 2  51   4           8                2               14                     \n",
       "3 3  57   2           9                3               14                     \n",
       "4 4  45   2           4                1                7                     \n",
       "5 5  42   4           1                1                6                     \n",
       "6 6  30  10           5                6               21                     \n",
       "  Years_in_triathlon Number_of_injuries_in_past_6_months_Primary\n",
       "1  6                 1                                          \n",
       "2 10                 1                                          \n",
       "3  9                 1                                          \n",
       "4  3                 1                                          \n",
       "5  1                 1                                          \n",
       "6  1                 1                                          \n",
       "  Number_of_injuries_in_past_6_months_second Warm_up_Never0_Always1_Occasional2\n",
       "1 1                                          0                                 \n",
       "2 0                                          0                                 \n",
       "3 0                                          2                                 \n",
       "4 1                                          2                                 \n",
       "5 1                                          0                                 \n",
       "6 1                                          2                                 \n",
       "  ⋯ Shoulder_Mobility Active_SLR Trunk_Stability_push-up Rotary_stability\n",
       "1 ⋯ 1                 2          2                       2               \n",
       "2 ⋯ 3                 1          1                       3               \n",
       "3 ⋯ 2                 1          2                       2               \n",
       "4 ⋯ 3                 3          2                       1               \n",
       "5 ⋯ 2                 2          2                       2               \n",
       "6 ⋯ 3                 2          3                       2               \n",
       "  Total_FMS_score\n",
       "1 12             \n",
       "2 14             \n",
       "3 12             \n",
       "4 15             \n",
       "5 14             \n",
       "6 15             \n",
       "  Region_primary_injury_Ankle1_Back2_Foot3_Hip4_Knee5_LowLeg6_UpLeg7_Other8\n",
       "1 5                                                                        \n",
       "2 6                                                                        \n",
       "3 6                                                                        \n",
       "4 1                                                                        \n",
       "5 5                                                                        \n",
       "6 1                                                                        \n",
       "  Primary_injury_Run1_cycle2_Weight3_Other4 Acute1_Chronic2 Chronic injury\n",
       "1 1                                         2               1             \n",
       "2 1                                         2               1             \n",
       "3 1                                         2               1             \n",
       "4 1                                         2               1             \n",
       "5 1                                         1               0             \n",
       "6 1                                         1               0             \n",
       "  Primary_injury_how_Collision1_Overstretch2_Overuse3_Twist4\n",
       "1 3                                                         \n",
       "2 3                                                         \n",
       "3 3                                                         \n",
       "4 3                                                         \n",
       "5 4                                                         \n",
       "6 4                                                         "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(combined_data)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "6fbddf37",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:06.755025Z",
     "iopub.status.busy": "2022-12-13T05:54:06.753095Z",
     "iopub.status.idle": "2022-12-13T05:54:06.993115Z",
     "shell.execute_reply": "2022-12-13T05:54:06.991432Z"
    },
    "papermill": {
     "duration": 0.289688,
     "end_time": "2022-12-13T05:54:06.993273",
     "exception": false,
     "start_time": "2022-12-13T05:54:06.703585",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdd3zU9f3A8e/lsgckEAURRNmI1oFVcVUUrbV1FXGBoyjuVUTaqri3PxfU2Spq\nWxV3besords6W+sWUcSN7BVC1t3vj9NIRcIxkm/48Hz+wePyveS+7/twl7zyvZFEOp2OAABY\n8+XEPQAAAKuHsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACERu3AOsqnQ6PXfu\n3LinaC7JZLK0tHTevHlxDxKzoqKi/Pz8+vr6qqqquGeJWVlZWXV1dX19fdyDxCkvL6+4uDiK\nIneNoqKidDq9ePHiuAeJUyKRaNOmTRRFVVVV7hoFBQULFy6Me5CYlZaWJpPJmpqagO8aFRUV\nyzorhLBraGiIe4rmkkgkcnJyAr6CWcqsQxRFliInJyeVSq3l65Cbm+v2kJFIJML+HpiNnJyc\nzO3BUmTuGmv5IkRr/Y8MD8UCAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEA\nBELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgB\nAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELY\nAQAEQtgBAARC2AEABELYAQAEIjfuAQBCUPn21Lh2XRTHTmf22zCO3QLL4YgdAEAghB0AQCCE\nHQBAIDzHDoDVJqbnGk6JoqhNHDv2XENaG0fsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAA\nAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewA\nAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAiHs\nAAACIewAAAIh7AAAApHbwvu76RcHllw2fti6xZkPv3rhzBGXvLnkJwwff8++7QujKHppwrgJ\nT7/22YJk7423PPTEo3qV5bXwqAAAa5YWDLt07ev/vOVvs6oPWGLb3NfnFrXf65QR/Rq3dC3L\ni6LogwljLr57yqEnnNi3ov5vN1139sjqP908MplouWEBANY4LRR205674pfXPF9Vm/rO9unv\nzC/feLvttuv3P1vTtVfc+1b3oVfuP6hbFEU9Ls8Zcthlt39+9PDOpS0zLQDAmqiFwq5y88Mu\nu+rAVO20k0deuOT2N+bVVOxd3lA9f8aCVId1yzOH5BbPffLL2objd+2U+ZyC8u23KM1//Ylp\n0WE9Mluqq6vr6uoyp9PpdCIR7KG8zFUL+AqukEQiYSki67DEPWItX4d4WfyMVrUOfmQsaa39\nVtlCYZdb2mGD0qih9ruv1fhPVV3qubEHjHuvLp3OLV5371+cesSPN6lb9FYURX2Lv31SXd/i\n3Effmtf44UUXXfTYY49lTldUVEycOLH5r0Gc2rdvH/cIrUJeXp6liKKoTZs2cY/QWrSy28NH\ncQ/Qopa9+NYhZq1wpFgUFhYWFhbGPUWzaGhoaOLcln7xxJIaaj+f3RBtVL7NBbectU5BzcuP\njv+/688s6nbHHslFURRV5n5bgZV5yYaqmvgmBQBYA8QZdsn89R988MFvPirb8YDT33/01b/d\n8MaeI4uiKJpdnypJJjPnzaprSJbnN37hQQcdtPPOO2dO5+XlLViwoAWnblE5OTklJSUBX8Es\nFRYW5uXl1dfXV1dXxz1LzEpLS6urq5v+dS14eXl5mV/EW9VdoyzuAVrYshbfOsQoNze3oKCg\nqqoq7kFiVlxcnEwma2tra2rCPCSUTqebeOgmzrBb2hYdiv4xe2ZeySZR9Mz71fVdCr4Ou6mL\nG9r0a9v4aZtssskmm2ySOZ1KpWbPnh3DrC0iNzc3iqJQb5rZy8/Pj6IolUpZipKSkrq6usbn\nmK61MmHXqm4Pa1vQLGvxrUO88vPzW9tILa+oqCiKooaGhrVzKeJ8g+J5H948dNiRn9c2HntI\nP/vForZ9exWU79IxP/n489MzW+urJ724oHbzQR3jmhMAYI0QZ9i12XBoz+SCM8658eU3J33w\nzusTxo5+alGbkcf2TiTyRw3uN3n8ef/8z6Qvp7x965gLizoPPKLz2vZ7IADAionzodhEsuQ3\n14y59fo7rrt0TFVU2q3HZueOO69XUW4URb0OvnB0dO2Emy+5aWFu7347XXXakd6dGACgaYl0\nOh33DKsk+OfYlZeXz5w5M+5BYlZWVlZQUFBbWzt//vy4Z4lZu3btFixYsJY/x66goKCsrCyK\nolZ116h8e2rcI7Somf02/N7t1iFGBQUFxcXFc+bMiXuQmJWXl+fm5lZXVwf8OpLKysplnRXn\nQ7EAAKxGwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4A\nIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIO\nACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDC\nDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQ\nwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAg\nEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4A\nIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIO\nACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDC\nDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQ\nwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQuXEPsBqUl5fHPUJzSSQSUdBXMEvJZDKK\nory8PEuRk5NTWlqaTqfjHiROmftF5K4RK4uf0arWIZFI5OTktKqRYpH5kVFQUJCXlxf3LM0i\nlUo1cW4IYVddXR33CM0lmUwWFxcHfAWzVFhYmJeX19DQYClKS0tra2vr6+vjHiROeXl5mW/c\nrer2UBb3AC1sWYtvHWKUl5eXn5/fqkaKRXFxcTKZrK+vr6mpiXuWZpFOp/Pz85d1bghhF+r/\nXBRFubm5xcXFAV/BLGVuwalUylKUlJTU1tbW1dXFPUjMCgsLo1Z231/bgmZZi28d4pWXl9fa\nRmp5RUVFURQ1NDSsnUvhOXYAAIEQdgAAgRB2AACBEHYAAIEQdgAAgRB2AACBEHYAAIEQdgAA\ngRB2AACBEHYAAIEQdgAAgRB2AACBEHYAAIEQdgAAgRB2AACBEHYAAIEQdgAAgRB2AACBEHYA\nAIEQdgAAgRB2AACBEHYAAIEQdgAAgRB2AACBEHYAAIEQdgAAgRB2AACBEHYAAIEQdgAAgRB2\n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\n3NCmX9vGTzv++OOPP/74zOlUKjV79uwWmK2yBfbRysydO3fpjdah0dq2FMtah5ZXUFBQVlYW\ntaaRIreHb1iHDOsQo/Ly8tzc3JqamqqqqrhnaS6Vlcu8icX54ol5H948dNiRn9c2HlFMP/vF\norZ9exWU79IxP/n489MzW+urJ724oHbzQR3jmhMAYI0QZ9i12XBoz+SCM8658eU3J33wzusT\nxo5+alGbkcf2TiTyRw3uN3n8ef/8z6Qvp7x965gLizoPPKJzWYyjAgC0fnE+FJtIlvzmmjG3\nXn/HdZeOqYpKu/XY7Nxx5/Uqyo2iqNfBF46Orp1w8yU3Lczt3W+nq0470rsTAwA0Lebn2BVU\nbHrcmVcc931nDTj4lAEHt/Q8AABrrpjfoBgAgNVF2AEABELYAQAEQtgBAARC2AEABELYAQAE\nQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEA\nBELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgB\nAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELY\nAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC\n2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAE\nQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEA\nBELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgB\nAAQiN+4BgDVb5dtTY9t1HDud2W/DOHYLkBVH7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewA\nAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAKRG/cAAECYKt+eGteui6KoKI79zuy3\nYRy7/ZYjdgAAgRB2AACBEHYAAIEQdgAAgRB2AACBEHYAAIEQdgAAgQjhfewKCgriHiFMFjbD\nOmRYhwzrkGEdMqxDhnVo1AJLkU6nmzg3hLArLi6Oe4QwWdgM65BhHTKsQ4Z1yLAOGdahUQss\n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\ndem28ZARx2/XrW3cIxGb2jnv33nrH/715pTZi3PW36D3zw45crfN14t7qJYm7AAAArHWvQwY\nACBUwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIuK/M/PiuxlOKK\njpv+cMezf/dorT/eQXbSDfM2KspLJBJddrtvRb+2X0l+pwGPfu9ZV3evKO1w6CpPtxz//s3m\n37kLlLRff6sd97j2wf+slstv4gquitmThi59580obLvDat/dqph8+06JRGLopNlLn/XogE6J\nROLJeTUtOU/mf/yiTxd8Z/srNxyRk5NTufnwT2saWnKeFfLf8/onEomzPp4fwF5W1NQ/75pI\nJPZ+fcbSZ/3jJ10TicQjcxZnczmt89p9LV37+C2X7D9oq/XXrcgvKO3Utfc+h59y30ufN/1F\nd/etLKoY1DIDxkjYrYAO2x026lsjD9pzh6p3X7rg6D23PPL+1XL5gyqKEonEe9X1q+XSVpfW\nOdV3ZD9kvFdn+r9Pm7q4PoqiL589dXZ9zL8QXNC73aa/fHlFv2qHY07+5h5w8t479vvwxYmn\n/rz/kN+/0xwTLmnh1GdO3G9Q343WKy5p32+rnU69+sHq1AosYOc9jhy1lF+efPCqD5b5IfrA\nrOrGLZ88+4f9dhmwYcfy4nadthiw21X3vrTqe/mOlbwZpxaf+IPKsvVGrMqu37jt+AEn3FHR\nb+irL/2uS0FyVS5qudINCwqTOd/J8dyCTs2601YkXXvPJads3bNLSUHJRhv3P+XqB2uCOIiw\neM4jy/pdq02X0dlcQu38N4b277zHUWf89bUZ3fsPGvGLwX065j15528PGLDB7iNvW/I769J3\nz9Vr/odPnTR4UO8N1i0q77jFdrtfdd8Kf0dtDrlxD7AmWX/3X15xzuZLbqmd/+bm6/V/5/ZD\n3ruuqk/Rqi5mfmFhYeEqXsbq1zqn+o7sh4z36jw+8pFEInHe8J5n3/L+aa9OH79th7gm+eqF\nK8+fPLfPin/hHmdeeGaXssYPqz79x8Y9f/LQST+tHv5RUbP9nrhg6h836nXE3ETl0KMOHbZu\n8vUn77l25M/vf+TiTyb+JpHdJWx00K+uOLxnc823hE//dupGe40tWm+b4YedvE5e1VP33nLa\nAdv+6+a37xux8Wrcy8rdjJ8Ys8t1b84q7bjy+500YdRWR95Y1vvAl165bcNmrrooihbPeawm\nle602+BdOhQ1bszJLW/u/bYSYw/sd8q9H2w+aPBJQ3t/8vSEsSN//q/PHnnlyp/EPdeqSuav\nP2zYsO9sTDcsuOvuh8s36bfcL083zDtyy53umjJ/0Alj77v2xLbJr78HLJ75+q8O+OnYq38x\nsGyjZ8/70eqfeynV0x/buN/Pvkqsd8iRhx/SNvXCn287bcg2T4197eGTNl/+FzerNFmYN/XM\nKIq2PPe1pc/68zYdoyi67NP5LT9Vs6qZO+WZJ56pD25fK2F1jVdf82m7vJyyzict/OL6KIrW\n2+72FfryjYvz1tv2ke8966pu5SXrDsvmQhrqZlx27q+H7b1dQU4iiqJNTn0p+wFe/fVmURRd\n+Ml3b+p/6FcZRdGrC2qzv6jv1cQVvHHrDolE7s3vzWncMuHoflEUDX/2i+Ve7Kz3DomiaMfb\n3l/F8Zblo4d2iaLo/pmLMh8esm5xXkm/D6u/vr001M3YvaIwt3Cj6oblX9T7t+0YRdEh781a\n+qxHtl0viqIn5i5e6Tm/evHSvESiKJko7XhUll/ynf/xKX8+qygn0bbH4Peq6lZ6jBUy8+3D\noigaNWXuSnzta+duGUXRmVPnrfapWmYv0144LYqiAaPu+2ZD6pKd1ksk8p7K4jaQuU3u9d/p\nS581cY8Noij62+zqbGZomTXMeGxk/4I227ydxU3rrWt2jKJom19PXPqsVP3cAzcoS+QUPDr7\n61X6zt3zrj7tC8t3XcVRG38i/GG79RKJnDs+/Hp9Ug0LD+lYkpPX7qvaLO7tzclDsassEUVR\n1LXg28N1tXPf/NWh+27Ru0tRabs+W+xy3s2PLXn4/KsXb/v5j7dfv7yk+2bbjzjrjukfnZlI\nJK77sipa6uH/BR9O/MV+u/ftum5JZZcBu/zsyoffbTzr7r6VbbueXTvv9ZMPGNihoqSk/frb\n73PCM19ldbS5XV5y+5vee/fPVx7wkx06lrXptcWOI87+U+PTBO/uW1nR/eovn7xyow69dtpl\np4UN6SWneqjfOm27nj33vYcP3XfXDdcp7brx1sPPvCMVRa/e9quBW/drW1TWrd8OVz88dcnd\nvfPn63++w+ad12lbUFrRve+WJ5x/U9U3j6B9Z1+vjNsukUiM+3zhEl+d2rWiqHS94cu9UksO\n2fTiLPmZo7u0+c6R/8xzSqbWNKze8TK+ePKU2XWpzc48vmS943YpL5z+ysgvalPfuRbZ/rem\n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\ngUAgNBP+D1u3M0/Fc897AAAAAElFTkSuQmCC"
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
    "combined_data %>%\n",
    "ggplot(aes( x = Region_primary_injury_Ankle1_Back2_Foot3_Hip4_Knee5_LowLeg6_UpLeg7_Other8, y = Total_FMS_score, fill = 'Years_in_triathlon')) +\n",
    "geom_col(fill = 'pink') +\n",
    "labs(x = 'Region_primary_injury_Ankle1_Back2_Foot3_Hip4_Knee5_LowLeg6_UpLeg7_Other8', y = \"Total_FMS_score\", Title = \"Region of injuries related to Total FMS score\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "68cde146",
   "metadata": {
    "papermill": {
     "duration": 0.067318,
     "end_time": "2022-12-13T05:54:07.124383",
     "exception": false,
     "start_time": "2022-12-13T05:54:07.057065",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The two areas of the body which resulted in the highest injuries were the knee and lower leg. This is as a reult of the high prevalence of running injuries, which constituted the majority of injuries to the athletes. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "5872603b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:07.232248Z",
     "iopub.status.busy": "2022-12-13T05:54:07.230226Z",
     "iopub.status.idle": "2022-12-13T05:54:07.456809Z",
     "shell.execute_reply": "2022-12-13T05:54:07.455142Z"
    },
    "papermill": {
     "duration": 0.280722,
     "end_time": "2022-12-13T05:54:07.456968",
     "exception": false,
     "start_time": "2022-12-13T05:54:07.176246",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdeYCUdf3A8e/sMXsvu7AoGYSKXKJ5lldWKmllHolkppJ3mjdepXnlrWkeeWAp\nWWaCZ1YekQdppXaYaSWKiP5QUGTl2PuY+f2xtKKxy4A7M+zX1+uvme8zu89nh+XhzTNXIp1O\nBwAA+r+CfA8AAEDfEHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEoyvcAH1Y6\nnV68eHEOdlRVVdXS0tLe3p6DfX2kJJPJsrKydDq9dOnSfM8SoYqKivb29ra2tnwPEpuioqKK\niooQwtKlS73Ne58rLy9PpVItLS35HiQ2hYWFlZWVIYSGhobOzs58jxOb0tLSRCLR3Nycg33V\n1tb2tCmGsMvNb2cikcjZvj5S0ul0QUGB+zZLEolECMF92+cKCwsLCgpCCKlUKpVK5XucOPm9\n7XOJRKL799bdmw2JRCLvd6yHYgEAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIiHsAAAiIewAACJRlO8BAOB9SkpLQwhl+R4jYjX5HiBiyxYuzO8AztgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARKIox/trb3jh6IPP+tSPbvvWkIqulaenXTtt5rPzlhWO3njLg449\nfFRVce/rAACsVG7P2KU7fnrGxW+3dXYvzJ521kV3PLX9Pkecc+Kkqldnnj352s50b+sAAPQk\np2H3n2lnPdKyyXvX022X3/nCiAPO33f8duO22vGEy45reuvxW99o6HEdAICe5S7sGl574Jy7\n3jrl4kO7V1oWPza/rXPXXdbrulpSs8MWlcnnHl3Q03rORgUA6I9y9By7VPvCS8645TMn/Gir\nmmT3YnvTCyGEseXvPXlubHnRgy8sad9l5evdVy+88MJHHnmk63JNTc3dd9+d7flDCIlEorKy\nsrKyMgf7+ghKJBKDBg3K9xQRSiQSRUVF5eXl+R4kWrW1tfkeAViL5ODfss7Ozl625ijsfnfF\nGQvGHXrBjkPSne92L6Zam0IIdUXvnTWsKy7sbGztab37anNz89KlS7suFxYWJhKJbM/fJWc7\n+mhy92aJOzar3L3AinJwTOh9F7kIu7efvu4nz69z/U+/+IH1gmRZCKG+I1VRWNi1sqi9s7Am\n2dN69xfutddeW265ZdflZDLZ0JCLp9+Vl5e3tbV1dHTkYF8fKcXFxSUlJSGE3Pw5ftSUlZV1\ndHS0t7fne5DYFBYWlpWVhRAaGxvTaa/t6mMeGaH/ysG/Zel0uqqqqqetuQi7hX/4Z9uy+YdP\n2Lt75bdH7j+jYrPbrt8hhD+81NwxrGR5wM1t6aweN6C4YpOVrnd/+ac+9alPfepTXZdTqVR9\nfX0OfoqysrL29vbW1tZV35TVVFJSkk6nW1pa8j1IhEpKSjo6Oty3fS6ZTHaFXWtrayqVyvc4\nsRF29F+5Od7mOexGTDrjyq8uP2GQTi09+ZRzdzjzwonrDCqpqRuSnPLwH9/eZfdhIYSO5llP\nLWv7yvghJTXDV7qeg1EBAPqvXIRd6brDN1p3+eWu59jVDN9wwyEVIYRTJow7fep5j3zs1I1r\nOn59/SVlQ3c6eGhVIrHy9RyMCgDQf+X6kyc+YNT+F5wWrp5208VTGopGj/vslScfVpjobR0A\ngJ4k+vvTfnP2HLva2tqmpibPsetzpaWllZWV6XR60aJF+Z4lQgMGDGhra2tubs73ILFJJpPV\n1dUhhPr6es+x63N1gwfnewRYQ+8sXJiDvdTV1fW0KbcfKQYAQNYIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgU5XuAPlBaWpqDvSQSieLi4kQi\nkYN9faQUFxeHEBKJRG7+HD9qCgoKioqK3Ld9rrCwsOtCSUlJOp3O7zDA2iMHx9vejzmJ/n5I\nSqVSqVQqBzsqLCxMpVL9/e5aCxUUFBQUFIQQOjo68j1LhAoLC9PpdG7+jnykJBKJrrbze5sN\nRcXF+R4B1lBHe3u2d5FKpZLJZE9bYzhjt3jx4hzspba2tqmpqbW1NQf7+kgpLS2trKxMp9O5\n+XP8qBkwYEBbW1tzc3O+B4lNMpmsrq4OISxdulQ397m6fA8Aayw3/5bV1fX4t8Rz7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAA\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nUZSb3XQ0zr3tRz9+8t9zFrcnPzFiiwOOOnKrj5d3bXp62rXTZj47b1nh6I23POjYw0dVFfe+\nDgDASuXojN0dZ3zv4bmVh574vYvPPGGjjmcvPuX8xZ3pEMLsaWdddMdT2+9zxDknTqp6debZ\nk6/tTIde1gEA6Ekuwq5t6Z+mv7p0n3NO2H6LcSPHbXn4Gce1Nf5r2sKmkG67/M4XRhxw/r7j\ntxu31Y4nXHZc01uP3/pGQ4/rAAD0LBcPxabTLTvuuONOg0q7rhaWrBdCaE+lWxY/Nr+t89u7\nrNe1XlKzwxaVyeceXdCyxysrXQ+TNupaaW5ubm9v/+83TycSiRz8FCGERCKRs319dHTfpe7b\nLPF7mw0r3qXuXqBb3g8IuQi7kgE7n3rqziGEtvq359cvfPqBG5PVGx+4bkX7ghdCCGPL33vy\n3NjyogdfWNK+y8rXu69eeOGFDz30UNfl2traGTNm5OCnCCFUVlZWVlbmZl8fNYlEYtCgQfme\nIk7FxcXl5eX5niJaAwcOzPcIwFokB/+WdXZ29rI1Ry+e6PLc908+f86SRKJ475N/UFOYWNLa\nFEKoK3rv4eC64sLOxtZUD+u5HBUAoN/Jadh96qqf3x/C27Men/zdyem6WyZWl4UQ6jtSFYWF\nXTdY1N5ZWJMsSK58vfv7fP3rX//85z/fdbm4uHjZsmU5GL6ioqK1tbWjoyMH+/pIKS4uLi0t\nDSHk5s/xo6a8vLyjo6OtrS3fg8SmqKiorKwshNDQ0JBOe21XH6vK9wCwxnLwb1k6na6uru5p\nay7CbsmsRx97qXTvPbbvurrO6M/vOfDGh26f+42TNwnhDy81dwwrWR5wc1s6q8cNKK5Y+Xr3\nN9xkk0022WSTrsupVKq+vj4HP0XXP5CtrU4c9rGupyOk02n3bTaUlpb6vc2GdDrdFXZtbW2p\nVCrf48RG2NF/5f14m4tXxXa0/XnqLde+3f7fY1+64/mmjtIhZSU1Ow9JFj78x7eX36x51lPL\n2jYfP6Sn9RyMCgDQf+Ui7GrHHjW2pO07F/3kb8/Pmv3v5+64+rTnWyuPmLRhIpE8ZcK4l6ee\n98jfZ82f869bzrqgbOhOBw+t6mk9B6MCAPRfidw8O6Rp3t9umnL7P+b8X2MoH77BJ/c99PBt\nN1z+8PCff3n1tJnPvtlQNHrcNsecfNiQZEHv6x+Qs4dia2trm5qa8n6KNT6lpaWVlZXpdHrR\nokX5niVCAwYMaGtra25uzvcgsUkmk13Pcamvr/dQbJ+rGzw43yPAGnpn4cIc7KWurq6nTTkK\nu+wRdv2dsMsqYZclwi6rhB39V97DLkcfKQYAQLYJOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\n5PSzYvu1wqKiKh90kzWJEHp86TYfTltDQ75HACBHnLEDAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiETRat16zpO/nv7g43PffnfbC350QMV/\n/vrm+tuNGpSlyQAAWC2Zn7FLTzn8cyN23PO7F1055SdT/9rQ1rzo3h3GDN75hJs70lmcDwCA\nDGUadq/cPuGom//w+WOu+dfchV0rlR/79rWnfvmxaw7/2rQ5WRsPAIBMZRp2l50yo2bUyY/+\n6LiNh9ct/8rkesdc+ptrPrXu7044O2vjAQCQqUyfY3fvO80bnTAp8T/rO+0/vPnU+/t2ptVV\nVlaW3wFgbVZcXJzvESJUWFjYdaG0tDSd9nwUYLkcNEnvx5xMw66uuKDh5aX/u75k1rLCkvXW\nZK6+U1S0ei8BgY+UgoICf0f6XEHB8oc7ioqKhB3QLQfH274JuzM+NfiQX3zzzxf/a7vBpd2L\njW88+o2fvjxoqykfasAPbdmyZTnYS0kO9gFZ0Nra2tzcnO8pYpNMJrtOhTY0NKRSqXyPExvH\nW/qv3DRJaWlpT5syfY7dhOk3Dg2vf37DzY869fwQwj9vvebkbx+w4Ya7vhmG/Oiu/fpmTAAA\nPoRE5g8iNLz2xHeOO3bKb57vSKdDCImC4i33POqKH1z4uRFV2ZxwFVKpVH19fQ52VDd4cA72\nAn2usaHBGbs+l0wmq6urQwj19fXO2PU5x1v6r3cWLszBXurq6nralOFDsZ2trR0ln9jxR/c/\nd3XL4tmzZjUn19loo+GVxT64AgBgbZFRmS197ZzS0tKdfjIrhFBYWjN6s202H7uBqgMAWKtk\nFGflgw9Yr6Twlakzsj0NAABrLKOwKyof+48nbhnyn1MOv2J6fbtnkwAArI0yfbuTb5zx86oR\n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\nivI9QB+oqqrK9wiw9iopKSkqiuFv+lqloGD5/4orKyvT6XR+hwHWHjlokt6POTEc7lOpVL5H\ngLVXOp32d6TPJRKJrgupVErYAd1ycLztfRcxhF1jY2MO9lKWg31AFrS1tTU3N+d7itgkk8lk\nMhlCaGpq0s19zvGW/is3TVJRUdHTJs+xAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIRFG+B+jR09OunTbz2XnLCkdvvOVBxx4+qqo43xMB\nAKzV1tIzdrOnnXXRHU9tv88R55w4qerVmWdPvrYzne+ZAADWbmtl2KXbLr/zhREHnL/v+O3G\nbbXjCZcd1/TW47e+0ZDvsQAA1mprY9i1LH5sflvnrrus13W1pGaHLSqTzz26IL9TAQCs5dbG\n59i1N70QQhhb/t6T6saWFz34wpLuq6+88sqiRYu6LhcUFIwcOTLHE0I/UlhYWFzsKap9rLCw\nsOtCUVFROu2ZIsByeT/ero1hl2ptCiHUFb13NrGuuLCzsbX76tSpUx966KGuy7W1tTNmzMjx\nhNCPlJaWlpaW5nuKaFVXV+d7BGAtMmDAgGzvorOzs5eta2PYFSTLQgj1HamK//6feFF7Z2FN\nMq9DheA/5QC54XgLa2ptDLviik1C+MNLzR3DSpaH3dyWzupx7yXwmWeeedppp3VdTqfT3Q/L\nZlVNTU1zc3Nra+uqb8rqKC0traioSKfT9fX1+Z4lQtXV1e3t7c3NzfkeJDbJZLKqqiqEUF9f\n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"
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
    "combined_data %>%\n",
    "ggplot(aes( x = Acute1_Chronic2, y = Total_FMS_score, fill = 'Acute1_Chronic2')) +\n",
    "geom_col(fill = 'red', width = 0.5) + \n",
    "labs(x = 'Acute1_Chronic2', y = \"Total_FMS_score\", Title = \"Acute and Chronic related to Total FMS score\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0d6d2cea",
   "metadata": {
    "papermill": {
     "duration": 0.046743,
     "end_time": "2022-12-13T05:54:07.550773",
     "exception": false,
     "start_time": "2022-12-13T05:54:07.504030",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The chronic injuries were more prevalent, however do not show a significant increase above the acute injuries. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "47d81767",
   "metadata": {
    "papermill": {
     "duration": 0.047896,
     "end_time": "2022-12-13T05:54:07.645467",
     "exception": false,
     "start_time": "2022-12-13T05:54:07.597571",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Question 3:\n",
    "\n",
    "\n",
    "    3. To correlate FMS scores with previous injury.\n",
    "\n",
    "The third and final question is to correlate the data of the FMS Scores to the previous injury history to acertain if any of the values were significant indeed. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "afba0a61",
   "metadata": {
    "papermill": {
     "duration": 0.047779,
     "end_time": "2022-12-13T05:54:07.740130",
     "exception": false,
     "start_time": "2022-12-13T05:54:07.692351",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "First test i will use is the chi-square to illustrate the relationship between two continuous variables the acute and chronic inujuries and the Total FMS Scores. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "fada8162",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:07.839462Z",
     "iopub.status.busy": "2022-12-13T05:54:07.838059Z",
     "iopub.status.idle": "2022-12-13T05:54:07.857617Z",
     "shell.execute_reply": "2022-12-13T05:54:07.855870Z"
    },
    "papermill": {
     "duration": 0.070684,
     "end_time": "2022-12-13T05:54:07.857787",
     "exception": false,
     "start_time": "2022-12-13T05:54:07.787103",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "   \n",
      "    4 9 10 11 12 13 14 15 16 17 18\n",
      "  1 1 0  1  1  1  0  4  3  3  2  4\n",
      "  2 0 1  0  1  4  4  5  6  1  3  4\n"
     ]
    }
   ],
   "source": [
    "q3a = data.frame(combined_data$Acute1_Chronic2,combined_data$Total_FMS_score)\n",
    "\n",
    "q3a = table(combined_data$Acute1_Chronic2,combined_data$Total_FMS_score)\n",
    "\n",
    "print(q3a)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "8a885bb9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:07.995130Z",
     "iopub.status.busy": "2022-12-13T05:54:07.993921Z",
     "iopub.status.idle": "2022-12-13T05:54:08.018426Z",
     "shell.execute_reply": "2022-12-13T05:54:08.017079Z"
    },
    "papermill": {
     "duration": 0.076861,
     "end_time": "2022-12-13T05:54:08.018589",
     "exception": false,
     "start_time": "2022-12-13T05:54:07.941728",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in chisq.test(q3a):\n",
      "“Chi-squared approximation may be incorrect”\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\n",
      "\tPearson's Chi-squared test\n",
      "\n",
      "data:  q3a\n",
      "X-squared = 9.7883, df = 10, p-value = 0.4593\n",
      "\n"
     ]
    }
   ],
   "source": [
    "print(chisq.test(q3a))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8874c8e5",
   "metadata": {
    "papermill": {
     "duration": 0.048506,
     "end_time": "2022-12-13T05:54:08.115963",
     "exception": false,
     "start_time": "2022-12-13T05:54:08.067457",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The second test used is the Pearsons R correlation."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "1d3b01af",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:08.220944Z",
     "iopub.status.busy": "2022-12-13T05:54:08.219201Z",
     "iopub.status.idle": "2022-12-13T05:54:08.237547Z",
     "shell.execute_reply": "2022-12-13T05:54:08.235781Z"
    },
    "papermill": {
     "duration": 0.073833,
     "end_time": "2022-12-13T05:54:08.237743",
     "exception": false,
     "start_time": "2022-12-13T05:54:08.163910",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "-0.0272020895604313"
      ],
      "text/latex": [
       "-0.0272020895604313"
      ],
      "text/markdown": [
       "-0.0272020895604313"
      ],
      "text/plain": [
       "[1] -0.02720209"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cor(combined_data$Acute1_Chronic2,combined_data$Total_FMS_score)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0cbb93c3",
   "metadata": {
    "papermill": {
     "duration": 0.048978,
     "end_time": "2022-12-13T05:54:08.336019",
     "exception": false,
     "start_time": "2022-12-13T05:54:08.287041",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Chi-squared test = (0.4593) A p-value greater than 0.05 means that deviation from the null hypothesis is not statistically significant,\n",
    "\n",
    "Perason's R test = (-0.027) A correlation coefficient of 0 means that there is no relationship and A correlation coefficient of –1 means that there is a perfect negative correlation, or relationship, between two variables."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "a1e1f626",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:08.438629Z",
     "iopub.status.busy": "2022-12-13T05:54:08.437318Z",
     "iopub.status.idle": "2022-12-13T05:54:08.456559Z",
     "shell.execute_reply": "2022-12-13T05:54:08.455540Z"
    },
    "papermill": {
     "duration": 0.072498,
     "end_time": "2022-12-13T05:54:08.456795",
     "exception": false,
     "start_time": "2022-12-13T05:54:08.384297",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "   \n",
      "    4 9 10 11 12 13 14 15 16 17 18\n",
      "  0 0 0  0  0  0  1  0  0  0  0  2\n",
      "  1 1 1  1  2  5  3  9  9  4  5  6\n"
     ]
    }
   ],
   "source": [
    "q3b = data.frame(combined_data$Number_of_injuries_in_past_6_months_Primary,combined_data$Total_FMS_score)\n",
    "\n",
    "q3b = table(combined_data$Number_of_injuries_in_past_6_months_Primary,combined_data$Total_FMS_score)\n",
    "\n",
    "print(q3b)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "aea96a5e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:08.562656Z",
     "iopub.status.busy": "2022-12-13T05:54:08.561470Z",
     "iopub.status.idle": "2022-12-13T05:54:08.579326Z",
     "shell.execute_reply": "2022-12-13T05:54:08.578406Z"
    },
    "papermill": {
     "duration": 0.072289,
     "end_time": "2022-12-13T05:54:08.579484",
     "exception": false,
     "start_time": "2022-12-13T05:54:08.507195",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in chisq.test(q3b):\n",
      "“Chi-squared approximation may be incorrect”\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\n",
      "\tPearson's Chi-squared test\n",
      "\n",
      "data:  q3b\n",
      "X-squared = 9.8533, df = 10, p-value = 0.4535\n",
      "\n"
     ]
    }
   ],
   "source": [
    "print(chisq.test(q3b))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "641ec0a9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-13T05:54:08.687740Z",
     "iopub.status.busy": "2022-12-13T05:54:08.686120Z",
     "iopub.status.idle": "2022-12-13T05:54:08.701746Z",
     "shell.execute_reply": "2022-12-13T05:54:08.700439Z"
    },
    "papermill": {
     "duration": 0.070969,
     "end_time": "2022-12-13T05:54:08.701897",
     "exception": false,
     "start_time": "2022-12-13T05:54:08.630928",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "-0.16983564370322"
      ],
      "text/latex": [
       "-0.16983564370322"
      ],
      "text/markdown": [
       "-0.16983564370322"
      ],
      "text/plain": [
       "[1] -0.1698356"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cor(combined_data$Number_of_injuries_in_past_6_months_Primary,combined_data$Total_FMS_score)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c96e4ca3",
   "metadata": {
    "papermill": {
     "duration": 0.050647,
     "end_time": "2022-12-13T05:54:08.802924",
     "exception": false,
     "start_time": "2022-12-13T05:54:08.752277",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Chi-squared test = (0.4535) A p-value greater than 0.05 means that deviation from the null hypothesis is not statistically significant,\n",
    "\n",
    "Perason's R test = (-0.16) A correlation coefficient of 0 means that there is no relationship and A correlation coefficient of –1 means that there is a perfect negative correlation, or relationship, between two variables."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7db0d0dc",
   "metadata": {
    "papermill": {
     "duration": 0.050772,
     "end_time": "2022-12-13T05:54:08.904307",
     "exception": false,
     "start_time": "2022-12-13T05:54:08.853535",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Conclusion:\n",
    "\n",
    "\n",
    "Introduction: \n",
    "\n",
    "The popularity of triathlon as a multi-event sport is growing, however injuries can hinder the performance and delay the training regimen of those who participate in the sport. A screening tool such as the functional movement screen (FMS) may assist with early detection of these injuries. Therefore the main purpose of this study was to determine the relationship of injury status with FMS score in a group of South African triathletes.\n",
    "Methods: Sixty triathletes with a mean age of 38.8 ± 8.5 years volunteered and consented to participate in the study. Both male (n=28) and female (n=32) participants completed a history of injury questionnaire and performed the FMS. The questionnaire consisted of establishing number, site and cause of injury for each participant. The FMS is several fundamental movement patterns, scored on an ordinal of 3 to identify functional limitations or asymmetries.\n",
    "\n",
    "Results: \n",
    "\n",
    "Forty-nine of the participants reported sustaining injuries in the past six months. Twenty-four of these participants sustained more than one injury, with 31.7% (19.5%-43.8%) being acute injuries, while 48.3% (35.3%-61.3%) were overuse (or chronic) injuries. The majority of injuries sustained took place while running (for males it was 68%, and 74% for females). The mean FMS composite score for all participants was 14.5 ± 2.7. No relationships were found between the FMS scores of triathletes and injury (chronic or acute). There were no significant statistical relationships found between the FMS score and injured versus non-injured groups.\n",
    "\n",
    "Conclusion: \n",
    "\n",
    "Previous injury of triathletes revealed a high prevalence of injury and a low overall average FMS score. However, no relationships were found between the FMS and previous injury, therefore the FMS cannot be used in isolation for determining injury incidence.\n",
    "\n",
    "Summary:\n",
    "\n",
    "Thank you for reading through this short extract from my original thesis. I hope you found it insightful and intreesting. I wanted to do this as a case study for my journey into data analytics, as it was very interesting finding the relationships or non-relationships of the varying many factors of data which was collected. Although this was a very small cohort of athletes, the findings were very interesting, as they say even if your hypothesis is proven otherwise, it is still significant. \n",
    "\n",
    "I am still in the early phases of learning about data analytics and R in general. Please feel free to comment as any help and commentary is appreciated. "
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
   "version": "3.6.3"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 13.203514,
   "end_time": "2022-12-13T05:54:09.064238",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-12-13T05:53:55.860724",
   "version": "2.3.3"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}

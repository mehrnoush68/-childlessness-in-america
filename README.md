# Understanding the Landscape of Childlessness in the U.S.
##An analysis of General Social Survey data (1972-2022)

## Abstract

We investigate U.S. childlessness trends between 1972 and 2022 using data from the General Social Survey. The research focuses on the relationship between childlessness and factors such as age, gender, education, social class, health conditions, marital status, and number of children. We find rising childlessness across demographics, potentially linked to economic factors, education, and social norms. We explore the social and economic implications of this trend and emphasize the need for further research on childlessness.

## File Structure

The repo is structured as:

-   `inputs/data` contains the data sources used in analysis including the raw data.
-   `inputs/sketches` contains the original sketches used to plan the project and data analysis.
-   `inputs/LLM` contains our ChatGPT history
-   `outputs/data` contains the cleaned dataset that was constructed.
-   `outputs/paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the
-   `scripts` contains the R scripts used to simulate, download and clean data.

## Data Extraction

We accessed raw data from the US General Social Survey on Gender and Marriage trends at [GSS Data Explorer](https://gssdataexplorer.norc.org/trend). The data is behind a sign-in. 

To find the data, we went to the Gender and Marriage trends section and clicked on Children & Working link. Then, we found different trends related to Children & Working, such as Gender & Marriage, Current Affairs, Civil Liberties, Politics, and Religion & Spirituality. 

Our focus was on the Gender and Marriage section for individuals with no children, with different ages, degrees, conditions of health, sex, and marital status breakdown.To download the data, we clicked on the export button and download the data in Excel format (.xlsx). We then saved it as a .csv format using Microsoft Excel.

## Statement on LLM usage

Statement on LLM usage: Aspects of the code were written with the help of the autocomplete tool, ChatGPT. ChatGPT was used to resolve errors, clean up the data, create tables, and generate graphs. The entire chat history is available in `inputs/LLM/usage.txt`

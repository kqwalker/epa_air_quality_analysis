# README

**Summary**

These Python notebooks were designed to be used with the [U.S. EPA Air Quality Data](https://www.epa.gov/outdoor-air-quality-data/download-daily-data) and specifically the pollutant PM2.5.

There are two different Python notebooks in this repo. One requires Docker and the other can be used in Google Colab. If you do not have experience using Docker or are not familiar with using powershell an alternative option is to use the Google Colab Python notebook.


**Outputs**

Both notebooks cleans the data, creates a sensor site summary, and a seasonal summary that users can download as a geopackage.

## Notebook that uses Docker - AirQualityCleanedData_Docker

This notebook searches for all the csv files in the location that you choose. This allows you to combine multiple years and locations of data together.

**Requirements**
    
You need to have Anaconda and Docker installed on your machine.

### Instructions

**Download the files to one location.**
* Docker file
* environment.yml file
* AirQualityCleanedData_Docker Python notebook

**Build the Docker image.**
```
docker build -t airquality .
```
**Mount the container to your local directory and run the container as following:**
```
docker run -v "${pwd}:/home/gisuser" -it -p 8888:8888 airquality
```
Copy the Jupyter Lab url and paste it into your browser.

Open `AirQualityCleanedData_Docker.ipynb` and follow the instructions.

## Notebook that uses Google Colab
This notebook uses Google Colab and does not require any software downloads or powershell use. This notebook currently limits users to uploading one csv file at a time for analysis.

Click on the link to open Python notebook in Google Colab and follow the instructions.
# README

**Summary**

These Python notebooks were designed to be used with the [U.S. EPA Air Quality Data](https://www.epa.gov/outdoor-air-quality-data/download-daily-data) and specifically the pollutant PM2.5.

There are two different Python notebooks in this repo. One requires Docker and the other can be used in Google Colab. If you do not have experience using Docker or are not familiar with using powershell an alternative option is to use the Google Colab Python notebook.


**Outputs**

Both notebooks creates 3 geopackages that can be exported:
* cleaned data
* sensor site summary
* seasonal summary with minimum, maximum, median, and mean PM 2.5 values

## Notebook that uses Docker - AirQualityCleanedData_Docker

This notebook searches for all the csv files in the location that you choose. This allows you to combine multiple years and locations of data together.

### Requirements
    
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

## Notebook that uses Google Colab - AirQualityCleanedData
This notebook uses Google Colab and does not require any software downloads or powershell use. This notebook currently limits users to uploading one csv file at a time for analysis.

* Go to the `AirQualityCleanedData.ipynb` Python notebook.
* Click on the "Open in Colab" button.
* Save a copy of the `AirQualityCleanedData.ipynb` to your own Google Drive and follow the instructions.

# Additional Notes

The data also includes the ColorVision Assist AQI color formulas that can be used to visualize the data. If you are using ArcGIS Pro this [tutorial](https://support.esri.com/en-us/knowledge-base/how-to-apply-hex-or-rgb-color-codes-from-an-attribute-f-000024233) shows how you can use RGB color codes from an attribute field for symbology.
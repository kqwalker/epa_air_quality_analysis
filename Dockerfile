FROM continuumio/miniconda3:24.7.1-0

# Copy yml files
COPY environment.yml .

# Create a Conda environment with using the yml file
RUN conda env create -f environment.yml

# Activate the Conda environment
RUN echo "conda activate airquality" >> ~/.bashrc
ENV PATH="$PATH:/opt/conda/envs/airquality/bin"

# Create a non-root user and switch to that user
 RUN useradd -m gisuser
 USER gisuser

# Set the working directory to /home/assignment
 WORKDIR /home/gisuser

# Expose the JupyterLab port
EXPOSE 8888

# Start JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0"]

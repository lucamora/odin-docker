FROM condaforge/miniforge3:4.14.0-0
LABEL maintainer="Luca Morandini <lucamorait@gmail.com>"

WORKDIR /home

# copy odin
COPY ./odin/odin odin

# install dependencies
COPY environment.yml /config/environment.yml
RUN apt update && \
    DEBIAN_FRONTEND=noninteractive \
    apt install -y ffmpeg libsm6 libxext6 && \
    conda env create -f /config/environment.yml

EXPOSE 8899

CMD conda run --no-capture-output -n odin jupyter notebook --ip 0.0.0.0 --port 8899 --no-browser --allow-root
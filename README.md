## Base Docker image for Jupyter notebook projects

### Usage

Create a `requirements.txt` file with all your required packages and place it in the root of your project.

Create a `Dockerfile` with the following:
```dockerfile
FROM imrankhan17/jupyter-base
COPY requirements.txt .
RUN pip install -r requirements.txt
```

Build the image:
```bash
docker build -t my-project .
```

Run the image:
```bash
docker run -d --rm -p 8888:8888 -v $(pwd):/home my-project
```

Go to `localhost:8888` in your web browser.

### Base image

To run the base image with no requirements and no file mounting:
```bash
docker run -d --rm -p 8888:8888 imrankhan17/jupyter-base
```

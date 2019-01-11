FROM python:latest

COPY . .

RUN pip install jupyter && pip install -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "notebook", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token=''"]

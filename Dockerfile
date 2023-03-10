FROM python:3.11
RUN pip install tensorflow 
RUN pip install transformer
RUN pip install jupyter

RUN mkdir /JupyterNotebooks
COPY JupyterNotebooks /JupyterNotebooks
COPY jupyter.py /conf/jupyter.py
COPY jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh

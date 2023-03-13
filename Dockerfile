FROM python:3.11
RUN pip install tensorflow 
RUN pip install transformers
RUN pip install jupyter

RUN mkdir /JupyterNotebooks
COPY JupyterNotebooks /JupyterNotebooks
COPY jupyter.py /conf/jupyter.py
COPY jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json

RUN ["jupyter", "notebook", "--ip=0.0.0.0", "--port=$PORT", "--NotebookApp.password=$PASSWORD", "--allow-root"]

#ENV PASSWORD=$PASSWORD

#COPY entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh
#CMD /entrypoint.sh

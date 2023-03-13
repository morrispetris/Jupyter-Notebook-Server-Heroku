#!/bin/bash

PASSWORD="$(< /etc/secrets/PASSWORD)"

#jupyter notebook --ip=0.0.0.0 --port=$PORT --NotebookApp.token='' --NotebookApp.password='' --allow-root
jupyter notebook --ip=0.0.0.0 --port=$PORT --NotebookApp.password=$PASSWORD --allow-root

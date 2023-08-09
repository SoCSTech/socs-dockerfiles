#!/bin/bash

CMD="jupyter notebook --no-browser --allow-root --port=8888 --ip 0.0.0.0"
echo 'Starting jupyter notebook server with commmand: '$CMD
eval $CMD
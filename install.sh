#!/bin/bash
mkdir -p  ~/.baccli/config
mkdir -p  ~/.baccli/data
mkdir -p ~/.bacd/config
mkdir -p ~/.bacd/data
cp  -r config/baccli/*  ~/.baccli/config/
cp -r config/bacd/* ~/.bacd/config/
chmod a+x bacd
chmod a+x baccli 
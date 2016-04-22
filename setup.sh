#!/bin/bash
if [ -f $HOME/.my-super-scripts/alias.sh ]
then
    echo "source $HOME/.my-super-scripts/alias.sh" >> $HOME/.bashrc
fi
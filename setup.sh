#!/bin/bash

# make hooks executable
chmod +x git/hooks/post-commit

cd .git/hooks/

echo "Installing Post-Commit Hook..."

ln -s -f ../../git/hooks/post-commit post-commit
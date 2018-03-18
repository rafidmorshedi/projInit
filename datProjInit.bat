REM scrip to initialise a data anlysis project

REM get the data analysis folder as an input

set name=%1

mkdir "%name%/data"
mkdir "%name%/code"
mkdir "%name%/docs"
mkdir "%name%/figs"
mkdir "%name%/outputs"

echo Project folder %name% created.

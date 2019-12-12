# Setup z
. /home/abhishek/shell/plugins/z.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# explain.sh begins
explain () {
  if [ "$#" -eq 0 ]; then
    # explain last command
    cmd=`fc -ln -1` 
    curl -Gs "https://www.mankier.com/api/explain/?cols="$(tput cols) --data-urlencode "q=$cmd"
  elif [ "$#" -eq 1 ]; then
    curl -Gs "https://www.mankier.com/api/explain/?cols="$(tput cols) --data-urlencode "q=$1"
  else
    echo "Usage"
    echo "explain                  interactive mode."
    echo "explain 'cmd -o | ...'   one quoted command to explain it."
  fi
}

# Setup Miniconda
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/abhishek/software/miniconda2/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
     \eval "$__conda_setup"
else
    if [ -f "/home/abhishek/software/miniconda2/etc/profile.d/conda.sh" ]; then
        . "/home/abhishek/software/miniconda2/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/abhishek/software/miniconda2/bin:$PATH"
    fi
 fi
unset __conda_setup
# <<< conda init <<<

conda activate dev

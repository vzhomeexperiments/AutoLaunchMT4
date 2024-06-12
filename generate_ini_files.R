# ----------------------------------------------------------------------------------------
# Script to generate ini files
# ----------------------------------------------------------------------------------------
# (C) 2021 Vladimir Zhbanko
# https://www.udemy.com/course/your-home-trading-environment/?referralCode=9EAD4CC112A476678658
# 
# IMPORTANT: make sure to 'ignore all *.ini' files from Version Control!

library(lazytrade)

#path to user repo:
path_dss <- normalizePath(Sys.getenv('PATH_DSS_Repo'), winslash = '/')

path_ini <- file.path(path_dss, 'AutoLaunchMT4')

# terminal 1
# launch MT4 terminal with parameters
# customize to suit your needs:




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
write_ini_file(mt4_Profile = "Default",
               mt4_Login = "12345678",
               mt4_Password = "password",
               mt4_Server = "BrokerServerName",
               dss_inifilepath = path_ini,
               dss_inifilename = "prod_T1.ini",
               dss_mode = "prod")

# terminal 3
# launch MT4 terminal with parameters
# customize to suit your needs:
write_ini_file(mt4_Profile = "Default",
               mt4_Login = "12345678",
               mt4_Password = "password",
               mt4_Server = "BrokerServerName",
               dss_inifilepath = path_ini,
               dss_inifilename = "prod_T3.ini",
               dss_mode = "prod")
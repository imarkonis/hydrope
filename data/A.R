where = if(.Platform[["OS.type"]] == 'unix') (Sys.info()['nodename']) else (Sys.getenv('COMPUTERNAME'))

switch(where,
       'match' = {
         .datadir = "/home/owc/RUserGroup/data/"
       },
       'desrt' = {
         .datadir = "/media/mha/Windows/OwnCloud/RUserGroup/data/"
         .workdir = '/home/hanel/KVHEM/Rusergroup/code/'
       },
       'MARKONIS-PC-01' = {
         .datadir = "C:/Users/markonis/Documents/sync/Shared/RUserGroup/data/"
         .workdir = '/Home/R/Projects/hydrope/'
       },
       'petr' = {
         .datadir = "xxxx"
         .workdir = 'xxxx'

       }

)

assign('.datadir', .datadir, envir = .GlobalEnv)
assign('.workdir', .workdir, envir = .GlobalEnv)

where = if(.Platform[["OS.type"]] == 'unix') (Sys.info()['nodename']) else (Sys.getenv('COMPUTERNAME'))

switch(where,
       'match' = {
         .datadir = "/home/owc/RUserGroup/data/"
       },
       'desrt' = {
         .datadir = "/media/mha/Windows/OwnCloud/RUserGroup/data/"
         .workdir = '/home/hanel/KVHEM/Rusergroup/code/'
       },
       'yannis' = {
         .datadir = "/media/mha/Windows/OwnCloud/RUserGroup/data/"
         .workdir = '/home/hanel/KVHEM/Rusergroup/code/'
       } ,
       'hubert' = {
         .datadir = ""
         .workdir = '/home/hubert/PRG/'
       }

)

assign('.datadir', .datadir, envir = .GlobalEnv)
assign('.workdir', .workdir, envir = .GlobalEnv)

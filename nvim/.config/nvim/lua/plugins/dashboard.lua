local logo = [[
                                            
                                            
                                            
         ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆             
          ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦          
                ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄        
                 ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄       
                ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀      
         ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄     
        ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄      
       ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄     
       ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄    
            ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆        
             ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿mikam⣿⡟⢀⣀⣤⣾⡿⠃        
                                            
                                            
    ]]

local westminster = [[
         A,|,A     A,,,A         
         |";"|     |";"|         
         T/"\T     T/"\T         
         ||#||     ||#||         
         |'='|  t  |'='|         
         |.=.| / \ |.=.|         
         |(e)|/,n,\|(o)|         
        =T==='"""""'===T=        
        ||/"\.o.=.o./"\||        
        |||H||/\T/\||H|||        
        |||H|||TTT|||H|||        
        ||/8\||TTT||/8\||        
   ...  ||/"\|;;:;;|/"\||        
;::::; |||T||;;;;;;.,:;:,.,.,.,  
;:::;;;||===| /:\ :T:Tn_n_T___n  
l42;::_||:::||;;;|||;;|;;|;;|;;  
]]

local skull = [[
                          ,--.  
                         K,   } 
                        /  `Y`  
                   {_'-K.__/    
                     `/-.__L._  
                    /  ' /`\_}  
            ____   /  ' /       
     ,-'~~~~    ~~/  ' /_       
   ,'             ``~~~%%',     
 {             Valar    %% I    
{      -     Morghulis   %  `.  
|        |   ,..__      __. Y   
|    .,_./  Y ' / ^Y   J   )|   
\           |' /   |   |   ||   
 \          L_/    . _ (_,.'(   
  \,   ,      ^^""' / |      )  
    \_  \          /,L]     /   
      '-_`-,       ` `   ./`    
         `-(_            )      
             ^^\..___,.--`      
]]

return {
  {
    "nvimdev/dashboard-nvim",
    opts = {
      config = {
        header = vim.split(skull, "\n"),
        -- stylua: ignore
        center = {
          { action = "Telescope oldfiles",                                       desc = " Recent files",    icon = " ", key = "r" },
          { action = [[lua require("lazyvim.util").telescope.config_files()()]], desc = " Config",          icon = " ", key = "c" },
          { action = 'lua require("persistence").load()',                        desc = " Restore Session", icon = " ", key = "s" },
          { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
        },
      },
    },
  },
}

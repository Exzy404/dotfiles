return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
               _                        
       \`*-.                    
        )  _`-.                 
       .  : `. .                
       : _   '  \               
       ; *` _.   `*-._          
       `-.-'          `-.       
         ;       `       `.     
         :.       .        \    
         . \  .   :   .-'   .   
         '  `+.;  ;  '      :   
         :  '  |    ;       ;-. 
         ; '   : :`-:     _.`* ;
[bug] .*' /  .*' ; .*`- +'  `*' 
      `*-*   `*-*  `*-*'

]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "c", desc = "Nvim Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "d", desc = "Dotfiles", action = ":Explore /home/exxy/dotfiles/" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "f", desc = "Buscar Archivo", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "Nuevo Archivo", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Encontrar por Texto", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Archivos Recientes", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = "󰁯 ", key = "s", desc = "Restaurar Sesion", section = "session" },
          { icon = "󰩈 ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}

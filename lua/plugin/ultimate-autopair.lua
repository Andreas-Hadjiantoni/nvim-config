local M = {
    'altermo/ultimate-autopair.nvim',
    event={'InsertEnter','CmdlineEnter'},
    branch='v0.6', --recommended as each new version will have breaking changes
    opts={
        --Config goes here
    },
}

function M.conf()
   config_internal_pairs={-- *ultimate-autopair-pairs-configure-default-pairs*
     --configure internal pairs
     --example:
     {'{','}',suround=true},
     {'(', ')',suround=true},
     {'"', '"',suround=true},
     {'\'', '\'', suround=true}
   }
end

return M

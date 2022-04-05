require('telescope').setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        promprt_prefix = ' >',
        color_devicons = true,
        file_ignore_patterns = {"node_modules", "raycast"},
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

local actions = require("telescope.actions")
require("telescope").setup {
    defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        sorting_strategy = "ascending",
        layout_config = {
            prompt_position = "top"
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true
        }
    }
}

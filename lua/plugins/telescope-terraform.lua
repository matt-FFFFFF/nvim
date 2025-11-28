return {
  {
    "cappyzawa/telescope-terraform.nvim",
    keys = {
      {
        "<leader>ft",
        function()
          require("telescope").extensions.terraform.terraform()
        end,
        desc = "Telescope Terraform",
      },
    },
  },
}

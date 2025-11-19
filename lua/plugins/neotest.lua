return {
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        ["neotest-golang"] = {
          dap_go_enabled = true,
          go_test_args = { "-v", "-race", "-count=1", "-timeout=60m" },
        },
      },
    },
  },
}

-- Add missing `async.nvim` dependency for refactoring.nvim.
-- As of commit f06ac3d, refactoring.nvim does `require("async")` which is
-- provided by lewis6991/async.nvim. The LazyVim extra does not declare this
-- dependency yet, so we add it here.
return {
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "lewis6991/async.nvim",
    },
  },
}

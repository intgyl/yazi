
th.git = th.git or {}
th.git.unknown = ui.Style():fg("grey")
th.git.modified = ui.Style():fg("yellow")
th.git.added = ui.Style():fg("green")
th.git.untracked = ui.Style():fg("magenta")
th.git.ignored = ui.Style():fg("darkgrey")
th.git.deleted = ui.Style():fg("red")
th.git.updated = ui.Style():fg("cyan")

th.git = th.git or {}
th.git.unknown_sign = " "
th.git.modified_sign = ""
th.git.added_sign = " "
th.git.untracked_sign = ""
th.git.ignored_sign = ""
th.git.deleted_sign = ""
th.git.updated_sign = ""
th.git.clean_sign = "✔"

require("full-border"):setup()
require("git"):setup()

require("yamb"):setup {
	-- Optional, the path ending with path seperator represents folder.
	bookmarks = bookmarks,
	-- Optional, recieve notification everytime you jump.
	jump_notify = true,
	-- Optional, the cli of fzf.
	cli = "fzf",
	-- Optional, a string used for randomly generating keys, where the preceding characters have higher priority.
	keys = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
	-- Optional, the path of bookmarks
	path = (ya.target_family() == "windows" and os.getenv("APPDATA") .. "\\yazi\\config\\bookmark") or
	(os.getenv("HOME") .. "/.config/yazi/bookmark"),
}

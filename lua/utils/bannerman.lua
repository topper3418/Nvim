-- Function to create a banner comment based on filetype
local function create_banner_comment(width)
	-- Default width if not specified
	width = width or 75

	-- Get the current filetype
	local filetype = vim.bo.filetype

	-- Define comment characters and banner characters based on filetype
	local comment_chars = {
		python = { banner_char = "#", prefix = "# ", suffix = "#" },
		javascript = { banner_char = "-", prefix = "// ", suffix = "//" },
		go = { banner_char = "-", prefix = "// ", suffix = "//" },
		lua = { banner_char = "-", prefix = "-- ", suffix = "--" },
		html = { banner_char = "-", prefix = "<!-- ", suffix = " -->" },
	}

	-- Get the configuration for the current filetype
	local config = comment_chars[filetype]
	if not config then
		print("Unsupported filetype: " .. filetype)
		return
	end

	-- Extract banner character, prefix, and suffix
	local banner_char = config.banner_char
	local prefix = config.prefix
	local suffix = config.suffix

	-- Get the banner text from the command arguments
	local args = vim.fn.input("Banner text: ")
	if args == "" then
		print("No banner text provided")
		return
	end

	-- Format the banner text (uppercase)
	local banner_text = string.upper(args)
	local text_length = #banner_text

	-- Calculate the total padding needed
	local total_padding = width - #prefix - text_length - #suffix
	if total_padding < 0 then
		print("Text too long for specified width")
		return
	end

	-- Calculate left and right padding for centering
	local padding_left = math.floor(total_padding / 2)
	local padding_right = total_padding - padding_left

	-- Create the top and bottom banner lines
	local line = string.rep(banner_char, width)

	-- Create the middle line with centered text and proper comment symbols
	local middle_line = prefix
		.. string.rep(" ", padding_left)
		.. banner_text
		.. string.rep(" ", padding_right)
		.. suffix

	-- Insert the banner at the cursor position
	local banner = { line, middle_line, line }
	vim.api.nvim_buf_set_lines(0, vim.fn.line("."), vim.fn.line("."), false, banner)
end

-- Create a command to call the function
vim.api.nvim_create_user_command("Banner", function(opts)
	local width = 75 -- Default width
	if opts.args ~= "" then
		width = tonumber(opts.args) or width
	end
	create_banner_comment(width)
end, { nargs = "?" })

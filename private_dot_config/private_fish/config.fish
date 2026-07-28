if status is-interactive
# Commands to run in interactive sessions can go here
end

# 个人脚本目录
fish_add_path $HOME/scripts
brew shellenv fish | source

# xlings
test -f "/Users/heptazero/.xlings/config/shell/xlings-profile.fish"; and source "/Users/heptazero/.xlings/config/shell/xlings-profile.fish"

function cdf
    set directories ~/Work ~/dev ~/work

    set existing_directories

    for dir in $directories
        if test -d $dir
            set existing_directories $existing_directories $dir
        end
    end

    # Check if we found any existing directories
    if set -q existing_directories[1]
        set selected_dir (find $existing_directories -maxdepth 1 -mindepth 1 -type d | fzf --prompt="Select a directory: ")
        
        # Change to the selected directory if it's not empty
        if set -q selected_dir[1]
            cd $selected_dir
        end
    end
end

#!/usr/bin/env bash

# soar-list-enhanced: A script to list soar packages with descriptions in a scrollable view.

# Function to display help
show_help() {
    echo "Usage: $(basename "$0") [options]"
    echo ""
    echo "Options:"
    echo "  -f, --full     Show full info boxes for each package (slower, but detailed)"
    echo "  -s, --simple   Show one-line name and description (default, very fast)"
    echo "  -h, --help     Show this help message"
}

# Default mode
MODE="simple"

# Parse arguments
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -f|--full) MODE="full"; shift ;;
        -s|--simple) MODE="simple"; shift ;;
        -h|--help) show_help; exit 0 ;;
        *) echo "Unknown option: $1"; show_help; exit 1 ;;
    esac
done

if [[ "$MODE" == "full" ]]; then
    # Box after box mode: Gets detailed info for every package.
    # We use jq to extract the full package identifier correctly.
    if ! command -v jq &> /dev/null; then
        echo "Error: 'jq' is required for full mode but not installed."
        exit 1
    fi
    
    # Inform the user as it might take a few seconds
    echo "Gathering full package details... (Ctrl+C to cancel)" >&2
    
    soar list --json --no-progress 2>/dev/null | jq -r 'select(.pkg_name != null) | .pkg_name + "#" + .pkg_id + ":" + .repo_name' | while read -r pkg; do
        soar Q "$pkg"
    done | less -R
else
    # Fast mode: Uses the built-in search functionality which includes descriptions.
    # We set a high limit to ensure all packages are listed.
    soar search "" --limit 10000 --no-progress 2>/dev/null | less -R
fi

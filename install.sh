#!/bin/bash

function install_language() {
	LANGUAGE_FOLDER=~/.local/share/gtksourceview-4/language-specs
	mkdir -p $LANGUAGE_FOLDER && cp ./languages/$2 $LANGUAGE_FOLDER
    echo -e "Installed language: \033[36m$1\033[0m"
}

PS3='Please enter your choice: '
options=("Vala" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Vala")
        	install_language "Vala" "vala.lang";
            ;;
        "Quit")
            break
            ;;
        *) echo "Invalid option $REPLY";;
    esac
done

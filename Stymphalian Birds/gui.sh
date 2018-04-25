#i/bin/bash

usage()
{
    echo "Usage ./gui.sh -f [Filetype] -n [Name] -d [Directory]"
    echo "Exceptable filetypes are C as of now"
}

verify_integrity()
{
    if [ "$NAME" == "" ]; then
        echo "Forgot a name"
        exit 0
    elif [ "$DIRECTORY" == "" ]; then
        echo "Forgot a Name/Directory"
        exit 0
    else
        build_file
        build_folders
    fi
}

copy_libft()
{
    read -p "Specificy libtft location: " LIBFT
    cp -R ~/$LIBFT/ "$DIRECTORY/$NAME/libft"
}

create_directory()
{
    mkdir -p $DIRECTORY/$NAME
    read -p "Do you want to include your libft (y/n): " yn
    case $yn in
        [Yy]* ) copy_libft ;;
        [Nn]* ) break ;;
    esac
}

make_gitignore()
{
    touch $DIRECTORY/$NAME/.gitignore
    echo "*.DS_Store" >> $DIRECTORY/.gitignore
    echo ".AppleDouble" >> $DIRECTORY/.gitignore
    echo ".LSOverride" >> $DIRECTORY/.gitignore
    echo "a.out" >> $DIRECTORY/.gitignore
    echo "._*" >> $DIRECTORY/.gitignore
    echo ".DocumentRevisions-V100" >> $DIRECTORY/.gitignore
    echo ".fseventsd" >> $DIRECTORY/.gitignore
    echo ".Spotlight-V100" >> $DIRECTORY/.gitignore
    echo ".TemporaryItems" >> $DIRECTORY/.gitignore
    echo ".Trashes" >> $DIRECTORY/.gitignore
    echo ".VolumeIcon.icns" >> $DIRECTORY/.gitignore
    echo ".com.apple.timemachine.donotpresent" >> $DIRECTORY/.gitignore
    echo ".AppleDB" >> $DIRECTORY/.gitignore
    echo ".AppleDesktop" >> $DIRECTORY/.gitignore
    echo ".apdisk" >> $DIRECTORY/.gitignore
}

build_folders()
{
    touch $DIRECTORY/$NAME/Makefile
    mkdir $DIRECTORY/$NAME/srcs
    mkdir $DIRECTORY/$NAME/includes
    touch $DIRECTORY/$NAME/Author
    read -p "Do you want a .gitignore? (y/n): " yn
    case $yn in
        [Yy]* ) make_gitignore ;;
        [Nn]* ) continue ;;
    esac
    read -p "Username for author file: " AUTHOR_NAME
    echo "$AUTHOR_NAME" >> $DIRECTORY/$NAME/Author
}


build_file()
{
    if [ -d "$DIRECTORY" ]; then
        mkdir $DIRECTORY/$NAME
        read -p "Do you want to include your libft? (y/n): " yn
        case $yn in
            [Yy]* ) copy_libft ;;
            [Nn]* ) break ;;
        esac
    else
        read -p "Do you want to create a directory? (y/n): " yn
        case $yn in
            [Yy]* ) create_directory ;;
            [Nn]* ) echo "Then specify valid directory" ;;
        esac
    fi
}

while getopts ":f:n:d:h" opt;
    do
        case $opt in
            f ) FILE=$OPTARG ;;
            n ) NAME=$OPTARG ;;
            d ) DIRECTORY=$OPTARG ;;
        esac
    done

if [[ $# -eq 0 ]]; then
    usage
    exit 0
fi

if [ "$FILE" != "C" ]; then
    echo "Wrong filetype."
else
    verify_integrity
fi

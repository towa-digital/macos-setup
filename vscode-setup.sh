#!/bin/bash

declare -a vscodeExtensions=( formulahendry.auto-close-tag
    formulahendry.auto-rename-tag
    aaron-bond.better-comments
    mikestead.dotenv
    eamodio.gitlens
    onecentlin.laravel-blade
    yzhang.markdown-all-in-one
    felixfbecker.php-debug
    neilbrayfield.php-docblocker
    felixfbecker.php-intellisense
    syler.sass-indented
    whatwedo.twig
    octref.vetur
    ecmel.vscode-html-css
    wix.vscode-import-cost
    bajdzis.vscode-twig-pack
    ms-azuretools.vscode-docker
    wordpresstoolbox.wordpress-toolbox
    )

if command -v code &> /dev/null; then
    for i in "${vscodeExtensions[@]}"
    do
        code --install-extension $i
    done
fi
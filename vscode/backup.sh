cp $HOME/Library/Application\ Support/Code/User/settings.json $PWD/settings.json
cp $HOME/Library/Application\ Support/Code/User/keybindings.json $PWD/keybindings.json

git add $PWD/settings.json
git add $PWD/keybindings.json

git commit -m "update VSCode settings and keybindings"
git push


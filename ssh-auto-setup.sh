#!/bin/bash

echo "What's your Github email?"
read EMAIL

echo "Press Enter when you see - Enter file to save the key"

echo "Also, press Enter when you see - Enter passphrase"

echo "Likewise, press Enter why you see - Enter same passphrase again"

ssh-keygen -t ed25519 -C "$EMAIL"

eval "$(ssh-agent -s)"

echo "Did you see something like this - Agent pid 12345? If yes, you're on track"

ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub

echo "That's your key. Copy the entire output - all of it."

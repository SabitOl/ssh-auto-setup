The script generates SSH key needed to use SSH.

Run the script, follow the prompts, and complete your SSH setup with the below:

Add the key to GitHub

- Go to GitHub.com
- Click your profile picture (top right) → Settings
- Click SSH and GPG keys (left sidebar)
- Click New SSH key (green button)
- Title: Give it a name like "My Laptop"
- Key: Paste the key you copied
- Click Add SSH key

To test if the connection works, run:

```
ssh -T git@github.com


You might see a warning about authenticity - type `yes` and press Enter.

You should see:

Hi SabitOl! You've successfully authenticated...
```

- Change your remote to use SSH:

```
git remote set-url origin git@github.com:SabitOl/yourrepo.git
```

- Verify it chenged:

```
git remote -v
```

- You should now see git@github.com:... instead of https://...

- Push:

```
git push -u origin main
```
NB: You might get an error here if your git is still using the old "master" - git push -u origin master. If getting error, change "main" to "master". Or run git branch -M main; then run git push -u origin main.

No password needed.

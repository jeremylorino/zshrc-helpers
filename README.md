# Extras

## `.zshrc` additions

Add the following lines to your `.zshrc` file to include all scripts in the `~/scripts` directory.

```.zshrc
# Include all custom scripts
for f in ~/scripts/*; do
    source $f
done

# Include all custom bash-completion scripts
for f in ~/scripts/bash-completion/*/*; do
    source $f
done
```

### `scripts/confirm.sh`

Allows you to confirm a command before running it. This is useful for commands that can be destructive.

```sh
$> are you sure? [y/N]: 
```

### `scripts/bash-completion/orca`

Enables bash-completion for the `orca` command.

```sh
$> orca <tab>
dashboard  debug  dev  down  exec  fix  git  help  list  logs  npm  ps  restart  running  stacks  start  stop  up
$> orca start <tab>
cobra         deal-service  hippo         loanapp       local         panda         portal        scorpion      vendor-sim    wasp  
credit-app    falcon        lioness       loanapp-api   octopus       penguin       products      smartcow      vulture       wombat
$> orca start scorpion
```

## git aliases

Add the following lines to your `.gitconfig` file to include the following aliases.

```properties
[alias]
	# remove all local branches that no longer have a remote branch
	prune-branches = !sh -c "~/scripts/git-aliases/git-pruneBranches"
	co = checkout
	fp = !git fetch -p && git pull && :
	# list the default base branch for the current repository
	l-base = !git remote show origin | sed -n "/HEAD\\ branch/s/.*:\\ //p"
	# checkout the default base branch for the current repository
	co-base = !git co $(git l-base)
	# merge the default base branch into the current branch
	base = !git merge $(git l-base)
```
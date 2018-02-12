#!/usr/bin/env bash
# Update files on the server hosting the webpage.

# Usage:
#	$ cd path/to/git/repo
#	$ ./deploy.sh REMOTE_USERNAME

USER="$1"
GROUP='grevengroup'
HOST='ssh.physics.umn.edu'
DIR='/home/webusers/grevengroup/public_html'

if [ -z "$USER" ]; then
	echo "Usage:"
	echo "	$ cd path/to/git/repo"
	echo "	$ ./deploy.sh REMOTE_USERNAME"
	exit 1
fi

# get current branch name
ORIGINAL_BRANCH="$(git symbolic-ref --short -q HEAD)"

# switch to production
git checkout production

# rsync
printf "Synchronizing files with webserver.\n"
rsync --verbose --verbose --progress --rsh='ssh' --recursive --update \
	--delete-after --delete-excluded \
	--perms --chmod='ug=rw,o=r,Dugo+x' \
	--exclude='/.git/' --exclude='/.gitattributes' --exclude='/deploy.sh' \
	--exclude='/DEVELOPMENT.md' --exclude='README.md' --exclude='readme.txt' \
	--exclude='/skel.html' --exclude='/.*' \
	. $USER@$HOST:$DIR

# fix perms
printf "Fixing file permissions.\n"
# the rsync on the server is old and doesn't understand --chown or --groupmap
ssh $USER@$HOST "chown -R :$GROUP $DIR/*"

# switch back to branch
git checkout "$ORIGINAL_BRANCH"

printf "Webserver synchronized to production branch.\n"
printf "Have you pushed to origin lately?\n"

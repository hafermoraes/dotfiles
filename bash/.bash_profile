# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# setting TERM to xterm-256color and circumvent gnu screen crash
# https://savannah.gnu.org/bugs/?58132
export TERM=xterm-256color

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Homebrew Tools

```text
    (___)
    (ovo)
    /vvv\
    |vvv|
====w=w===
```

A collection of small command-line utilities for macOS, distributed through a custom Homebrew tap.

## Installation

Add the tap:

```sh
brew tap ianto-cannon/tools
```

Install individual utilities:

```sh
brew install trash
brew install clean-clipboard
brew install make-sitemap
brew install coffee
brew install cake
brew install owl
brew install update-formulae
```

Alternatively, install a utility directly:

```sh
brew install ianto-cannon/tools/trash
```

## Utilities

### `trash`

Move files and directories to the macOS Trash using Finder, rather than permanently deleting them.

```sh
trash file.txt
trash file1.txt file2.txt
trash ~/Downloads/old-folder
```

Accepts multiple file and directory arguments.

### `clean-clipboard`

Mask potentially sensitive information in the macOS clipboard. Useful before pasting email threads or other text into LLMs.

```sh
clean-clipboard
```

Reads clipboard contents using `pbpaste`, applies pattern-based masking, and writes the result back using `pbcopy`.

It looks for common patterns such as email addresses, URLs, domain names, long numbers, and text beginning with `pass`.

The matching is heuristic, so it will not identify every possible sensitive value. Check the result before sharing it.

### `make-sitemap`

Generate an XML sitemap by recursively scanning a website directory for HTML and PDF files.

```sh
make-sitemap example.com
```

The sitemap is written to `sitemap.xml` in the directory being scanned.

**Usage:**

```text
make-sitemap [-e EXT] BASE-URL [DIRECTORY]
```

Arguments:

- `BASE-URL`: Website base URL. A domain without a scheme is treated as HTTPS.
- `DIRECTORY`: Directory to scan. Defaults to the current directory.

Options:

- `-e EXT`: File extensions to include, separated by commas or spaces. Defaults to `html htm pdf`.
- `-h`: Display help.

**Examples:**

Scan the current directory:

```sh
make-sitemap example.com
```

Scan only HTML files:

```sh
make-sitemap -e html,htm example.com
```

Scan a documentation directory for PDFs:

```sh
make-sitemap -e pdf https://example.com/docs docs
```

**Features:**

- Recursively scans directories.
- Skips hidden files and directories.
- Includes HTML, HTM and PDF files by default.
- Converts `index.html` and `index.htm` paths to their parent directory URLs.
- Uses the last Git commit date for each file's `lastmod` value when available; otherwise, uses the file modification date.
- Replaces spaces in URLs with `%20`.
- Escapes XML special characters.
- Generates a sitemap following the XML Sitemap Protocol.
- Writes the output atomically.

### `coffee`

Print a coffee brewer in ASCII art.

```sh
coffee
```

### `cake`

Print a cake in ASCII art.

```sh
cake
```

### `owl`

Print an owl in ASCII art.

```sh
owl
```

### `update-formulae`

Update the Homebrew formulae when utility scripts change.

Run from the root of a local clone of this repository:

```sh
update-formulae YOUR-GITHUB-USERNAME-HERE
```

The argument is the GitHub username or organisation owning the repository.

**What it does:**

- Checks the SHA256 checksum of every file in `bin/`.
- Increments a utility's patch version only when its executable changes.
- Creates a formula if a utility in `bin/` does not yet have one.
- Updates the download URL and checksum for changed utilities.
- Uses a shared global Git tag, starting at `global1`.
- Increments the global tag once whenever any utility changes.
- Leaves unchanged formula versions, checksums and URLs untouched.

For example, if `trash` and `owl` change, their formulae are updated to reference `global2`. Other utilities can continue referencing `global1`.

**After running the script:**

Review the changes:

```sh
git diff
```

Commit:

```sh
git add bin/ Formula/
git commit -m "Update utilities"
```

Create the global tag printed by the script, for example:

```sh
git tag global2
```

Push the commit and tag:

```sh
git push origin main --tags
```

The script prints these instructions but does not execute the commit, tag creation or push automatically.

## Updating installed utilities

Update Homebrew's package information:

```sh
brew update
```

Upgrade all installed utilities:

```sh
brew upgrade
```

Upgrade one utility:

```sh
brew upgrade trash
```

## Uninstallation

Uninstall an individual utility:

```sh
brew uninstall trash
```

Remove the tap when you no longer need it:

```sh
brew untap ianto-cannon/tools
```

## Requirements

- macOS
- Homebrew
- Bash and standard command-line utilities
- Git (required by `update-formulae`; optional for `make-sitemap`)
- `shasum` (used by `update-formulae`)

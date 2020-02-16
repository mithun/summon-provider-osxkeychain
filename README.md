# summon-provider-osxkeychain

[Summon](https://cyberark.github.io/summon) provider to manage secrets in macOS Keychain.

## Installation

Install using [Homebrew](https://brew.sh/):

``` bash
# Install summon
brew install cyberark/tools/summon

# Install this provider
brew install mithun/tap/summon-provider-osxkeychain
```

Manual Install:

``` bash
# Download release tarball
cd /tmp
curl -LOSs --fail
  -- https://github.com/mithun/summon-provider-osxkeychain/archive/v0.2.0.tar.gz

# Install
cd ./summon-provider-osxkeychain-0.2.0
make install
```

## Configuration

Configure `summon` to use the [provider](https://cyberark.github.io/summon/#providers) `summon-provider-osxkeychain-read`.

Using CLI arguments:

``` bash
summon --provider "$(brew --prefix)/bin/summon-provider-osxkeychain-read" ...
```

Using the `SUMMON_PROVIDER` environment variable

``` bash
# Configure in ~/.bashrc
echo "export SUMMON_PROVIDER=$(brew --prefix)/bin/summon-provider-osxkeychain-read" >> ~/.bashrc
```

## Usage

### `summon-provider-osxkeychain-create`

Use this to securely store a secret in the macOS Keychain. For example:

``` bash
summon-provider-osxkeychain-create my/github/token
```

### `summon-provider-osxkeychain-update`

Use this to update an existing secret in the macOS Keychain. For example:

``` bash
summon-provider-osxkeychain-update my/github/token
```

### `summon-provider-osxkeychain-delete`

Use this to delete an existing secret in the macOS Keychain. For example:

``` bash
summon-provider-osxkeychain-delete my/github/token
```

-----

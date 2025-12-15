# the_fuck.fish

> Automatically correct the last command using [thefuck](https://github.com/nvbn/thefuck).

## Installation

```fish
fisher install edouard-lopez/the_fuck.fish
```

## Usage

This plugin automatically triggers when a command fails (returns a non-zero exit status). It attempts to correct the command using [`thefuck`](https://github.com/nvbn/thefuck).

### Disabling it

The plugin is enabled by default on new shell. You can disable with:

```fish
set --global THE_FUCK_ENABLED 0
```

### Enbling it

You can enable with:

```fish
set --global THE_FUCK_ENABLED 1
```

## Dependencies

- [thefuck](https://github.com/nvbn/thefuck) must be installed and in your PATH.

## [MIT](LICENSE) License

# Vite, Elm, Tailwind CSS, and daisyUI

Opinionated template for building [Elm](https://elm-lang.org/) web applications
using [Vite](https://vitejs.dev/), [Tailwind CSS](https://tailwindcss.com/), and
[daisyUI](https://daisyui.com/).

- To learn more about Elm, check out
  [Elm's official homepage](https://elm-lang.org).
- For more information about Vite JS, check out
  [Vite JS's official homepage](https://vitejs.dev).
- For more information about Tailwind CSS, check out
  [Tailwind CSS's official homepage](https://tailwindcss.com).
- For more information about daisyUI, check out
  [daisyUI's official homepage](https://daisyui.com).

## Tooling

### Elm

Elm Tooling
[has done its course](https://github.com/elm-tooling/elm-tooling-cli/issues/95).
Nowadays, Elm, and its tools should be installed by the user:

- [Elm](https://guide.elm-lang.org/install/elm.html): install Elm system wide.
- [elm-json](https://github.com/lydell/elm-json): install, upgrade, and
  uninstall Elm dependencies.
- [elm-format](https://github.com/avh4/elm-format): format Elm source code
  according to the official
  [Elm Style Guide](https://elm-lang.org/docs/style-guide).
- [elm-test-rs](https://github.com/mpizenberg/elm-test-rs): write
  [unit](https://en.wikipedia.org/wiki/Unit_testing) and
  [fuzz](https://en.wikipedia.org/wiki/Fuzzing) tests for Elm code.
- [elm-review](https://github.com/jfmengels/node-elm-review): analyze Elm
  projects and find mistakes before your users find them.

### Vite

- [vite-plugin-elm-watch](https://github.com/ryan-haskell/vite-plugin-elm-watch):
  compile an Elm module with hot-module reload.
- [vite-plugin-webfont-dl](https://github.com/feat-agency/vite-plugin-webfont-dl):
  inject [Bunny Fonts](https://fonts.bunny.net/) to improve website's
  performance.
- [vite-plugin-compression](https://github.com/vbenjs/vite-plugin-compression):
  compress resources to improve website's performance.
- [vite-plugin-imagemin](https://github.com/vbenjs/vite-plugin-imagemin):
  compress image assets to improve website's performance.

#### Packages

Shortlist of Elm packages that could be beneficial. Included as suggestions:

- [tesk9/accessible-html](https://package.elm-lang.org/packages/tesk9/accessible-html/latest/):
  makes writing accessible websites easier.
- [lattyware/elm-fontawesome](https://package.elm-lang.org/packages/lattyware/elm-fontawesome/latest/):
  native [Font Awesome](https://fontawesome.com/) integration and support.

To remove them feel free:

1. not to use them
2. run `npm run review`

### Tailwind CSS

This templates uses TailwindCSS 4 with the `vite`, `typography`, and `daisyUI`
plugins.

#### daisyUI

_"The most popular, free, and open-source Tailwind CSS component library"_.

[daisyUI](https://daisyui.com/): a Tailwind CSS classes component library,
aiming to work on all frameworks. The CSS nature of daisyUI makes Elm
integration possible and a breeze to use. Examples included:

- The whole page is a daisyUI [hero](https://daisyui.com/components/hero/)
  section
- The counter buttons are daisyUI
  [buttons](https://daisyui.com/components/button/)

### Node

- [fnm](https://github.com/Schniz/fnm): easily and consistently manage Node.
- `.nvimrc` set to use latest `lts/krypton`.

#### Available Commands

| script  | action                      |
| ------- | --------------------------- |
| dev     | vite                        |
| build   | vite build                  |
| preview | npm run build; vite preview |
| review  | elm-review --fix-all        |
| test    | elm-test-rs                 |

### VS Code

- This template provides both
  [recommended extensions](https://code.visualstudio.com/docs/editor/extension-marketplace#_recommended-extensions)
  and
  [workspace settings](https://code.visualstudio.com/docs/getstarted/settings#_workspace-settings).
- [VS Code](https://code.visualstudio.com/) will prompt you to install them when
  you open the workspace for the first time.
- Max Hoffmann amazing
  [Tailwind CSS in Elm for VSCode](https://max.hn/thoughts/using-tailwind-css-in-elm-and-vscode)
  changes are implemented.

## Contributing

Contributions and constructive criticism are welcome. If you think I'm overdoing
it, feel free to discuss. I strive to improve the template as much as possible.

## Acknowledgements

This templated was inspired by
[Lindsay K Wardell](https://github.com/lindsaykwardell/vite-elm-template)'s
template.

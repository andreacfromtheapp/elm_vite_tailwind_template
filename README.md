# Vite, Elm, and Tailwind CSS, Template

Opinionated template for building [Elm](https://elm-lang.org/) applications using [Vite JS](https://vitejs.dev/), [Tailwind CSS](https://tailwindcss.com/), and [Daisy UI](https://daisyui.com/).

- To learn more about Elm, check out [Elm's official homepage](https://elm-lang.org/).
- For more information about Vite JS, check out [Vite JS's official documentation](https://vitejs.dev/).
- For more information about Tailwind CSS, check out [Tailwind CSS's official documentation](https://tailwindcss.com/docs/installation).
- For more information about Daisy UI, check out [Daisy UI's official documentation](https://daisyui.com/docs/use/).

## Tooling

### Vite JS

- [vite-plugin-elm](https://github.com/hmsk/vite-plugin-elm): compile an Elm module with hot-module reload.
- [vite-plugin-webfont-dl](https://github.com/feat-agency/vite-plugin-webfont-dl): inject [Google Fonts](https://fonts.google.com/) to improve website's performance.
- [vite-plugin-compression](https://github.com/vbenjs/vite-plugin-compression): compress resources to improve website's performance.
- [vite-plugin-imagemin](https://github.com/vbenjs/vite-plugin-imagemin): compress image assets to improve website's performance.
- [vite-plugin-csp](https://github.com/josh-hemphill/vite-plugin-csp/): create typed [CSP ```<meta>``` policies](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) and validated interdependant headers.

### Elm

- [elm-tooling](https://elm-tooling.github.io/elm-tooling-cli/): command line program that manages your Elm tools.
- [elm-format](https://github.com/avh4/elm-format): format Elm source code according to the official [Elm Style Guide](https://elm-lang.org/docs/style-guide).
- [elm-test](https://package.elm-lang.org/packages/elm-explorations/test/latest/): write [unit](https://en.wikipedia.org/wiki/Unit_testing) and [fuzz](https://en.wikipedia.org/wiki/Fuzzing) tests for Elm code.
- [elm-review](https://package.elm-lang.org/packages/jfmengels/elm-review/latest/): analyze Elm projects and find mistakes before your users find them.

#### Packages

Shortlist of Elm packages that could be beneficial. Included as suggestions:

- [hmsk/elm-vite-plugin-helper](https://package.elm-lang.org/packages/hmsk/elm-vite-plugin-helper/latest): provides helpers for using vite-plugin-elm.
- [tesk9/accessible-html](https://package.elm-lang.org/packages/tesk9/accessible-html/latest/): makes writing accessible websites easier.
- [lattyware/elm-fontawesome](https://package.elm-lang.org/packages/lattyware/elm-fontawesome/latest/): native [Font Awesome](https://fontawesome.com/) integration and support.

To remove them: 1) feel free to not use them, and 2) run ```npm run review```.

### Tailwind CSS

The [official plugins](https://tailwindcss.com/docs/plugins#official-plugins) are installed by default:

- [@tailwindcss/typography](https://tailwindcss.com/docs/typography-plugin)
- [@tailwindcss/forms](https://github.com/tailwindlabs/tailwindcss-forms)
- [@tailwindcss/line-clamp](https://github.com/tailwindlabs/tailwindcss-line-clamp)
- [@tailwindcss/aspect-ratio](https://github.com/tailwindlabs/tailwindcss-aspect-ratio)

#### Daisy UI

*"The most popular, free and open-source Tailwind CSS component library"*.

[Daisy UI](https://daisyui.com/) is a pure Tailwind CSS classes component library, aiming to work on all frameworks. This makes Elm integration possible and very easy to to use. Examples included:

- the whole page is a Daisy UI [hero](https://daisyui.com/components/hero/) section
- the counter buttons are Daisy UI [buttons](https://daisyui.com/components/button/)
- basic Daisy UI 'light' and 'dark' [theming](https://daisyui.com/docs/themes/)/[coloring](https://daisyui.com/docs/colors/) (via Elm ports)

### Node

- [nvm](https://github.com/nvm-sh/nvm): easily and consistently manage Node. ```.nvimrc``` provided.

### VS Code

- This template provides both [recommended extensions](https://code.visualstudio.com/docs/editor/extension-marketplace#_recommended-extensions) and [workspace settings](https://code.visualstudio.com/docs/getstarted/settings#_workspace-settings).
- [VS Code](https://code.visualstudio.com/) will prompt you to install them when you open the workspace for the first time.

#### Lint/Format

- [Elm Format](https://github.com/avh4/elm-format)
- [StandardJS](https://standardjs.com/)
- [Stylelint](https://stylelint.io/)
- [Prettier](https://prettier.io/)
- [Markdown Lint](https://github.com/DavidAnson/markdownlint)
- [Red Hat YAML](https://github.com/redhat-developer/vscode-yaml)

#### Elm + Tailwind CSS

- [@max_hoffmann](https://twitter.com/max_hoffmann) amazing [Tailwind CSS in Elm for VSCode](https://max.hn/thoughts/using-tailwind-css-in-elm-and-vscode) changes are implemented.

#### Git, GitLab, GitHub

For consistent ```git``` management, the following extensions and their settings are provided:

- [Git Lens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [GitLab Workflow](https://marketplace.visualstudio.com/items?itemName=GitLab.gitlab-workflow)
- [GitHub PRs and Issues](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github)

## Get Started

### Install tiged

To clone this repository, devoid of any ```.git``` infromation, you can either use ```npx degit``` or install ```tiged``` locally and run ```degit``` without the ```npx``` command in front of it.

[Tiged is a fork that addresses a number of issues](https://github.com/tiged/tiged#why-fork=), and should be preferred. YMMV.

To install it, run:

```bash
npm uninstall -g degit
npm install -g tiged
```

Most likely, ```npx degit``` would invoke ```degit```. A locally installed binary makes sure you are running ```tiged``` instead.

### Peruse the template

1. Clone the template:
   1. using npx: ```npx degit gacallea/elm_vite_tailwind_template my-elm-app```
   2. local binary: ```degit gacallea/elm_vite_tailwind_template my-elm-app```
2. Enter the project: ```cd my-elm-app```
3. Install dependencies: ```npm install```
4. Start developing: ```npm run dev```

### Available Commands

| script      | action                              |
| ----------- | ----------------------------------- |
| postinstall | elm-tooling install                 |
| dev         | vite                                |
| prebuild    | elm-tooling install                 |
| build       | vite build                          |
| preview     | vite preview                        |
| standard    | standard --fix src/**/*.js          |
| markdown    | standard-markdown --fix src/**/*.md |
| review      | elm-review --fix-all                |
| test        | elm-test-rs                         |

## Acknowledgements

This templated was inspired by [Lindsay K Wardell](https://github.com/lindsaykwardell/vite-elm-template)'s template.

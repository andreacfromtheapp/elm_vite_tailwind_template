# Vite, Elm, and Tailwind CSS, Template

A very opinionated default template for building [Elm](https://elm-lang.org/) applications using [Tailwind CSS](https://tailwindcss.com/) and [Vite](https://vitejs.dev/).

- To learn more about Elm, check out [Elm's official homepage](https://elm-lang.org/).
- For more information about Vite, check out [Vite's official documentation.](https://vitejs.dev/)
- For more information about Tailwind CSS, check out [Tailwind's official documentation](https://tailwindcss.com/docs/installation)

## Tooling

### Vite

- [vite-plugin-elm](https://github.com/hmsk/vite-plugin-elm): compile an Elm module with hot-module reload.
- [vite-plugin-webfont-dl](https://github.com/feat-agency/vite-plugin-webfont-dl): inject Google Fonts to improve website's performance.
- [vite-plugin-favicon](https://github.com/josh-hemphill/vite-plugin-favicon): automatically generate your favicons.
- [vite-imagetools](https://github.com/JonasKruckenberg/imagetools): load and transform images using url query parameters.
- [vite-plugin-compress](https://github.com/alloc/vite-plugin-compress): compress your bundle and assets.

### Elm

- [elm-tooling](https://elm-tooling.github.io/elm-tooling-cli/): command line program that manages your Elm tools.
- [elm-format](https://github.com/avh4/elm-format): format Elm source code according to the official [Elm Style Guide](https://elm-lang.org/docs/style-guide).
- [elm-test](https://package.elm-lang.org/packages/elm-explorations/test/latest/): write unit and fuzz tests for Elm code.
- [elm-review](https://package.elm-lang.org/packages/jfmengels/elm-review/latest/): analyze Elm projects, to help find mistakes before your users find them.

### Node

- [nvm](https://github.com/nvm-sh/nvm): easily and consistently manage Node. ```.nvimrc``` provided.

### VS Code

- This template provides both [recommended extensions](https://code.visualstudio.com/docs/editor/extension-marketplace#_recommended-extensions) and [workspace settings](https://code.visualstudio.com/docs/getstarted/settings#_workspace-settings).
- [VS Code](https://code.visualstudio.com/) will prompt you to install them when you open the workspace for the first time.

#### Lint/Format

- [Elm Format](https://github.com/avh4/elm-format)
- [Standard JS](https://standardjs.com/)
- [Stylelint](https://stylelint.io/)
- [Prettier](https://prettier.io/)
- [MarkdownLint](https://github.com/DavidAnson/markdownlint)
- [Red Hat YAML](https://github.com/redhat-developer/vscode-yaml)

#### Elm + Tailwind CSS

- [@max_hoffmann](https://twitter.com/max_hoffmann) amazing [Tailwind CSS in Elm for VSCode](https://max.hn/thoughts/using-tailwind-css-in-elm-and-vscode) changes are implemented.

#### Git, GitLab, GitHub

For consistent ```git``` management, the following extensions and their settings are provided:

- [Git Lens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [GitLab Workflow](https://marketplace.visualstudio.com/items?itemName=GitLab.gitlab-workflow)
- [GitHub PRs and Issues](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github)

## Get Started

1. Clone the template: ```npx degit gacallea/elm_vite_tailwind_template my-elm-app```
2. Enter the project: ```cd my-elm-app```
3. Install dependencies: ```npm install```
4. Started development: ```npm run dev```

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
| review      | elm-review                          |
| test        | elm-test-rs                         |

## Acknowledgements

This templated was inspired by [Lindsay K Wardell](https://github.com/lindsaykwardell/vite-elm-template)'s template.

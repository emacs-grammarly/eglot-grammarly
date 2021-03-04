[![Build Status](https://travis-ci.com/emacs-grammarly/eglot-grammarly.svg?branch=master)](https://travis-ci.com/emacs-grammarly/eglot-grammarly)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# eglot-grammarly

`eglot` client leveraging [unofficial-grammarly-language-server](https://github.com/znck/grammarly).

![](./etc/screenshot.png)

## Quickstart

#### Step 1.

First install the language server using NPM.

```
$ npm install -g unofficial-grammarly-language-server-2
```

#### Step 2.

```el
(use-package eglot-grammarly
  :ensure t
  :hook (text-mode . (lambda ()
                       (require eglot-grammarly))))
```

## Contribution

If you would like to contribute to this project, you may either
clone and make pull requests to this repository. Or you can
clone the project and establish your own branch of this tool.
Any methods are welcome!

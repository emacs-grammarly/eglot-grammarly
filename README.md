[![Build Status](https://travis-ci.com/emacs-grammarly/eglot-grammarly.svg?branch=master)](https://travis-ci.com/emacs-grammarly/eglot-grammarly)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# eglot-grammarly

`eglot` client leveraging [unofficial-grammarly-language-server](https://github.com/znck/grammarly).

![](./etc/screenshot.png)

## :floppy_disk: Quickstart

#### Step 1.

First install the language server using NPM.

```sh
npm install -g @emacs-grammarly/unofficial-grammarly-language-server
```

#### Step 2.

Consider adding this to your configuration.

```el
(use-package eglot-grammarly
  :ensure t
  :hook (text-mode . (lambda ()
                       (require 'eglot-grammarly)
                       (call-interactively #'eglot))))
```

## :wrench: Configuration

Create `.dir-locals.el` file in the the project root directory.

```el
((nil
  (eglot-workspace-configuration
   . ((@emacs-grammarly/unofficial-grammarly-language-server
       . ((audience . "knowledgeable")))))))
```

## Contribution

If you would like to contribute to this project, you may either
clone and make pull requests to this repository. Or you can
clone the project and establish your own branch of this tool.
Any methods are welcome!

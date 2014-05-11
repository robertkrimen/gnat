# gnat

https://github.com/robertkrimen/gnat

gnat is a toolkit for using [gonative](https://github.com/inconshreveable/gonative) and [gox](https://github.com/mitchellh/gox) to do cross-compilation in Go.

If everything is set up correctly, you should be able to cross-compile test/main.go on Ubuntu (linux) and have it run properly on Mountain Lion/Mavericks (darwin).

"Cross-linking cgo": https://groups.google.com/forum/#!msg/golang-nuts/2XoGUvBalcw/ErSWiTlO17kJ ([golang-nuts](https://groups.google.com/forum/#!forum/golang-nuts))

### Usage

First, clone gnat:

    $ git clone https://github.com/robertkrimen/gnat.git

Then, make sure you have `gonative` installed. If you have go installed, you can do:

    $ go get github.com/inconshreveable/gonative

Or, download a binary:

* [gonative (darwin/386)](https://github.com/robertkrimen/gnat/releases/download/20140511/gonative_darwin_386)
* [gonative (windows/386)](https://github.com/robertkrimen/gnat/releases/download/20140511/gonative_windows_386.exe)
* [gonative (linux/64)](https://github.com/robertkrimen/gnat/releases/download/20140511/gonative_linux_amd64)
* [gonative (linux/386)](https://github.com/robertkrimen/gnat/releases/download/20140511/gonative_linux_386)

Last, run setup:

    $ ./setup

Now you have a standalone cross-compiling environment in `$HOME/.gnat`

Create a symlink for **$HOME/.gnat/gnat** somewhere in your $PATH (or create an alias for it).

Run the gonative go with `gnat`

    $ gnat go env

Use `gnat compile` as a compilation shortcut:

    # The following are equivalent:

    $ gnat compile ...

    $ gnat gox -os="darwin linux freebsd windows" -arch="386 amd64" ...

### $GOPATH

The gnat go has a separate $GOPATH:

    $GNAT_GOROOT/gopath

By default, gnat will include your existing $GOPATH after this one. To avoid this behavior, set $GNAT\_GOPATH to null (or something else entirely):

    $ GNAT_GOPATH= gnat ...

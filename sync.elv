#!/usr/bin/env elvish
use path
use str

var pname = [
  calculus
]

var syncf-path = (get-env HOME)/learn/sync/11408
var proot = (path:dir (src)[name])
var fname = main.typ

var make-pdf = {|name|
  var src-name = (str:join '/' [$name $fname])
  typst c $src-name --root $proot 
  var pdf-path = (str:join '/' [$proot $name main.pdf])
  mv $pdf-path (str:join '/' [$syncf-path $name typst.pdf])
}

each $make-pdf $pname
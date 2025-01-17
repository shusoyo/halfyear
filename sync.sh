#!/bin/sh

pname="calculus"
syncf_path="$HOME/ss/sync/11408"
proot=$(dirname "$(readlink -f "$0")")
fname="main.typ"

make_pdf() {
  name="$1"
  src_name="$name/$fname"

  typst c "$src_name" --root "$proot" --font-path ./result --ignore-system-fonts

  pdf_path="$proot/$name/main.pdf"
  target_dir="$syncf_path/$name"
  mkdir -p "$target_dir"
  mv "$pdf_path" "$target_dir/typst.pdf"
}

for name in $pname; do
  make_pdf "$name"
done

#!/bin/sh

pname="calculus"
syncf_path="$HOME/ss/sync/11408"
proot=$(dirname "$(readlink -f "$0")")
fname="main.typ"

make_pdf() {
  name="$1"
  src_name="$name/$fname"
  pdf_path="$proot/$name/$name.pdf"

  typst c "$src_name" "$pdf_path" --root "$proot" --font-path ./result --ignore-system-fonts

  target_dir="$syncf_path/$name"
  mkdir -p "$target_dir"

  curl -F "files=@$pdf_path" -F "csrf=dmAw1rRf7l" http://shared.lan/shared/halfyear/
  mv "$pdf_path" "$target_dir/typst.pdf"
}

for name in $pname; do
  make_pdf "$name"
done

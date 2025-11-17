#!/bin/bash

pname=("calculus" "linear-algebra" "paper-set" "english-template")
syncf_path="$HOME/ss/syncthing/sync/22408/302/"
# syncf_path="$HOME/Library/Mobile Documents/com~apple~CloudDocs/22408"
proot=$(dirname "$(readlink -f "$0")")
fname="main.typ"

make_pdf() {
  name="$1"
  src_name="$name/main.typ"
  problem_src_name="$name/problem.typ"
  pdf_path="$proot/$name/$name.pdf"
  problem_pdf_path="$proot/$name/$name-problem.pdf"

  target_dir="$syncf_path/$name"
  mkdir -p "$target_dir"

  typst c "$src_name" "$target_dir/$name-typst.pdf" --root "$proot" --font-path ./result --ignore-system-fonts
  typst c "$problem_src_name" "$target_dir/$name-problems.pdf" --root "$proot" --font-path ./result --ignore-system-fonts
}

for name in "${pname[@]}"; do
  make_pdf "$name"
done

echo 'all done'
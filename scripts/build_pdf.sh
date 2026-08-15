#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 path/to/lecture.tex" >&2
  exit 2
fi

source_path="$1"
if [[ ! -f "$source_path" ]]; then
  echo "Source file not found: $source_path" >&2
  exit 2
fi

source_dir="$(cd "$(dirname "$source_path")" && pwd)"
source_name="$(basename "$source_path")"
pdf_name="${source_name%.tex}.pdf"
build_dir="$(mktemp -d)"

cleanup() {
  rm -rf "$build_dir"
}
trap cleanup EXIT

(
  cd "$source_dir"
  tectonic "$source_name" --outdir "$build_dir"
)

cp "$build_dir/$pdf_name" "$source_dir/$pdf_name"
echo "Built $source_dir/$pdf_name"

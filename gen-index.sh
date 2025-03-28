set -xeuo pipefail

find . -type d -not -path '*/\.*' -not -name 'fonts' | while read -r dir; do
  pushd "$dir"
    tree -H '.' --noreport --charset utf-8 --dirsfirst -I 'fonts' -I 'index.html' --prune > index.html
  popd
done
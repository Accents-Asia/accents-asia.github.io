---
title: Readme
layout: none
search_exclude: true
---

## Bash Commands for generating tag files

Lowercase filenames and titles for tags. Spaces removed from filenames

```bash
cat _post_tags.txt | sort | while read line; do FILENAME=${line,,}; FILENAME=${FILENAME// /_}; echo -e "---\ntitle: ${line,,}\nlayout: tags\n---\n" > "${FILENAME}.md" ; done;
```

Lowercase titles and spaces removed from filenames

```bash
$ cat _post_tags.txt | sort | while read line; do echo -e "---\ntitle: ${line,,}\nlayout: tags\n---\n" > "${line// /_}.md" ; done;
```

$argsone = $args[1]
pandoc.exe --quiet -s $args[0] -c https://gitcdn.link/cdn/emaballarin/md_to_html/main/style.css -o $args[2] --metadata-file C:\Users\emanu\repositories\md_to_html\meta.yml --from markdown+emoji --mathjax
sed.exe -r -i -e "s|<title>.*</title>|<title>$argsone</title>|g" $args[2]

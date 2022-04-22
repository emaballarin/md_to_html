$input_path = "input.md"

if ($args[0])
{
    $input_path = $args[0]
}

pandoc -s $input_path -c style.css -o output.html --metadata-file meta.yml --from markdown+emoji --mathjax

if ($args[1])
{
    $argsone = $args[1]
    sed -r -i -e "s|<title>.*</title>|<title>$argsone</title>|g" .\output.html
}

if ($args[2])
{
    Move-Item .\output.html $args[2]
}

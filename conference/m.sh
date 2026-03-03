#
awk '
/talk-title/ {
    match($0, /talk-title">([^<]+)/, a);
    title=a[1]
}
/talk-abstract/ {
    getline;
    match($0, /<p>(.*)<\/p>/, b);
    print title " — " b[1] "\n"
}
' programme.html

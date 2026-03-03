#
awk '
  /<h4 class="talk-title">/ { 
      gsub(/<[^>]*>/,""); 
      printf "TITLE: %s\n", $0 
  }
  /<div class="talk-abstract">/ {
      getline; 
      while ($0 !~ /<\/div>/) { 
          printf "%s ", $0; getline 
      }
      gsub(/<[^>]*>/,""); 
      printf "ABSTRACT: %s\n\n", $0
  }
' programme.html
``


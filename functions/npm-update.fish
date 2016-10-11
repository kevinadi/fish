function npm-update
  for i in (npm outdated --depth 0 --parseable $argv | cut -d: -f4)
    echo Updating $i
    npm $argv install $i
  end
end

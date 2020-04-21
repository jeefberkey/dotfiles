function screenie --description 'Take an interactive screenshot and save it to the first arg'
  command grim -g (slurp -b "#45858820" -c "#45858880" -w 3 -d) $argv
end

for file_num in {1..20}; do
    touch $file_num.txt
  done

for each_file in $(find ./ -name "*.txt" | grep -v '4'); do
    rm "$each_file"
  done
echo "Что нибудь записал" > 14.txt

# Со звездочкой

# mkdir -p 1
# mkdir -p 2/2
# mkdir -p 3/3/3
# можно так, но не, лучше так)

dir=$(pwd)
for dir_name in {1..3}; do
    for ((j=$dir_name;j>0;j--)); do
      mkdir "$dir_name"
      cd "$dir_name"
    done
    echo "$dir_name" > "$dir_name.txt"
    link="$(pwd)/$dir_name.txt"
    cd "$dir"
    ln -s "$link"
    echo "$link"
  done

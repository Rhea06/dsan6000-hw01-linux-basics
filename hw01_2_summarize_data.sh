for file in data/*; do

    if [ -f "$file" ]; then

        filename=$(basename "$file")
        

        file_size=$(wc -c < "$file" | tr -d ' ')
        

        line_count=$(wc -l < "$file" | tr -d ' ')
        

        echo "$filename,$file_size,$line_count"
    fi
done

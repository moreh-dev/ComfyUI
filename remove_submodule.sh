target_folder="./custom_nodes"

# 폴더 리스트 출력
echo "Remove git module in the custom nodes"
echo "-----------------------------"
for folder in "$target_folder"/*; do
    if [ -d "$folder" ]; then
        rm -rf  "$target_folder/$(basename "$folder")/.git"
    fi
done
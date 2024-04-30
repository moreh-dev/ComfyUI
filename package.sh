target_folder="./custom_nodes"

echo "Install requirements for ComfyUI"
pip install -r requirements.txt

# 폴더 리스트 출력
echo "Install requirements for custom nodes"
echo "-----------------------------"
for folder in "$target_folder"/*; do
    if [ -d "$folder" ]; then
        pip install -r  "$target_folder/$(basename "$folder")/requirements.txt"
    fi
done

pip install protobuf==3.20.2
target_folder="./custom_nodes"

echo "Install requirements for ComfyUI"
pip install -r requirements.txt

# 폴더 리스트 출력
echo "Install requirements for custom nodes"
echo "-----------------------------"
for folder in "$target_folder"/*; do
    if [ -d "$folder" ]; then
        if [ $(basename "$folder") = "ComfyUI-Frame-Interpolation" ]; then
            pip install -r "$target_folder/$(basename "$folder")/requirements-no-cupy.txt"
        elif [ $(basename "$folder") = "ComfyUI-Inference-Core-Nodes" ]; then
            python "$target_folder/$(basename "$folder")/install.py"
        else
            pip install -r  "$target_folder/$(basename "$folder")/requirements.txt"
        fi
    fi
done

pip install protobuf==3.20.2
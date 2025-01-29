$ErrorActionPreference=0
$target_dir = "python_libraries"

# Assuming you have conda installed and followed the install notes text file in this directory
write-host -fore green Starting. Loading Conda...
conda activate python3.8

write-host -fore green Copying requirements.txt to $target_dir
rm -rec -for $target_dir
mkdir $target_dir
cp requirements.txt $target_dir

cd $target_dir

write-host -fore green Starting Download of WINDOWS PYTHON PACKAGES...
# Loop through each line in requirements.txt and pip download it
Get-Content requirements.txt | ForEach-Object {
    write-host -fore green Downloading... $_
    pip download --no-cache-dir $_
}

cd ..
#!/bin/zsh
 

 new_dir_name="$1"
 template_dir="template"
 

 if [ -z "$new_dir_name" ]; then
  echo "Error: Please provide a directory name as an argument."
  exit 1
 fi
 

 # Create the new directory
 mkdir "$new_dir_name"
 

 if [ ! -d "$template_dir" ]; then
  echo "Error: Template directory '$template_dir' not found."
  exit 1
 fi
 

 # Copy the content of the template directory to the new directory
 cp -r "$template_dir"/* "$new_dir_name"
 

 # Rename template.tex
 if [ -f "$new_dir_name/template.tex" ]; then
  mv "$new_dir_name/template.tex" "$new_dir_name/$new_dir_name.tex"
 fi
 

 # Create the .latexmain file
 touch "$new_dir_name/$new_dir_name.tex.latexmain"
 

 # Create the build, chapters, and sections directories
 mkdir "$new_dir_name/build" "$new_dir_name/chapters" "$new_dir_name/sections"
 

 echo "Successfully created project structure in '$new_dir_name'."
 

 exit 0

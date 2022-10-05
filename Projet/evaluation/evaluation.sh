#!/bin/bash

verify_if_not_empty_file (){
  if [ -s $1 ]; then
          # file not empty.
          return 0
  else
          # Empty file
          return 1
  fi
}

verify_code (){
  local directory=$1
  local filename=$2
  echo "                                       Verifying $directory/$filename                                         "
  # Internal code
}

compile_files_in_directory (){
  local directory=$1
  local filelist=$2
  IFS=";" read -r -a files <<< "${filelist}"
  for file in "${files[@]}";
  do
    local filename="src/$file"
    verify_if_not_empty_file "$filename"
    local value=$?
    if [ "$value" = 1 ]
    then  
      echo "                                       Empty C file: $directory/$filename                                  "
    else
      echo "                                       Compiling $directory/$filename                                      "
      gcc -c $filename # Compile to check for errors
      gcc -c -Wall -Werror -Wextra $filename # Compile to check for errors
      verify_code $directory $filename
      rm -f *.o src/*.gch src/*.o *.gch
    fi
  done

}

echo "================================================================================================"
echo "                                       Project Evaluation                                               "
echo "================================================================================================"

projectfilelist="bmp.h;client.h;couleur.h;json.h;operations.c;serveur.c;testes.c;validation.c;bmp.c;client.c;couleur.c;json.c;operations.h;serveur.h;testes.h;validation.h"

directory="Projet"
echo "------------------------------------------------------------------------------------------------"
echo "                                       Evaluating $directory                                     "
echo "------------------------------------------------------------------------------------------------"
cd "../../$directory"
ls
ls ./src/

verify_if_not_empty_file "CONTRIBUTORS.md"
value=$?
if [ "$value" = 1 ]
then  
   echo "Empty CONTRIBUTORS.md file"
else
   verify_code $directory "CONTRIBUTORS.md"
fi

verify_if_not_empty_file "README.md"
value=$?
if [ "$value" = 1 ]
then  
   echo "Empty README.md file"
else
   verify_code $directory "README.md"
fi

compile_files_in_directory $directory ${projectfilelist}
  cd "./evaluation"
echo "================================================================================================"
echo "                                       Project Evaluation Finished                                      "
echo "================================================================================================"

unset projectfilelist TP i value directory

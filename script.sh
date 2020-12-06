#!/bin/bash
# -*- ENCODING: UTF-8 -*-
NVIM=~/.config/nvim/
   MESSAGE=" 💥ha finalizado la copia de los archivos. Disfruta mi configuracion 🙈"
noAccess="Intentalo cuando te sientas seguro 😊"
   function make(){
mkdir ~/.config/nvim 
}

function copyFile(){
 cp ./init.vim ./coc-settings.json $NVIM && cp ./.vimrc $HOME && ls $NVIM       
      echo ".vimrc"
      echo ${MESSAGE^^}

}
function validation(){
   if [ -d $NVIM ];
   then
      copyFile
   else
      make
      copyFile
   fi

}

read -p "⚠️ Seguro que quiere modificar o reemplazar la carpeta ~/config/nvim y el archivo .vimrc (y/n)🚨" yesOrNo

while true;
do
case ${yesOrNo^^} in
   Y)
       validation
       break
      ;;
   N)
      echo $noAccess
break;;
      *)
      read -p "La opcion no es correcta 😟, intentelo de nuevo :) " yesOrNo
      ;;
esac
done

exit

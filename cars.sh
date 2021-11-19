#!/bin/bash
function MENU()
{
echo "
---------------------------------------------------------
Base de Dades de cotxes
---------------------------------------------------------
1 Llistats de cotxes.
2 Cerca de cotxes.
3 Comprovem si ets realment un Expert en cotxes.
4 Altes, baixes i modificacions de la base de dades.
0 Sortir"

}

function enDesenvolupament()
{
echo "En desenvolupament" 
#Esperem que s'introdueixi una tecla 
bool=1
#mentre no es presioni cap tecla, no executara res
while [ $bool -eq 1 ] ; do
read -t 3 -n 1
if [ $? = 0 ] ; then
clear ;
bool=0
fi
done
}

function opcioNoValida()
{
#imprimeix missatge d'error, espera 3 segons i neteja la pantalla
echo "Error: Opcio no valida"
sleep 3
clear
}

#bucle infinit 
while [ true ];

do
MENU
read Opcion
case $Opcion in
0) exit ;; #força sortir del programa
1) bash opcio1;; 
2) enDesenvolupament;;
3) enDesenvolupament;;
4) enDesenvolupament;; 
*) opcioNoValida
esac
clear
done
 

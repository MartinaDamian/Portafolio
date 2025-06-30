#!/bin/bash
# Autor: Martina Damián
# Ejercicio: Menú por edad - Clasificación de voto según rango etario
# Descripción: Este script muestra un menú para que el usuario seleccione su rango de edad.
# Dependiendo de la opción elegida, el script indicará si el voto es obligatorio, voluntario o si no vota.
echo "¿Cuál es su edad?"
select age in "0-15" "16-17" "18-64" "65+" "salir"
do
  case $age in
    "0-15")
      echo "No vota"
      ;;
    "16-17")
      echo "Voto voluntario"
      ;;
    "18-64")
      echo "Voto obligatorio"
      ;;
    "65+")
      echo "Voto voluntario"
      ;;
    "salir")
      break
      ;;
    *)
      echo "Opción inválida, elija nuevamente"
      ;;
  esac
done

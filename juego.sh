#!/bin/bash
# Autor: Martina Damián
# Ejercicio: Juego Adivina el número del 1 al 10 (Máximo 3 intentos)
echo "Bienvenido al juego de adivinar un número del 1 al 10"
# Preguntar si desea continuar
read -p "¿Desea continuar? (S/N): " respuesta
if [[ "$respuesta" == "S" || "$respuesta" == "s" ]]; then
  # Generar número aleatorio entre 1 y 10
  numero_secreto=$(( (RANDOM % 10) + 1 ))
  intentos=0
  max_intentos=3
  echo "Adivina el número del 1 al 10. Tienes $max_intentos intentos."
  while [[ $intentos -lt $max_intentos ]]; do
    read -p "Intento $((intentos+1)): Ingresa tu número: " numero_usuario
    if [[ "$numero_usuario" -eq "$numero_secreto" ]]; then
      echo "¡Felicidades! Adivinaste el número secreto: $numero_secreto"
      break
    else
      echo "No es el número correcto"
    fi
    intentos=$((intentos+1))
  done
  if [[ $intentos -eq $max_intentos && "$numero_usuario" -ne "$numero_secreto" ]]; then
    echo "Has agotado tus intentos. El número secreto era: $numero_secreto"
  fi
else
  echo "Gracias por visitar el juego"
fi


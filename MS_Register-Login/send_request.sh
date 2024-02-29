#!/bin/bash

# Define la duración total en segundos (60 segundos = 1 minuto)
total_duration=120

# Define el intervalo entre solicitudes en segundos (3 segundos)
interval=1

# Calcula cuántas veces se debe ejecutar la solicitud durante el intervalo de tiempo dado
num_requests=$((total_duration / interval))

# Ejecuta un bucle para enviar solicitudes al API
for ((i = 1; i <= num_requests; i++)); do
    # Envía la solicitud al API utilizando Curl
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    curl -X GET https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios -w "\nResponse code: %{http_code}\n" -o -
    echo $(date +"%A, %B %d, %Y %H:%M:%S")
    # Espera el intervalo especificado antes de enviar la siguiente solicitud
    sleep $interval
done
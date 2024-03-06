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
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    curl -X GET 'https://g7o4mxf762.execute-api.us-east-1.amazonaws.com/prod/usuarios' --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBlcGUxMUBzcG9ydGFwcC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4OSIsImV4cCI6MTcwOTUwMDg0NjcwMiwiaWF0IjoxNzA5NTAwMjQ2fQ.Py7irb7IXk2scwj3C4fozLy8rcxU3cNdSY4_bs7YhRY'
    
    echo $(date +"%A, %B %d, %Y %H:%M:%S")
    # Espera el intervalo especificado antes de enviar la siguiente solicitud
    sleep $interval
done
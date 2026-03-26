#!/bin/bash

# Inicializa a interface gráfica (VNC)
echo "Iniciando a interface gráfica..."
/usr/local/share/desktop-init.sh

# Espera 2 segundos para o sistema gráfico subir
sleep 2

# Inicia o Servidor em segundo plano
echo "Iniciando RCSSServer..."
rcssserver &

# Espera 1 segundo para o servidor estabilizar
sleep 1

# Inicia o Monitor em segundo plano
echo "Iniciando RCSSMonitor..."
rcssmonitor &

echo "Tudo pronto! Verifique a aba do navegador na porta 6080."
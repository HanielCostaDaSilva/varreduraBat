@echo off
echo Iniciando varredura de vulnerabilidades do sistema...
chcp 65001 > nul
rem Defina a variável para armazenar o endereço IP, utilizando o endereço IP do hostname uirapuru.ifam.edu.br
set "ip=  192.168.0.1"

rem Obtenha a data atual no formato DD-MM-AA
for /f "tokens=1-3 delims=/ " %%a in ('echo %date%') do (
    set "day=%%a"
    set "month=%%b"
    set "year=%%c"
)

rem Formate a data no formato desejado (DD-MM-AA)
set "data=%day%-%month%-%year%"

rem Crie o nome do arquivo de texto com a data e hora atual
set "relatorioArq=VARREDURA_%data%.txt"
echo Varredura do dia %data% > %relatorioArq%

rem 1. Execute o comando "wmic share get" e redirecione a saída para o arquivo
echo ======1. Todos os compartilhamentos no computador, incluindo seus nomes, caminhos e permissões.====== >> %relatorioArq%
wmic share get >> %relatorioArq%
echo =================================================== >> %relatorioArq%  >> %relatorioArq%

rem 2. Execute o comando "nbtstat -c" e redirecione a saída para o arquivo
rem todos os hosts NetBIOS conhecidos pelo computador local.
echo ======2. Realizando verificação de todos os hosts conhecidos no NetBios: %ip% ====== >> %relatorioArq%
nbtstat -c >> %relatorioArq%
echo =================================================== >> %relatorioArq%  

rem 3. Verifica as atualizações do windows no endereço IP
echo ======3. Verificando atualizações do Windows em %ip% ====== >> %relatorioArq%
wmic qfe list >> %relatorioArq%
echo =================================================== >> %relatorioArq%

rem 4. Demonstra todos os arquivos que são compartilhados nesta máquina
echo ======4. Listando perfis de redes Wi-Fi ====== >> %relatorioArq%
netsh wlan show profile >> %relatorioArq%
echo =================================================== >> %relatorioArq%

rem 5. Demonstra todos os arquivos que são compartilhados nesta máquina
echo ======5. Mostrando informações do perfil de rede Wi-Fi NETVIRTUA100801 ====== >> %relatorioArq%
netsh wlan show profile NETVIRTUA100801 key=clear >> %relatorioArq%
echo =================================================== >> %relatorioArq%

rem 6. Demonstra todos os arquivos que são compartilhados nesta máquina
echo ======6. Listando compartilhamentos de arquivos ====== >> %relatorioArq%
net share >> %relatorioArq%
echo =================================================== >> %relatorioArq%

rem 7. Demonstra todos os processos em execução no sistema.
echo ======7. Listando processos em execução ====== >> %relatorioArq%
tasklist >> %relatorioArq%
echo =================================================== >> %relatorioArq%

rem 8. Verificar configurações do firewall do Windows:
echo ======8. Verificando configurações do Firewall do Windows ====== >> %relatorioArq%
netsh advfirewall show allprofiles >> %relatorioArq%
echo =================================================== >> %relatorioArq%

rem 9. Verificar as contas de usuário listadas na máquina:
echo ======9. Verificando contas de usuário ====== >> %relatorioArq%
net user >> %relatorioArq%
echo =================================================== >> %relatorioArq%

rem 10. Apressenta a tabela ARP, demonstrando todos os endereços IP e o MAC dos dispositivos conectados na rede local.:
echo ======10. Verificando contas de usuário ====== >> %relatorioArq%
net user >> %relatorioArq%
echo =================================================== >> %relatorioArq%

rem 11. Demonstra quais são os drivers conectados a máquina.
echo ======11. Listando todos os serviços de drivers em execução  ====== >> %relatorioArq%
sc query type= driver >> %relatorioArq%
echo =================================================== >> %relatorioArq%

@@echo off

echo Informe qual projeto deseja iniciar

echo 1 - node 
echo 2 - npm
echo 3 - ReactJS


set /p option=Informe a opcao:

if %option%==1 (
    start cmd /k "node -v && timeout 10"
    exit /s
) else (
    echo "Node não encontrado"
    timeout 5
)

if %option%==2 (
    start cmd /c "npm init && timeout 10"
    exit /s
) else (
    echo "não foi possivel criar o arquivo"
    timeout 5
)

if %option%==3 (
    @@@echo off
    
    echo Informe o nome do seu app
    set /p app=Nome do app:
    start cmd /c "npx create-react-app %app% && timeout 10"
    exit /s
) else (
    echo "Erro"
)
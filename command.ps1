
# Touch Integration Kit
# pichit@sripirom.com

function Func_BuildDocker
{
    & docker build -t tik-mono .
}

function Func_RunDocker
{
    & docker run -it tik-mono:latest
}

$argcase = $args[0]
Write-Output "call function $argcase"
switch ($argcase) 
    { 
        "BuildDocker" {Func_BuildDocker} 
        "RunDocker" {Func_RunDocker} 
        default {"The argument command could not be determined."}
    }


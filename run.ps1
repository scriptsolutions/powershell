class WebServer{
    [STRING]$private:Name = $Name;
    [INT]$private:Port = 8080;
    [VOID]restartServer(){
        Invoke-Expression -Command "iisreset";
    }
}
$IIS = new-Object -TypeName WebServer;
$IIS.Name = "web-scripting.com";
$IIS.Port;
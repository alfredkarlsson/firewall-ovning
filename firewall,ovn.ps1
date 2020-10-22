$portar = import-csv -delimiter ";" -path "C:\code\powershell\firewall,ovn\firewall,ovn.csv"

foreach ($port in $portar) {
    New-NetFirewallRule -DisplayName $port.protokoll -Direction Outbound -Protocol tcp -LocalPort $port.port -Action $port.regel
    write-host "porten" $port.port "är nu" $port.regel
}
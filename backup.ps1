$day = Get-Date -Format "yyyy-MM-dd"
cd "C:\VMs\MediaBox"
docker-compose down
Compress-Archive -Path "\\wsl$\docker-desktop-data\data\docker\volumes\mediabox_delugeconfig" -DestinationPath "D:\VM Backups\delugeBackup-$day.zip"
Compress-Archive -Path "\\wsl$\docker-desktop-data\data\docker\volumes\mediabox_jackettconfig" -DestinationPath "D:\VM Backups\jackettBackup-$day.zip"
Compress-Archive -Path "\\wsl$\docker-desktop-data\data\docker\volumes\mediabox_radarrconfig" -DestinationPath "D:\VM Backups\radarrBackup-$day.zip"
Compress-Archive -Path "\\wsl$\docker-desktop-data\data\docker\volumes\mediabox_sonarrconfig" -DestinationPath "D:\VM Backups\sonarrBackup-$day.zip"
Compress-Archive -Path "\\wsl$\docker-desktop-data\data\docker\volumes\mediabox_vpnconfig" -DestinationPath "D:\VM Backups\vpnBackup-$day.zip"
docker-compose up -d
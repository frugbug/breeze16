@echo off
cd assets\minecraft\textures\block\misc\
SET /P NAME="[Enter Minecraft Java username] "
echo.
powershell "$UUID_PAGE = curl 'https://api.mojang.com/users/profiles/minecraft/%NAME%' | ConvertFrom-Json; $UUID = $UUID_PAGE.id; $SKIN_PAGE = curl https://sessionserver.mojang.com/session/minecraft/profile/$UUID | ConvertFrom-Json; $skin_location=[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($skin_page.properties.value)) | ConvertFrom-Json; $skin_url = $skin_location.textures.SKIN.url; curl -Uri $skin_url -OutFile 'player_skin.png'"

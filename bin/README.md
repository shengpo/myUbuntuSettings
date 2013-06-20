## 每個shell script簡單說明如下：

- n2autilus.sh
	- 開啟nautilus file browser without desktop
	- 通常在非unity的wm下開啟nautilus，也會同時開啟unity桌面，若要避免開啟桌面，可以下 `nautilus --no-desktop` 這個指令，這個shell script便是在做這件事

- nitrogen-random-wallpaper.sh
	- 用來在每次登入wm時隨機設定桌布
	- 要使用此script，必須先安裝 nitrogen 這個簡易設定桌面的GUI程式 (適合用在一些lightweight WM, 例如：openbox, i3 wm) 
	- nitrogen 可透過apt-get安裝，或是從 Ubuntu Software Center 安裝
	- 在此script中，桌布預設放在 `$HOME/wallpaper/` 下
	- 桌布副檔名必須是 `.jpg` 檔	

- restart-audio-system.sh
	- 此script用來重新啟動audio系統
	- 實際做的事情為：kills pulseaudio and then reloads ALSA
	- 通常在執行SuperCollider之後，系統的audio便被SuperCollider搶去，無法正常在系統中聆聽其他audio來源(例如：youtube、mp3 ...等)，此時便可執行此script

- turnOff_wl11n.sh
	- 有時候Ubuntu對於比較高速的無線AP會有連線不穩或連線過慢的情況，可以透過此script解決
	- script參考來源：https://help.ubuntu.com/community/AsusZenbookPrime#Wireless

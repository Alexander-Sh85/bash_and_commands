nmap -v -sC -sV localhost -oN nmap/initial
sudo nmap -sT -p-65535 192.168.72.158	просмотр открытых портов TCP устройства	

curl ifconfig.me
-o IdentitiesOnly=yes			
google-drive-ocamlfuse ~/gd			
lftp			
open sftp://asheikin@84.201.145.139

iptables-save > iptables.rules
iptables-restore < iptables_new.rules	

export PATH=$PWD/bin:$PATH	добавление в переменную окружения паф/ echo $PATH		
"Использование онлайн-аккаунтов GNOME Откройте ""Settings"" (Настройки) в Ubuntu.Найдите пункт ""Online Accounts"" (Онлайн-аккаунты).
Выберите ""Google"".Введите учетные данные своей учетной записи Google. Нажмите ""Allow"" (Разрешить). Оставьте активным пункт ""Files"" (Файлы).
После этого вы сможете получить доступ к Google Диску через файловый менеджер Ubuntu."

ss -tuln | grep "LISTEN"	тобразит список открытых TCP и UDP портов		
arp-scan			
curl -I http://158.160.137.110:15021/healthz/ready	Проверка на жизнь порта балансировщика		
nc -zv 158.160.137.110 80			
netstat -tuln			

cat /etc/passwd | grep -v nologin	просмотр пользователей для входа в систему		
30 2 * * * /data/script/bucket_backup.sh >> /var/log/backup/bucket_backup.log 2>&1	запись лога из крона 2 потока		
			
export HISTTIMEFORMAT='%F %T ' 	добавление времени и даты в хистори терминала		
			
head -n 10 file.txt	вывести 10 строк первые		
less -n 10 fule.txt	вывести по 10 строк по нажатию		
tail -n 10 file.txt	вывести 10 строк с конца		

touch file1	создать файл		
			
mpstat -P ALL 5	CPU		
uptime			
free -m	показать кол-во памяти		
:>1.txt	очиста файла 1		
sudo userdel -r имя_пользователя			
useradd -G sudo ansible -N -m	Добавить пользователя без пароля(-N0) с дом каталогом		
			
cat /etc/sysctl.conf		        - поведением ядра Linux	
sudo sysctl -p /etc/sysctl.conf		- перезапуск 

Команда "swapoff -a" используется в системе Linux для отключения всех swap-разделов или файлов			
			
sudo snap refresh --list			
Если вы хотите обновить определенный снэп-пакет, укажите его имя в команде:			
sudo snap refresh <имя снэп-пакета>			
			
sudo systemctl list-units --type=service --all			
echo -n YWRtaW4= |base64 -d	раскодировать секрет base64		

nginx -t
nginx -s reload			
			
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>Control_L']"			
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Alt>Shift_L']"			
			
scp asheikin@158.160.158.43:/home/asheikin/kiselevvo_home.ovpn .			
ssh-keyscan github.com >> ~/.ssh/known_hosts			
			
strace			
dd Она используется для копирования данных с одного устройства на другое, а также для преобразования формата данных.			
pidof			
			
find . -type f -print -quit  -perm 644  -size +1M -name "example.txt" -maxdepth 1			
stat .bashrc			
ln -s /path/to/original/file /path/to/symlink			
FHS (англ. Filesystem Hierarchy Standard, «стандарт иерархии файловой системы»)  https://ru.wikipedia.org/wiki/FHS			
"sudo add-apt-repository ppa:adiscon/v8-stable
sudo apt-get install rsyslog"			
lsb_release -a			
sudo update-grub			
sudo apt dist-upgrade			
sudo do-release-upgrade			
			
# Оба потока (STDERR и STDOUT) перенаправляются в файл			
cd lala &> output			
#  Так можно сразу перенаправить STDERR в файл			
cd lala 2> output			
# Сначала STDOUT перенаправляется в файл output, затем STDERR перенаправляется в STDOUT, запись в файл продолжается			
ls lala > output 2>&1			
#  STDERR просто перенаправляется в другой поток (STDOUT)			
cd lala 2>&1			
			
tree -U -fa			
			
find . -mindepth 1 -type d -exec touch {}/тест \;			
export HOME=/tmp			
			
!2	запустить комаду из терминала		
id			
cat /etc/passwd | grep -v nologin | tee /dev/tty | wc -l	tee		
stat file			
			
"chmod [references][operator][modes] файл(ы)

references: указывает, для кого применяются изменения:
u — владелец (user)
g — группа (group)
o — другие (others)
a — все (all), что эквивалентно ugo
operator: определяет, что делать с правами:
+ — добавить права
- — удалить права
= — установить права точно (удаляет все остальные)
modes: права доступа, которые вы хотите изменить:
r — чтение (read)
w — запись (write)
x — выполнение (execute)"			
			
apt list --installed			
			
"В Node.js — пакетный менеджер npm
в PHP — Composer
в Ruby — RubyGems
в Python — pip"			
			
type cp			


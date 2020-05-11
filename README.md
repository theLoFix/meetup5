# meetup5

## 1. Wymagania wstępne do pracy w chmurze GCP.

1.1 Konto gmail.

1.2 https://console.cloud.google.com/

1.3 Uruchomienie bilingu – wymaga „podpięcia” karty płatniczej.

1.4 Stworzenie projektu.

## 1. DEMO

1.1 Skonfigurowanie środowiska w GCP.

1.2 Zainstalowanie paczek potrzebnych dla Ansible dla node'a kontrolującego.

https://github.com/Ansible-in-DevOps/meetup5/blob/master/startup-script 

1.3 Ustawienie WinRM na maszynie Windows.

https://github.com/Ansible-in-DevOps/meetup5/blob/master/windows-startup-script-cmd

1.4 Ustawienie zmiennych w pliku inventory dla maszyny Windows. 

https://github.com/Ansible-in-DevOps/meetup5/blob/master/inventory

1.5 Przykłady uruchomienia ansible-playbook.
    
 ```bash
ansible -i inventory -m win_ping [name]
```   

1.6 BONUS: IaC w TF + bitbucket (pipeline)

## 3. Wymagania dla WINDOWS:

Ansible może zarządzać: 

* Windows Desktops: 7, 8.1, 10

* Windows Servers: 2008, 2008 R2, 2012, 2012 R2, 2016, 2019

Ansible wymaga instalacji na systemie Windows:

* PowerShell 3.0+  

* .NET 4.0 

## 4. Opcje autentykacji:

| Opcja       | Konto lokalne | HTTP szyfrowanie | Konto AD |
|-------------|---------------|------------------|----------|
| Basic       | TAK           | NIE              | NIE      |
| Certificate | TAK           | NIE              | NIE      |
| Kerberos    | NIE           | TAK              | TAK      |
| NTLM        | TAK           | TAK              | TAK      |
| CredSSP     | TAK           | TAK              | TAK      |

**UWAGA**

Dla potrzeb demo użyłem autentykacji Basic i Windowsa 2012 R2 w którym usługa WinRM jest włączona domyślnie zarówno dla HTTP(port 5985) jak i HTTPS (port 5986) i wymaga jedynie włączenia autentykacji basic następującym poleceniem:

cmd:

```bash
winrm set winrm/config/service/auth @{Basic="true"}
```

lub

powershell:

```bash
Set-Item -Path WSMan:\localhost\Service\Auth\Basic -Value $true
```

**Dokumentacja:**

https://cloud.google.com/compute/docs/instances/create-start-instance

https://docs.ansible.com/ansible/latest/user_guide/windows_winrm.html

https://cloud.google.com/compute/docs/startupscript



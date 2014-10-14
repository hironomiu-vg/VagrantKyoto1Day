京都1day(10/18)用
===================================

## 環境構成
### Provision 
Puppet
## Set Up 
### git clone
```
$ git@github.com:hironomiu-vg/VagrantKyoto1Day.git 
```
### 起動
```
$ cd VagrantTreasure2014  
$ vagrant up  
```

## Login
### demouser
```
$ ssh demouser@192.168.56.24
```
### vagrant
```
$ vagrant ssh
```
## Packages   
### iptables
- 自動起動
- port22,80 allow

### httpd
- 自動起動
- DocumentRootは適時設定すること

### PHP
- 5.4

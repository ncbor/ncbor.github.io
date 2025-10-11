---
layout: post
title: "Jornada KERNEL, KW e Debian"
date: 2025-01-15
excerpt: "Relato completo da minha experiência na disciplina de Software Livre, incluindo contribuições para o kernel Linux, KW e Debian."
categories: [software-livre, kernel, desenvolvimento]
tags: [linux, kernel, kw, debian, software-livre]
---

## Jornada KERNEL

### Semana 1

Na primeira semana, começamos a preparar o ambiente para buildar o kernel através do tutorial [Setting up a test environment for Linux Kernel Dev using QEMU and libvirt](https://flusp.ime.usp.br/kernel/qemu-libvirt-setup/) do grupo FLUSP. O Gabriel, minha dupla, não conseguiu fazer no MacOS dele, então fizemos ambos no meu notebook, rodando Arch Linux. Foi tranquilo de instalar a imagem apropriada, e o tutorial acabava aí.

### Semana 2

Na segunda semana, o tutorial foi: [Building and booting a custom Linux kernel for ARM](https://flusp.ime.usp.br/kernel/build-linux-for-arm/). Foi designado a nós o uso de kw durante as atividades. A maioria dos passos deu certo, **menos quando deixei o meu ssh aberto por 20 minutos com acesso root sem senha para qualquer um que quisesse kkkkkkk**. Ainda bem que o Davi logo interviu e reverteu isso. Dale IMEsec. Além disso, senti um pouco de dificuldade de internalizar o uso de VMs, que veio naturalmente conforme as outras aulas aconteceram.

### Semana 3

Essa foi a semana de problemas na eduroam, e tivemos que rodar nossa conexão via 3g. No final das contas, após muito esperar as etapas concluirem via internet móvel, não funcionou porque eu deletei a bridge que conectava a VM ao ssh (ou algo assim). Ainda bem, salvou meus pacotes kkkkk. Fomos para casa e só conseguimos resolver o problema do bridge deletado e completar o tutorial 1 e 2 plenamente ao abrir uma máquina na CONTABO. Nós usamos ela até hoje, resolvendo o problema do MacOS da minha dupla e permitindo que nós dois usássemos a mesma máquina para o desenvolvimento. E, sem maiores delongas, conseguimos cumprir os objetivos do tutorial [Introduction to Linux kernel build configuration and modules](https://flusp.ime.usp.br/kernel/modules-intro/) sem outras grandes dificuldades.

### Semana 4

Essa foi a primeira semana que conseguimos usar a VPS da CONTABO plenamente durante o encontro. Realizamos então o tutorial 4 [Introduction to Linux kernel Character Device Drivers](https://flusp.ime.usp.br/kernel/char-drivers-intro/) sem nenhuma grande dificuldade, ainda mais com a GUI envolvida. Até aqui, o kw se mostrou uma mão na roda para simplificar os processos. O que mais atrapalhou, no fim das contas, foi a demora da máquina da CONTABO para alguns procedimentos, principalmente buildar.

### Semana 5

Eu e Gabriel não fomos nesse encontro, e nos comprometemos a concluir o tutorial 5, ([The iio_simple_dummy Anatomy](https://flusp.ime.usp.br/iio/iio-dummy-anatomy/)), em casa. Por sorte nossa, esse tutorial não tinha nada pra fazer na prática, apenas ler e entender a organização do IIO subsystem. Concluimos a etapa 5 sem grandes problemas, e agora estávamos prontos para começar nosso patch.

### Semana 6 + break

Nessa semana, especificamente no dia do encontro, passei mal durante a parte da manhã e não pude estar presencialmente na aula. Assim, o Gabriel pegou todas informações para que conseguissemos fazer o patch juntos durante o Break. E assim foi feito, mesmo eu tendo que alcançar o andamento do Gabriel em algumas partes.

O Gabriel decidiu então que nós trataríamos de duplicações de código, e como eu não fui na aula, aceitei a decisão. Então, focamos em melhorar o código do arquivo `adc/sc27xx_adc.c`. O trabalho consistiu em generalizar algumas funções internas, além de melhorar drásticamente (na minha opinião) a legibilidade do script, removendo alguns switches ~~feios~~ que atrapalhavam. Nosso resultado consistiu na nova função `sc27xx_adc_scale_init` e na nova estrutura `adc_channel_scale` (para guardar os dados dos PMIC). Assim, acreditamos que alcançamos nossos objetivos estipulados para com este arquivo.

Nós dois geramos o patch juntos por discord, e o Gabriel ficou responsável por enviar pro Davi, sem maiores dificuldades. Para mais informações, acesse o [site do Gabriel](https://www.linux.ime.usp.br/~apolo/mac0470/)

### Semana 7: PITCH!

### [Fim do Kernel :)](https://lore.kernel.org/linux-iio/20250428034222.318898-1-gabrielgeraldinosouza@gmail.com/T/#u)

## Parte 2: KW

No começo, cogitamos mexer com pacotes como Pacman, ou Git, mais presentes no nosso dia a dia. Porém, após comparar as issues abertas e o fluxo de contribuição, preferimos seguir com o `kw` em vez das outras possibilidades.

A princípio, iriamos mexer com a issue [#1207](https://github.com/kworkflow/kworkflow/issues/1207), que trata sobre a lista de email para edições em mais de um subsystem do kernel. Porém, após falar com o Davi, percebemos que poderia ser uma escolha do kw fazer as coisas do jeito que a issue reclama. Então, decidimos mexer na issue [#1185](https://github.com/kworkflow/kworkflow/issues/1185), cujo problema consiste em envs diferentes com o mesmo nome em worktrees diferentes compartilham configurações e sobrescrevem arquivos compilados.

```
Description:

If an user creates two environments with the same name, but in different repositories and therefore, different config files, compiled files and kw settings, the latest environment used replaces everything from the previous one.

How to Reproduce:

Clone two different kernel repositories
Create a kw env with the same name, for example, LOCAL
Setup and compile file in repository 1 under LOCAL env.
In another tab, use the LOCAL env in repository 2. it will use everything from LOCAL env in repository 1.
```

### Solução

Nossa ideia consiste em usar base64 do pwd para contornar esse problema. Primeiramente, pensamos em adicionar um sufixo ao nome do env, e os próximos passos podem ser vistos abaixo. Vale notar que a partir daqui, a maior parte do desenvolvimento foi feita juntamente por **discord**

### Primeiro Pull Request

Nosso primeiro PR consistiu na implementação dessa ideia, com sete commits. Porém, antes de tudo, o rodrigosiqueira respondeu para organizarmos os commits de forma mais enxuta, direta ao ponto. Além disso, pediu para que não usássemos sufixos, mas sim um diretório único e exclusivo com o `base64(pwd)`. Também foi notado que estávamos alterando o contexto local, sendo que o problema só ocorria no contexto global. Finalmente, foram pedidos testes no mesmo commit das novas funções, e reforçou para que seguissemos o guideline de codestyle do kw.

### Segundo Pull Request

No segundo push adotou-se então o novo formato de codificação, reorganização de commits, adição de testes, e aplicação do codestyle. A solução apresentada aqui foi a solução final enviada por nós:

```
${cache_build_path}/${ENV_DIR}/${encoded_pwd}/${current_env_name}
```

O siqueira novamente respondeu com algumas recomendações de edição, sendo a principal delas a adição de uma função que migrará os ambientes dos usuários de kw para o novo formato, nomeada por ele como `migrate_old_env_to_base64`. Basicamente, ela verifica estrutura de diretórios no cache e invocá-la logo no início de main em kw_env.sh

### Terceiro Pull Request

A migração foi implementada, acompanhada de novos testes e correção de bugs. Os commits relevantes foram registrados conforme abaixo:

```
999ed24 Introduz função para codificar $PWD
79d1b07 Ajusta funções para usar PWD codificado como cache_build_path
4f517ce Migra ambientes existentes para novo caminho
```

O comando de listagem de ambientes agora detecta diretório antigo, aplica migração automática antes de listar e remove operações destrutivas diretas, garantindo compatibilidade retroativa.

Estamos no aguardo da resposta dele, dispostos a contribuir com o que mais for necessário. Aliás, pessoalmente estive interessado em realizar outras contribuições após mexer com o kw, cuja experiência foi mais leve e engajante do que contribuir com o kernel, e mais aprofundada do que a contribuição debian abaixo. Também vale notar que o Gabriel está com uma ideia nova e vai criar uma nova issue no repositório do kworkflow.

Para imagens, entre no [site do Gabriel](https://www.linux.ime.usp.br/~apolo/mac0470/), pois não consegui adicionar aqui :).

## Parte 3: Jornada Debian

Nas duas últimas aulas da disciplina antes dos pitches finais, nosso professor Paulo apresentou Charles e Lucas Kanashiro, mantenedores do Debian Brasil. A experiência de conhecer esses contribuintes experientes e entender seu papel no projeto foi bem interessante, além de serem bastante carismáticos e explicativos.

Após as palestras, ficamos encarregados de atualizar alguns pacotes do ecossistema Debian. Meu pacote foi o `dhcpig`, que integra o componente main, subsystem net, fornecendo um utilitário de auditoria de rede para simular ataques de esgotamento de alocação DHCP.

Na parte de empacotamento, editamos o arquivo `debian/control` para atualizar a versão, commitamos, e em seguida geramos outro commit contendo o changelog do anterior (presente em `debian/changelog`). Se engana quem acha que é simples assim: Charles e Lucas deixaram tudo na boca do gol para nós, arrumando todos os outros trechos de código necessários antes da aula.

Poucos dias depois, Charles aprovou o merge request, validando nosso entendimento básico do fluxo de contribuições do Debian.

Assim, com um projeto leve e engajante, terminamos a disciplina de Software Livre e nos preparamos para o pitch final.

### Pitch Final!! (pov)

## CAMINHOS

Pretendo seguir a trilha da Pós. Como não tem ainda no [site oficial do BCC](https://bcc.ime.usp.br/trilhas/), também manifesto aqui meu interesse em seguir a trilha de Teoria da Computação.

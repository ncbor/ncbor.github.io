---
layout: project
title: "TCC (2026)"
permalink: /pages/projetos/tcc/
tag: tcc
tabs: true
---

<div class="tab-nav">
    <a class="tab-btn tab-btn--active">Proposta</a>
    {% assign tcc_poster = site.static_files | where_exp: "f", "f.path contains 'projetos/tcc/poster.pdf'" | first %}
    {% if tcc_poster %}
    <a class="tab-btn" href="/pages/projetos/tcc/poster/">Poster</a>
    {% else %}
    <a class="tab-btn" onclick="alert('Aguarde!')">Poster</a>
    {% endif %}
    {% assign tcc_mono = site.static_files | where_exp: "f", "f.path contains 'projetos/tcc/monografia.pdf'" | first %}
    {% if tcc_mono %}
    <a class="tab-btn" href="/pages/projetos/tcc/monografia/">Monografia</a>
    {% else %}
    <a class="tab-btn" onclick="alert('Aguarde!')">Monografia</a>
    {% endif %}
</div>

<div class="glass--lg" markdown="1">

# Design de Algoritmos e Plataformas Orientados ao Desenvolvimento Humano
{: style="text-align: center;"}

Tese de Conclusão de Curso\
Bacharelado em Ciência da Computação\
Instituto de Matemática, Estatística e Ciência da Computação (IME - USP)\
Universidade de São Paulo
{: style="text-align: center;"}
Aluno: Nícolas Caldas Borsari\
Orientador: Prof. Dr. Daniel Abs (e-lab, IP - USP)
{: style="text-align: center;"}

---

## 1 Introdução:

### 1.1 Algoritmos e os impactos sociais

(afirmação de que algoritmos tem impacto social) - aqui vamos procurar mais estudos que sustentem essa afirmação. ]

### 1.2 Cibersegurança e a dimensão psicológica

(explorar como a violência, roubo, invasão, medo, violação tem uma relação direta com a vivência  humana, surgindo do meio digital (ciber)) - Urie Bronfenbrenner[^bronfenbrenner1979] - Contextos Digitais[^abs2022]

### 1.3 Design de Algoritmo 

<br>

## 2 Objetivos

### 2.1 Objetivo Geral  

1. Compreender as possibilidades de um design de algoritmo que contemple dimensões psicológicas e esteja orientado ao desenvolvimento humano. 

### 2.2  Objetivos específicos 

1. Analisar as plataformas; 
2. Descrever a relação dos algoritmos dessas plataformas nos contextos digitais; 
3. Contribuir com uma proposta de design de algoritmo orientado ao desenvolvimento humano. 

<br>

## 3 Método

### 3.1 Objetos de análise serão escolhidos e organizados a partir de três categorias de finalidades: 

1) Comunicação : xxxx 

2) Consumo: xxxx 

3) Utilitário: xxxx

### 3.2 Processo de coleta: xxxx

### 3.3 Procedimentos de análise: Os dados coletados serão analisados a partir do modelo de análise dos Contextos Digitais (ABS, 2022). 

<br>

## 4 Analise 

<br>

## 5 Discussão 

<br>

## 6 Propostas

<br>

---

<br>

## Próximos Passos

<br>

## Perguntas em aberto

<br>

## Trabalhos futuros 

<br>

---

## Referências

[^bronfenbrenner1979]: BRONFENBRENNER, U. (1979). *The Ecology of Human Development: Experiments by Nature and Design*. Harvard University Press.

[^abs2022]: ABS, D. (2022). *Contextos Digitais*. e-lab, Instituto de Psicologia, USP.

</div>

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

Tese de Conclusão de Curso<br>
Bacharelado em Ciência da Computação<br>
Instituto de Matemática, Estatística e Ciência da Computação<br>
Universidade de São Paulo
{: style="text-align: center;"}

Aluno: Nícolas Caldas Borsari (IME - USP)<br>
Orientador: Prof. Dr. Daniel Abs (e-lab, IP - USP)
{: style="text-align: center;"}

---

## 1 Introdução:

### 1.1 Algoritmos e os impactos sociais

Vivemos hoje em um mundo extremamente digitalizado, no qual inúmeros processos sociais são intermediados por plataformas e algoritmos computacionais, como a comunicação, o consumo de bens e de entretenimento, processos utilitários, entre outros. Ao passo que são algoritmos e plataformas que conduzem tais processos sociais, é evidente que eles também têm seus impactos sociais.

Pesquisas recentes relatam impactos sociais ao usuário de vários tipos [^malik2022] [^wang2023] [^olhede2018], como manipulação [^wang2023] [^saurwein2021] [^reviglio2020], perda de privacidade [^wang2023] [^jin2025] [^saurwein2021], censura [^cobbe2021] [^gorwa2020] [^latzer2020], seleção de conteúdo enviesada [^malik2022] [^wang2023], bolhas de filtro [^wang2023] [^nazarov2020], discriminação [^malik2022] [^wang2023], câmeras de eco [^wang2023], polarização política [^jin2025], induzindo alterações de comportamento[^nazarov2020] e padrões parecidos com o de vícios[^hu2025].

Além disso, pesquisadores afirmam que boa parte dos algoritmos utilizados hoje em dia são opacos em relação às suas técnicas, premissas, e orientações, muitas vezes reforçando padrões sociais problemáticos já existentes sem que o público sequer perceba. [^saurwein2021] [^etter2021] [^gorwa2020] [^metzler2024] [^cobbe2021] [^reviglio2020]
Em resumo, algoritmos e plataformas não são apenas ferramentas neutras. Há ampla base científica para concluir que eles moldam o que pessoas veem, pensam, sentem e podem fazer, tanto no mundo digital quanto no mundo físico. Ao passo que apresentam reforço a desigualdades, riscos à saúde mental, à democracia e à autonomia dos usuários, surge o desafio central de alinhar esses sistemas a valores de justiça, transparência e bem‑estar coletivo, todos envolvidos no conceito de desenvolvimento humano.


### 1.2 Cibersegurança e a dimensão psicológica

A cibersegurança é definida como o conjunto de técnicas de proteção contra ameaças digitais, como hacking, roubo de dados e ciberterrorismo, dentre várias outras vulnerabilidades em sistemas digitais. Quando falha, as consequências de um possível ataque possuem um profundo impacto psicológico e social que fragiliza indivíduos e instituições [^palassis2021] [^akca2023] [^gross2017] [^borwell2025] [^tojin2025] [^singh2024]. A vitimização por cibercrime ou brechas de dados pessoais, por exemplo, gera ansiedade, medo, sensação de violação e perda de autonomia, sendo descrita como uma forma de violência psicológica [^palassis2021] [^akca2023]. Tais incidentes afetam o bem-estar, a confiança no ambiente digital e se correlacionam com sintomas depressivos e estresse [^spravtseva2024] [^paat2020].

No entanto, a insegurança psicológica não é causada apenas por ataques externos, mas também é gerada pelos próprios sistemas algorítmicos das plataformas, que configuram formas de manipulação e violação da autonomia humana [^ienca2023]. Assim como a seção anterior (1.1) identificou problemas como manipulação, opacidade, discriminação e vício, a literatura recente aponta que os algoritmos de recomendação são desenhados para capturar a atenção, manter o usuário online e se sobrepor as suas decisões racionais, promovendo um ambiente aditivo e homogêneo de pensamento [^bojic2024] [^hu2025] [^n2025] [^ienca2023]. Essa exploração de vulnerabilidades cognitivas leva a impactos psicológicos diretos, desde elevação de estresse, diminuição do autocontrole e aumento da ansiedade e baixa autoestima, especialmente em adolescentes [^hu2025] [^korte2020] [^shanmugasundaram2023] [^arora2024], até mesmo a uma menor capacidade de senso crítico e decisões racionais por parte dos afetados, mesmo quando fora de um contexto digital. (REFERENCIAA)

Tais impactos de perda de autonomia, vulnerabilidade, ansiedade e desconfiança, são efeitos psicológicos análogos ou até mais amplos do que os causados pelo cibercrime tradicional [^potnis2024] [^shelby2022] [^saurwein2021]. Ao alimentar polarização e enfraquecer o pensamento crítico, os algoritmos causam danos sistêmicos que minam a capacidade do indivíduo de decidir de forma autônoma [^bojic2024] [^metzler2024] [^n2025]. Portanto, diversos autores argumentam que a segurança não pode ser vista apenas como proteção técnica, mas como proteção contra danos psicológicos, emocionais e de autonomia em ecossistemas online [^rivera2024]. A insegurança psicológica produzida pela arquitetura algorítmica das plataformas digitais constitui, dessa forma, um problema de cibersegurança em um grau ampliado, que fragiliza a resiliência digital e o desenvolvimento humano [^ohu2025] [^spravtseva2024].


### 1.3 Design de Algoritmo 

em confecção

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

### PARTE 1.1

[^bojic2024]: BOJIC, Ljubisa. AI alignment: Assessing the global impact of recommender systems. Futures, v. 160, p. 103383, 2024. DOI: https://doi.org/10.1016/j.futures.2024.103383. Acesso em: 6 maio 2026.

[^cobbe2021]: COBBE, Jennifer. Algorithmic censorship by social platforms: power and resistance. Philosophy & Technology, v. 34, n. 4, p. 739-766, 2021. DOI: https://doi.org/10.1007/s13347-020-00429-0. Acesso em: 6 maio 2026.

[^etter2021]: ETTER, Michael; ALBU, Oana Brindusa. Activists in the dark: social media algorithms and collective action in two social movement organizations. Organization, v. 28, n. 1, p. 68-91, 2021. DOI: https://doi.org/10.1177/1350508420961532. Acesso em: 6 maio 2026.

[^gorwa2020]: GORWA, Robert; BINNS, Reuben; KATZENBACH, Christian. Algorithmic content moderation: technical and political challenges in the automation of platform governance. Big Data & Society, v. 7, n. 1, 2020. DOI: https://doi.org/10.1177/2053951719897945. Acesso em: 6 maio 2026.

[^hu2025]: HU, Ziye. Research on the impact of social media algorithmic on user decision-making: focus on algorithmic transparent and ethical design. Applied and Computational Engineering, v. 174, n. 1, p. 18-22, 2025. DOI: https://doi.org/10.54254/2755-2721/2025.po24665. Acesso em: 6 maio 2026.

[^jin2025]: JIN, Jiayi; LIU, Jianrui; YING, Haoting. The positive and negative impacts of social media algorithms on consumer behavior and optimization strategies. Advances in Economics, Management and Political Sciences, v. 237, n. 1, p. 26-31, 2025. DOI: https://doi.org/10.54254/2754-1169/2025.ld28881. Acesso em: 6 maio 2026.

[^latzer2020]: LATZER, Michael; JUST, Natascha. Governance by and of algorithms on the internet: impact and consequences. In: Oxford Research Encyclopedia of Communication. Oxford: Oxford University Press, 2020. DOI: https://doi.org/10.1093/acrefore/9780190228613.013.904. Acesso em: 6 maio 2026.

[^malik2022]: MALIK, Hanna Maria et al. Dynamics of social harms in an algorithmic context. International Journal for Crime, Justice and Social Democracy, v. 10, n. 4, 2022. DOI: https://doi.org/10.5204/ijcjsd.2141. Acesso em: 6 maio 2026.

[^metzler2024]: METZLER, Hannah; GARCIA, David. Social drivers and algorithmic mechanisms on digital media. Perspectives on Psychological Science, v. 19, n. 5, p. 735-748, 2024. DOI: https://doi.org/10.1177/17456916231185057. Acesso em: 6 maio 2026.

[^nazarov2020]: NAZAROV, M. M. Media platforms and algorithms: content and social implications. Communicology, v. 8, n. 2, p. 108-124, 2020. DOI: https://doi.org/10.21453/2311-3065-2020-8-2-108-124. Acesso em: 6 maio 2026.

[^olhede2018]: OLHEDE, S. C.; WOLFE, P. J. The growing ubiquity of algorithms in society: implications, impacts and innovations. Philosophical Transactions of the Royal Society A: Mathematical, Physical and Engineering Sciences, v. 376, n. 2128, p. 20170364, 2018. DOI: https://doi.org/10.1098/rsta.2017.0364. Acesso em: 6 maio 2026.

[^reviglio2020]: REVIGLIO, Urbano; AGOSTI, Claudio. Thinking outside the black-box: the case for 'algorithmic sovereignty' in social media. Social Media + Society, v. 6, n. 2, 2020. DOI: https://doi.org/10.1177/2056305120915613. Acesso em: 6 maio 2026.

[^saurwein2021]: SAURWEIN, Florian; SPENCER-SMITH, Charlotte. Automated trouble: the role of algorithmic selection in harms on social media platforms. Media and Communication, v. 9, n. 4, p. 222-233, 2021. DOI: https://doi.org/10.17645/mac.v9i4.4062. Acesso em: 6 maio 2026.

[^wang2023]: WANG, Xinwei. The impact of the application of algorithms in social media marketing on society. Lecture Notes in Education Psychology and Public Media, v. 9, n. 1, p. 424-431, 2023. DOI: https://doi.org/10.54254/2753-7048/9/20230319. Acesso em: 6 maio 2026.

### PARTE 1.2

[^abs2022]: ABS, D. (2022). *Contextos Digitais*. e-lab, Instituto de Psicologia, USP.

[^akca2023]: AKÇA, Burak. Examining the breaching of personal data in cyberspace from the perspective of psychological violence. JOURNAL OF AWARENESS, 2023. DOI: https://doi.org/10.26809/joa.2013. Acesso em: 6 maio 2026.

[^arora2024]: ARORA, Shubhangi; ARORA, Shivani; HASTINGS, Jeffrey. The Psychological Impacts of Algorithmic and AI-Driven Social Media on Teenagers: A Call to Action. 2024 IEEE Digital Platforms and Societal Harms (DPSH), p. 1-7, 2024. DOI: https://doi.org/10.1109/dpsh60098.2024.10774922. Acesso em: 6 maio 2026.

[^borwell2025]: BORWELL, John; JANSEN, Jaap; STOL, Wietske. The psychological impact of cybercrime victimization: The importance of personal and circumstantial factors. European Journal of Criminology, v. 22, p. 603 - 624, 2025. DOI: https://doi.org/10.1177/14773708241312506. Acesso em: 6 maio 2026.

[^gross2017]: GROSS, Michael; CANETTI, Daphna; RANDALL, David. Cyberterrorism: its effects on psychological well-being, public confidence and political attitudes. J. Cybersecur., v. 3, p. 49-58, 2017. DOI: https://doi.org/10.1093/cybsec/tyw018. Acesso em: 6 maio 2026.

[^ienca2023]: IENCA, Marcello. On Artificial Intelligence and Manipulation. Topoi, v. 42, p. 833-842, 2023. DOI: https://doi.org/10.1007/s11245-023-09940-3. Acesso em: 6 maio 2026.

[^korte2020]: KORTE, Martin. The impact of the digital revolution  on human brain and behavior: where  do we stand? . Dialogues in Clinical Neuroscience, v. 22, p. 101 - 111, 2020. DOI: https://doi.org/10.31887/dcns.2020.22.2/mkorte. Acesso em: 6 maio 2026.

[^n2025]: N, G. et al. Long-Term Effects of Algorithm-Driven Content Consumption on Youth Development and Psychological Perceptions. International Journal of Advanced Multidisciplinary Research and Studies, v. 5, n. 3, p. 4217, 2025. DOI: https://doi.org/10.62225/2583049x.2025.5.3.4217. Acesso em: 6 maio 2026.

[^ohu2025]: OHU, Fortune; JONES, Lwanga. The Intersection of Cyberwarfare, Social Media, and Adolescent Self- Esteem: A Forensic Cyberpsychology Analysis. International Conference on Cyber Warfare and Security, 2025. DOI: https://doi.org/10.34190/iccws.20.1.3375. Acesso em: 6 maio 2026.

[^paat2020]: PAAT, Yvonne; MARKHAM, Christopher. Digital crime, trauma, and abuse: Internet safety and cyber risks for adolescents and emerging adults in the 21st century. Social Work in Mental Health, v. 19, p. 18 - 40, 2020. DOI: https://doi.org/10.1080/15332985.2020.1845281. Acesso em: 6 maio 2026.

[^palassis2021]: PALASSIS, Anastasios; SPEELMAN, Craig; POOLEY, Janice. An Exploration of the Psychological Impact of Hacking Victimization. SAGE Open, v. 11, 2021. DOI: https://doi.org/10.1177/21582440211061556. Acesso em: 6 maio 2026.

[^potnis2024]: POTNIS, Devendra; TAHAMTAN, Iman; MCDONALD, Luanne. Negative consequences of information gatekeeping through algorithmic technologies: An Annual Review of Information Science and Technology (ARIST) paper. Journal of the Association for Information Science and Technology, v. 76, p. 262 - 288, 2024. DOI: https://doi.org/10.1002/asi.24955. Acesso em: 6 maio 2026.

[^rivera2024]: RIVERA, Valeria et al. Safer Algorithmically-Mediated Offline Introductions: Harms and Protective Behaviors. Proceedings of the ACM on Human-Computer Interaction, v. 8, p. 1 - 43, 2024. DOI: https://doi.org/10.1145/3686948. Acesso em: 6 maio 2026.

[^shanmugasundaram2023]: SHANMUGASUNDARAM, Meenalochani; TAMILARASU, Anbu. The impact of digital technology, social media, and artificial intelligence on cognitive functions: a review. Frontiers in Cognition, 2023. DOI: https://doi.org/10.3389/fcogn.2023.1203077. Acesso em: 6 maio 2026.

[^shelby2022]: SHELBY, Ryan et al. Sociotechnical Harms of Algorithmic Systems: Scoping a Taxonomy for Harm Reduction. Proceedings of the 2023 AAAI/ACM Conference on AI, Ethics, and Society, 2022. DOI: https://doi.org/10.1145/3600211.3604673. Acesso em: 6 maio 2026.

[^singh2024]: SINGH, Bhupinder; CHEEMA, Sunny. Psychology in Cybersecurity: Unveiling the Human Dimensions of Digital Resilience. International Journal of Advanced Networking and Applications, 2024. DOI: https://doi.org/10.35444/ijana.2024.16107. Acesso em: 6 maio 2026.

[^spravtseva2024]: SPRAVTSEVA, Kseniia. Psychological aspects of security and privacy in the digital environment. Bulletin of Taras Shevchenko National University of Kyiv. Psychology, 2024. DOI: https://doi.org/10.17721/bpsy.2024.2(20).17. Acesso em: 6 maio 2026.

[^tojin2025]: TOJIN, Samuel; STAMATOVIĆ-GAJIĆ, Bojana. The psychological effects of cybersecurity breaches among individuals in Nigeria. Glasnik javnog zdravlja, 2025. DOI: https://doi.org/10.5937/serbjph2502120t. Acesso em: 6 maio 2026.


### AINDA NÃO UTILIZADOS

[^abs2022]: ABS, D. (2022). Contextos Digitais. e-lab, Instituto de Psicologia, USP.

[^banker2019]: BANKER, Sridhar; KHETANI, Shivani. Algorithm Overdependence: How the Use of Algorithmic Recommendation Systems Can Increase Risks to Consumer Well-Being. Journal of Public Policy & Marketing, v. 38, p. 500 - 515, 2019. DOI: https://doi.org/10.1177/0743915619858057. Acesso em: 6 maio 2026.

[^bogert2021]: BOGERT, Ethan; SCHECTER, Alec; WATSON, Rebecca. Humans rely more on algorithms than social influence as a task becomes more difficult. Scientific Reports, v. 11, 2021. DOI: https://doi.org/10.1038/s41598-021-87480-9. Acesso em: 6 maio 2026.

[^brady2023]: BRADY, William J. et al. Algorithm-mediated social learning in online social networks. Trends in Cognitive Sciences, v. 27, n. 10, p. 947-960, 2023. DOI: https://doi.org/10.1016/j.tics.2023.06.008. Acesso em: 6 maio 2026.

[^bronfenbrenner1979]: BRONFENBRENNER, U. (1979). The Ecology of Human Development: Experiments by Nature and Design. Harvard University Press.

[^brown2025]: BROWN, Émilie. Recommended Selves: Authenticity and Algorithmic Filtering. Journal of the American Philosophical Association, 2025. DOI: https://doi.org/10.1017/apa.2025.10009. Acesso em: 6 maio 2026.

[^burrell2021]: BURRELL, Jenna; FOURCADE, Marion. The society of algorithms. Annual Review of Sociology, v. 47, n. 1, p. 213-237, 2021. DOI: https://doi.org/10.1146/annurev-soc-090820-020800. Acesso em: 6 maio 2026.

[^howard2022]: HOWARD, Jason. Algorithms and the future of work.. American journal of industrial medicine, 2022. DOI: https://doi.org/10.1002/ajim.23429. Acesso em: 6 maio 2026.

[^keding2021]: KEDING, Carolin; MEISSNER, Peter. Managerial overreliance on AI-augmented decision-making processes: How the use of AI-based advisory systems shapes choice behavior in R&D investment decisions. Technological Forecasting and Social Change, v. 171, p. 120970, 2021. DOI: https://doi.org/10.1016/j.techfore.2021.120970. Acesso em: 6 maio 2026.

[^marjanovic2021]: MARJANOVIC, Olivera; CECEZ-KECMANOVIC, Dubravka; VIDGEN, Richard. Algorithmic pollution: making the invisible visible. Journal of Information Technology, v. 36, n. 4, p. 391-408, 2021. DOI: https://doi.org/10.1177/02683962211010356. Acesso em: 6 maio 2026.

[^singh2025]: SINGH, Rahul. The Algorithm Effect: How Social Media Shapes Your Thinking. International Journal of Advanced Research in Science, Communication and Technology, 2025. DOI: https://doi.org/10.48175/ijarsct-28066. Acesso em: 6 maio 2026.

[^vallejos2021]: VALLEJOS, Emily et al. The impact of algorithmic decision-making processes on young people’s well-being. Health Informatics Journal, v. 27, 2021. DOI: https://doi.org/10.1177/1460458220972750. Acesso em: 6 maio 2026.




[^firth2024]: FIRTH, Joseph et al. From “online brains” to “online lives”: understanding the individualized impacts of Internet use across psychological, cognitive and social dimensions. World Psychiatry, v. 23, 2024. DOI: https://doi.org/10.1002/wps.21188. Acesso em: 6 maio 2026.

[^gnatik2024]: GNATIK, Elena. Digital Transformation of Socio-Technological Reality: Problems and Risks. RUDN Journal of Philosophy, 2024. DOI: https://doi.org/10.22363/2313-2302-2024-28-1-168-180. Acesso em: 6 maio 2026.

[^hutmacher2022]: HUTMACHER, Frederic; APPEL, Markus. The Psychology of Personalization in Digital Environments: From Motivation to Well-Being – A Theoretical Integration. Review of General Psychology, v. 27, p. 26 - 40, 2022. DOI: https://doi.org/10.1177/10892680221105663. Acesso em: 6 maio 2026.






[^azizi2025]: AZIZI, Ali; MOHAMMADI, Maliheh; SAMADZAI, Ajmal. AI IN CYBER DEFENSE: PRIVACY RISKS, PUBLIC TRUST, AND POLICY CHALLENGES. Jurnal Ilmiah Dinamika Sosial, v. 9, n. 1, 2025. DOI: https://doi.org/10.38043/jids.v9i1.6278. Acesso em: 6 maio 2026.

<script>
document.addEventListener('DOMContentLoaded', function() {
  var footnotes = document.querySelector('.footnotes');
  var glass = document.querySelector('.glass--lg');
  if (footnotes && glass) glass.appendChild(footnotes);
});
</script>

</div>

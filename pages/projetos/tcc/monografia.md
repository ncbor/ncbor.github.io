---
layout: pdf
title: "TCC — Monografia"
permalink: /pages/projetos/tcc/monografia/
pdf: /pages/projetos/tcc/monografia.pdf
---

<div class="tab-nav">
    <a class="tab-btn" href="/pages/projetos/tcc/">Proposta</a>
    {% assign tcc_poster = site.static_files | where: "path", "/pages/projetos/tcc/poster.pdf" | first %}
    {% if tcc_poster %}<a class="tab-btn" href="/pages/projetos/tcc/poster/">Poster</a>
    {% else %}<a class="tab-btn" onclick="alert('Aguarde!')">Poster</a>{% endif %}
    <a class="tab-btn tab-btn--active">Monografia</a>
</div>

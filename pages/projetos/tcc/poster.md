---
layout: pdf
title: "TCC (2026)"
permalink: /pages/projetos/tcc/poster/
pdf: /pages/projetos/tcc/poster.pdf
---

<div class="tab-nav">
    <a class="tab-btn" href="/pages/projetos/tcc/">Proposta</a>
    <a class="tab-btn tab-btn--active">Poster</a>
    {% assign tcc_mono = site.static_files | where_exp: "f", "f.path contains 'projetos/tcc/monografia.pdf'" | first %}
    {% if tcc_mono %}<a class="tab-btn" href="/pages/projetos/tcc/monografia/">Monografia</a>
    {% else %}<a class="tab-btn" onclick="alert('Aguarde!')">Monografia</a>{% endif %}
</div>

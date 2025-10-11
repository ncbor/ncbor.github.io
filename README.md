# 🌐 Site Pessoal - Nícolas Caldas Borsari

Um site pessoal moderno e responsivo construído com Jekyll, apresentando um design elegante com foto de fundo personalizada e funcionalidades interativas.

## 📋 Índice

- [Visão Geral](#-visão-geral)
- [Estrutura do Projeto](#-estrutura-do-projeto)
- [Tecnologias Utilizadas](#-tecnologias-utilizadas)
- [Instalação e Configuração](#-instalação-e-configuração)
- [Desenvolvimento Local](#-desenvolvimento-local)
- [Funcionalidades](#-funcionalidades)
- [Personalização](#-personalização)
- [Estrutura de Arquivos](#-estrutura-de-arquivos)
- [Como Adicionar Conteúdo](#-como-adicionar-conteúdo)
- [Deploy](#-deploy)
- [Troubleshooting](#-troubleshooting)
- [Recursos de Aprendizado](#-recursos-de-aprendizado)

## 🎯 Visão Geral

Este site pessoal foi desenvolvido para ser:
- **Moderno e Responsivo**: Design adaptável para todos os dispositivos
- **Fácil de Manter**: Estrutura organizada e documentação completa
- **Personalizável**: Fácil customização de cores, imagens e conteúdo
- **Performático**: Carregamento rápido e otimizado
- **SEO Friendly**: Otimizado para mecanismos de busca

## 📁 Estrutura do Projeto

```
ncbor.github.io/
├── 📄 Arquivos de Configuração (Root)
│   ├── _config.yml          # Configuração principal do Jekyll
│   ├── Gemfile              # Dependências Ruby
│   ├── Gemfile.lock         # Versões fixas das dependências
│   └── README.md            # Este arquivo
│
├── 📄 Páginas Principais (Root)
│   └── index.html           # Página inicial
│
├── 📁 _layouts/             # Templates Jekyll
│   ├── default.html         # Layout padrão
│   └── post.html           # Layout para posts
│
├── 📁 _includes/            # Componentes reutilizáveis
│   ├── head.html           # Meta tags e CSS
│   └── nav.html            # Navegação
│
├── 📁 _posts/               # Posts do blog
│   ├── 2025-01-15-*.md     # Posts em Markdown
│   └── 2025-01-16-*.md
│
├── 📁 pages/                # Páginas estáticas
│   ├── about.html          # Sobre mim
│   ├── blog.html           # Lista de posts
│   ├── achados.html        # Galeria de mídias
│   ├── hobbies.html        # Passatempos
│   └── links.html          # Links interessantes
│
├── 📁 assets/               # Recursos estáticos
│   ├── css/
│   │   └── style.css       # Estilos principais
│   └── images/             # Imagens do site
│       ├── 1.jpg           # Foto de fundo
│       ├── aguas1.jpg      # Galeria
│       ├── aguas2.jpg
│       └── quadriculados.jpg
│
├── 📁 scripts/              # Scripts utilitários
│   └── serve.sh            # Script para rodar localmente
│
├── 📁 docs/                 # Documentação
│   └── COMO_TROCAR_FOTO.md # Guia para trocar foto
│
└── 📁 _site/               # Site gerado (não versionar)
```

## 🛠 Tecnologias Utilizadas

### Backend
- **Jekyll 4.4.1**: Gerador de sites estáticos
- **Ruby 3.4.5**: Linguagem base
- **Bundler**: Gerenciador de dependências

### Frontend
- **HTML5**: Estrutura semântica
- **CSS3**: Estilos modernos com variáveis CSS
- **JavaScript**: Interatividade (galeria infinita)
- **Markdown**: Posts do blog

### Plugins Jekyll
- **jekyll-feed**: Feed RSS automático
- **jekyll-sitemap**: Sitemap XML automático

## 🚀 Instalação e Configuração

### Pré-requisitos
- Ruby 3.4+ (recomendado)
- Bundler
- Git

### Passos de Instalação

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/ncbor/ncbor.github.io.git
   cd ncbor.github.io
   ```

2. **Instale as dependências:**
   ```bash
   bundle install
   ```

3. **Execute o site localmente:**
   ```bash
   ./scripts/serve.sh
   # ou
   bundle exec jekyll serve --host 0.0.0.0 --port 4000
   ```

4. **Acesse o site:**
   - Local: http://localhost:4000
   - Rede: http://0.0.0.0:4000

## 💻 Desenvolvimento Local

### Comandos Úteis

```bash
# Rodar servidor de desenvolvimento
./scripts/serve.sh

# Build para produção
bundle exec jekyll build

# Limpar cache e rebuild
bundle exec jekyll clean
bundle exec jekyll build

# Servir site buildado
bundle exec jekyll serve --detach

# Build com modo incremental (mais rápido)
bundle exec jekyll serve --incremental
```

### Auto-reload
O Jekyll tem auto-reload habilitado por padrão. Qualquer mudança nos arquivos será refletida automaticamente no navegador.

## ✨ Funcionalidades

### 🏠 Página Inicial
- Apresentação pessoal
- Lista de posts recentes
- Navegação intuitiva

### 📝 Blog
- Sistema de posts automático
- Categorias e tags
- URLs limpas
- Feed RSS

### 🎯 Achados
- Galeria infinita de mídias
- Suporte a imagens, GIFs e vídeos
- Carregamento lazy
- Botão "Carregar Mais"

### 🔗 Links
- Categorização por temas
- Cards interativos
- Formulário de sugestões
- Links externos

### 🎨 Design
- Foto de fundo personalizada
- Efeitos glassmorphism
- Animações suaves
- Design responsivo
- Tipografia moderna

## 🎨 Personalização

### Trocar Foto de Fundo

1. **Método 1 - Substituir:**
   - Substitua `assets/images/1.jpg` pela nova foto
   - Mantenha o mesmo nome

2. **Método 2 - Nova foto:**
   - Adicione nova foto em `assets/images/`
   - Edite `assets/css/style.css` linha 58:
   ```css
   background: url('/assets/images/nova_foto.jpg') no-repeat center center fixed;
   ```

### Personalizar Cores

Edite as variáveis CSS em `assets/css/style.css`:

```css
:root {
    --primary-color: #2563eb;    /* Azul principal */
    --accent-color: #f59e0b;     /* Laranja de destaque */
    --text-primary: #1e293b;     /* Texto principal */
    /* ... outras variáveis */
}
```

### Adicionar Páginas

1. Crie arquivo em `pages/`
2. Adicione front matter:
   ```yaml
   ---
   layout: default
   title: "Título da Página"
   permalink: /pages/minha-pagina/
   ---
   ```
3. Adicione link na navegação (`_includes/nav.html`)

## 📂 Estrutura de Arquivos Detalhada

### Configuração Principal (`_config.yml`)
```yaml
# Site settings
title: "Nícolas Caldas Borsari"
description: "Um lugar simples onde compartilho meus pensamentos..."
baseurl: ""
url: "https://ncbor.github.io"

# Build settings
markdown: kramdown
highlighter: rouge
permalink: pretty

# Collections
collections:
  posts:
    output: true
    permalink: /:year/:month/:day/:title/
```

### Layouts (`_layouts/`)

**default.html**: Layout base com navegação e footer
**post.html**: Layout específico para posts do blog

### Includes (`_includes/`)

**head.html**: Meta tags, CSS, analytics
**nav.html**: Menu de navegação

### Assets (`assets/`)

**css/style.css**: Todos os estilos do site
**images/**: Imagens e mídias

## 📝 Como Adicionar Conteúdo

### Adicionar Post no Blog

1. Crie arquivo em `_posts/` com formato:
   ```
   YYYY-MM-DD-titulo-do-post.md
   ```

2. Adicione front matter:
   ```yaml
   ---
   layout: post
   title: "Título do Post"
   date: 2025-01-16
   excerpt: "Resumo do post"
   categories: [categoria1, categoria2]
   tags: [tag1, tag2]
   ---
   ```

3. Escreva o conteúdo em Markdown

### Adicionar Imagem na Galeria

1. Adicione imagem em `assets/images/`
2. Edite `pages/achados.html`:
   ```html
   <div class="gallery-item">
       <img src="/assets/images/nova-imagem.jpg" alt="Descrição" loading="lazy">
       <div class="gallery-caption">Legenda da imagem</div>
   </div>
   ```

### Adicionar Link

1. Edite `pages/links.html`
2. Adicione novo card:
   ```html
   <div class="link-card">
       <div class="link-icon">🔗</div>
       <div class="link-content">
           <h3><a href="https://exemplo.com" target="_blank">Nome do Site</a></h3>
           <p>Descrição do link</p>
           <span class="link-tag">Categoria</span>
       </div>
   </div>
   ```

## 🚀 Deploy

### GitHub Pages (Recomendado)

1. **Push para o repositório:**
   ```bash
   git add .
   git commit -m "Atualização do site"
   git push origin main
   ```

2. **Configure GitHub Pages:**
   - Vá em Settings > Pages
   - Source: Deploy from a branch
   - Branch: main
   - Folder: / (root)

3. **Aguarde o deploy** (pode levar alguns minutos)

### Deploy Manual

1. **Build do site:**
   ```bash
   bundle exec jekyll build
   ```

2. **Upload da pasta `_site/`** para seu servidor

## 🔧 Troubleshooting

### Problemas Comuns

**Erro: "bundle: command not found"**
```bash
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"
```

**Erro: "Permission denied"**
```bash
bundle config set --local path 'vendor/bundle'
bundle install
```

**Páginas não carregam**
- Verifique se os permalinks estão corretos
- Confirme se os arquivos estão na pasta `pages/`
- Verifique os links na navegação

**Imagens não aparecem**
- Verifique se estão em `assets/images/`
- Confirme os caminhos nos arquivos HTML
- Teste com caminho absoluto: `/assets/images/nome.jpg`

**CSS não carrega**
- Verifique se está em `assets/css/style.css`
- Confirme o link no `_includes/head.html`

### Logs e Debug

```bash
# Build com verbose
bundle exec jekyll build --verbose

# Servir com debug
bundle exec jekyll serve --verbose

# Limpar tudo e rebuild
rm -rf _site .jekyll-cache
bundle exec jekyll build
```

## 📚 Recursos de Aprendizado

### Jekyll
- [Documentação Oficial](https://jekyllrb.com/docs/)
- [Jekyll Tutorial](https://jekyllrb.com/docs/step-by-step/01-setup/)
- [Liquid Template Language](https://shopify.github.io/liquid/)

### Markdown
- [Markdown Guide](https://www.markdownguide.org/)
- [GitHub Flavored Markdown](https://github.github.com/gfm/)

### CSS
- [CSS Grid Guide](https://css-tricks.com/snippets/css/complete-guide-grid/)
- [Flexbox Guide](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)
- [CSS Custom Properties](https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties)

### Git e GitHub
- [Git Handbook](https://guides.github.com/introduction/git-handbook/)
- [GitHub Pages](https://pages.github.com/)

## 🤝 Contribuindo

1. Fork o projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

## 📞 Contato

**Nícolas Caldas Borsari**
- GitHub: [@ncbor](https://github.com/ncbor)
- Site: [ncbor.github.io](https://ncbor.github.io)

---

*Última atualização: Janeiro 2025*
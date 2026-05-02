# Site Pessoal

É aqui que vai encontrar mais informações sobre mim e meus trabalhos :)

## Contato

**Nícolas Caldas Borsari**
*Bacharelando em Ciència da Computação*
*Instituto de Matemática e Estatística (IME-USP)*
nicborsari at usp dot br

---

# Manutenção

## Adicionar Post no Blog

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

## Adicionar Imagem na Galeria

1. Adicione imagem em `assets/images/`
2. Edite `pages/achados.html`:
   ```html
   <div class="gallery-item">
       <img src="/assets/images/nova-imagem.jpg" alt="Descrição" loading="lazy">
       <div class="gallery-caption">Legenda da imagem</div>
   </div>
   ```

## Adicionar Link

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

---

# Desenvolvimento local

## Build 
- **Jekyll 4.4.1**: HTML estático a partir de Markdown ou Liquid
- **Ruby 3.4+**: linguagem em que o Jekyll roda
- **Bundler**: gerenciador de dependências Ruby

### Plugins Jekyll
- **jekyll-feed**: feed RSS automático
- **jekyll-sitemap**: sitemap XML automático

## Instalação 

```bash
pacman -S ruby 
export PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"
gem install --user-install bundler

git clone https://github.com/ncbor/ncbor.github.io.git
cd ncbor.github.io

export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH" && bundle config set --local path 'vendor/bundle' && bundle instal
bundle exec jekyll serve --host 0.0.0.0 --port 4000 #http://localhost:4000

#limpar cache e rebuild
bundle exec jekyll clean
bundle exec jekyll build
```

## Estrutura do Projeto

```tree ncbor.github.io/
.
├── config.yml           # Configuração principal do Jekyll
├── Gemfile              # Dependências Ruby
├── Gemfile.lock         
├── README.md            
│
├── index.html           # Página inicial
│
├── layouts/             
│   ├── default.html     # Layout padrão
│   └── post.html        # Layout para posts
│
├── _includes/          
│   ├── head.html        # Meta tags e CSS
│   └── nav.html         # Barra de Navegação
│
├── _posts/              # Posts do blog
│
├── pages/               # Páginas do site      
│   ├── about.html
│   ├── blog.html  
│   ├── achados.html      
│   ├── hobbies.html 
│   └── links.html    
│
└── assets/              
    ├── css/             
    │   └── style.css   
    └── images/          # Imagens do site
        ├── 1.jpg        # Foto de fundo
        └── (...)            
```

---

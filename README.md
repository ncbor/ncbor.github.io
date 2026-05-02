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

## Adicionar Mídia ou Link

1. Edite `pages/misc.html` na aba correspondente (Mídias ou Links)

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
├── _config.yml          # Configuração principal do Jekyll
├── Gemfile              # Dependências Ruby
├── Gemfile.lock         
├── README.md            
├── index.md             # webart decoy como index rs 
│
├── _layouts/             
│   ├── default.html     # Layout padrão
│   ├── post.html        # Layout para posts
│   ├── project.html     # Layout para projetos
│   └── webart.html      # Layout do index
│
├── _includes/          
│   ├── head.html        # Tags e CSS
│   └── nav.html         # Barra de Navegação
│
├── _posts/              # Posts do blog
│
├── pages/               # Páginas do site      
│   ├── index.md          # Home real
│   ├── blog.html        # Blog pessoal
│   ├── misc.html        # Curadoria de mídias e links
│   ├── projetos.html    # Projetos homepage
│   └── projetos/        # Páginas dos projetos
│
└── assets/              
    ├── css/             
    │   └── style.css   
    └── images/          # Imagens do site
        ├── aguas2.jpg        # Fundo landscape
        ├── quadriculados.jpg # Fundo portrait
        └── (...)            
```

---

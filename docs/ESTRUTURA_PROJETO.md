# 📁 Estrutura Detalhada do Projeto

## Visão Geral da Organização

Este documento explica a organização e propósito de cada pasta e arquivo no projeto.

## 📂 Estrutura de Pastas

### Root (Raiz do Projeto)
```
ncbor.github.io/
├── _config.yml          # ⚙️  Configuração principal do Jekyll
├── Gemfile              # 📦 Dependências Ruby
├── Gemfile.lock         # 🔒 Versões fixas das dependências
├── README.md            # 📖 Documentação principal
└── index.html           # 🏠 Página inicial
```

**Por que na raiz?**
- Arquivos de configuração do Jekyll devem estar na raiz
- `index.html` é a página inicial do site
- `README.md` é o primeiro arquivo que as pessoas veem no GitHub

### `_layouts/` - Templates Jekyll
```
_layouts/
├── default.html         # 🎨 Layout base para todas as páginas
└── post.html           # 📝 Layout específico para posts do blog
```

**Propósito:**
- `default.html`: Define a estrutura HTML base (head, nav, footer)
- `post.html`: Layout especializado para posts com metadados

### `_includes/` - Componentes Reutilizáveis
```
_includes/
├── head.html           # 🧠 Meta tags, CSS, analytics
└── nav.html            # 🧭 Menu de navegação
```

**Propósito:**
- Componentes que são reutilizados em múltiplas páginas
- Facilita manutenção (mudança em um lugar afeta todo o site)

### `_posts/` - Posts do Blog
```
_posts/
├── 2025-01-15-jornada-kernel-kw-debian.md
└── 2025-01-16-features-do-site.md
```

**Formato do nome:** `YYYY-MM-DD-titulo-do-post.md`
**Propósito:** Posts são processados automaticamente pelo Jekyll

### `pages/` - Páginas Estáticas
```
pages/
├── about.html          # 👤 Sobre mim
├── blog.html           # 📝 Lista de posts
├── achados.html        # 🎯 Galeria de mídias
├── hobbies.html        # 🎨 Passatempos
└── links.html          # 🔗 Links interessantes
```

**Propósito:**
- Páginas que não são posts do blog
- Organizadas em pasta separada para clareza
- Cada uma tem seu próprio `permalink`

### `assets/` - Recursos Estáticos
```
assets/
├── css/
│   └── style.css       # 🎨 Todos os estilos do site
└── images/             # 🖼️ Imagens e mídias
    ├── 1.jpg           # Foto de fundo principal
    ├── aguas1.jpg      # Imagens da galeria
    ├── aguas2.jpg
    └── quadriculados.jpg
```

**Propósito:**
- Todos os recursos estáticos (CSS, imagens, JS)
- Organizados por tipo de arquivo
- Fácil de encontrar e manter

### `scripts/` - Scripts Utilitários
```
scripts/
└── serve.sh            # 🚀 Script para rodar o site localmente
```

**Propósito:**
- Scripts que facilitam o desenvolvimento
- Comandos complexos em arquivos executáveis

### `docs/` - Documentação
```
docs/
├── COMO_TROCAR_FOTO.md # 📸 Guia para trocar foto de fundo
└── ESTRUTURA_PROJETO.md # 📁 Este arquivo
```

**Propósito:**
- Documentação técnica e guias
- Separada da documentação principal (README)

### `_site/` - Site Gerado (Não Versionar)
```
_site/                  # 🚫 Não versionar no Git
├── index.html          # Site compilado
├── pages/              # Páginas compiladas
├── assets/             # Assets compilados
└── ...                 # Outros arquivos gerados
```

**Propósito:**
- Site final compilado pelo Jekyll
- Gerado automaticamente
- **NÃO** deve ser versionado no Git

## 🔄 Fluxo de Desenvolvimento

### 1. Editar Conteúdo
- **Posts**: Editar arquivos em `_posts/`
- **Páginas**: Editar arquivos em `pages/`
- **Estilos**: Editar `assets/css/style.css`
- **Imagens**: Adicionar em `assets/images/`

### 2. Testar Localmente
```bash
./scripts/serve.sh
```

### 3. Build para Produção
```bash
bundle exec jekyll build
```

### 4. Deploy
```bash
git add .
git commit -m "Descrição da mudança"
git push origin main
```

## 🎯 Princípios de Organização

### 1. **Separação por Função**
- Configuração na raiz
- Conteúdo em pastas específicas
- Assets separados por tipo

### 2. **Facilidade de Manutenção**
- Estrutura clara e intuitiva
- Arquivos relacionados próximos
- Documentação organizada

### 3. **Escalabilidade**
- Fácil adicionar novas páginas
- Estrutura suporta crescimento
- Padrões consistentes

### 4. **Convenções Jekyll**
- Pastas com `_` são especiais do Jekyll
- Nomes de arquivos seguem convenções
- Front matter padronizado

## 📝 Convenções de Nomenclatura

### Arquivos
- **Minúsculas** com hífens: `minha-pagina.html`
- **Posts**: `YYYY-MM-DD-titulo.md`
- **Imagens**: `nome-descritivo.jpg`

### Pastas
- **Minúsculas** com hífens: `minha-pasta/`
- **Especiais do Jekyll**: `_layouts/`, `_includes/`, `_posts/`

### Variáveis CSS
- **Camel case** com prefixo: `--primary-color`
- **Agrupadas** por função: `--text-*`, `--bg-*`

## 🔧 Manutenção

### Adicionar Nova Página
1. Criar arquivo em `pages/`
2. Adicionar `permalink` no front matter
3. Adicionar link na navegação (`_includes/nav.html`)

### Adicionar Novo Post
1. Criar arquivo em `_posts/` com data no nome
2. Adicionar front matter completo
3. Escrever conteúdo em Markdown

### Adicionar Nova Imagem
1. Adicionar em `assets/images/`
2. Atualizar referências nos arquivos HTML
3. Otimizar tamanho se necessário

### Modificar Estilos
1. Editar `assets/css/style.css`
2. Usar variáveis CSS quando possível
3. Testar em diferentes dispositivos

## 🚀 Próximos Passos

### Melhorias Futuras
- [ ] Adicionar sistema de comentários
- [ ] Implementar busca
- [ ] Adicionar mais animações
- [ ] Otimizar performance
- [ ] Adicionar PWA features

### Estrutura Sugerida para Expansão
```
assets/
├── css/
├── images/
├── js/              # JavaScript futuro
└── fonts/           # Fontes customizadas

pages/
├── portfolio/       # Portfólio de projetos
├── contact/         # Página de contato
└── resume/          # Currículo

docs/
├── api/            # Documentação de API
├── guides/         # Guias detalhados
└── changelog/      # Histórico de mudanças
```

---

*Esta estrutura foi pensada para ser clara, escalável e fácil de manter.*

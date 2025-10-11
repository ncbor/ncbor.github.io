# 📸 Como Trocar a Foto de Fundo

## Método 1: Substituir a foto existente
1. Substitua o arquivo `images/1.jpg` pela sua nova foto
2. Mantenha o mesmo nome (`1.jpg`) para não precisar alterar o CSS

## Método 2: Usar uma nova foto
1. Adicione sua nova foto na pasta `images/` (ex: `minha_foto.jpg`)
2. Edite o arquivo `css/style.css` na linha 58:
   ```css
   background: url('/images/minha_foto.jpg') no-repeat center center fixed;
   ```

## Dicas para uma boa foto de fundo:
- **Resolução**: Use uma foto com pelo menos 1920x1080 pixels
- **Formato**: JPG, PNG ou WebP funcionam bem
- **Tamanho**: Mantenha o arquivo abaixo de 2MB para carregamento rápido
- **Contraste**: Fotos com bom contraste funcionam melhor com texto branco

## Ajustar cores do texto
Se a foto for muito clara ou escura, você pode ajustar as cores no CSS:

### Para fotos claras:
```css
h1, h2, h3, h4 {
    color: #1e293b; /* Texto escuro */
    text-shadow: 0 1px 3px rgba(255, 255, 255, 0.5);
}
```

### Para fotos escuras:
```css
h1, h2, h3, h4 {
    color: #ffffff; /* Texto branco */
    text-shadow: 0 2px 4px rgba(0, 0, 0, 0.5);
}
```

## Testar as mudanças
Após trocar a foto, acesse: http://localhost:4000

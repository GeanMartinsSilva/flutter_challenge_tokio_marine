# Tokio Marine Flutter Challenge

Projeto desenvolvido para o desafio técnico para uma posição de desenvolvedor Flutter na Tokio Marine Seguradora.

## Detalhes do projeto

O projeto foi desenvolvido seguindo modelos disponibilizados demonstrando como deveria ser o projeto tanto nas versões Mobile e na versão Web, seguindo os requisitos propostos para o seu desenvolvimento, acabei implementando alguns itens extras que no meu entendimento seriam importantes em um projeto similar.

### Pilares do projeto

Projeto foi desenvolvido utilizando essa estrutura:

- `Arquitetura` : **CLEAN ARCHTECTURE**
- `Gerência de estado` : **PROVIDER**
- `Injeção de Dependências` : **PROVIDER**
- `Gerenciamento de rotas` : **MODULAR**
- `Segurança de dados` : **FLUTTER SECURE STORAGE**

## Requisitos do desafio
- Sistema de autenticação
- Integração e consumo com alguma API (REST)
- Abertura de uma WebView
- Responsividade para utilização tanto Web quanto Mobile

## Implementações extras no projeto
- **Utilização de imagens reais**: Utilizei as mesmas imagens presentes em outros aplicativos da companhia para aumentar a fidelidade do projeto.
- **Autenticação com validação de CPF**: O login só é permitido ao digitar uma CPF válido.
- **Validação dos campos de login e senha**: verificação se os campos foram corretamente preenchidos para efetuar o login
- **Verificação do ambiente**: Implementei uma lógica para verificar o sistema utilizado e então determinar a abertura de uma webview ou de uma nova aba em uso no navegador.
- **Implementação de testes unitários e automatizados.**
- **Segurança de informação**: Implementei o salvamento das URLs/APIs de forma segura no aplicativo, não deixando os endpoints de acesso ao sistema disponíveis/livres no aplicativo, aumentando assim a sua segurança e confiabilidade.
- **Autenticação com Firebase**: A autenticação usando o Firebase já está em fase final de implementação, onde será possível realizar o acesso usando redes sociais, o login padrão com e-mail e senha, e a modo de entrada anônimos já estão disponíveis em caso de necessidade do projeto.

## Dependências externas utilizadas
- `provider`: Para gerenciamento de estado e injeção de dependências.
- `flutter_modular`: Para gerenciamento de rotas.
- `flutter_secure_storage`: Para armazenamento seguro de dados.
- `auto_size_text`: Ajuste automático o tamanho do texto.
- `font_awesome_flutter`: Ícones de redes sociais.
- `http`: Requisições HTTP.
- `webview_flutter`: Exibição de conteúdo web.
- `universal_html/html.dart`: Manipulação de HTML universal em conjunto com a WebView

## Estrutura de Diretórios do Projeto
```bash
lib/
├── _core/
│   ├── constants/
│   │   ├── app_colors.dart
│   │   └── drawer_items.dart
│   ├── extensions/
│   │   └── context_extensions.dart
│   ├── utils/
│   │   └── validator.dart
│   └── widgets/
│       ├── category_card.dart
│       ├── login_text_field.dart
│       ├── login_header.dart
│       ├── remember_me_and_forgot_password.dart
│       ├── social_login.dart
│       ├── welcome_message.dart
│       ├── login_button_content.dart
│       ├── drawer_item.dart
│       ├── drawer_footer.dart
│       ├── user_greeting.dart
│       └── logout_button.dart
├── data/
│   ├── models/
│   │   └── relative_model.dart
│   ├── repositories/
│   │   └── relative_repository_impl.dart
│   └── sources/
│       ├── local/
│       │   └── url_storage.dart
│       └── remote/
│           └── api_service.dart
├── domain/
│   ├── entities/
│   │   └── relative.dart
│   ├── repositories/
│   │   └── relative_repository.dart
│   └── usecases/
│       └── get_relatives.dart
├── infrastructure/
│   └── providers/
│       ├── url_provider.dart
│       ├── login_provider.dart
│       └── relative_provider.dart
├── presentation/
│   ├── pages/
│   │   ├── home_screen.dart
│   │   ├── login_screen.dart
│   │   └── webview_screen.dart
│   └── widgets/
│       ├── family_section.dart
│       ├── welcome_section.dart
│       ├── quote_section.dart
│       └── contracted_section.dart
├── app_module.dart
├── app_widget.dart
└── main.dart
```

## Como Executar

Siga os passos abaixo para configurar e executar o projeto em sua máquina local.

### Pré-requisitos

Certifique-se de ter os seguintes softwares instalados:

- [Flutter](https://flutter.dev/docs/get-started/install) - Versão 3.13.0
- [Dart](https://dart.dev/get-dart) - Versão 3.1.0
- [Android Studio](https://developer.android.com/studio) ou [Visual Studio Code](https://code.visualstudio.com/) com o plugin Flutter
- Um emulador Android ou iOS configurado, ou um dispositivo físico

### Passo a Passo

1. **Clonar o Repositório**:

   Clone o repositório do projeto em sua máquina local usando o comando abaixo:

   ```bash
   git clone https://github.com/GeanMartinsSilva/flutter_challenge_tokio_marine.git
   cd flutter_challenge_tokio_marine
   ```

2. **Instalar Dependências**:

   Navegue até o diretório do projeto e execute o seguinte comando para instalar as dependências necessárias:

   ```bash
   flutter pub get
   ```

3. **Executar a Aplicação**:

   Com um dispositivo conectado ou um emulador em execução, execute o seguinte comando para iniciar a aplicação:

   ```bash
   flutter run
   ```
   
   Este comando compilará o aplicativo e o instalará no dispositivo/emulador conectado.

4. **Testar a Aplicação**:

   Para acessar conseguir acessar o Login, é necessário digitar um CPF válido e uma senha numérica de 6 a 8 dígitos.


## Autor

Este projeto foi desenvolvido por **Gean Martins Silva**.

Para mais informações e contato profissional, visite o perfil no LinkedIn:

[Gean Martins Silva](https://www.linkedin.com/in/gean-martins-silva/)

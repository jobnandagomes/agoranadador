# 📘 AgoraNadador — MVP  
🚀 Aplicativo Flutter para monitoramento de performance em natação  

---

## 🎥 Demonstração em Vídeo  
▶ Assista ao vídeo completo do projeto no YouTube:  
https://youtu.be/ey5dXG__1YE

---

## 🏊‍♂️ Sobre o Projeto  
O **AgoraNadador** é um aplicativo criado em **Flutter + Firebase**, desenvolvido como um MVP funcional para registrar, acompanhar e analisar a performance de nadadores durante treinamentos.  

A proposta é simples, rápida e funcional: permitir que qualquer treinador, atleta ou usuário registre evoluções de treino em tempo real.

**Principais integrações do projeto:**  
- Firebase Auth (login anônimo)  
- Firestore (persistência em tempo real)  
- Provider (gestão de estado moderna e reativa)  
- Arquitetura modular  
- Material Design 3  
- BLE Fake Service (simulação de métricas de treino)

---

## ⭐ Objetivo  
Construir uma aplicação que registre:

- nadadores  
- treinos, distâncias e tempos  
- evolução ao longo do tempo  
- dados simulados via BLE fake  

Além disso, o projeto soluciona problemas reais com as tecnologias:  
- Flutter  
- arquitetura em camadas  
- integração com Firebase  
- gestão de estado  
- boas práticas de UI/UX  
- boas práticas de código  

---

## 👩‍💻 Sobre a Desenvolvedora

Desenvolvedora **Flutter/React (Júnior)**, com background em **Direito**, ampla experiência em **conformação legal, compliance** e cursos voltados à **Cybersegurança**. Formada em **Flutter Specialist** e **React Developer (DIO)**, cursa o **3º período de Engenharia de Software**, aplicando conhecimentos técnicos em desenvolvimento mobile e web, arquitetura simples e eficiente, automação e Firebase, com foco na criação de MVPs funcionais e produtos digitais.

---

### 🚀 Projeto Social — AgoraNadador (Clube Português)

Aplicativo Flutter desenvolvido como **plano piloto** para inclusão de **crianças autistas e atletas neurodivergentes**, permitindo registrar treinos, rotinas e evolução esportiva com simplicidade e acessibilidade.

**Resultado:** mais de 20 famílias atendidas no piloto, com treinadores acompanhando métricas individuais; pais recebendo relatórios claros e organizados; criação de uma rotina estruturada e previsível para crianças com maior sensibilidade sensorial e necessidade de constância.

🔗 **Repositório:** *a ser adicionado*  
🔗 **Vídeo: PT ** https://youtu.be/ey5dXG__1YE  
🔗 **Vídeo: ENG **
---

### 🏨 Rede Hoteleira — 8 Redesenhos Operacionais (R.O.s)

Desenvolvimento de **8 sistemas Flutter** voltados à otimização de operações na hotelaria, integrando **gestão de operações, arquitetura de software, Flutter e gestão de projetos**. Cada R.O. transforma um processo crítico em um fluxo digital padronizado, mensurável e escalável.

**Lista dos R.O.s com resultados (links fictícios para futura publicação):**

- **R.O. 1 — Check‑in Digital**  
  *Resultado:* redução de filas em até 40% e padronização imediata do atendimento.  
  🔗 https://github.com/jobnandagomes/fluttercheckin  

- **R.O. 2 — Checkout Otimizado**  
  *Resultado:* diminuição de atrasos e redução de erros de cobrança.  
  🔗 https://github.com/jobnandagomes/fluttercheckout  

- **R.O. 3 — Governança & Arrumação**  
  *Resultado:* aumento de 25% na agilidade de liberação de quartos.  
  🔗 https://github.com/jobnandagomes/fluttergovernanca  

- **R.O. 4 — Contingência & Overbooking**  
  *Resultado:* previsibilidade nas alocações e redução de conflitos internos.  
  🔗 https://github.com/jobnandagomes/fluttercontingencia  

- **R.O. 5 — Gestão de Eventos Corporativos**  
  *Resultado:* melhora da comunicação entre equipes e redução de falhas operacionais.  
  🔗 https://github.com/jobnandagomes/fluttereventos  

- **R.O. 6 — Baixa Ocupação & Otimização de Custos**  
  *Resultado:* inteligência operacional para minimizar desperdícios em períodos críticos.  
  🔗 https://github.com/jobnandagomes/flutterocupacao  

- **R.O. 7 — Calendário Comercial & Tarifas**  
  *Resultado:* maior previsibilidade e alinhamento entre vendas e operação.  
  🔗 https://github.com/jobnandagomes/fluttercalendario  

- **R.O. 8 — CRM Operacional & Jornada do Hóspede**  
  *Resultado:* aumento de feedbacks capturados e melhoria geral da satisfação do hóspede.  
  🔗 https://github.com/jobnandagomes/fluttercrm

---

## 🧱 Arquitetura do Projeto  
Estrutura clara e escalável: O projeto segue uma estrutura modular e organizada, separando claramente os modelos de dados, provedores de estado, rotas, telas, serviços e componentes da interface.

### Estrutura de Pastas (Real):textlib/
 ├── models/
 │    └── swimmer.dart
 ├── providers/
 │    └── swimmer_provider.dart
 ├── routes/
 │    └── app_routes.dart
 ├── screens/
 │    ├── add_swimmer_page.dart
 │    └── home_page.dart
 ├── services/
 │    ├── firebase_auth_service.dart
 │    ├── firestore_service.dart
 │    └── ble_fake_service.dart
 ├── theme/
 │    └── app_theme.dart
 ├── widgets/
 │    ├── custom_button.dart
 │    ├── custom_card.dart
 │    ├── training_list_widget.dart
 │    └── swimmer_card.dart
 └── main.dart
 
 ### Descrição das Camadas:
models/ — Definição de entidades (Swimmer e Training)
providers/ — Gerência de estado com Provider
routes/ — Configuração de rotas e navegação
screens/ — Telas principais (Home, Adicionar Nadador, Detalhes de Treino)
services/ — Integração com Firebase Auth, Firestore e simulação BLE
theme/ — Tema Material Design 3
widgets/ — Componentes reutilizáveis (botões, cards, listas)
main.dart — Ponto de entrada da aplicação

## 🖥️ Tecnologias Utilizadas
Flutter 3.x
Dart 3.x
Firebase Auth (login anônimo)
Cloud Firestore (persistência em tempo real)
Provider (gerenciamento de estado)
Material Design 3
BLE Fake Service (simulação de métricas de treino)
Google Fonts


# 📱 Funcionalidades
✅ Cadastro de nadadores
✅ Registro de treinos com distância e tempo
✅ Coleta de métricas simuladas via BLE Fake
✅ Listagem e filtro de treinos por nadador
✅ Histórico individual de performance
✅ Interface responsiva com Material Design 3
✅ Navegação simples e clara
✅ Persistência em tempo real (Firestore)
✅ Temas customizáveis

# 🧪 TestesO projeto conta com:
testes manuais de widgets e fluxos
validação de integração Firebase
testes de simulação BLE Fake
análise estática de código

# 📦Como Rodar o Projeto
1. Clone o repositório:markdowngit clone https://github.com/jobnandagomes/agoranadador.git
2. cd agoranadador
3. Instale as dependências:flutter pub get
4. Configure o Firebase:

# Baixe o arquivo google-services.json do Console Firebase
# Coloque em android/app/
# Para iOS, baixe GoogleService-Info.plist e coloque em ios/Runner/

5. Execute em emulador ou dispositivo:flutter run

   # 🚀 Roadmap Futuro
📊 Gráficos detalhados de evolução por atleta
🧩 Integração BLE real com smartwatches
👥 Suporte a múltiplos usuários (treinador / atleta / responsável)
📤 Exportação de relatórios em PDF
🔐 Login social (Google, Apple)
⚙️ Migração opcional para BLoC ou Riverpod
🌐 Publicação Web com PWA
📱 Versão iOS otimizada

  # 🤝 Contribuições
Contribuições são muito bem-vindas!
Sinta-se à vontade para abrir issues, enviar pull requests ou sugerir melhorias.

  # 📄 Licença
Este projeto é distribuído sob a licença MIT.
Consulte o arquivo LICENSE para mais informações.


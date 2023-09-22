# Varredura de Vulnerabilidades do Sistema

Este é um projeto em lote (`.bat`) desenvolvido como parte de uma atividade da disciplina de Segurança de Dados. O script é projetado para realizar uma varredura básica em um sistema Windows, coletando informações relevantes para análise de segurança. O resultado da varredura é gravado em um arquivo de texto para posterior análise.

## Instruções de Uso

1. **Iniciar a Varredura**:
   - Execute o script `varredura.bat` em um sistema Windows.

2. **Relatório Gerado**:
   - O resultado da varredura será armazenado em um arquivo de texto com o nome no formato `VARREDURA_DD-MM-AA.txt`, onde `DD`, `MM` e `AA` representam o dia, mês e ano da varredura. O arquivo de relatório conterá informações detalhadas sobre os seguintes itens:

   - Compartilhamentos no computador, incluindo nomes, caminhos e permissões.
   - Hosts NetBIOS conhecidos pelo computador local.
   - Atualizações do Windows disponíveis no endereço IP especificado.
   - Perfis de redes Wi-Fi disponíveis no sistema.
   - Informações do perfil de rede Wi-Fi NETVIRTUA100801 (exemplo específico).
   - Compartilhamentos de arquivos na máquina.
   - Processos em execução no sistema.
   - Configurações do Firewall do Windows.
   - Contas de usuário na máquina.
   - Tabela ARP, mostrando endereços IP e MAC dos dispositivos conectados na rede local.
   - Drivers em execução na máquina.

3. **Observações**:
   - O sistema é bastante simples, pois foi construído sem nenhum intuito profissional. Sinta-se livre para implementá-lo, modificá-lo e utilizar em sua pesquisa e afins.ou quaisquer outros fins que considerar apropriados.

Este projeto foi desenvolvido para fins educacionais e de análise de segurança. Os resultados da varredura podem ser usados como ponto de partida para avaliações de segurança mais detalhadas. Certifique-se de usar essas informações de maneira responsável e em conformidade com todas as políticas e regulamentos de segurança de dados.

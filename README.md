# Picanhometro
![Build Status](https://github.com/lucas-ol/Picanhometro/actions/workflows/dart.yml/badge.svg)
![Relase](https://github.com/lucas-ol/Picanhometro/actions/workflows/relase.yml/badge.svg)


Picanhometro é uma calculadora de churrasco que ajuda a gerenciar e calcular as quantidades necessárias de vários itens com base no número de adultos, crianças, bebedores e a duração do evento.

## Funcionalidades

- Calcular a quantidade total de carne necessária em gramas.
- Calcular a quantidade total de linguiça necessária em gramas.
- Calcular a quantidade total de pão de alho necessário em gramas.
- Calcular a quantidade total de cerveja necessária em mililitros.
- Calcular a quantidade total de refrigerante necessária em mililitros.

## Parâmetros

- `Adultos`: O número de adultos presentes no evento.
- `Criancas`: O número de crianças presentes no evento.
- `Bebem`: O número de pessoas que irão beber álcool.
- `Duracao`: A duração do evento em horas.

## Cálculos

- **Fator de Duracao**: 1.5 se a duração do evento for superior a 6 horas, caso contrário, 1.0.
- **Criancas Equivalentes**: Número de crianças multiplicado por 0.5.
- **Carne**: (Número de adultos + crianças equivalentes) * 400 * fator de duração.
- **Linguica**: (Número de adultos + crianças equivalentes) * 200 * fator de duração.
- **Pão De Alho**: (Número de adultos + crianças equivalentes) * 200 * fator de duração.
- **Cerveja**: Número de bebedores * 1200 * fator de duração.
- **Refrigerante**: (Número de adultos + crianças equivalentes) * 1000 * fator de duração.

## Valores Médios de Consumo:

- **Carne**: O valor médio sugerido para a carne é de 400 gramas por pessoa adulta. Se houver crianças, cada uma conta como 0.5 de um adulto, o que significa que consideramos 200 gramas de carne por criança.  
- **Linguiça**: Utiliza-se uma média de 200 gramas por adulto e 100 gramas por criança, totalizando 200 gramas por pessoa (adulto ou criança).  
- **Pão de Alho**: Também baseia-se na mesma proporção que a linguiça, com 200 gramas por pessoa.
- **Cerveja**: Em média, 1200 mililitros por bebedor.
- **Refrigerante**: Em média, 1000 mililitros por adulto e criança.

## Regras

- A duração do evento influencia a quantidade de itens necessários.
- Crianças contam como metade de um adulto para as quantidades.
- As quantidades são calculadas em gramas para carne, linguiça e pão de alho.
- As quantidades são calculadas em mililitros para cerveja e refrigerante.


## Futuras Features

 | **Task**                | **Status**  |
 | ----------------------- | ----------- |
 | Estrutura do projeto    | ✅ Concluído |
 | Criar cálculos base     | ✅ Concluído |
 | Integraçaõ com firebase | ❌ Pendente  |
 | Melhorar interface      | ❌ Pendente  |
 | Logs e métricas         | ❌ Pendente  |
 | Integração com Firebase | ❌ Pendente  |
 | Cálculo para cocktails  | ❌ Pendente  |

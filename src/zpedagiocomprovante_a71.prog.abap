*&---------------------------------------------------------------------*
*& Report ZPEDAGIOCOMPROVANTE_A71
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zpedagiocomprovante_a71.

DATA:
  info1 TYPE string,
  info2 TYPE string.

info1 = 'Valor Aproximado de tributos 18,24% (fonte: IBPT)'.
info2 = 'Para incluir PLACA/CPF/CNPJ acesse até 7 dias: https:dfe.arteris.com.br'.

PARAMETERS:
  p_oprd  TYPE n LENGTH 5 OBLIGATORY,
  p_placa TYPE c LENGTH 7 OBLIGATORY.

DATA: BEGIN OF empresa,
        documento(10) TYPE c,
        nomeempresa   TYPE string,
        cnpj          TYPE c LENGTH 20,
        cidade        TYPE string,
        via           TYPE c LENGTH 3,
        valorpg       TYPE p DECIMALS 2 VALUE '4.12',
      END OF empresa.

empresa-documento = 'IN1731/17'.
empresa-nomeempresa = 'AUTOPISTA LITORAL SUL S/A'.
empresa-cnpj = '09.313.969/0001-97'.
empresa-cidade = 'SÃO JOSÉ DOS PINHAIS'.
empresa-via = '19N'.

DATA: BEGIN OF funcionario,
        nomeoprd TYPE c LENGTH 9,
        ctgorig  TYPE n LENGTH 2,
      END OF funcionario.

funcionario-nomeoprd = 'BEATRIZ'.
funcionario-ctgorig = '01'.

DATA: BEGIN OF pagamento,
        dinheiro TYPE string,
        cartao   TYPE string,
      END OF pagamento.

pagamento-dinheiro = 'Dinheiro'.
pagamento-cartao = 'Cartão'.

WRITE:

/ 'DOC. FISCAL EQUIVALENTE', empresa-documento, 'Art. 2',
/ empresa-nomeempresa,
/ empresa-cnpj,
/ empresa-cidade, 'KM635+300', 'VIA:', empresa-via,
/ 'Operador:', p_oprd, '-', funcionario-nomeoprd, 'CAT.:', funcionario-ctgorig,
/ 'Valor Pago: R$' && empresa-valorpg, 'F.Pgt:', pagamento-dinheiro,
/ 'E.SUSP: 00', '(LEI 13.103/15)', 'CAT.ORIG:', funcionario-ctgorig,
/ 'PLACA:', p_placa,
/ info1,
/ info2.

*&---------------------------------------------------------------------*
*& Report ZCOMPROVANTEFISCAL_A71
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcomprovantefiscal_a71.

DATA: numerodoc(9)  TYPE c ,
      nomeempresa TYPE string,
      cnpj(17) TYPE c,
      cidade TYPE string,
      km1(3) TYPE i,
      km2(3) TYPE i,
      via(5) TYPE c,
      datacomprovante type d,
      horacomprovante type t,
      recibo(12) type c,
      operador(6) type c,
      nomeoprd type string,
      categoriaoprd(2) type c,
      valorpgto(5) type c,
      fpgto type string,
      esusp(2) type c,
      catorig type c,
      placa(7) type c.

numerodoc = 'IN31/17'.
nomeempresa = 'AUTOPISTA LITORAL SUL S/A'.
cnpj = '09.313.969/0001-97'.
cidade = 'SÃO JOSÉ DOS PINHAIS'.
km1 = 635.
km2 = 300.
via = '19 N'.
datacomprovante = '20221120'.
horacomprovante = '175230'.
recibo = 'U6FD54U2QG22'.
operador = '05491'.
nomeoprd = 'BEATRIZ'.
categoriaoprd = '01'.
valorpgto = '4.10'.
fpgto = 'Dinheiro'.
esusp = '00'.
catorig = '01'.
placa = 'BDS2130'.

WRITE: / 'DOC. FISCAL EQUIVALENTE', numerodoc, 'Art.2',
       / nomeempresa,
       / cnpj,
       / cidade, 'KM' && km1 && '+' && km2, 'VIA:', via,
       / datacomprovante, horacomprovante, 'Recibo:', recibo,
       / 'Operador: ' && operador, '-' , nomeoprd, 'Cat.:', categoriaoprd,
       / 'Valor Pago: R$', valorpgto, 'F.Pgto:', fpgto,
       / 'E.SUSP:', esusp, '(LEI 13.103/15)', 'CAT.ORIG:', catorig,
       / 'PLACA:', placa,
       / 'Valor aprx. de trib. 18,24% (fonte:IBPT)',
       / 'Para incluir placa/CPF/CNPJ acesse até 7 dias https://dfe.arteris.com.br'.

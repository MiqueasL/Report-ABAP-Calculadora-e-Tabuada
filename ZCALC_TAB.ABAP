REPORT ZCALC_TAB.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS: r_oper RADIOBUTTON GROUP grp1 DEFAULT 'X',
              r_tab  RADIOBUTTON GROUP grp1.

SELECTION-SCREEN END OF BLOCK b1.


SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.

  PARAMETERS: p_num1 TYPE i,
              p_num2 TYPE i,

              r_adc  RADIOBUTTON GROUP grp2 DEFAULT 'X',
              r_div  RADIOBUTTON GROUP grp2,
              r_mul  RADIOBUTTON GROUP grp2,
              r_sub  RADIOBUTTON GROUP grp2.

SELECTION-SCREEN END OF BLOCK b2.

SELECTION-SCREEN BEGIN OF BLOCK b3 WITH FRAME TITLE TEXT-003.

  PARAMETERS: p_num3 TYPE i,

              r_tadc RADIOBUTTON GROUP grp3,
              r_tdiv RADIOBUTTON GROUP grp3,
              r_tmul RADIOBUTTON GROUP grp3,
              r_tsub RADIOBUTTON GROUP grp3.

SELECTION-SCREEN END OF BLOCK b3.

DATA: resultado TYPE i.

AT SELECTION-SCREEN.

  IF r_oper = 'X' AND r_div = 'X' AND p_num2 = 0.
    MESSAGE 'Não pode ser dividido por 0' TYPE 'E'.
    RETURN.
  ENDIF.

  IF r_tab = 'X' AND p_num3 = 0.
    MESSAGE 'Invalido, Informe um número diferente de 0' TYPE 'E'.
    RETURN.
  ENDIF.



START-OF-SELECTION.

  IF r_oper = 'X'.
    PERFORM operacao USING p_num1 p_num2 CHANGING resultado.
  ELSEIF r_tab = 'X'.
    PERFORM tabuada USING p_num3 CHANGING resultado.
  ENDIF.

FORM operacao USING l_num1 l_num2 CHANGING l_resultado.

  CASE 'X'.

    WHEN r_adc.
      l_resultado = l_num1 + l_num2.
      WRITE:/ l_num1,'+',l_num2,'=', l_resultado.

    WHEN r_div.
      l_resultado = l_num1 / l_num2.
      WRITE:/ l_num1,'/',l_num2,'=', l_resultado.

    WHEN r_mul.
      l_resultado = l_num1 * l_num2.
      WRITE:/ l_num1,'X',l_num2,'=', l_resultado.

    WHEN r_sub.
      l_resultado = l_num1 - l_num2.
      WRITE:/ l_num1,'-',l_num2,'=', l_resultado.

  ENDCASE.

ENDFORM.


FORM tabuada USING l_num3 TYPE i CHANGING l_total.

  CASE 'X'.
    WHEN r_tadc.
      DO 10 TIMES.
        l_total = l_num3 + sy-index.
        WRITE:/ l_num3,'+',sy-index,'=',l_total.
      ENDDO.

    WHEN r_tdiv.
      DO 10 TIMES.
        l_total = l_num3 / sy-index.
        WRITE:/ l_num3,'/',sy-index,'=',l_total.
      ENDDO.

    WHEN r_tmul.
      DO 10 TIMES.
        l_total = l_num3 * sy-index.
        WRITE:/ l_num3,'x',sy-index,'=',l_total.
      ENDDO.

    WHEN r_tsub.
      DO 10 TIMES.
        l_total = l_num3 - sy-index.
        WRITE:/ l_num3,'-',sy-index,'=',l_total.
      ENDDO.

  ENDCASE.

ENDFORM.

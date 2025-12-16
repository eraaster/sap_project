*&---------------------------------------------------------------------*
*& Report ZPROJECT19_003
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPROJECT19_003.

INCLUDE ZPROJECT19_003_TOP.
INCLUDE ZPROJECT19_003_SCR.
INCLUDE ZPROJECT19_003_F01.
INCLUDE ZPROJECT19_003_PBO.
INCLUDE ZPROJECT19_003_PAI.

AT SELECTION-SCREEN OUTPUT.
  PERFORM SET_SCREEN.

INITIALIZATION.
  PERFORM SET_INIT.

START-OF-SELECTION.
  IF RB_CR = C_X. "생성
    PERFORM GET_DATA2.
    CALL SCREEN 100.
  ELSEIF RB_DSP = C_X. "조회
    PERFORM GET_DATA.
    CALL SCREEN 100.
  ENDIF.

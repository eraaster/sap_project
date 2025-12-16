*&---------------------------------------------------------------------*
*& Report ZPROJECT19_001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPROJECT19_001 MESSAGE-ID ZMED19.

INCLUDE ZPROJECT19_001_CLS.
INCLUDE ZPROJECT19_001_TOP.
INCLUDE ZPROJECT19_001_SCR.
INCLUDE ZPROJECT19_001_F01.
INCLUDE ZPROJECT19_001_PBO.
INCLUDE ZPROJECT19_001_PAI.


AT SELECTION-SCREEN OUTPUT.
  PERFORM SET_SCREEN.

START-OF-SELECTION.
  IF p_rad1 = C_X. "생성
    PERFORM GET_DATA2.
    CALL SCREEN 100.
  ELSEIF p_rad2 = C_X. "조회
    PERFORM GET_DATA.
    CALL SCREEN 100.
  ENDIF.

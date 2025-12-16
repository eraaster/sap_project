*---------------------------------------------------------------------*
*  Include           ZPROJECT19_003_TOP
*---------------------------------------------------------------------*

TABLES: zmkpf19,
        zmseg19,
        zpdt19_005.

CONSTANTS: c_x TYPE char1 VALUE 'X',
           c_a TYPE char1 VALUE 'A'.

TYPES: BEGIN OF ty_001,
         l_check TYPE char1,            "입고 체크박스
         ebeln   LIKE zmseg19-ebeln,    "구매오더번호
         ebelp   LIKE zpdt19_005-ebelp, "품목
         lifnr   LIKE zmseg19-lifnr,    "구매처
         bedat   LIKE zmkpf19-bldat,    "증빙일
         zmatnr   LIKE zmseg19-zmatnr,    "자재번호
         zmatname   LIKE zpdt19_005-zmatname, "자재명
         menge   TYPE I,    "수량
         meins   LIKE zmseg19-meins,    "단위
         stprs   LIKE zpdt19_005-stprs, "단가
         waers   LIKE zmseg19-waers,    "통화
         prdat   LIKE zpdt19_005-prdat, "납품일
         zwerks   LIKE zmseg19-zwerks,   "플랜트
         zlgort   LIKE zmseg19-zlgort,    "저장위치
         bukrs LIKE zpdt19_002-bukrs, "회사코드
         dmbtr LIKE zmseg19-dmbtr,
         remain_menge TYPE menge_d,
       END OF ty_001.

TYPES: BEGIN OF ty_004,
         mblnr LIKE zmseg19-mblnr, "입고문서번호
         mjahr LIKE zmseg19-mjahr, "회계연도
         zeile LIKE zmseg19-zeile, "아이템번호
         ebeln   LIKE zmseg19-ebeln,    "구매오더번호
         ebelp   LIKE zpdt19_005-ebelp, "품목
         lifnr   LIKE zmseg19-lifnr,    "구매처
         bedat   LIKE zmkpf19-bldat,    "증빙일
         zmatnr   LIKE zmseg19-zmatnr,    "자재번호
         zmatname   LIKE zpdt19_005-zmatname, "자재명
         menge   TYPE I,    "수량
         meins   LIKE zmseg19-meins,    "단위
         stprs   LIKE zpdt19_005-stprs, "단가
         waers   LIKE zmseg19-waers,    "통화
         prdat   LIKE zpdt19_005-prdat, "납품일
         zwerks   LIKE zmseg19-zwerks,   "플랜트
         zlgort   LIKE zmseg19-zlgort,    "저장위치
         dmbtr LIKE zmseg19-dmbtr, "총합
       END OF ty_004.

DATA: gs_001 TYPE ty_001,
      gt_001 TYPE TABLE OF ty_001.

DATA: gs_004 TYPE ty_004,
      gt_004 TYPE TABLE OF ty_004.

DATA : gs_002 TYPE zmkpf19,
       gt_002 TYPE TABLE OF zmkpf19.

DATA : gs_003 TYPE zmseg19,
       gt_003 TYPE TABLE OF zmseg19.

DATA: ok_code TYPE sy-ucomm.

DATA: gc_docking   TYPE REF TO cl_gui_docking_container,
      gc_container1 TYPE REF TO cl_gui_container,
      gc_container2 TYPE REF TO cl_gui_container.

DATA: gc_grid1 TYPE REF TO cl_gui_alv_grid,
      gc_grid2 TYPE REF TO cl_gui_alv_grid.

DATA: gs_fieldcat TYPE lvc_s_fcat,
      gt_fieldcat1 TYPE lvc_t_fcat,
      gt_fieldcat2 TYPE lvc_t_fcat.

DATA: gs_layout TYPE lvc_s_layo.

DATA: gs_sort TYPE lvc_s_sort,
      gt_sort TYPE lvc_t_sort.

DATA: gs_variant TYPE disvariant.

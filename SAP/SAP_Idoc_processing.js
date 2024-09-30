PARAMETERS: p_idoc TYPE edi_docnum.
 
DATA: lv_idoc_status TYPE edids-status.
 
START-OF-SELECTION.
 
  " Check if the IDoc exists
  SELECT SINGLE status INTO lv_idoc_status
    FROM edids
    WHERE docnum = p_idoc.
 
  IF sy-subrc <> 0.
    WRITE: 'IDoc not found'.
    EXIT.
  ENDIF.
 
  " Reprocess the IDoc
  CALL FUNCTION 'IDOC_INBOUND_PROCESS'
    EXPORTING
      idoc_control = p_idoc
    EXCEPTIONS
      OTHERS = 1.
 
  IF sy-subrc = 0.
    WRITE: 'IDoc reprocessed successfully'.
  ELSE.
    WRITE: 'Error in reprocessing IDoc'.
  ENDIF.
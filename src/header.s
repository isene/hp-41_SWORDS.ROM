;;; Assembler code needed to describe an RPN module

              .section HEADER
              .con	24              ; XROM number
              .con  .fatsize fatend
              .fat  header

              .section FATEND
;;; End marker for function address table
fatend:       .con  0,0

              .section Code
;;; Make an empty name function for the module to show up in CAT 2
              .name "-SWORDS 1A"		; The name of the module
header:       rtn

              .section TAIL
;;; Tail of the module with empty poll points and module ID
              .con  0,0,0,0,0,0,0
              .text "A1WS"          ; SW1A

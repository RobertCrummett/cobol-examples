       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDITIONALS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1 PIC 9(9).
       01 NUM2 PIC 9(9).
       01 NUM3 PIC 9(5).
       01 NUM4 PIC 9(6).
       01 NEG-NUM PIC S9(9) VALUE -1234.
       01 CLASS1 PIC X(9) VALUE 'ABCD '.
       01 CHECK-VAL PIC 9(3).
           88 PASS VALUES ARE 041 THRU 100.
           88 FAIL VALUES ARE 000 THRU 40.

       PROCEDURE DIVISION.
           MOVE 25 TO NUM1 NUM3.
           MOVE 15 TO NUM2 NUM4.

           IF NUM1 > NUM2 THEN
                   DISPLAY 'IN LOOP 1 - IF BLOCK'
                   IF NUM3 = NUM4 THEN
                           DISPLAY 'IN LOOP 2 - IF BLOCK'
                   ELSE
                           DISPLAY 'IN LOOP 2 - ELSE BLOCK'
                   END-IF
           ELSE
                   DISPLAY 'IN LOOP 1 - ELSE BLOCK'
           END-IF

           MOVE 65 TO CHECK-VAL.
           IF PASS
                   DISPLAY 'PASSED WITH 'CHECK-VAL' MARKS.'.
           IF FAIL
                   DISPLAY 'FAILED WITH 'CHECK-VAL' MARKS.'.

           EVALUATE TRUE
                   WHEN NUM1 < 2
                           DISPLAY 'NUM1 LESS THAN 2'
                   WHEN NUM1 < 19
                           DISPLAY 'NUM1 LESS THAN 19'
                   WHEN NUM1 < 1000
                           DISPLAY 'NUM1 LESS THAN 1000'
           END-EVALUATE.

           MOVE 50 TO NUM1.
           MOVE 60 TO NUM2.
           IF NOT NUM2 IS LESS THAN NUM1 THEN
                   DISPLAY NUM2' IS NOT LESS THAN 'NUM2
           END-IF

           IF NUM1 IS LESS THAN NUM2 AND NUM1 IS LESS THAN 100 THEN
                   DISPLAY 'COMBINED CONDITION'
           ELSE
                   DISPLAY 'NAH'
           END-IF

           IF NEG-NUM IS POSITIVE OR NEG-NUM IS NEGATIVE THEN
                   DISPLAY 'A NUMBER IS POSITIVE OR NEGATIVE'.

           IF NEG-NUM IS NEGATIVE THEN
                   DISPLAY 'A NUMBER IS NEGATIVE'.

           IF CLASS1 IS ALPHABETIC OR CLASS1 IS NUMERIC THEN
                   DISPLAY 'CLASS1 IS ALPHABETIC OR NUMERIC'.
       STOP-RUN.

(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1021 0)
(declare-sort var148 0)
(declare-sort var3861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var1021 var1021)
(declare-const null-String String)
(declare-const null-var3861 var3861)
(declare-const var3934 var1021) ; Statement: r3 := @this: org.apache.poi.xssf.eventusermodel.XSSFReader$XMLSheetRefReader 
(assert (not (= var3934 null-var1021)))
(declare-const var1270 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var1270 null-String)))
(declare-const var2867 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2867 null-String)))
(declare-const var3540 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var3540 null-String)))
(declare-const var3633 var3861) ; Statement: r1 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var3633 null-var3861)))
(assert true)
(define-const var3512 Bool (equalsIgnoreCase/-92311102 var2867 "sheet")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("sheet") 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var3512 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1021=org.apache.poi.xssf.eventusermodel.XSSFReader$XMLSheetRefReader, var3934=r3, var1270=r6, var148=null_type, var2867=r0, var3540=r7, var3861=org.xml.sax.Attributes, var3633=r1, var3512=$z0}
; {org.apache.poi.xssf.eventusermodel.XSSFReader$XMLSheetRefReader=var1021, r3=var3934, r6=var1270, null_type=var148, r0=var2867, r7=var3540, org.xml.sax.Attributes=var3861, r1=var3633, $z0=var3512}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.poi.xssf.eventusermodel.XSSFReader$XMLSheetRefReader;	r6 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.String;	r1 := @parameter3: org.xml.sax.Attributes;	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("sheet");	if $z0 == 0 goto return;	return
;block_num 2
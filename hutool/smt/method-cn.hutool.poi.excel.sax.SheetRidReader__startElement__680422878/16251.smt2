(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3225 0)
(declare-sort var2432 0)
(declare-sort var255 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var3225 var3225)
(declare-const null-String String)
(declare-const null-var255 var255)
(declare-const var3395 var3225) ; Statement: r6 := @this: cn.hutool.poi.excel.sax.SheetRidReader 
(assert (not (= var3395 null-var3225)))
(declare-const var2318 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var2318 null-String)))
(declare-const var1433 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1433 null-String)))
(declare-const var890 String) ; Statement: r14 := @parameter2: java.lang.String 
(assert (not (= var890 null-String)))
(declare-const var2561 var255) ; Statement: r2 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var2561 null-var255)))
(define-const var2194 String "sheet") ; Statement: $r1 = "sheet" 
(assert true)
(define-const var3273 Bool (equalsIgnoreCase/-92311102 var2194 var1433)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var3273 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3225=cn.hutool.poi.excel.sax.SheetRidReader, var3395=r6, var2318=r13, var2432=null_type, var1433=r0, var890=r14, var255=org.xml.sax.Attributes, var2561=r2, var2194=$r1, var3273=$z0}
; {cn.hutool.poi.excel.sax.SheetRidReader=var3225, r6=var3395, r13=var2318, null_type=var2432, r0=var1433, r14=var890, org.xml.sax.Attributes=var255, r2=var2561, $r1=var2194, $z0=var3273}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r6 := @this: cn.hutool.poi.excel.sax.SheetRidReader;	r13 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	r14 := @parameter2: java.lang.String;	r2 := @parameter3: org.xml.sax.Attributes;	$r1 = "sheet";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto return;	return
;block_num 2
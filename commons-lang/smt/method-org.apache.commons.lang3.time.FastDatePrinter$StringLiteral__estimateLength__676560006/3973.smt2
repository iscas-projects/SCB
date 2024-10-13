(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3008 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-356188658 (var3008) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3008 var3008)
(declare-const var1656 var3008) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDatePrinter$StringLiteral 
(assert (not (= var1656 null-var3008)))
(define-const var1990 String (value/-356188658 var1656)) ; Statement: $r1 = r0.<org.apache.commons.lang3.time.FastDatePrinter$StringLiteral: java.lang.String value> 
(assert true)
(define-const var978 Int (length/-134980193 var1990)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-356188658=([org.apache.commons.lang3.time.FastDatePrinter$StringLiteral], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var3008=org.apache.commons.lang3.time.FastDatePrinter$StringLiteral, var1656=r0, var1990=$r1, var978=$i0}
; {org.apache.commons.lang3.time.FastDatePrinter$StringLiteral=var3008, r0=var1656, $r1=var1990, $i0=var978}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDatePrinter$StringLiteral;	$r1 = r0.<org.apache.commons.lang3.time.FastDatePrinter$StringLiteral: java.lang.String value>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	return $i0
;block_num 1
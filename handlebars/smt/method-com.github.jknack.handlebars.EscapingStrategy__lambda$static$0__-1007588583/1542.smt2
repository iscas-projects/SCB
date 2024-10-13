(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun var3764_escapeCsv/-1587217676 (String) String)
(declare-const null-String String)
(declare-const var3279 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3279 null-String)))
 ; Statement: if r0 != null goto $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (= var3279 null-String))) ; Cond: r0 != null 
(define-const var1451 String (String_toString/-1426662429 var3279)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var3065 String (var3764_escapeCsv/-1587217676 var1451)) ; Statement: $r2 = staticinvoke <org.apache.commons.text.StringEscapeUtils: java.lang.String escapeCsv(java.lang.String)>($r1) 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), var3764_escapeCsv/-1587217676=([java.lang.String], java.lang.String)}
; {var3279=r0, var1451=$r1, var3764=org.apache.commons.text.StringEscapeUtils, var3065=$r2}
; {r0=var3279, $r1=var1451, org.apache.commons.text.StringEscapeUtils=var3764, $r2=var3065}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	if r0 != null goto $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r2 = staticinvoke <org.apache.commons.text.StringEscapeUtils: java.lang.String escapeCsv(java.lang.String)>($r1);	return $r2
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun var1554_escapeEcmaScript/661389837 (String) String)
(declare-const null-String String)
(declare-const var3953 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3953 null-String)))
 ; Statement: if r0 != null goto $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (= var3953 null-String))) ; Cond: r0 != null 
(define-const var2273 String (String_toString/-1426662429 var3953)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var379 String (var1554_escapeEcmaScript/661389837 var2273)) ; Statement: $r2 = staticinvoke <org.apache.commons.text.StringEscapeUtils: java.lang.String escapeEcmaScript(java.lang.String)>($r1) 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), var1554_escapeEcmaScript/661389837=([java.lang.String], java.lang.String)}
; {var3953=r0, var2273=$r1, var1554=org.apache.commons.text.StringEscapeUtils, var379=$r2}
; {r0=var3953, $r1=var2273, org.apache.commons.text.StringEscapeUtils=var1554, $r2=var379}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	if r0 != null goto $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r2 = staticinvoke <org.apache.commons.text.StringEscapeUtils: java.lang.String escapeEcmaScript(java.lang.String)>($r1);	return $r2
;block_num 3
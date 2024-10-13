(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2842 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun var2842_escapeXml11/1836974819 (String) String)
(declare-const null-String String)
(declare-const var187 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var187 null-String)))
 ; Statement: if r0 != null goto $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (= var187 null-String))) ; Cond: r0 != null 
(define-const var759 String (String_toString/-1426662429 var187)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var2952 String (var2842_escapeXml11/1836974819 var759)) ; Statement: $r2 = staticinvoke <org.apache.commons.text.StringEscapeUtils: java.lang.String escapeXml11(java.lang.String)>($r1) 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), var2842_escapeXml11/1836974819=([java.lang.String], java.lang.String)}
; {var187=r0, var759=$r1, var2842=org.apache.commons.text.StringEscapeUtils, var2952=$r2}
; {r0=var187, $r1=var759, org.apache.commons.text.StringEscapeUtils=var2842, $r2=var2952}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	if r0 != null goto $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r2 = staticinvoke <org.apache.commons.text.StringEscapeUtils: java.lang.String escapeXml11(java.lang.String)>($r1);	return $r2
;block_num 3
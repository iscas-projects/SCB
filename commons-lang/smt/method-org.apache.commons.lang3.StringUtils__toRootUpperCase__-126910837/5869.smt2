(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1832 0)
(declare-sort var1012 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toUpperCase/398655892 (String var1012) String)
(declare-const null-String String)
(declare-const var1012-ROOT var1012)
(declare-const var1511 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1511 null-String)))
 ; Statement: if r0 != null goto $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert (not (= var1511 null-String))) ; Cond: r0 != null 
(define-const var2330 var1012 var1012-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1509 String (toUpperCase/398655892 var1511 var2330)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1) 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String)}
; {var1511=r0, var1832=null_type, var1012=java.util.Locale, var2330=$r1, var1509=$r2}
; {r0=var1511, null_type=var1832, java.util.Locale=var1012, $r1=var2330, $r2=var1509}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1);	return $r2
;block_num 3
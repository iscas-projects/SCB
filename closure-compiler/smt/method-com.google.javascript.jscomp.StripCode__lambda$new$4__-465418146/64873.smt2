(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1742 0)
(declare-sort var3273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var3273) String)
(declare-const null-String String)
(declare-const var3273-ROOT var3273)
(declare-const var380 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var380 null-String)))
(define-const var2006 var3273 var3273-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3657 String (toLowerCase/1946809429 var380 var2006)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var380=r0, var1742=null_type, var3273=java.util.Locale, var2006=$r1, var3657=$r2}
; {r0=var380, null_type=var1742, java.util.Locale=var3273, $r1=var2006, $r2=var3657}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r2
;block_num 1
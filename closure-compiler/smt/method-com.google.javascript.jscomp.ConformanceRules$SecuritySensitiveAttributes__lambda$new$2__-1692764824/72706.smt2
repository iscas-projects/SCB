(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var459 0)
(declare-sort var867 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var867) String)
(declare-const null-String String)
(declare-const var867-ROOT var867)
(declare-const var1007 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1007 null-String)))
(define-const var3742 var867 var867-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1870 String (toLowerCase/1946809429 var1007 var3742)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var1007=r0, var459=null_type, var867=java.util.Locale, var3742=$r1, var1870=$r2}
; {r0=var1007, null_type=var459, java.util.Locale=var867, $r1=var3742, $r2=var1870}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r2
;block_num 1
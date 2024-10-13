(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1053 0)
(declare-sort var3985 0)
(declare-sort var852 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1633728430 (var3985) String)
(declare-fun cast-from-var1053-to-var3985 (var1053) var3985)
(declare-fun toLowerCase/1946809429 (String var852) String)
(declare-const null-var1053 var1053)
(declare-const var852-ROOT var852)
(declare-const var2769 var1053) ; Statement: r0 := @this: com.google.javascript.jscomp.base.Tri 
(assert (not (= var2769 null-var1053)))
(assert true)
(define-const var2963 String (name/1633728430 (cast-from-var1053-to-var3985 var2769))) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.base.Tri: java.lang.String name()>() 
(define-const var3094 var852 var852-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var222 String (toLowerCase/1946809429 var2963 var3094)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var1053-to-var3985=([com.google.javascript.jscomp.base.Tri], java.lang.Enum), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var1053=com.google.javascript.jscomp.base.Tri, var2769=r0, var3985=java.lang.Enum, var2963=$r2, var852=java.util.Locale, var3094=$r1, var222=$r3}
; {com.google.javascript.jscomp.base.Tri=var1053, r0=var2769, java.lang.Enum=var3985, $r2=var2963, java.util.Locale=var852, $r1=var3094, $r3=var222}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.base.Tri;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.base.Tri: java.lang.String name()>();	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r3
;block_num 1
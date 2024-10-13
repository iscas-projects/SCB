(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var791 0)
(declare-sort var2299 0)
(declare-sort var1545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1633728430 (var2299) String)
(declare-fun cast-from-var791-to-var2299 (var791) var2299)
(declare-fun toLowerCase/1946809429 (String var1545) String)
(declare-const null-var791 var791)
(declare-const var1545-ROOT var1545)
(declare-const var1812 var791) ; Statement: r0 := @this: org.hibernate.criterion.Junction$Nature 
(assert (not (= var1812 null-var791)))
(assert true)
(define-const var1493 String (name/1633728430 (cast-from-var791-to-var2299 var1812))) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.criterion.Junction$Nature: java.lang.String name()>() 
(define-const var2209 var1545 var1545-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1342 String (toLowerCase/1946809429 var1493 var2209)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var791-to-var2299=([org.hibernate.criterion.Junction$Nature], java.lang.Enum), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var791=org.hibernate.criterion.Junction$Nature, var1812=r0, var2299=java.lang.Enum, var1493=$r2, var1545=java.util.Locale, var2209=$r1, var1342=$r3}
; {org.hibernate.criterion.Junction$Nature=var791, r0=var1812, java.lang.Enum=var2299, $r2=var1493, java.util.Locale=var1545, $r1=var2209, $r3=var1342}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.hibernate.criterion.Junction$Nature;	$r2 = virtualinvoke r0.<org.hibernate.criterion.Junction$Nature: java.lang.String name()>();	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r3
;block_num 1
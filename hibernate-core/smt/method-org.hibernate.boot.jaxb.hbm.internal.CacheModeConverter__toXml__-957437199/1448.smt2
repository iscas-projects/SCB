(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3297 0)
(declare-sort var2053 0)
(declare-sort var1176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1633728430 (var2053) String)
(declare-fun cast-from-var3297-to-var2053 (var3297) var2053)
(declare-fun toLowerCase/1946809429 (String var1176) String)
(declare-const null-var3297 var3297)
(declare-const var1176-ENGLISH var1176)
(declare-const var898 var3297) ; Statement: r0 := @parameter0: org.hibernate.CacheMode 
(assert (not (= var898 null-var3297)))
(assert true)
(define-const var2273 String (name/1633728430 (cast-from-var3297-to-var2053 var898))) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.CacheMode: java.lang.String name()>() 
(define-const var3591 var1176 var1176-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3727 String (toLowerCase/1946809429 var2273 var3591)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var3297-to-var2053=([org.hibernate.CacheMode], java.lang.Enum), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var3297=org.hibernate.CacheMode, var898=r0, var2053=java.lang.Enum, var2273=$r2, var1176=java.util.Locale, var3591=$r1, var3727=$r3}
; {org.hibernate.CacheMode=var3297, r0=var898, java.lang.Enum=var2053, $r2=var2273, java.util.Locale=var1176, $r1=var3591, $r3=var3727}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: org.hibernate.CacheMode;	$r2 = virtualinvoke r0.<org.hibernate.CacheMode: java.lang.String name()>();	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r3
;block_num 1
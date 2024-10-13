(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3519 0)
(declare-sort var3354 0)
(declare-sort var2284 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1633728430 (var3354) String)
(declare-fun cast-from-var3519-to-var3354 (var3519) var3354)
(declare-fun toLowerCase/1946809429 (String var2284) String)
(declare-const null-var3519 var3519)
(declare-const var2284-ENGLISH var2284)
(declare-const var1186 var3519) ; Statement: r0 := @parameter0: org.hibernate.engine.OptimisticLockStyle 
(assert (not (= var1186 null-var3519)))
 ; Statement: if r0 != null goto $r2 = virtualinvoke r0.<org.hibernate.engine.OptimisticLockStyle: java.lang.String name()>() 
(assert (not (= var1186 null-var3519))) ; Cond: r0 != null 
(assert true)
(define-const var1289 String (name/1633728430 (cast-from-var3519-to-var3354 var1186))) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.engine.OptimisticLockStyle: java.lang.String name()>() 
(define-const var811 var2284 var2284-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var569 String (toLowerCase/1946809429 var1289 var811)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var3519-to-var3354=([org.hibernate.engine.OptimisticLockStyle], java.lang.Enum), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var3519=org.hibernate.engine.OptimisticLockStyle, var1186=r0, var3354=java.lang.Enum, var1289=$r2, var2284=java.util.Locale, var811=$r1, var569=$r3}
; {org.hibernate.engine.OptimisticLockStyle=var3519, r0=var1186, java.lang.Enum=var3354, $r2=var1289, java.util.Locale=var2284, $r1=var811, $r3=var569}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: org.hibernate.engine.OptimisticLockStyle;	if r0 != null goto $r2 = virtualinvoke r0.<org.hibernate.engine.OptimisticLockStyle: java.lang.String name()>();	$r2 = virtualinvoke r0.<org.hibernate.engine.OptimisticLockStyle: java.lang.String name()>();	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r3
;block_num 3
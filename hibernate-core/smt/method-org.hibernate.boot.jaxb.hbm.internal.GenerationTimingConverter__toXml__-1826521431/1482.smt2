(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3883 0)
(declare-sort var884 0)
(declare-sort var3966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1633728430 (var884) String)
(declare-fun cast-from-var3883-to-var884 (var3883) var884)
(declare-fun toLowerCase/1946809429 (String var3966) String)
(declare-const null-var3883 var3883)
(declare-const var3966-ENGLISH var3966)
(declare-const var2009 var3883) ; Statement: r0 := @parameter0: org.hibernate.tuple.GenerationTiming 
(assert (not (= var2009 null-var3883)))
 ; Statement: if null != r0 goto $r2 = virtualinvoke r0.<org.hibernate.tuple.GenerationTiming: java.lang.String name()>() 
(assert (not (= null-var3883 var2009))) ; Cond: null != r0 
(assert true)
(define-const var720 String (name/1633728430 (cast-from-var3883-to-var884 var2009))) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.tuple.GenerationTiming: java.lang.String name()>() 
(define-const var2272 var3966 var3966-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2757 String (toLowerCase/1946809429 var720 var2272)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var3883-to-var884=([org.hibernate.tuple.GenerationTiming], java.lang.Enum), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var3883=org.hibernate.tuple.GenerationTiming, var2009=r0, var884=java.lang.Enum, var720=$r2, var3966=java.util.Locale, var2272=$r1, var2757=$r3}
; {org.hibernate.tuple.GenerationTiming=var3883, r0=var2009, java.lang.Enum=var884, $r2=var720, java.util.Locale=var3966, $r1=var2272, $r3=var2757}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: org.hibernate.tuple.GenerationTiming;	if null != r0 goto $r2 = virtualinvoke r0.<org.hibernate.tuple.GenerationTiming: java.lang.String name()>();	$r2 = virtualinvoke r0.<org.hibernate.tuple.GenerationTiming: java.lang.String name()>();	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r3
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1840 0)
(declare-sort var489 0)
(declare-sort var1386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toUpperCase/398655892 (String var489) String)
(declare-fun var1386_valueOf/-636381710 (String) var1386)
(declare-const null-String String)
(declare-const var489-ENGLISH var489)
(declare-const var3326 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3326 null-String)))
 ; Statement: if r0 != null goto $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert (not (= var3326 null-String))) ; Cond: r0 != null 
(define-const var2673 var489 var489-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2791 String (toUpperCase/398655892 var3326 var2673)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1) 
(assert true) ; Non Conditional
(define-const var3536 var1386 (var1386_valueOf/-636381710 var2791)) ; Statement: $r2 = staticinvoke <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle valueOf(java.lang.String)>($r3) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var1386_valueOf/-636381710=([java.lang.String], org.hibernate.engine.OptimisticLockStyle)}
; {var3326=r0, var1840=null_type, var489=java.util.Locale, var2673=$r1, var2791=$r3, var1386=org.hibernate.engine.OptimisticLockStyle, var3536=$r2}
; {r0=var3326, null_type=var1840, java.util.Locale=var489, $r1=var2673, $r3=var2791, org.hibernate.engine.OptimisticLockStyle=var1386, $r2=var3536}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = <java.util.Locale: java.util.Locale ENGLISH>;	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1);	$r2 = staticinvoke <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle valueOf(java.lang.String)>($r3);	return $r2
;block_num 3
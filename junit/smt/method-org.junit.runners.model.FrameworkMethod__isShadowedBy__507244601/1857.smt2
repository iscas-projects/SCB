(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2628 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/128190120 (var2628) String)
(declare-const null-var2628 var2628)
(declare-const var3362 var2628) ; Statement: r1 := @this: org.junit.runners.model.FrameworkMethod 
(assert (not (= var3362 null-var2628)))
(declare-const var118 var2628) ; Statement: r0 := @parameter0: org.junit.runners.model.FrameworkMethod 
(assert (not (= var118 null-var2628)))
(assert true)
(define-const var1156 String (getName/128190120 var118)) ; Statement: $r3 = virtualinvoke r0.<org.junit.runners.model.FrameworkMethod: java.lang.String getName()>() 
(assert true)
(define-const var3009 String (getName/128190120 var3362)) ; Statement: $r2 = virtualinvoke r1.<org.junit.runners.model.FrameworkMethod: java.lang.String getName()>() 
(assert true)
(define-const var1836 Bool (= var1156 var3009)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $r4 = specialinvoke r0.<org.junit.runners.model.FrameworkMethod: java.lang.Class[] getParameterTypes()>() 
(assert (not (not (= (ite var1836 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/128190120=([org.junit.runners.model.FrameworkMethod], java.lang.String)}
; {var2628=org.junit.runners.model.FrameworkMethod, var3362=r1, var118=r0, var1156=$r3, var3009=$r2, var1836=$z0}
; {org.junit.runners.model.FrameworkMethod=var2628, r1=var3362, r0=var118, $r3=var1156, $r2=var3009, $z0=var1836}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.junit.runners.model.FrameworkMethod;	r0 := @parameter0: org.junit.runners.model.FrameworkMethod;	$r3 = virtualinvoke r0.<org.junit.runners.model.FrameworkMethod: java.lang.String getName()>();	$r2 = virtualinvoke r1.<org.junit.runners.model.FrameworkMethod: java.lang.String getName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $r4 = specialinvoke r0.<org.junit.runners.model.FrameworkMethod: java.lang.Class[] getParameterTypes()>();	return 0
;block_num 2
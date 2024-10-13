(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var861 0)
(declare-sort var924 0)
(declare-sort var1211 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun className/-317188744 (var861) String)
(declare-fun resolution/-317188744 (var861) var1211)
(declare-const null-var861 var861)
(declare-const null-String String)
(declare-const var861-$assertionsDisabled Bool)
(declare-const var450 var861) ; Statement: r1 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator 
(assert (not (= var450 null-var861)))
(declare-const var3561 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3561 null-String)))
(define-const var2335 Bool var861-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: java.lang.String className> 
(assert (not (= (ite var2335 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3469 String (className/-317188744 var450)) ; Statement: $r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: java.lang.String className> 
(assert true)
(define-const var1572 Bool (= var3561 var3469)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z1 == 0 goto $r3 = specialinvoke r1.<net.bytebuddy.dynamic.ClassFileLocator$ForClassLoader: net.bytebuddy.dynamic.ClassFileLocator$Resolution locate(java.lang.String)>(r0) 
(assert (not (= (ite var1572 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1868 var1211 (resolution/-317188744 var450)) ; Statement: $r4 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: net.bytebuddy.dynamic.ClassFileLocator$Resolution resolution> 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {className/-317188744=([org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator], java.lang.String), resolution/-317188744=([org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator], net.bytebuddy.dynamic.ClassFileLocator$Resolution)}
; {var861=org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator, var450=r1, var3561=r0, var924=null_type, var2335=$z0, var3469=$r2, var1572=$z1, var1211=net.bytebuddy.dynamic.ClassFileLocator$Resolution, var1868=$r4}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator=var861, r1=var450, r0=var3561, null_type=var924, $z0=var2335, $r2=var3469, $z1=var1572, net.bytebuddy.dynamic.ClassFileLocator$Resolution=var1211, $r4=var1868}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator;	r0 := @parameter0: java.lang.String;	$z0 = <org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: boolean $assertionsDisabled>;	if $z0 != 0 goto $r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: java.lang.String className>;	$r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: java.lang.String className>;	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z1 == 0 goto $r3 = specialinvoke r1.<net.bytebuddy.dynamic.ClassFileLocator$ForClassLoader: net.bytebuddy.dynamic.ClassFileLocator$Resolution locate(java.lang.String)>(r0);	$r4 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: net.bytebuddy.dynamic.ClassFileLocator$Resolution resolution>;	return $r4
;block_num 3
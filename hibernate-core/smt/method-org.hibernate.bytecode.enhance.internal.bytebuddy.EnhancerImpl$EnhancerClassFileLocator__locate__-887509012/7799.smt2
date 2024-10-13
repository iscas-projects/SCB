(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1253 0)
(declare-sort var2228 0)
(declare-sort var3835 0)
(declare-sort var1738 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun className/-317188744 (var1253) String)
(declare-fun locate/394979248 (var1738 String) var3835)
(declare-fun cast-from-var1253-to-var1738 (var1253) var1738)
(declare-const null-var1253 var1253)
(declare-const null-String String)
(declare-const var1253-$assertionsDisabled Bool)
(declare-const var3028 var1253) ; Statement: r1 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator 
(assert (not (= var3028 null-var1253)))
(declare-const var333 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var333 null-String)))
(define-const var3641 Bool var1253-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: java.lang.String className> 
(assert (not (= (ite var3641 1 0) 0))) ; Cond: $z0 != 0 
(define-const var631 String (className/-317188744 var3028)) ; Statement: $r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: java.lang.String className> 
(assert true)
(define-const var1737 Bool (= var333 var631)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z1 == 0 goto $r3 = specialinvoke r1.<net.bytebuddy.dynamic.ClassFileLocator$ForClassLoader: net.bytebuddy.dynamic.ClassFileLocator$Resolution locate(java.lang.String)>(r0) 
(assert (= (ite var1737 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3459 var3835 (locate/394979248 (cast-from-var1253-to-var1738 var3028) var333)) ; Statement: $r3 = specialinvoke r1.<net.bytebuddy.dynamic.ClassFileLocator$ForClassLoader: net.bytebuddy.dynamic.ClassFileLocator$Resolution locate(java.lang.String)>(r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {className/-317188744=([org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator], java.lang.String), locate/394979248=([net.bytebuddy.dynamic.ClassFileLocator$ForClassLoader, java.lang.String], net.bytebuddy.dynamic.ClassFileLocator$Resolution), cast-from-var1253-to-var1738=([org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator], net.bytebuddy.dynamic.ClassFileLocator$ForClassLoader)}
; {var1253=org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator, var3028=r1, var333=r0, var2228=null_type, var3641=$z0, var631=$r2, var1737=$z1, var3835=net.bytebuddy.dynamic.ClassFileLocator$Resolution, var1738=net.bytebuddy.dynamic.ClassFileLocator$ForClassLoader, var3459=$r3}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator=var1253, r1=var3028, r0=var333, null_type=var2228, $z0=var3641, $r2=var631, $z1=var1737, net.bytebuddy.dynamic.ClassFileLocator$Resolution=var3835, net.bytebuddy.dynamic.ClassFileLocator$ForClassLoader=var1738, $r3=var3459}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator;	r0 := @parameter0: java.lang.String;	$z0 = <org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: boolean $assertionsDisabled>;	if $z0 != 0 goto $r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: java.lang.String className>;	$r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: java.lang.String className>;	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z1 == 0 goto $r3 = specialinvoke r1.<net.bytebuddy.dynamic.ClassFileLocator$ForClassLoader: net.bytebuddy.dynamic.ClassFileLocator$Resolution locate(java.lang.String)>(r0);	$r3 = specialinvoke r1.<net.bytebuddy.dynamic.ClassFileLocator$ForClassLoader: net.bytebuddy.dynamic.ClassFileLocator$Resolution locate(java.lang.String)>(r0);	return $r3
;block_num 3
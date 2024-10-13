(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3866 0)
(declare-sort var2124 0)
(declare-sort var2372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3866-init () var3866)
(declare-fun self/-1093418003 (var3866) var2372)
(declare-fun prototype/-1093418003 (var3866) var2372)
(declare-fun <init>/-1260427806 (var3866 var2372 var2372 var2124) void)
(declare-const null-var3866 var3866)
(declare-const null-var2124 var2124)
(declare-const var3866-$assertionsDisabled Bool)
(declare-const var3609 var3866) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.FindProperty 
(assert (not (= var3609 null-var3866)))
(declare-const var1175 var2124) ; Statement: r2 := @parameter0: jdk.nashorn.internal.runtime.Property 
(assert (not (= var1175 null-var2124)))
(define-const var2052 Bool var3866-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.FindProperty: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = <jdk.nashorn.internal.runtime.FindProperty: boolean $assertionsDisabled> 
(assert (not (= (ite var2052 1 0) 0))) ; Cond: $z0 != 0 
(define-const var493 Bool var3866-$assertionsDisabled) ; Statement: $z1 = <jdk.nashorn.internal.runtime.FindProperty: boolean $assertionsDisabled> 
 ; Statement: if $z1 != 0 goto $r0 = new jdk.nashorn.internal.runtime.FindProperty 
(assert (not (= (ite var493 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1566 var3866 var3866-init) ; Statement: $r0 = new jdk.nashorn.internal.runtime.FindProperty 
(define-const var3982 var2372 (self/-1093418003 var3609)) ; Statement: $r4 = r1.<jdk.nashorn.internal.runtime.FindProperty: jdk.nashorn.internal.runtime.ScriptObject self> 
(define-const var850 var2372 (prototype/-1093418003 var3609)) ; Statement: $r3 = r1.<jdk.nashorn.internal.runtime.FindProperty: jdk.nashorn.internal.runtime.ScriptObject prototype> 
(assert true)
;(assert (<init>/-1260427806 var1566 var3982 var850 var1175)) ; Statement: specialinvoke $r0.<jdk.nashorn.internal.runtime.FindProperty: void <init>(jdk.nashorn.internal.runtime.ScriptObject,jdk.nashorn.internal.runtime.ScriptObject,jdk.nashorn.internal.runtime.Property)>($r4, $r3, r2) 

(declare-const var1566!1 var3866)
(declare-const var3982!1 var2372)
(declare-const var850!1 var2372)
(declare-const var1175!1 var2124)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3866-init=([], jdk.nashorn.internal.runtime.FindProperty), self/-1093418003=([jdk.nashorn.internal.runtime.FindProperty], jdk.nashorn.internal.runtime.ScriptObject), prototype/-1093418003=([jdk.nashorn.internal.runtime.FindProperty], jdk.nashorn.internal.runtime.ScriptObject), <init>/-1260427806=([jdk.nashorn.internal.runtime.FindProperty, jdk.nashorn.internal.runtime.ScriptObject, jdk.nashorn.internal.runtime.ScriptObject, jdk.nashorn.internal.runtime.Property], void)}
; {var3866=jdk.nashorn.internal.runtime.FindProperty, var3609=r1, var2124=jdk.nashorn.internal.runtime.Property, var1175=r2, var2052=$z0, var493=$z1, var1566=$r0, var2372=jdk.nashorn.internal.runtime.ScriptObject, var3982=$r4, var850=$r3}
; {jdk.nashorn.internal.runtime.FindProperty=var3866, r1=var3609, jdk.nashorn.internal.runtime.Property=var2124, r2=var1175, $z0=var2052, $z1=var493, $r0=var1566, jdk.nashorn.internal.runtime.ScriptObject=var2372, $r4=var3982, $r3=var850}
;seq 
;cnt {}
;stmts r1 := @this: jdk.nashorn.internal.runtime.FindProperty;	r2 := @parameter0: jdk.nashorn.internal.runtime.Property;	$z0 = <jdk.nashorn.internal.runtime.FindProperty: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = <jdk.nashorn.internal.runtime.FindProperty: boolean $assertionsDisabled>;	$z1 = <jdk.nashorn.internal.runtime.FindProperty: boolean $assertionsDisabled>;	if $z1 != 0 goto $r0 = new jdk.nashorn.internal.runtime.FindProperty;	$r0 = new jdk.nashorn.internal.runtime.FindProperty;	$r4 = r1.<jdk.nashorn.internal.runtime.FindProperty: jdk.nashorn.internal.runtime.ScriptObject self>;	$r3 = r1.<jdk.nashorn.internal.runtime.FindProperty: jdk.nashorn.internal.runtime.ScriptObject prototype>;	specialinvoke $r0.<jdk.nashorn.internal.runtime.FindProperty: void <init>(jdk.nashorn.internal.runtime.ScriptObject,jdk.nashorn.internal.runtime.ScriptObject,jdk.nashorn.internal.runtime.Property)>($r4, $r3, r2);	return $r0
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3153 0)
(declare-sort var1499 0)
(declare-sort var2965 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun property/-1093418003 (var3153) var1499)
(declare-fun getKey/-1967431913 (var1499) String)
(declare-fun var2965-init () var2965)
(declare-fun <init>/-208190597 (var2965) void)
(declare-const null-var3153 var3153)
(declare-const null-var1499 var1499)
(declare-const var3153-$assertionsDisabled Bool)
(declare-const var1110 var3153) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.FindProperty 
(assert (not (= var1110 null-var3153)))
(declare-const var2342 var1499) ; Statement: r2 := @parameter0: jdk.nashorn.internal.runtime.Property 
(assert (not (= var2342 null-var1499)))
(define-const var2546 Bool var3153-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.FindProperty: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = <jdk.nashorn.internal.runtime.FindProperty: boolean $assertionsDisabled> 
(assert (not (not (= (ite var2546 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2748 var1499 (property/-1093418003 var1110)) ; Statement: $r7 = r1.<jdk.nashorn.internal.runtime.FindProperty: jdk.nashorn.internal.runtime.Property property> 
(assert true)
(define-const var3633 String (getKey/-1967431913 var2748)) ; Statement: $r9 = virtualinvoke $r7.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>() 
(assert true)
(define-const var3818 String (getKey/-1967431913 var2342)) ; Statement: $r8 = virtualinvoke r2.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>() 
(assert true)
(define-const var1439 Bool (= var3633 var3818)) ; Statement: $z2 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8) 
 ; Statement: if $z2 != 0 goto $z1 = <jdk.nashorn.internal.runtime.FindProperty: boolean $assertionsDisabled> 
(assert (not (not (= (ite var1439 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var3636 var2965 var2965-init) ; Statement: $r10 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var3636)) ; Statement: specialinvoke $r10.<java.lang.AssertionError: void <init>()>() 

(declare-const var3636!1 var2965)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {property/-1093418003=([jdk.nashorn.internal.runtime.FindProperty], jdk.nashorn.internal.runtime.Property), getKey/-1967431913=([jdk.nashorn.internal.runtime.Property], java.lang.String), var2965-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var3153=jdk.nashorn.internal.runtime.FindProperty, var1110=r1, var1499=jdk.nashorn.internal.runtime.Property, var2342=r2, var2546=$z0, var2748=$r7, var3633=$r9, var3818=$r8, var1439=$z2, var2965=java.lang.AssertionError, var3636=$r10}
; {jdk.nashorn.internal.runtime.FindProperty=var3153, r1=var1110, jdk.nashorn.internal.runtime.Property=var1499, r2=var2342, $z0=var2546, $r7=var2748, $r9=var3633, $r8=var3818, $z2=var1439, java.lang.AssertionError=var2965, $r10=var3636}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.FindProperty;	r2 := @parameter0: jdk.nashorn.internal.runtime.Property;	$z0 = <jdk.nashorn.internal.runtime.FindProperty: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = <jdk.nashorn.internal.runtime.FindProperty: boolean $assertionsDisabled>;	$r7 = r1.<jdk.nashorn.internal.runtime.FindProperty: jdk.nashorn.internal.runtime.Property property>;	$r9 = virtualinvoke $r7.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>();	$r8 = virtualinvoke r2.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>();	$z2 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8);	if $z2 != 0 goto $z1 = <jdk.nashorn.internal.runtime.FindProperty: boolean $assertionsDisabled>;	$r10 = new java.lang.AssertionError;	specialinvoke $r10.<java.lang.AssertionError: void <init>()>();	throw $r10
;block_num 3
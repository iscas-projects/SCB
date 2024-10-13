(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1753 0)
(declare-sort var2514 0)
(declare-sort var2533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inlineTarget/1745460016 (var1753) var2533)
(declare-fun desc/-2079073047 (var2533) String)
(declare-const null-var1753 var1753)
(declare-const null-String String)
(declare-const var689 var1753) ; Statement: r0 := @this: jdk.jfr.internal.instrument.JIMethodCallInliner 
(assert (not (= var689 null-var1753)))
(declare-const var1812 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var1812 null-String)))
(declare-const var2579 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2579 null-String)))
(declare-const var129 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var129 null-String)))
(define-const var2226 var2533 (inlineTarget/1745460016 var689)) ; Statement: $r1 = r0.<jdk.jfr.internal.instrument.JIMethodCallInliner: jdk.internal.org.objectweb.asm.tree.MethodNode inlineTarget> 
(define-const var2939 String (desc/-2079073047 var2226)) ; Statement: $r3 = $r1.<jdk.internal.org.objectweb.asm.tree.MethodNode: java.lang.String desc> 
(assert true)
(define-const var2584 Bool (= var2939 var129)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $z3 = 0 
(assert (= (ite var2584 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2612 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {inlineTarget/1745460016=([jdk.jfr.internal.instrument.JIMethodCallInliner], jdk.internal.org.objectweb.asm.tree.MethodNode), desc/-2079073047=([jdk.internal.org.objectweb.asm.tree.MethodNode], java.lang.String)}
; {var1753=jdk.jfr.internal.instrument.JIMethodCallInliner, var689=r0, var1812=r7, var2514=null_type, var2579=r5, var129=r2, var2533=jdk.internal.org.objectweb.asm.tree.MethodNode, var2226=$r1, var2939=$r3, var2584=$z0, var2612=$z3}
; {jdk.jfr.internal.instrument.JIMethodCallInliner=var1753, r0=var689, r7=var1812, null_type=var2514, r5=var2579, r2=var129, jdk.internal.org.objectweb.asm.tree.MethodNode=var2533, $r1=var2226, $r3=var2939, $z0=var2584, $z3=var2612}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.jfr.internal.instrument.JIMethodCallInliner;	r7 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	$r1 = r0.<jdk.jfr.internal.instrument.JIMethodCallInliner: jdk.internal.org.objectweb.asm.tree.MethodNode inlineTarget>;	$r3 = $r1.<jdk.internal.org.objectweb.asm.tree.MethodNode: java.lang.String desc>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $z3 = 0;	$z3 = 0;	return $z3
;block_num 3
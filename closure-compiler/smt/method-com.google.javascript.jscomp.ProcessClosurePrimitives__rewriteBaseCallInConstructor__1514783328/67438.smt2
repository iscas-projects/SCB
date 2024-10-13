(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3620 0)
(declare-sort var9 0)
(declare-sort var2327 0)
(declare-sort var122 0)
(declare-sort var786 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun knownClosureSubclasses/395205365 (var3620) var122)
(declare-fun var122_contains/1636690605 (var122 var786) Bool)
(declare-fun cast-from-String-to-var786 (String) var786)
(declare-const null-var3620 var3620)
(declare-const null-String String)
(declare-const null-var2327 var2327)
(declare-const var42 var3620) ; Statement: r7 := @this: com.google.javascript.jscomp.ProcessClosurePrimitives 
(assert (not (= var42 null-var3620)))
(declare-const var2550 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2550 null-String)))
(declare-const var3430 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3430 null-String)))
(declare-const var2762 var2327) ; Statement: r4 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var2762 null-var2327)))
(declare-const var2308 var2327) ; Statement: r2 := @parameter3: com.google.javascript.rhino.Node 
(assert (not (= var2308 null-var2327)))
(assert true)
(define-const var2647 Bool (= var2550 var3430)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto r3 = virtualinvoke r2.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>() 
(assert (not (not (= (ite var2647 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1538 var122 (knownClosureSubclasses/395205365 var42)) ; Statement: $r17 = r7.<com.google.javascript.jscomp.ProcessClosurePrimitives: java.util.Set knownClosureSubclasses> 
(define-const var3015 Bool (var122_contains/1636690605 var1538 (cast-from-String-to-var786 var3430))) ; Statement: $z5 = interfaceinvoke $r17.<java.util.Set: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z5 == 0 goto return 
(assert (= (ite var3015 1 0) 0)) ; Cond: $z5 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {knownClosureSubclasses/395205365=([com.google.javascript.jscomp.ProcessClosurePrimitives], java.util.Set), var122_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var786=([java.lang.String], java.lang.Object)}
; {var3620=com.google.javascript.jscomp.ProcessClosurePrimitives, var42=r7, var2550=r0, var9=null_type, var3430=r1, var2327=com.google.javascript.rhino.Node, var2762=r4, var2308=r2, var2647=$z0, var122=java.util.Set, var1538=$r17, var786=java.lang.Object, var3015=$z5}
; {com.google.javascript.jscomp.ProcessClosurePrimitives=var3620, r7=var42, r0=var2550, null_type=var9, r1=var3430, com.google.javascript.rhino.Node=var2327, r4=var2762, r2=var2308, $z0=var2647, java.util.Set=var122, $r17=var1538, java.lang.Object=var786, $z5=var3015}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.ProcessClosurePrimitives;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r4 := @parameter2: com.google.javascript.rhino.Node;	r2 := @parameter3: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto r3 = virtualinvoke r2.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>();	$r17 = r7.<com.google.javascript.jscomp.ProcessClosurePrimitives: java.util.Set knownClosureSubclasses>;	$z5 = interfaceinvoke $r17.<java.util.Set: boolean contains(java.lang.Object)>(r1);	if $z5 == 0 goto return;	return
;block_num 3
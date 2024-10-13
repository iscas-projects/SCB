(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3126 0)
(declare-sort var3901 0)
(declare-sort var3204 0)
(declare-sort var3773 0)
(declare-sort var2731 0)
(declare-sort var1455 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3773_getKnownValueType/-1021761545 (var3901) var3204)
(declare-fun getSideEffectFreeBigIntValue/-722070872 (var3126 var3901) var2731)
(declare-fun compareTo/-1602314560 (var2731 var2731) Int)
(declare-fun var1455_forBoolean/-1375701506 (Bool) var1455)
(declare-const null-var3126 var3126)
(declare-const null-var3901 var3901)
(declare-const null-Bool Bool)
(declare-const var3204-STRING var3204)
(declare-const null-var2731 var2731)
(declare-const var394 var3126) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.AbstractPeepholeOptimization 
(assert (not (= var394 null-var3126)))
(declare-const var3074 var3901) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3074 null-var3901)))
(declare-const var1684 var3901) ; Statement: r2 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var1684 null-var3901)))
(declare-const var1404 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var1404 null-Bool)))
(define-const var252 var3204 (var3773_getKnownValueType/-1021761545 var3074)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r0) 
(define-const var2897 var3204 (var3773_getKnownValueType/-1021761545 var1684)) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r2) 
(define-const var3051 var3204 var3204-STRING) ; Statement: $r4 = <com.google.javascript.jscomp.NodeUtil$ValueType: com.google.javascript.jscomp.NodeUtil$ValueType STRING> 
 ; Statement: if r1 != $r4 goto $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0) 
(assert (not (= var252 var3051))) ; Cond: r1 != $r4 
(assert true)
(define-const var3659 var2731 (getSideEffectFreeBigIntValue/-722070872 var394 var3074)) ; Statement: $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0) 
(assert true)
(define-const var1332 var2731 (getSideEffectFreeBigIntValue/-722070872 var394 var1684)) ; Statement: $r31 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r2) 
 ; Statement: if $r30 == null goto $r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0) 
(assert (not (= var3659 null-var2731))) ; Negate: Cond: $r30 == null  
 ; Statement: if $r31 == null goto $r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0) 
(assert (not (= var1332 null-var2731))) ; Negate: Cond: $r31 == null  
(assert true)
(define-const var2193 Int (compareTo/-1602314560 var3659 var1332)) ; Statement: $i1 = virtualinvoke $r30.<java.math.BigInteger: int compareTo(java.math.BigInteger)>($r31) 
 ; Statement: if $i1 >= 0 goto $z12 = 0 
(assert (>= var2193 0)) ; Cond: $i1 >= 0 
(define-const var3084 Bool (ite (= 1 0) true false)) ; Statement: $z12 = 0 
(assert true) ; Non Conditional
(define-const var2608 var1455 (var1455_forBoolean/-1375701506 var3084)) ; Statement: $r17 = staticinvoke <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri forBoolean(boolean)>($z12) 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var3773_getKnownValueType/-1021761545=([com.google.javascript.rhino.Node], com.google.javascript.jscomp.NodeUtil$ValueType), getSideEffectFreeBigIntValue/-722070872=([com.google.javascript.jscomp.AbstractPeepholeOptimization, com.google.javascript.rhino.Node], java.math.BigInteger), compareTo/-1602314560=([java.math.BigInteger, java.math.BigInteger], int), var1455_forBoolean/-1375701506=([boolean], com.google.javascript.jscomp.base.Tri)}
; {var3126=com.google.javascript.jscomp.AbstractPeepholeOptimization, var394=r5, var3901=com.google.javascript.rhino.Node, var3074=r0, var1684=r2, var1404=z0, var3204=com.google.javascript.jscomp.NodeUtil$ValueType, var3773=com.google.javascript.jscomp.NodeUtil, var252=r1, var2897=r3, var3051=$r4, var2731=java.math.BigInteger, var3659=$r30, var1332=$r31, var2193=$i1, var3084=$z12, var1455=com.google.javascript.jscomp.base.Tri, var2608=$r17}
; {com.google.javascript.jscomp.AbstractPeepholeOptimization=var3126, r5=var394, com.google.javascript.rhino.Node=var3901, r0=var3074, r2=var1684, z0=var1404, com.google.javascript.jscomp.NodeUtil$ValueType=var3204, com.google.javascript.jscomp.NodeUtil=var3773, r1=var252, r3=var2897, $r4=var3051, java.math.BigInteger=var2731, $r30=var3659, $r31=var1332, $i1=var2193, $z12=var3084, com.google.javascript.jscomp.base.Tri=var1455, $r17=var2608}
;seq 
;cnt {}
;stmts r5 := @parameter0: com.google.javascript.jscomp.AbstractPeepholeOptimization;	r0 := @parameter1: com.google.javascript.rhino.Node;	r2 := @parameter2: com.google.javascript.rhino.Node;	z0 := @parameter3: boolean;	r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r0);	r3 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r2);	$r4 = <com.google.javascript.jscomp.NodeUtil$ValueType: com.google.javascript.jscomp.NodeUtil$ValueType STRING>;	if r1 != $r4 goto $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0);	$r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0);	$r31 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r2);	if $r30 == null goto $r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0);	if $r31 == null goto $r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0);	$i1 = virtualinvoke $r30.<java.math.BigInteger: int compareTo(java.math.BigInteger)>($r31);	if $i1 >= 0 goto $z12 = 0;	$z12 = 0;	$r17 = staticinvoke <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri forBoolean(boolean)>($z12);	return $r17
;block_num 6
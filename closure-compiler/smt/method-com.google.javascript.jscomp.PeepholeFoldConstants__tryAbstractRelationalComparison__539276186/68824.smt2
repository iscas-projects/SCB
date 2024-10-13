(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1849 0)
(declare-sort var2126 0)
(declare-sort var897 0)
(declare-sort var969 0)
(declare-sort var2649 0)
(declare-sort var3502 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var969_getKnownValueType/-1021761545 (var2126) var897)
(declare-fun getSideEffectFreeBigIntValue/-722070872 (var1849 var2126) var2649)
(declare-fun compareTo/-1602314560 (var2649 var2649) Int)
(declare-fun var3502_forBoolean/-1375701506 (Bool) var3502)
(declare-const null-var1849 var1849)
(declare-const null-var2126 var2126)
(declare-const null-Bool Bool)
(declare-const var897-STRING var897)
(declare-const null-var2649 var2649)
(declare-const var450 var1849) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.AbstractPeepholeOptimization 
(assert (not (= var450 null-var1849)))
(declare-const var2658 var2126) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2658 null-var2126)))
(declare-const var210 var2126) ; Statement: r2 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var210 null-var2126)))
(declare-const var814 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var814 null-Bool)))
(define-const var402 var897 (var969_getKnownValueType/-1021761545 var2658)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r0) 
(define-const var2074 var897 (var969_getKnownValueType/-1021761545 var210)) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r2) 
(define-const var3721 var897 var897-STRING) ; Statement: $r4 = <com.google.javascript.jscomp.NodeUtil$ValueType: com.google.javascript.jscomp.NodeUtil$ValueType STRING> 
 ; Statement: if r1 != $r4 goto $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0) 
(assert (not (= var402 var3721))) ; Cond: r1 != $r4 
(assert true)
(define-const var2396 var2649 (getSideEffectFreeBigIntValue/-722070872 var450 var2658)) ; Statement: $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0) 
(assert true)
(define-const var1149 var2649 (getSideEffectFreeBigIntValue/-722070872 var450 var210)) ; Statement: $r31 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r2) 
 ; Statement: if $r30 == null goto $r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0) 
(assert (not (= var2396 null-var2649))) ; Negate: Cond: $r30 == null  
 ; Statement: if $r31 == null goto $r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0) 
(assert (not (= var1149 null-var2649))) ; Negate: Cond: $r31 == null  
(assert true)
(define-const var1626 Int (compareTo/-1602314560 var2396 var1149)) ; Statement: $i1 = virtualinvoke $r30.<java.math.BigInteger: int compareTo(java.math.BigInteger)>($r31) 
 ; Statement: if $i1 >= 0 goto $z12 = 0 
(assert (not (>= var1626 0))) ; Negate: Cond: $i1 >= 0  
(define-const var3238 Bool (ite (= 1 1) true false)) ; Statement: $z12 = 1 
 ; Statement: goto [?= $r17 = staticinvoke <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri forBoolean(boolean)>($z12)] 
(assert true) ; Non Conditional
(define-const var56 var3502 (var3502_forBoolean/-1375701506 var3238)) ; Statement: $r17 = staticinvoke <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri forBoolean(boolean)>($z12) 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var969_getKnownValueType/-1021761545=([com.google.javascript.rhino.Node], com.google.javascript.jscomp.NodeUtil$ValueType), getSideEffectFreeBigIntValue/-722070872=([com.google.javascript.jscomp.AbstractPeepholeOptimization, com.google.javascript.rhino.Node], java.math.BigInteger), compareTo/-1602314560=([java.math.BigInteger, java.math.BigInteger], int), var3502_forBoolean/-1375701506=([boolean], com.google.javascript.jscomp.base.Tri)}
; {var1849=com.google.javascript.jscomp.AbstractPeepholeOptimization, var450=r5, var2126=com.google.javascript.rhino.Node, var2658=r0, var210=r2, var814=z0, var897=com.google.javascript.jscomp.NodeUtil$ValueType, var969=com.google.javascript.jscomp.NodeUtil, var402=r1, var2074=r3, var3721=$r4, var2649=java.math.BigInteger, var2396=$r30, var1149=$r31, var1626=$i1, var3238=$z12, var3502=com.google.javascript.jscomp.base.Tri, var56=$r17}
; {com.google.javascript.jscomp.AbstractPeepholeOptimization=var1849, r5=var450, com.google.javascript.rhino.Node=var2126, r0=var2658, r2=var210, z0=var814, com.google.javascript.jscomp.NodeUtil$ValueType=var897, com.google.javascript.jscomp.NodeUtil=var969, r1=var402, r3=var2074, $r4=var3721, java.math.BigInteger=var2649, $r30=var2396, $r31=var1149, $i1=var1626, $z12=var3238, com.google.javascript.jscomp.base.Tri=var3502, $r17=var56}
;seq 
;cnt {}
;stmts r5 := @parameter0: com.google.javascript.jscomp.AbstractPeepholeOptimization;	r0 := @parameter1: com.google.javascript.rhino.Node;	r2 := @parameter2: com.google.javascript.rhino.Node;	z0 := @parameter3: boolean;	r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r0);	r3 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r2);	$r4 = <com.google.javascript.jscomp.NodeUtil$ValueType: com.google.javascript.jscomp.NodeUtil$ValueType STRING>;	if r1 != $r4 goto $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0);	$r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0);	$r31 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r2);	if $r30 == null goto $r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0);	if $r31 == null goto $r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0);	$i1 = virtualinvoke $r30.<java.math.BigInteger: int compareTo(java.math.BigInteger)>($r31);	if $i1 >= 0 goto $z12 = 0;	$z12 = 1;	goto [?= $r17 = staticinvoke <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri forBoolean(boolean)>($z12)];	$r17 = staticinvoke <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri forBoolean(boolean)>($z12);	return $r17
;block_num 6
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2467 0)
(declare-sort var3673 0)
(declare-sort var2665 0)
(declare-sort var1076 0)
(declare-sort var3302 0)
(declare-sort var3834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1076_getKnownValueType/-1021761545 (var3673) var2665)
(declare-fun getSideEffectFreeStringValue/124010551 (var2467 var3673) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2467 var2467)
(declare-const null-var3673 var3673)
(declare-const null-Bool Bool)
(declare-const var2665-STRING var2665)
(declare-const null-String String)
(declare-const var3834-UNKNOWN var3834)
(declare-const var769 var2467) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.AbstractPeepholeOptimization 
(assert (not (= var769 null-var2467)))
(declare-const var855 var3673) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var855 null-var3673)))
(declare-const var67 var3673) ; Statement: r2 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var67 null-var3673)))
(declare-const var3446 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var3446 null-Bool)))
(define-const var1344 var2665 (var1076_getKnownValueType/-1021761545 var855)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r0) 
(define-const var3058 var2665 (var1076_getKnownValueType/-1021761545 var67)) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r2) 
(define-const var1495 var2665 var2665-STRING) ; Statement: $r4 = <com.google.javascript.jscomp.NodeUtil$ValueType: com.google.javascript.jscomp.NodeUtil$ValueType STRING> 
 ; Statement: if r1 != $r4 goto $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0) 
(assert (not (not (= var1344 var1495)))) ; Negate: Cond: r1 != $r4  
(define-const var1405 var2665 var2665-STRING) ; Statement: $r18 = <com.google.javascript.jscomp.NodeUtil$ValueType: com.google.javascript.jscomp.NodeUtil$ValueType STRING> 
 ; Statement: if r3 != $r18 goto $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0) 
(assert (not (not (= var3058 var1405)))) ; Negate: Cond: r3 != $r18  
(assert true)
(define-const var821 String (getSideEffectFreeStringValue/124010551 var769 var855)) ; Statement: r28 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.String getSideEffectFreeStringValue(com.google.javascript.rhino.Node)>(r0) 
(assert true)
(define-const var3922 String (getSideEffectFreeStringValue/124010551 var769 var67)) ; Statement: r29 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.String getSideEffectFreeStringValue(com.google.javascript.rhino.Node)>(r2) 
 ; Statement: if r28 == null goto $z6 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isTypeOf()>() 
(assert (not (= var821 null-String))) ; Negate: Cond: r28 == null  
 ; Statement: if r29 == null goto $z6 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isTypeOf()>() 
(assert (not (= var3922 null-String))) ; Negate: Cond: r29 == null  
(assert true)
(define-const var3281 Int (indexOf/-1037706067 var821 11)) ; Statement: $i2 = virtualinvoke r28.<java.lang.String: int indexOf(int)>(11) 
(define-const var2035 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i2 != $i6 goto $r26 = <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri UNKNOWN> 
(assert (not (= var3281 var2035))) ; Cond: $i2 != $i6 
(define-const var1480 var3834 var3834-UNKNOWN) ; Statement: $r26 = <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri UNKNOWN> 
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {var1076_getKnownValueType/-1021761545=([com.google.javascript.rhino.Node], com.google.javascript.jscomp.NodeUtil$ValueType), getSideEffectFreeStringValue/124010551=([com.google.javascript.jscomp.AbstractPeepholeOptimization, com.google.javascript.rhino.Node], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var2467=com.google.javascript.jscomp.AbstractPeepholeOptimization, var769=r5, var3673=com.google.javascript.rhino.Node, var855=r0, var67=r2, var3446=z0, var2665=com.google.javascript.jscomp.NodeUtil$ValueType, var1076=com.google.javascript.jscomp.NodeUtil, var1344=r1, var3058=r3, var1495=$r4, var1405=$r18, var821=r28, var3922=r29, var3302=null_type, var3281=$i2, var2035=$i6, var3834=com.google.javascript.jscomp.base.Tri, var1480=$r26}
; {com.google.javascript.jscomp.AbstractPeepholeOptimization=var2467, r5=var769, com.google.javascript.rhino.Node=var3673, r0=var855, r2=var67, z0=var3446, com.google.javascript.jscomp.NodeUtil$ValueType=var2665, com.google.javascript.jscomp.NodeUtil=var1076, r1=var1344, r3=var3058, $r4=var1495, $r18=var1405, r28=var821, r29=var3922, null_type=var3302, $i2=var3281, $i6=var2035, com.google.javascript.jscomp.base.Tri=var3834, $r26=var1480}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r5 := @parameter0: com.google.javascript.jscomp.AbstractPeepholeOptimization;	r0 := @parameter1: com.google.javascript.rhino.Node;	r2 := @parameter2: com.google.javascript.rhino.Node;	z0 := @parameter3: boolean;	r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r0);	r3 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r2);	$r4 = <com.google.javascript.jscomp.NodeUtil$ValueType: com.google.javascript.jscomp.NodeUtil$ValueType STRING>;	if r1 != $r4 goto $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0);	$r18 = <com.google.javascript.jscomp.NodeUtil$ValueType: com.google.javascript.jscomp.NodeUtil$ValueType STRING>;	if r3 != $r18 goto $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0);	r28 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.String getSideEffectFreeStringValue(com.google.javascript.rhino.Node)>(r0);	r29 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.String getSideEffectFreeStringValue(com.google.javascript.rhino.Node)>(r2);	if r28 == null goto $z6 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isTypeOf()>();	if r29 == null goto $z6 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isTypeOf()>();	$i2 = virtualinvoke r28.<java.lang.String: int indexOf(int)>(11);	$i6 = (int) -1;	if $i2 != $i6 goto $r26 = <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri UNKNOWN>;	$r26 = <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri UNKNOWN>;	return $r26
;block_num 6
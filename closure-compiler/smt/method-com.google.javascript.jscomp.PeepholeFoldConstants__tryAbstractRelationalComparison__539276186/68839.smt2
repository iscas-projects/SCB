(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var481 0)
(declare-sort var676 0)
(declare-sort var3107 0)
(declare-sort var2811 0)
(declare-sort var3055 0)
(declare-sort var2418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2811_getKnownValueType/-1021761545 (var676) var3107)
(declare-fun getSideEffectFreeBigIntValue/-722070872 (var481 var676) var3055)
(declare-fun getSideEffectFreeNumberValue/251543343 (var481 var676) Float64)
(declare-fun doubleValue/-2921339 (Float64) Float64)
(declare-fun Float64_isNaN/-647401060 (Float64) Bool)
(declare-fun var2418_forBoolean/-1375701506 (Bool) var2418)
(declare-const null-var481 var481)
(declare-const null-var676 var676)
(declare-const null-Bool Bool)
(declare-const var3107-STRING var3107)
(declare-const null-var3055 var3055)
(declare-const null-Float64 Float64)
(declare-const var2171 var481) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.AbstractPeepholeOptimization 
(assert (not (= var2171 null-var481)))
(declare-const var1455 var676) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1455 null-var676)))
(declare-const var1684 var676) ; Statement: r2 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var1684 null-var676)))
(declare-const var2730 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var2730 null-Bool)))
(define-const var3968 var3107 (var2811_getKnownValueType/-1021761545 var1455)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r0) 
(define-const var1447 var3107 (var2811_getKnownValueType/-1021761545 var1684)) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r2) 
(define-const var666 var3107 var3107-STRING) ; Statement: $r4 = <com.google.javascript.jscomp.NodeUtil$ValueType: com.google.javascript.jscomp.NodeUtil$ValueType STRING> 
 ; Statement: if r1 != $r4 goto $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0) 
(assert (not (= var3968 var666))) ; Cond: r1 != $r4 
(assert true)
(define-const var2478 var3055 (getSideEffectFreeBigIntValue/-722070872 var2171 var1455)) ; Statement: $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0) 
(assert true)
(define-const var2916 var3055 (getSideEffectFreeBigIntValue/-722070872 var2171 var1684)) ; Statement: $r31 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r2) 
 ; Statement: if $r30 == null goto $r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0) 
(assert (= var2478 null-var3055)) ; Cond: $r30 == null 
(assert true)
(define-const var928 Float64 (getSideEffectFreeNumberValue/251543343 var2171 var1455)) ; Statement: $r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0) 
(assert true)
(define-const var3358 Float64 (getSideEffectFreeNumberValue/251543343 var2171 var1684)) ; Statement: $r16 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r2) 
 ; Statement: if $r15 == null goto (branch) 
(assert (not (= var928 null-Float64))) ; Negate: Cond: $r15 == null  
 ; Statement: if $r16 == null goto (branch) 
(assert (not (= var3358 null-Float64))) ; Negate: Cond: $r16 == null  
(assert true)
(define-const var947 Float64 (doubleValue/-2921339 var928)) ; Statement: $d2 = virtualinvoke $r15.<java.lang.Double: double doubleValue()>() 
(define-const var1944 Bool (Float64_isNaN/-647401060 var947)) ; Statement: $z4 = staticinvoke <java.lang.Double: boolean isNaN(double)>($d2) 
 ; Statement: if $z4 != 0 goto $r13 = staticinvoke <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri forBoolean(boolean)>(z0) 
(assert (not (= (ite var1944 1 0) 0))) ; Cond: $z4 != 0 
(define-const var3830 var2418 (var2418_forBoolean/-1375701506 var2730)) ; Statement: $r13 = staticinvoke <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri forBoolean(boolean)>(z0) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var2811_getKnownValueType/-1021761545=([com.google.javascript.rhino.Node], com.google.javascript.jscomp.NodeUtil$ValueType), getSideEffectFreeBigIntValue/-722070872=([com.google.javascript.jscomp.AbstractPeepholeOptimization, com.google.javascript.rhino.Node], java.math.BigInteger), getSideEffectFreeNumberValue/251543343=([com.google.javascript.jscomp.AbstractPeepholeOptimization, com.google.javascript.rhino.Node], java.lang.Double), doubleValue/-2921339=([java.lang.Double], double), Float64_isNaN/-647401060=([double], boolean), var2418_forBoolean/-1375701506=([boolean], com.google.javascript.jscomp.base.Tri)}
; {var481=com.google.javascript.jscomp.AbstractPeepholeOptimization, var2171=r5, var676=com.google.javascript.rhino.Node, var1455=r0, var1684=r2, var2730=z0, var3107=com.google.javascript.jscomp.NodeUtil$ValueType, var2811=com.google.javascript.jscomp.NodeUtil, var3968=r1, var1447=r3, var666=$r4, var3055=java.math.BigInteger, var2478=$r30, var2916=$r31, var928=$r15, var3358=$r16, var947=$d2, var1944=$z4, var2418=com.google.javascript.jscomp.base.Tri, var3830=$r13}
; {com.google.javascript.jscomp.AbstractPeepholeOptimization=var481, r5=var2171, com.google.javascript.rhino.Node=var676, r0=var1455, r2=var1684, z0=var2730, com.google.javascript.jscomp.NodeUtil$ValueType=var3107, com.google.javascript.jscomp.NodeUtil=var2811, r1=var3968, r3=var1447, $r4=var666, java.math.BigInteger=var3055, $r30=var2478, $r31=var2916, $r15=var928, $r16=var3358, $d2=var947, $z4=var1944, com.google.javascript.jscomp.base.Tri=var2418, $r13=var3830}
;seq 
;cnt {}
;stmts r5 := @parameter0: com.google.javascript.jscomp.AbstractPeepholeOptimization;	r0 := @parameter1: com.google.javascript.rhino.Node;	r2 := @parameter2: com.google.javascript.rhino.Node;	z0 := @parameter3: boolean;	r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r0);	r3 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r2);	$r4 = <com.google.javascript.jscomp.NodeUtil$ValueType: com.google.javascript.jscomp.NodeUtil$ValueType STRING>;	if r1 != $r4 goto $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0);	$r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0);	$r31 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r2);	if $r30 == null goto $r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0);	$r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0);	$r16 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r2);	if $r15 == null goto (branch);	if $r16 == null goto (branch);	$d2 = virtualinvoke $r15.<java.lang.Double: double doubleValue()>();	$z4 = staticinvoke <java.lang.Double: boolean isNaN(double)>($d2);	if $z4 != 0 goto $r13 = staticinvoke <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri forBoolean(boolean)>(z0);	$r13 = staticinvoke <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri forBoolean(boolean)>(z0);	return $r13
;block_num 6
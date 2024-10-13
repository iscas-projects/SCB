(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2456 0)
(declare-sort var2168 0)
(declare-sort var2944 0)
(declare-sort var1634 0)
(declare-sort var1039 0)
(declare-sort var3553 0)
(declare-sort var3846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1634_getKnownValueType/-1021761545 (var2168) var2944)
(declare-fun getSideEffectFreeBigIntValue/-722070872 (var2456 var2168) var1039)
(declare-fun getSideEffectFreeNumberValue/251543343 (var2456 var2168) Float64)
(declare-fun doubleValue/-2921339 (Float64) Float64)
(declare-fun var3846_bigintLessThanDouble/429176079 (var1039 Float64 var3553 Bool) var3553)
(declare-const null-var2456 var2456)
(declare-const null-var2168 var2168)
(declare-const null-Bool Bool)
(declare-const var2944-STRING var2944)
(declare-const null-var1039 var1039)
(declare-const null-Float64 Float64)
(declare-const var3553-FALSE var3553)
(declare-const var2177 var2456) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.AbstractPeepholeOptimization 
(assert (not (= var2177 null-var2456)))
(declare-const var3293 var2168) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3293 null-var2168)))
(declare-const var515 var2168) ; Statement: r2 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var515 null-var2168)))
(declare-const var2297 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var2297 null-Bool)))
(define-const var1251 var2944 (var1634_getKnownValueType/-1021761545 var3293)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r0) 
(define-const var3218 var2944 (var1634_getKnownValueType/-1021761545 var515)) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r2) 
(define-const var3427 var2944 var2944-STRING) ; Statement: $r4 = <com.google.javascript.jscomp.NodeUtil$ValueType: com.google.javascript.jscomp.NodeUtil$ValueType STRING> 
 ; Statement: if r1 != $r4 goto $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0) 
(assert (not (= var1251 var3427))) ; Cond: r1 != $r4 
(assert true)
(define-const var1563 var1039 (getSideEffectFreeBigIntValue/-722070872 var2177 var3293)) ; Statement: $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0) 
(assert true)
(define-const var3320 var1039 (getSideEffectFreeBigIntValue/-722070872 var2177 var515)) ; Statement: $r31 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r2) 
 ; Statement: if $r30 == null goto $r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0) 
(assert (= var1563 null-var1039)) ; Cond: $r30 == null 
(assert true)
(define-const var2360 Float64 (getSideEffectFreeNumberValue/251543343 var2177 var3293)) ; Statement: $r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0) 
(assert true)
(define-const var2989 Float64 (getSideEffectFreeNumberValue/251543343 var2177 var515)) ; Statement: $r16 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r2) 
 ; Statement: if $r15 == null goto (branch) 
(assert (= var2360 null-Float64)) ; Cond: $r15 == null 
 ; Statement: if $r30 == null goto (branch) 
(assert (not (= var1563 null-var1039))) ; Negate: Cond: $r30 == null  
 ; Statement: if $r16 == null goto (branch) 
(assert (not (= var2989 null-Float64))) ; Negate: Cond: $r16 == null  
(assert true)
(define-const var1623 Float64 (doubleValue/-2921339 var2989)) ; Statement: $d1 = virtualinvoke $r16.<java.lang.Double: double doubleValue()>() 
(define-const var1999 var3553 var3553-FALSE) ; Statement: $r11 = <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri FALSE> 
(define-const var3152 var3553 (var3846_bigintLessThanDouble/429176079 var1563 var1623 var1999 var2297)) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.PeepholeFoldConstants: com.google.javascript.jscomp.base.Tri bigintLessThanDouble(java.math.BigInteger,double,com.google.javascript.jscomp.base.Tri,boolean)>($r30, $d1, $r11, z0) 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1634_getKnownValueType/-1021761545=([com.google.javascript.rhino.Node], com.google.javascript.jscomp.NodeUtil$ValueType), getSideEffectFreeBigIntValue/-722070872=([com.google.javascript.jscomp.AbstractPeepholeOptimization, com.google.javascript.rhino.Node], java.math.BigInteger), getSideEffectFreeNumberValue/251543343=([com.google.javascript.jscomp.AbstractPeepholeOptimization, com.google.javascript.rhino.Node], java.lang.Double), doubleValue/-2921339=([java.lang.Double], double), var3846_bigintLessThanDouble/429176079=([java.math.BigInteger, double, com.google.javascript.jscomp.base.Tri, boolean], com.google.javascript.jscomp.base.Tri)}
; {var2456=com.google.javascript.jscomp.AbstractPeepholeOptimization, var2177=r5, var2168=com.google.javascript.rhino.Node, var3293=r0, var515=r2, var2297=z0, var2944=com.google.javascript.jscomp.NodeUtil$ValueType, var1634=com.google.javascript.jscomp.NodeUtil, var1251=r1, var3218=r3, var3427=$r4, var1039=java.math.BigInteger, var1563=$r30, var3320=$r31, var2360=$r15, var2989=$r16, var1623=$d1, var3553=com.google.javascript.jscomp.base.Tri, var1999=$r11, var3846=com.google.javascript.jscomp.PeepholeFoldConstants, var3152=$r12}
; {com.google.javascript.jscomp.AbstractPeepholeOptimization=var2456, r5=var2177, com.google.javascript.rhino.Node=var2168, r0=var3293, r2=var515, z0=var2297, com.google.javascript.jscomp.NodeUtil$ValueType=var2944, com.google.javascript.jscomp.NodeUtil=var1634, r1=var1251, r3=var3218, $r4=var3427, java.math.BigInteger=var1039, $r30=var1563, $r31=var3320, $r15=var2360, $r16=var2989, $d1=var1623, com.google.javascript.jscomp.base.Tri=var3553, $r11=var1999, com.google.javascript.jscomp.PeepholeFoldConstants=var3846, $r12=var3152}
;seq 
;cnt {}
;stmts r5 := @parameter0: com.google.javascript.jscomp.AbstractPeepholeOptimization;	r0 := @parameter1: com.google.javascript.rhino.Node;	r2 := @parameter2: com.google.javascript.rhino.Node;	z0 := @parameter3: boolean;	r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r0);	r3 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.jscomp.NodeUtil$ValueType getKnownValueType(com.google.javascript.rhino.Node)>(r2);	$r4 = <com.google.javascript.jscomp.NodeUtil$ValueType: com.google.javascript.jscomp.NodeUtil$ValueType STRING>;	if r1 != $r4 goto $r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0);	$r30 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r0);	$r31 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.math.BigInteger getSideEffectFreeBigIntValue(com.google.javascript.rhino.Node)>(r2);	if $r30 == null goto $r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0);	$r15 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r0);	$r16 = virtualinvoke r5.<com.google.javascript.jscomp.AbstractPeepholeOptimization: java.lang.Double getSideEffectFreeNumberValue(com.google.javascript.rhino.Node)>(r2);	if $r15 == null goto (branch);	if $r30 == null goto (branch);	if $r16 == null goto (branch);	$d1 = virtualinvoke $r16.<java.lang.Double: double doubleValue()>();	$r11 = <com.google.javascript.jscomp.base.Tri: com.google.javascript.jscomp.base.Tri FALSE>;	$r12 = staticinvoke <com.google.javascript.jscomp.PeepholeFoldConstants: com.google.javascript.jscomp.base.Tri bigintLessThanDouble(java.math.BigInteger,double,com.google.javascript.jscomp.base.Tri,boolean)>($r30, $d1, $r11, z0);	return $r12
;block_num 6
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1138 0)
(declare-sort var3713 0)
(declare-sort var2346 0)
(declare-sort var3433 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2346!class ClassObject)
(declare-fun var3713_toPrimitive/1704974141 (var1138 ClassObject) var1138)
(declare-fun var3433_areBothString/-1215543817 (var1138 var1138) Bool)
(declare-fun var3713_toNumber/1589859753 (var1138) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1138 var1138)
(declare-const var1828 var1138) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1828 null-var1138)))
(declare-const var3196 var1138) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3196 null-var1138)))
(define-const var3469 var1138 (var3713_toPrimitive/1704974141 var1828 var2346!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var1605 var1138 (var3713_toPrimitive/1704974141 var3196 var2346!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var719 Bool (var3433_areBothString/-1215543817 var3469 var1605)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (= (ite var719 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1230 Float64 (var3713_toNumber/1589859753 var3469)) ; Statement: $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(define-const var1179 Float64 (var3713_toNumber/1589859753 var1605)) ; Statement: $d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3) 
(define-const var441 Int (ite (fp.gt var1230 var1179) 1 (ite (fp.lt var1230 var1179) (- 1) 0))) ; Statement: $b0 = $d1 cmpg $d0 
(define-const var1420 Int (cast-from-Int-to-Int var441)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 > 0 goto $z1 = 0 
(assert (> var1420 0)) ; Cond: $i2 > 0 
(define-const var1843 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3713_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var3433_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), var3713_toNumber/1589859753=([java.lang.Object], double), cast-from-Int-to-Int=([byte], int)}
; {var1138=java.lang.Object, var1828=r0, var3196=r2, var3713=jdk.nashorn.internal.runtime.JSType, var2346=java.lang.Number, var3469=r1, var1605=r3, var3433=jdk.nashorn.internal.runtime.ScriptRuntime, var719=$z0, var1230=$d1, var1179=$d0, var441=$b0, var1420=$i2, var1843=$z1}
; {java.lang.Object=var1138, r0=var1828, r2=var3196, jdk.nashorn.internal.runtime.JSType=var3713, java.lang.Number=var2346, r1=var3469, r3=var1605, jdk.nashorn.internal.runtime.ScriptRuntime=var3433, $z0=var719, $d1=var1230, $d0=var1179, $b0=var441, $i2=var1420, $z1=var1843}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3);	$b0 = $d1 cmpg $d0;	$i2 = (int) $b0;	if $i2 > 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 4
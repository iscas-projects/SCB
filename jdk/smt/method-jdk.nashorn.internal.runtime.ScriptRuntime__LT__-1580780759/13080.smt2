(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2113 0)
(declare-sort var1559 0)
(declare-sort var265 0)
(declare-sort var1413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var265!class ClassObject)
(declare-fun var1559_toPrimitive/1704974141 (var2113 ClassObject) var2113)
(declare-fun var1413_areBothString/-1215543817 (var2113 var2113) Bool)
(declare-fun var1559_toNumber/1589859753 (var2113) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2113 var2113)
(declare-const var2099 var2113) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2099 null-var2113)))
(declare-const var1919 var2113) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1919 null-var2113)))
(define-const var3026 var2113 (var1559_toPrimitive/1704974141 var2099 var265!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var3100 var2113 (var1559_toPrimitive/1704974141 var1919 var265!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var3213 Bool (var1413_areBothString/-1215543817 var3026 var3100)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (= (ite var3213 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1653 Float64 (var1559_toNumber/1589859753 var3026)) ; Statement: $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(define-const var2745 Float64 (var1559_toNumber/1589859753 var3100)) ; Statement: $d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3) 
(define-const var3861 Int (ite (fp.gt var1653 var2745) 1 (ite (fp.lt var1653 var2745) (- 1) 0))) ; Statement: $b0 = $d1 cmpg $d0 
(define-const var3474 Int (cast-from-Int-to-Int var3861)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 >= 0 goto $z1 = 0 
(assert (not (>= var3474 0))) ; Negate: Cond: $i2 >= 0  
(define-const var1761 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1559_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var1413_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), var1559_toNumber/1589859753=([java.lang.Object], double), cast-from-Int-to-Int=([byte], int)}
; {var2113=java.lang.Object, var2099=r0, var1919=r2, var1559=jdk.nashorn.internal.runtime.JSType, var265=java.lang.Number, var3026=r1, var3100=r3, var1413=jdk.nashorn.internal.runtime.ScriptRuntime, var3213=$z0, var1653=$d1, var2745=$d0, var3861=$b0, var3474=$i2, var1761=$z1}
; {java.lang.Object=var2113, r0=var2099, r2=var1919, jdk.nashorn.internal.runtime.JSType=var1559, java.lang.Number=var265, r1=var3026, r3=var3100, jdk.nashorn.internal.runtime.ScriptRuntime=var1413, $z0=var3213, $d1=var1653, $d0=var2745, $b0=var3861, $i2=var3474, $z1=var1761}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3);	$b0 = $d1 cmpg $d0;	$i2 = (int) $b0;	if $i2 >= 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 4
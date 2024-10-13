(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3447 0)
(declare-sort var2536 0)
(declare-sort var3600 0)
(declare-sort var1376 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3600!class ClassObject)
(declare-fun var2536_toPrimitive/1704974141 (var3447 ClassObject) var3447)
(declare-fun var1376_areBothString/-1215543817 (var3447 var3447) Bool)
(declare-fun var2536_toNumber/1589859753 (var3447) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3447 var3447)
(declare-const var1385 var3447) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1385 null-var3447)))
(declare-const var1058 var3447) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1058 null-var3447)))
(define-const var1104 var3447 (var2536_toPrimitive/1704974141 var1385 var3600!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var1481 var3447 (var2536_toPrimitive/1704974141 var1058 var3600!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var3282 Bool (var1376_areBothString/-1215543817 var1104 var1481)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (= (ite var3282 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1891 Float64 (var2536_toNumber/1589859753 var1104)) ; Statement: $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(define-const var3550 Float64 (var2536_toNumber/1589859753 var1481)) ; Statement: $d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3) 
(define-const var284 Int (ite (fp.gt var1891 var3550) 1 (ite (fp.lt var1891 var3550) (- 1) 0))) ; Statement: $b0 = $d1 cmpl $d0 
(define-const var546 Int (cast-from-Int-to-Int var284)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 <= 0 goto $z1 = 0 
(assert (<= var546 0)) ; Cond: $i2 <= 0 
(define-const var2294 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2536_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var1376_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), var2536_toNumber/1589859753=([java.lang.Object], double), cast-from-Int-to-Int=([byte], int)}
; {var3447=java.lang.Object, var1385=r0, var1058=r2, var2536=jdk.nashorn.internal.runtime.JSType, var3600=java.lang.Number, var1104=r1, var1481=r3, var1376=jdk.nashorn.internal.runtime.ScriptRuntime, var3282=$z0, var1891=$d1, var3550=$d0, var284=$b0, var546=$i2, var2294=$z1}
; {java.lang.Object=var3447, r0=var1385, r2=var1058, jdk.nashorn.internal.runtime.JSType=var2536, java.lang.Number=var3600, r1=var1104, r3=var1481, jdk.nashorn.internal.runtime.ScriptRuntime=var1376, $z0=var3282, $d1=var1891, $d0=var3550, $b0=var284, $i2=var546, $z1=var2294}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3);	$b0 = $d1 cmpl $d0;	$i2 = (int) $b0;	if $i2 <= 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 4
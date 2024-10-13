(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3736 0)
(declare-sort var3481 0)
(declare-sort var476 0)
(declare-sort var949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var476!class ClassObject)
(declare-fun var3481_toPrimitive/1704974141 (var3736 ClassObject) var3736)
(declare-fun var949_areBothString/-1215543817 (var3736 var3736) Bool)
(declare-fun var3481_toNumber/1589859753 (var3736) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3736 var3736)
(declare-const var1958 var3736) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1958 null-var3736)))
(declare-const var3437 var3736) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3437 null-var3736)))
(define-const var2392 var3736 (var3481_toPrimitive/1704974141 var1958 var476!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var2592 var3736 (var3481_toPrimitive/1704974141 var3437 var476!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var1384 Bool (var949_areBothString/-1215543817 var2392 var2592)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (= (ite var1384 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1339 Float64 (var3481_toNumber/1589859753 var2392)) ; Statement: $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(define-const var952 Float64 (var3481_toNumber/1589859753 var2592)) ; Statement: $d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3) 
(define-const var3102 Int (ite (fp.gt var1339 var952) 1 (ite (fp.lt var1339 var952) (- 1) 0))) ; Statement: $b0 = $d1 cmpl $d0 
(define-const var1046 Int (cast-from-Int-to-Int var3102)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 < 0 goto $z1 = 0 
(assert (not (< var1046 0))) ; Negate: Cond: $i2 < 0  
(define-const var2657 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3481_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var949_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), var3481_toNumber/1589859753=([java.lang.Object], double), cast-from-Int-to-Int=([byte], int)}
; {var3736=java.lang.Object, var1958=r0, var3437=r2, var3481=jdk.nashorn.internal.runtime.JSType, var476=java.lang.Number, var2392=r1, var2592=r3, var949=jdk.nashorn.internal.runtime.ScriptRuntime, var1384=$z0, var1339=$d1, var952=$d0, var3102=$b0, var1046=$i2, var2657=$z1}
; {java.lang.Object=var3736, r0=var1958, r2=var3437, jdk.nashorn.internal.runtime.JSType=var3481, java.lang.Number=var476, r1=var2392, r3=var2592, jdk.nashorn.internal.runtime.ScriptRuntime=var949, $z0=var1384, $d1=var1339, $d0=var952, $b0=var3102, $i2=var1046, $z1=var2657}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3);	$b0 = $d1 cmpl $d0;	$i2 = (int) $b0;	if $i2 < 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 4
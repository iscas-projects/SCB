(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1194 0)
(declare-sort var3681 0)
(declare-sort var1258 0)
(declare-sort var336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1258!class ClassObject)
(declare-fun var3681_toPrimitive/1704974141 (var1194 ClassObject) var1194)
(declare-fun var336_areBothString/-1215543817 (var1194 var1194) Bool)
(declare-fun var3681_toNumber/1589859753 (var1194) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1194 var1194)
(declare-const var1766 var1194) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1766 null-var1194)))
(declare-const var2781 var1194) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2781 null-var1194)))
(define-const var2073 var1194 (var3681_toPrimitive/1704974141 var1766 var1258!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var3906 var1194 (var3681_toPrimitive/1704974141 var2781 var1258!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var3602 Bool (var336_areBothString/-1215543817 var2073 var3906)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (= (ite var3602 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1728 Float64 (var3681_toNumber/1589859753 var2073)) ; Statement: $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(define-const var13 Float64 (var3681_toNumber/1589859753 var3906)) ; Statement: $d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3) 
(define-const var1489 Int (ite (fp.gt var1728 var13) 1 (ite (fp.lt var1728 var13) (- 1) 0))) ; Statement: $b0 = $d1 cmpg $d0 
(define-const var3911 Int (cast-from-Int-to-Int var1489)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 > 0 goto $z1 = 0 
(assert (not (> var3911 0))) ; Negate: Cond: $i2 > 0  
(define-const var1032 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3681_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var336_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), var3681_toNumber/1589859753=([java.lang.Object], double), cast-from-Int-to-Int=([byte], int)}
; {var1194=java.lang.Object, var1766=r0, var2781=r2, var3681=jdk.nashorn.internal.runtime.JSType, var1258=java.lang.Number, var2073=r1, var3906=r3, var336=jdk.nashorn.internal.runtime.ScriptRuntime, var3602=$z0, var1728=$d1, var13=$d0, var1489=$b0, var3911=$i2, var1032=$z1}
; {java.lang.Object=var1194, r0=var1766, r2=var2781, jdk.nashorn.internal.runtime.JSType=var3681, java.lang.Number=var1258, r1=var2073, r3=var3906, jdk.nashorn.internal.runtime.ScriptRuntime=var336, $z0=var3602, $d1=var1728, $d0=var13, $b0=var1489, $i2=var3911, $z1=var1032}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3);	$b0 = $d1 cmpg $d0;	$i2 = (int) $b0;	if $i2 > 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 4
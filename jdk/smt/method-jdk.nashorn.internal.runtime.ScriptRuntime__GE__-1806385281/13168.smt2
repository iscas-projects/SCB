(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3779 0)
(declare-sort var1775 0)
(declare-sort var2587 0)
(declare-sort var3639 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2587!class ClassObject)
(declare-fun var1775_toPrimitive/1704974141 (var3779 ClassObject) var3779)
(declare-fun var3639_areBothString/-1215543817 (var3779 var3779) Bool)
(declare-fun var1775_toNumber/1589859753 (var3779) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3779 var3779)
(declare-const var627 var3779) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var627 null-var3779)))
(declare-const var3249 var3779) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3249 null-var3779)))
(define-const var1344 var3779 (var1775_toPrimitive/1704974141 var627 var2587!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var804 var3779 (var1775_toPrimitive/1704974141 var3249 var2587!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var2994 Bool (var3639_areBothString/-1215543817 var1344 var804)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (= (ite var2994 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3874 Float64 (var1775_toNumber/1589859753 var1344)) ; Statement: $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(define-const var17 Float64 (var1775_toNumber/1589859753 var804)) ; Statement: $d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3) 
(define-const var3017 Int (ite (fp.gt var3874 var17) 1 (ite (fp.lt var3874 var17) (- 1) 0))) ; Statement: $b0 = $d1 cmpl $d0 
(define-const var2390 Int (cast-from-Int-to-Int var3017)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 < 0 goto $z1 = 0 
(assert (< var2390 0)) ; Cond: $i2 < 0 
(define-const var806 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1775_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var3639_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), var1775_toNumber/1589859753=([java.lang.Object], double), cast-from-Int-to-Int=([byte], int)}
; {var3779=java.lang.Object, var627=r0, var3249=r2, var1775=jdk.nashorn.internal.runtime.JSType, var2587=java.lang.Number, var1344=r1, var804=r3, var3639=jdk.nashorn.internal.runtime.ScriptRuntime, var2994=$z0, var3874=$d1, var17=$d0, var3017=$b0, var2390=$i2, var806=$z1}
; {java.lang.Object=var3779, r0=var627, r2=var3249, jdk.nashorn.internal.runtime.JSType=var1775, java.lang.Number=var2587, r1=var1344, r3=var804, jdk.nashorn.internal.runtime.ScriptRuntime=var3639, $z0=var2994, $d1=var3874, $d0=var17, $b0=var3017, $i2=var2390, $z1=var806}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3);	$b0 = $d1 cmpl $d0;	$i2 = (int) $b0;	if $i2 < 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 4
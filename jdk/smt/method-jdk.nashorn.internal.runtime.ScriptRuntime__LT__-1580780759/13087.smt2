(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var453 0)
(declare-sort var2370 0)
(declare-sort var1945 0)
(declare-sort var847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1945!class ClassObject)
(declare-fun var2370_toPrimitive/1704974141 (var453 ClassObject) var453)
(declare-fun var847_areBothString/-1215543817 (var453 var453) Bool)
(declare-fun var2370_toNumber/1589859753 (var453) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var453 var453)
(declare-const var1843 var453) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1843 null-var453)))
(declare-const var630 var453) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var630 null-var453)))
(define-const var2702 var453 (var2370_toPrimitive/1704974141 var1843 var1945!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var2797 var453 (var2370_toPrimitive/1704974141 var630 var1945!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var3108 Bool (var847_areBothString/-1215543817 var2702 var2797)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (= (ite var3108 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3149 Float64 (var2370_toNumber/1589859753 var2702)) ; Statement: $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(define-const var3330 Float64 (var2370_toNumber/1589859753 var2797)) ; Statement: $d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3) 
(define-const var276 Int (ite (fp.gt var3149 var3330) 1 (ite (fp.lt var3149 var3330) (- 1) 0))) ; Statement: $b0 = $d1 cmpg $d0 
(define-const var1144 Int (cast-from-Int-to-Int var276)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 >= 0 goto $z1 = 0 
(assert (>= var1144 0)) ; Cond: $i2 >= 0 
(define-const var3617 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2370_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var847_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), var2370_toNumber/1589859753=([java.lang.Object], double), cast-from-Int-to-Int=([byte], int)}
; {var453=java.lang.Object, var1843=r0, var630=r2, var2370=jdk.nashorn.internal.runtime.JSType, var1945=java.lang.Number, var2702=r1, var2797=r3, var847=jdk.nashorn.internal.runtime.ScriptRuntime, var3108=$z0, var3149=$d1, var3330=$d0, var276=$b0, var1144=$i2, var3617=$z1}
; {java.lang.Object=var453, r0=var1843, r2=var630, jdk.nashorn.internal.runtime.JSType=var2370, java.lang.Number=var1945, r1=var2702, r3=var2797, jdk.nashorn.internal.runtime.ScriptRuntime=var847, $z0=var3108, $d1=var3149, $d0=var3330, $b0=var276, $i2=var1144, $z1=var3617}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3);	$b0 = $d1 cmpg $d0;	$i2 = (int) $b0;	if $i2 >= 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 4
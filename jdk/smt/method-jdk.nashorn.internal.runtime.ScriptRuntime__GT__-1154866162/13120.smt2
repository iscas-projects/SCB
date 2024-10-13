(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1174 0)
(declare-sort var955 0)
(declare-sort var37 0)
(declare-sort var1922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var37!class ClassObject)
(declare-fun var955_toPrimitive/1704974141 (var1174 ClassObject) var1174)
(declare-fun var1922_areBothString/-1215543817 (var1174 var1174) Bool)
(declare-fun var955_toNumber/1589859753 (var1174) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1174 var1174)
(declare-const var3017 var1174) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3017 null-var1174)))
(declare-const var807 var1174) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var807 null-var1174)))
(define-const var397 var1174 (var955_toPrimitive/1704974141 var3017 var37!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var3354 var1174 (var955_toPrimitive/1704974141 var807 var37!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var2813 Bool (var1922_areBothString/-1215543817 var397 var3354)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (= (ite var2813 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1475 Float64 (var955_toNumber/1589859753 var397)) ; Statement: $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(define-const var1126 Float64 (var955_toNumber/1589859753 var3354)) ; Statement: $d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3) 
(define-const var923 Int (ite (fp.gt var1475 var1126) 1 (ite (fp.lt var1475 var1126) (- 1) 0))) ; Statement: $b0 = $d1 cmpl $d0 
(define-const var3663 Int (cast-from-Int-to-Int var923)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 <= 0 goto $z1 = 0 
(assert (not (<= var3663 0))) ; Negate: Cond: $i2 <= 0  
(define-const var1652 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var955_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var1922_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), var955_toNumber/1589859753=([java.lang.Object], double), cast-from-Int-to-Int=([byte], int)}
; {var1174=java.lang.Object, var3017=r0, var807=r2, var955=jdk.nashorn.internal.runtime.JSType, var37=java.lang.Number, var397=r1, var3354=r3, var1922=jdk.nashorn.internal.runtime.ScriptRuntime, var2813=$z0, var1475=$d1, var1126=$d0, var923=$b0, var3663=$i2, var1652=$z1}
; {java.lang.Object=var1174, r0=var3017, r2=var807, jdk.nashorn.internal.runtime.JSType=var955, java.lang.Number=var37, r1=var397, r3=var3354, jdk.nashorn.internal.runtime.ScriptRuntime=var1922, $z0=var2813, $d1=var1475, $d0=var1126, $b0=var923, $i2=var3663, $z1=var1652}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r3);	$b0 = $d1 cmpl $d0;	$i2 = (int) $b0;	if $i2 <= 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 4
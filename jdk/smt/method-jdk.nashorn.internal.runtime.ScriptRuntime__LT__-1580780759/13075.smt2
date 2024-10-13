(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3217 0)
(declare-sort var3883 0)
(declare-sort var3079 0)
(declare-sort var1856 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3079!class ClassObject)
(declare-fun var3883_toPrimitive/1704974141 (var3217 ClassObject) var3217)
(declare-fun var1856_areBothString/-1215543817 (var3217 var3217) Bool)
(declare-fun toString/-522406933 (var3217) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var3217 var3217)
(declare-const var2533 var3217) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2533 null-var3217)))
(declare-const var2163 var3217) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2163 null-var3217)))
(define-const var867 var3217 (var3883_toPrimitive/1704974141 var2533 var3079!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var586 var3217 (var3883_toPrimitive/1704974141 var2163 var3079!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var3299 Bool (var1856_areBothString/-1215543817 var867 var586)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (not (= (ite var3299 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3531 String (toString/-522406933 var867)) ; Statement: $r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3539 String (toString/-522406933 var586)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var11 Int (compareTo/1411385946 var3531 var3539)) ; Statement: $i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var3531 var3539)) (this<=other (str.<= var3531 var3539)) (compareRes (compareTo/1411385946 var3531 var3539))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if $i1 >= 0 goto $z1 = 0 
(assert (>= var11 0)) ; Cond: $i1 >= 0 
(define-const var3798 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3883_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var1856_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), toString/-522406933=([java.lang.Object], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var3217=java.lang.Object, var2533=r0, var2163=r2, var3883=jdk.nashorn.internal.runtime.JSType, var3079=java.lang.Number, var867=r1, var586=r3, var1856=jdk.nashorn.internal.runtime.ScriptRuntime, var3299=$z0, var3531=$r5, var3539=$r4, var11=$i1, var3798=$z1}
; {java.lang.Object=var3217, r0=var2533, r2=var2163, jdk.nashorn.internal.runtime.JSType=var3883, java.lang.Number=var3079, r1=var867, r3=var586, jdk.nashorn.internal.runtime.ScriptRuntime=var1856, $z0=var3299, $r5=var3531, $r4=var3539, $i1=var11, $z1=var3798}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>();	$i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	if $i1 >= 0 goto $z1 = 0;	$z1 = 0;	goto [?= return $z1];	return $z1
;block_num 4
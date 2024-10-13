(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1770 0)
(declare-sort var207 0)
(declare-sort var1008 0)
(declare-sort var2675 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1008!class ClassObject)
(declare-fun var207_toPrimitive/1704974141 (var1770 ClassObject) var1770)
(declare-fun var2675_areBothString/-1215543817 (var1770 var1770) Bool)
(declare-fun toString/-522406933 (var1770) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1770 var1770)
(declare-const var2075 var1770) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2075 null-var1770)))
(declare-const var3105 var1770) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3105 null-var1770)))
(define-const var1761 var1770 (var207_toPrimitive/1704974141 var2075 var1008!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var1114 var1770 (var207_toPrimitive/1704974141 var3105 var1008!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var1671 Bool (var2675_areBothString/-1215543817 var1761 var1114)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (not (= (ite var1671 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var468 String (toString/-522406933 var1761)) ; Statement: $r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3493 String (toString/-522406933 var1114)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3332 Int (compareTo/1411385946 var468 var3493)) ; Statement: $i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var468 var3493)) (this<=other (str.<= var468 var3493)) (compareRes (compareTo/1411385946 var468 var3493))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if $i1 >= 0 goto $z1 = 0 
(assert (not (>= var3332 0))) ; Negate: Cond: $i1 >= 0  
(define-const var2992 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var207_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var2675_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), toString/-522406933=([java.lang.Object], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1770=java.lang.Object, var2075=r0, var3105=r2, var207=jdk.nashorn.internal.runtime.JSType, var1008=java.lang.Number, var1761=r1, var1114=r3, var2675=jdk.nashorn.internal.runtime.ScriptRuntime, var1671=$z0, var468=$r5, var3493=$r4, var3332=$i1, var2992=$z1}
; {java.lang.Object=var1770, r0=var2075, r2=var3105, jdk.nashorn.internal.runtime.JSType=var207, java.lang.Number=var1008, r1=var1761, r3=var1114, jdk.nashorn.internal.runtime.ScriptRuntime=var2675, $z0=var1671, $r5=var468, $r4=var3493, $i1=var3332, $z1=var2992}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>();	$i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	if $i1 >= 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 4
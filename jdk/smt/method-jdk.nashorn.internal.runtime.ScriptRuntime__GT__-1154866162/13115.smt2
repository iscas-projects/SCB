(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1111 0)
(declare-sort var806 0)
(declare-sort var2193 0)
(declare-sort var1951 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2193!class ClassObject)
(declare-fun var806_toPrimitive/1704974141 (var1111 ClassObject) var1111)
(declare-fun var1951_areBothString/-1215543817 (var1111 var1111) Bool)
(declare-fun toString/-522406933 (var1111) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1111 var1111)
(declare-const var3214 var1111) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3214 null-var1111)))
(declare-const var115 var1111) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var115 null-var1111)))
(define-const var1327 var1111 (var806_toPrimitive/1704974141 var3214 var2193!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var2371 var1111 (var806_toPrimitive/1704974141 var115 var2193!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var1081 Bool (var1951_areBothString/-1215543817 var1327 var2371)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (not (= (ite var1081 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1768 String (toString/-522406933 var1327)) ; Statement: $r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1550 String (toString/-522406933 var2371)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1742 Int (compareTo/1411385946 var1768 var1550)) ; Statement: $i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var1768 var1550)) (this<=other (str.<= var1768 var1550)) (compareRes (compareTo/1411385946 var1768 var1550))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if $i1 <= 0 goto $z1 = 0 
(assert (<= var1742 0)) ; Cond: $i1 <= 0 
(define-const var373 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var806_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var1951_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), toString/-522406933=([java.lang.Object], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1111=java.lang.Object, var3214=r0, var115=r2, var806=jdk.nashorn.internal.runtime.JSType, var2193=java.lang.Number, var1327=r1, var2371=r3, var1951=jdk.nashorn.internal.runtime.ScriptRuntime, var1081=$z0, var1768=$r5, var1550=$r4, var1742=$i1, var373=$z1}
; {java.lang.Object=var1111, r0=var3214, r2=var115, jdk.nashorn.internal.runtime.JSType=var806, java.lang.Number=var2193, r1=var1327, r3=var2371, jdk.nashorn.internal.runtime.ScriptRuntime=var1951, $z0=var1081, $r5=var1768, $r4=var1550, $i1=var1742, $z1=var373}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>();	$i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	if $i1 <= 0 goto $z1 = 0;	$z1 = 0;	goto [?= return $z1];	return $z1
;block_num 4
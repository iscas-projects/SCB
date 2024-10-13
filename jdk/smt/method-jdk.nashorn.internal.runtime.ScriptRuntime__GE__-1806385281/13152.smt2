(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1673 0)
(declare-sort var883 0)
(declare-sort var2004 0)
(declare-sort var2790 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2004!class ClassObject)
(declare-fun var883_toPrimitive/1704974141 (var1673 ClassObject) var1673)
(declare-fun var2790_areBothString/-1215543817 (var1673 var1673) Bool)
(declare-fun toString/-522406933 (var1673) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1673 var1673)
(declare-const var2294 var1673) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2294 null-var1673)))
(declare-const var2824 var1673) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2824 null-var1673)))
(define-const var2400 var1673 (var883_toPrimitive/1704974141 var2294 var2004!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var1911 var1673 (var883_toPrimitive/1704974141 var2824 var2004!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var2499 Bool (var2790_areBothString/-1215543817 var2400 var1911)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (not (= (ite var2499 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3834 String (toString/-522406933 var2400)) ; Statement: $r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3966 String (toString/-522406933 var1911)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3773 Int (compareTo/1411385946 var3834 var3966)) ; Statement: $i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var3834 var3966)) (this<=other (str.<= var3834 var3966)) (compareRes (compareTo/1411385946 var3834 var3966))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if $i1 < 0 goto $z1 = 0 
(assert (not (< var3773 0))) ; Negate: Cond: $i1 < 0  
(define-const var767 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var883_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var2790_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), toString/-522406933=([java.lang.Object], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1673=java.lang.Object, var2294=r0, var2824=r2, var883=jdk.nashorn.internal.runtime.JSType, var2004=java.lang.Number, var2400=r1, var1911=r3, var2790=jdk.nashorn.internal.runtime.ScriptRuntime, var2499=$z0, var3834=$r5, var3966=$r4, var3773=$i1, var767=$z1}
; {java.lang.Object=var1673, r0=var2294, r2=var2824, jdk.nashorn.internal.runtime.JSType=var883, java.lang.Number=var2004, r1=var2400, r3=var1911, jdk.nashorn.internal.runtime.ScriptRuntime=var2790, $z0=var2499, $r5=var3834, $r4=var3966, $i1=var3773, $z1=var767}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>();	$i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	if $i1 < 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 4
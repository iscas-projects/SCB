(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var370 0)
(declare-sort var2178 0)
(declare-sort var947 0)
(declare-sort var1054 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var947!class ClassObject)
(declare-fun var2178_toPrimitive/1704974141 (var370 ClassObject) var370)
(declare-fun var1054_areBothString/-1215543817 (var370 var370) Bool)
(declare-fun toString/-522406933 (var370) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var370 var370)
(declare-const var730 var370) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var730 null-var370)))
(declare-const var3241 var370) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3241 null-var370)))
(define-const var2912 var370 (var2178_toPrimitive/1704974141 var730 var947!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var2882 var370 (var2178_toPrimitive/1704974141 var3241 var947!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var1695 Bool (var1054_areBothString/-1215543817 var2912 var2882)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (not (= (ite var1695 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2565 String (toString/-522406933 var2912)) ; Statement: $r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3755 String (toString/-522406933 var2882)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2768 Int (compareTo/1411385946 var2565 var3755)) ; Statement: $i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var2565 var3755)) (this<=other (str.<= var2565 var3755)) (compareRes (compareTo/1411385946 var2565 var3755))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if $i1 <= 0 goto $z1 = 0 
(assert (not (<= var2768 0))) ; Negate: Cond: $i1 <= 0  
(define-const var609 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2178_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var1054_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), toString/-522406933=([java.lang.Object], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var370=java.lang.Object, var730=r0, var3241=r2, var2178=jdk.nashorn.internal.runtime.JSType, var947=java.lang.Number, var2912=r1, var2882=r3, var1054=jdk.nashorn.internal.runtime.ScriptRuntime, var1695=$z0, var2565=$r5, var3755=$r4, var2768=$i1, var609=$z1}
; {java.lang.Object=var370, r0=var730, r2=var3241, jdk.nashorn.internal.runtime.JSType=var2178, java.lang.Number=var947, r1=var2912, r3=var2882, jdk.nashorn.internal.runtime.ScriptRuntime=var1054, $z0=var1695, $r5=var2565, $r4=var3755, $i1=var2768, $z1=var609}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>();	$i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	if $i1 <= 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 4
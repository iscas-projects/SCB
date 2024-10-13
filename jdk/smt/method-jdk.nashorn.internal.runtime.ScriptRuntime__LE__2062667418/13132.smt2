(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1003 0)
(declare-sort var3847 0)
(declare-sort var2737 0)
(declare-sort var2325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2737!class ClassObject)
(declare-fun var3847_toPrimitive/1704974141 (var1003 ClassObject) var1003)
(declare-fun var2325_areBothString/-1215543817 (var1003 var1003) Bool)
(declare-fun toString/-522406933 (var1003) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1003 var1003)
(declare-const var2110 var1003) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2110 null-var1003)))
(declare-const var3977 var1003) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3977 null-var1003)))
(define-const var2369 var1003 (var3847_toPrimitive/1704974141 var2110 var2737!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var1534 var1003 (var3847_toPrimitive/1704974141 var3977 var2737!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var280 Bool (var2325_areBothString/-1215543817 var2369 var1534)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (not (= (ite var280 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2333 String (toString/-522406933 var2369)) ; Statement: $r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2585 String (toString/-522406933 var1534)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3340 Int (compareTo/1411385946 var2333 var2585)) ; Statement: $i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var2333 var2585)) (this<=other (str.<= var2333 var2585)) (compareRes (compareTo/1411385946 var2333 var2585))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if $i1 > 0 goto $z1 = 0 
(assert (not (> var3340 0))) ; Negate: Cond: $i1 > 0  
(define-const var2143 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3847_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var2325_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), toString/-522406933=([java.lang.Object], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1003=java.lang.Object, var2110=r0, var3977=r2, var3847=jdk.nashorn.internal.runtime.JSType, var2737=java.lang.Number, var2369=r1, var1534=r3, var2325=jdk.nashorn.internal.runtime.ScriptRuntime, var280=$z0, var2333=$r5, var2585=$r4, var3340=$i1, var2143=$z1}
; {java.lang.Object=var1003, r0=var2110, r2=var3977, jdk.nashorn.internal.runtime.JSType=var3847, java.lang.Number=var2737, r1=var2369, r3=var1534, jdk.nashorn.internal.runtime.ScriptRuntime=var2325, $z0=var280, $r5=var2333, $r4=var2585, $i1=var3340, $z1=var2143}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>();	$i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	if $i1 > 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 4
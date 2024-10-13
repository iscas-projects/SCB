(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3189 0)
(declare-sort var255 0)
(declare-sort var3936 0)
(declare-sort var1825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3936!class ClassObject)
(declare-fun var255_toPrimitive/1704974141 (var3189 ClassObject) var3189)
(declare-fun var1825_areBothString/-1215543817 (var3189 var3189) Bool)
(declare-fun toString/-522406933 (var3189) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var3189 var3189)
(declare-const var2375 var3189) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2375 null-var3189)))
(declare-const var2215 var3189) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2215 null-var3189)))
(define-const var2803 var3189 (var255_toPrimitive/1704974141 var2375 var3936!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var3323 var3189 (var255_toPrimitive/1704974141 var2215 var3936!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var3828 Bool (var1825_areBothString/-1215543817 var2803 var3323)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (not (= (ite var3828 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3324 String (toString/-522406933 var2803)) ; Statement: $r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3000 String (toString/-522406933 var3323)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var470 Int (compareTo/1411385946 var3324 var3000)) ; Statement: $i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var3324 var3000)) (this<=other (str.<= var3324 var3000)) (compareRes (compareTo/1411385946 var3324 var3000))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if $i1 > 0 goto $z1 = 0 
(assert (> var470 0)) ; Cond: $i1 > 0 
(define-const var1779 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var255_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var1825_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), toString/-522406933=([java.lang.Object], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var3189=java.lang.Object, var2375=r0, var2215=r2, var255=jdk.nashorn.internal.runtime.JSType, var3936=java.lang.Number, var2803=r1, var3323=r3, var1825=jdk.nashorn.internal.runtime.ScriptRuntime, var3828=$z0, var3324=$r5, var3000=$r4, var470=$i1, var1779=$z1}
; {java.lang.Object=var3189, r0=var2375, r2=var2215, jdk.nashorn.internal.runtime.JSType=var255, java.lang.Number=var3936, r1=var2803, r3=var3323, jdk.nashorn.internal.runtime.ScriptRuntime=var1825, $z0=var3828, $r5=var3324, $r4=var3000, $i1=var470, $z1=var1779}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>();	$i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	if $i1 > 0 goto $z1 = 0;	$z1 = 0;	goto [?= return $z1];	return $z1
;block_num 4
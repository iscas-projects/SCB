(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1729 0)
(declare-sort var3349 0)
(declare-sort var2677 0)
(declare-sort var3371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2677!class ClassObject)
(declare-fun var3349_toPrimitive/1704974141 (var1729 ClassObject) var1729)
(declare-fun var3371_areBothString/-1215543817 (var1729 var1729) Bool)
(declare-fun toString/-522406933 (var1729) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1729 var1729)
(declare-const var3749 var1729) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3749 null-var1729)))
(declare-const var3778 var1729) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3778 null-var1729)))
(define-const var986 var1729 (var3349_toPrimitive/1704974141 var3749 var2677!class)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;") 
(define-const var237 var1729 (var3349_toPrimitive/1704974141 var3778 var2677!class)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var675 Bool (var3371_areBothString/-1215543817 var986 var237)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3) 
 ; Statement: if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1) 
(assert (not (= (ite var675 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3585 String (toString/-522406933 var986)) ; Statement: $r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var60 String (toString/-522406933 var237)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2335 Int (compareTo/1411385946 var3585 var60)) ; Statement: $i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var3585 var60)) (this<=other (str.<= var3585 var60)) (compareRes (compareTo/1411385946 var3585 var60))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if $i1 < 0 goto $z1 = 0 
(assert (< var2335 0)) ; Cond: $i1 < 0 
(define-const var764 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3349_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var3371_areBothString/-1215543817=([java.lang.Object, java.lang.Object], boolean), toString/-522406933=([java.lang.Object], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1729=java.lang.Object, var3749=r0, var3778=r2, var3349=jdk.nashorn.internal.runtime.JSType, var2677=java.lang.Number, var986=r1, var237=r3, var3371=jdk.nashorn.internal.runtime.ScriptRuntime, var675=$z0, var3585=$r5, var60=$r4, var2335=$i1, var764=$z1}
; {java.lang.Object=var1729, r0=var3749, r2=var3778, jdk.nashorn.internal.runtime.JSType=var3349, java.lang.Number=var2677, r1=var986, r3=var237, jdk.nashorn.internal.runtime.ScriptRuntime=var3371, $z0=var675, $r5=var3585, $r4=var60, $i1=var2335, $z1=var764}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r0, class "Ljava/lang/Number;");	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: boolean areBothString(java.lang.Object,java.lang.Object)>(r1, r3);	if $z0 == 0 goto $d1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r1);	$r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>();	$i1 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	if $i1 < 0 goto $z1 = 0;	$z1 = 0;	goto [?= return $z1];	return $z1
;block_num 4
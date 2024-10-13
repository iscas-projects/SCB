(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3473 0)
(declare-sort var1319 0)
(declare-sort var358 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1319-init () (Array Int var1319))
(declare-fun var358_identityHashCode/1096208673 (var1319) Int)
(declare-fun cast-from-var3473-to-var1319 (var3473) var1319)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1319 (Int) var1319)
(declare-fun getObject/-27373281 (var3473) var1319)
(declare-fun String_valueOf/-333372740 (var1319) String)
(declare-fun cast-from-String-to-var1319 (String) var1319)
(declare-fun String_format/1339386452 (String (Array Int var1319)) String)
(declare-const null-var3473 var3473)
(declare-const null-__Array__Int__var1319__ (Array Int var1319))
(declare-const var2233 var3473) ; Statement: r1 := @this: org.apache.commons.lang3.concurrent.ConstantInitializer 
(assert (not (= var2233 null-var3473)))
(define-const var1340 (Array Int var1319) arr-var1319-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var1618 Int (var358_identityHashCode/1096208673 (cast-from-var3473-to-var1319 var2233))) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1) 
(define-const var1563 Int (Int_valueOf/-1371140006 var1618)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var1340!1 (Array Int var1319))
(assert (not (= var1340!1 null-__Array__Int__var1319__)))
(assert (= (select var1340!1 0) (cast-from-Int-to-var1319 var1563))) ; Statement: $r0[0] = $r2 
(assert true)
(define-const var1011 var1319 (getObject/-27373281 var2233)) ; Statement: $r3 = virtualinvoke r1.<org.apache.commons.lang3.concurrent.ConstantInitializer: java.lang.Object getObject()>() 
(define-const var2062 String (String_valueOf/-333372740 var1011)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r3) 
(declare-const var1340!2 (Array Int var1319))
(assert (not (= var1340!2 null-__Array__Int__var1319__)))
(assert (= (select var1340!2 1) (cast-from-String-to-var1319 var2062))) ; Statement: $r0[1] = $r4 
(define-const var2601 String (String_format/1339386452 "ConstantInitializer@%d [ object = %s ]" var1340!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("ConstantInitializer@%d [ object = %s ]", $r0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1319-init=([], java.lang.Object[]), var358_identityHashCode/1096208673=([java.lang.Object], int), cast-from-var3473-to-var1319=([org.apache.commons.lang3.concurrent.ConstantInitializer], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1319=([java.lang.Integer], java.lang.Object), getObject/-27373281=([org.apache.commons.lang3.concurrent.ConstantInitializer], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-String-to-var1319=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3473=org.apache.commons.lang3.concurrent.ConstantInitializer, var2233=r1, var1319=java.lang.Object, var1340=$r0, var358=java.lang.System, var1618=$i0, var1563=$r2, var1011=$r3, var2062=$r4, var2601=$r5}
; {org.apache.commons.lang3.concurrent.ConstantInitializer=var3473, r1=var2233, java.lang.Object=var1319, $r0=var1340, java.lang.System=var358, $i0=var1618, $r2=var1563, $r3=var1011, $r4=var2062, $r5=var2601}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.commons.lang3.concurrent.ConstantInitializer;	$r0 = newarray (java.lang.Object)[2];	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1);	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$r3 = virtualinvoke r1.<org.apache.commons.lang3.concurrent.ConstantInitializer: java.lang.Object getObject()>();	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r3);	$r0[1] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("ConstantInitializer@%d [ object = %s ]", $r0);	return $r5
;block_num 1
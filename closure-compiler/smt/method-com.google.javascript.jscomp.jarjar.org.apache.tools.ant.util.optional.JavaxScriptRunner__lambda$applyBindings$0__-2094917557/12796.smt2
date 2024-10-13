(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1220 0)
(declare-sort var3321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3321-init () (Array Int var3321))
(declare-fun var1220_getKey/-33423493 (var1220) var3321)
(declare-fun var1220_getValue/381491177 (var1220) var3321)
(declare-fun getClass/1258963082 (var3321) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var3321 (String) var3321)
(declare-fun String_format/1339386452 (String (Array Int var3321)) String)
(declare-const null-var1220 var1220)
(declare-const null-__Array__Int__var3321__ (Array Int var3321))
(declare-const var341 var1220) ; Statement: r1 := @parameter0: java.util.Map$Entry 
(assert (not (= var341 null-var1220)))
(define-const var3373 (Array Int var3321) arr-var3321-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var3208 var3321 (var1220_getKey/-33423493 var341)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getKey()>() 
(declare-const var3373!1 (Array Int var3321))
(assert (not (= var3373!1 null-__Array__Int__var3321__)))
(assert (= (select var3373!1 0) var3208)) ; Statement: $r0[0] = $r2 
(define-const var3871 var3321 (var1220_getValue/381491177 var341)) ; Statement: $r3 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getValue()>() 
(assert true)
(define-const var491 ClassObject (getClass/1258963082 var3871)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1294 String (getName/-1958580599 var491)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(declare-const var3373!2 (Array Int var3321))
(assert (not (= var3373!2 null-__Array__Int__var3321__)))
(assert (= (select var3373!2 1) (cast-from-String-to-var3321 var1294))) ; Statement: $r0[1] = $r5 
(define-const var668 String (String_format/1339386452 "%s:%s" var3373!2)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s:%s", $r0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3321-init=([], java.lang.Object[]), var1220_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), var1220_getValue/381491177=([java.util.Map$Entry], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var3321=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1220=java.util.Map$Entry, var341=r1, var3321=java.lang.Object, var3373=$r0, var3208=$r2, var3871=$r3, var491=$r4, var1294=$r5, var668=$r6}
; {java.util.Map$Entry=var1220, r1=var341, java.lang.Object=var3321, $r0=var3373, $r2=var3208, $r3=var3871, $r4=var491, $r5=var1294, $r6=var668}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.util.Map$Entry;	$r0 = newarray (java.lang.Object)[2];	$r2 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getKey()>();	$r0[0] = $r2;	$r3 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getValue()>();	$r4 = virtualinvoke $r3.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r0[1] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s:%s", $r0);	return $r6
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var694 0)
(declare-sort var732 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var694-init () var694)
(declare-fun arr-var732-init () (Array Int var732))
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun cast-from-Float64-to-var732 (Float64) var732)
(declare-fun String_format/1339386452 (String (Array Int var732)) String)
(declare-fun <init>/875830710 (var694 String) void)
(declare-const null-Float64 Float64)
(declare-const null-__Array__Int__var732__ (Array Int var732))
(declare-const var2050 Float64) ; Statement: d1 := @parameter0: double 
(assert (not (= var2050 null-Float64)))
(declare-const var1938 Float64) ; Statement: d2 := @parameter1: double 
(assert (not (= var1938 null-Float64)))
(declare-const var1875 Float64) ; Statement: d0 := @parameter2: double 
(assert (not (= var1875 null-Float64)))
(define-const var652 Int (ite (fp.gt var1875 var2050) 1 (ite (fp.lt var1875 var2050) (- 1) 0))) ; Statement: $b0 = d0 cmpg d1 
(define-const var2965 Int (cast-from-Int-to-Int var652)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 <= 0 goto $r6 = new java.lang.IllegalArgumentException 
(assert (<= var2965 0)) ; Cond: $i2 <= 0 
(define-const var2139 var694 var694-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var1100 (Array Int var732) arr-var732-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(define-const var1378 Float64 (Float64_valueOf/679560954 var1875)) ; Statement: $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
(declare-const var1100!1 (Array Int var732))
(assert (not (= var1100!1 null-__Array__Int__var732__)))
(assert (= (select var1100!1 0) (cast-from-Float64-to-var732 var1378))) ; Statement: $r1[0] = $r2 
(define-const var3814 Float64 (Float64_valueOf/679560954 var2050)) ; Statement: $r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d1) 
(declare-const var1100!2 (Array Int var732))
(assert (not (= var1100!2 null-__Array__Int__var732__)))
(assert (= (select var1100!2 1) (cast-from-Float64-to-var732 var3814))) ; Statement: $r1[1] = $r3 
(define-const var987 Float64 (Float64_valueOf/679560954 var1938)) ; Statement: $r4 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d2) 
(declare-const var1100!3 (Array Int var732))
(assert (not (= var1100!3 null-__Array__Int__var732__)))
(assert (= (select var1100!3 2) (cast-from-Float64-to-var732 var987))) ; Statement: $r1[2] = $r4 
(define-const var1341 String (String_format/1339386452 "The value %s is not in the specified exclusive range of %s to %s" var1100!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The value %s is not in the specified exclusive range of %s to %s", $r1) 
(assert true)
;(assert (<init>/875830710 var2139 var1341)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2139!1 var694)
(declare-const var1341!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var694-init=([], java.lang.IllegalArgumentException), arr-var732-init=([], java.lang.Object[]), Float64_valueOf/679560954=([double], java.lang.Double), cast-from-Float64-to-var732=([java.lang.Double], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2050=d1, var1938=d2, var1875=d0, var652=$b0, var2965=$i2, var694=java.lang.IllegalArgumentException, var2139=$r6, var732=java.lang.Object, var1100=$r1, var1378=$r2, var3814=$r3, var987=$r4, var1341=$r5}
; {d1=var2050, d2=var1938, d0=var1875, $b0=var652, $i2=var2965, java.lang.IllegalArgumentException=var694, $r6=var2139, java.lang.Object=var732, $r1=var1100, $r2=var1378, $r3=var3814, $r4=var987, $r5=var1341}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts d1 := @parameter0: double;	d2 := @parameter1: double;	d0 := @parameter2: double;	$b0 = d0 cmpg d1;	$i2 = (int) $b0;	if $i2 <= 0 goto $r6 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.IllegalArgumentException;	$r1 = newarray (java.lang.Object)[3];	$r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	$r1[0] = $r2;	$r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d1);	$r1[1] = $r3;	$r4 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d2);	$r1[2] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The value %s is not in the specified exclusive range of %s to %s", $r1);	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r6
;block_num 2
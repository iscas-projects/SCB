(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3910 0)
(declare-sort var3232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3910-init () var3910)
(declare-fun arr-var3232-init () (Array Int var3232))
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun cast-from-Float64-to-var3232 (Float64) var3232)
(declare-fun String_format/1339386452 (String (Array Int var3232)) String)
(declare-fun <init>/875830710 (var3910 String) void)
(declare-const null-Float64 Float64)
(declare-const null-__Array__Int__var3232__ (Array Int var3232))
(declare-const var1793 Float64) ; Statement: d1 := @parameter0: double 
(assert (not (= var1793 null-Float64)))
(declare-const var3760 Float64) ; Statement: d2 := @parameter1: double 
(assert (not (= var3760 null-Float64)))
(declare-const var1726 Float64) ; Statement: d0 := @parameter2: double 
(assert (not (= var1726 null-Float64)))
(define-const var2481 Int (ite (fp.gt var1726 var1793) 1 (ite (fp.lt var1726 var1793) (- 1) 0))) ; Statement: $b0 = d0 cmpg d1 
(define-const var237 Int (cast-from-Int-to-Int var2481)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 < 0 goto $r6 = new java.lang.IllegalArgumentException 
(assert (< var237 0)) ; Cond: $i2 < 0 
(define-const var1386 var3910 var3910-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var1066 (Array Int var3232) arr-var3232-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(define-const var2627 Float64 (Float64_valueOf/679560954 var1726)) ; Statement: $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
(declare-const var1066!1 (Array Int var3232))
(assert (not (= var1066!1 null-__Array__Int__var3232__)))
(assert (= (select var1066!1 0) (cast-from-Float64-to-var3232 var2627))) ; Statement: $r1[0] = $r2 
(define-const var2898 Float64 (Float64_valueOf/679560954 var1793)) ; Statement: $r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d1) 
(declare-const var1066!2 (Array Int var3232))
(assert (not (= var1066!2 null-__Array__Int__var3232__)))
(assert (= (select var1066!2 1) (cast-from-Float64-to-var3232 var2898))) ; Statement: $r1[1] = $r3 
(define-const var2508 Float64 (Float64_valueOf/679560954 var3760)) ; Statement: $r4 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d2) 
(declare-const var1066!3 (Array Int var3232))
(assert (not (= var1066!3 null-__Array__Int__var3232__)))
(assert (= (select var1066!3 2) (cast-from-Float64-to-var3232 var2508))) ; Statement: $r1[2] = $r4 
(define-const var3870 String (String_format/1339386452 "The value %s is not in the specified inclusive range of %s to %s" var1066!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The value %s is not in the specified inclusive range of %s to %s", $r1) 
(assert true)
;(assert (<init>/875830710 var1386 var3870)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var1386!1 var3910)
(declare-const var3870!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var3910-init=([], java.lang.IllegalArgumentException), arr-var3232-init=([], java.lang.Object[]), Float64_valueOf/679560954=([double], java.lang.Double), cast-from-Float64-to-var3232=([java.lang.Double], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1793=d1, var3760=d2, var1726=d0, var2481=$b0, var237=$i2, var3910=java.lang.IllegalArgumentException, var1386=$r6, var3232=java.lang.Object, var1066=$r1, var2627=$r2, var2898=$r3, var2508=$r4, var3870=$r5}
; {d1=var1793, d2=var3760, d0=var1726, $b0=var2481, $i2=var237, java.lang.IllegalArgumentException=var3910, $r6=var1386, java.lang.Object=var3232, $r1=var1066, $r2=var2627, $r3=var2898, $r4=var2508, $r5=var3870}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts d1 := @parameter0: double;	d2 := @parameter1: double;	d0 := @parameter2: double;	$b0 = d0 cmpg d1;	$i2 = (int) $b0;	if $i2 < 0 goto $r6 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.IllegalArgumentException;	$r1 = newarray (java.lang.Object)[3];	$r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	$r1[0] = $r2;	$r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d1);	$r1[1] = $r3;	$r4 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d2);	$r1[2] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The value %s is not in the specified inclusive range of %s to %s", $r1);	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r6
;block_num 2
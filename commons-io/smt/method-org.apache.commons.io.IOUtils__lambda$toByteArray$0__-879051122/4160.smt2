(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3030 0)
(declare-sort var1335 0)
(declare-sort var2582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1335-init () var1335)
(declare-fun arr-var2582-init () (Array Int var2582))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2582 (Int) var2582)
(declare-fun String_format/1339386452 (String (Array Int var2582)) String)
(declare-fun <init>/875830710 (var1335 String) void)
(declare-const null-var3030 var3030)
(declare-const null-__Array__Int__var2582__ (Array Int var2582))
(declare-const var433 var3030) ; Statement: r4 := @parameter0: org.apache.commons.io.output.ThresholdingOutputStream 
(assert (not (= var433 null-var3030)))
(define-const var979 var1335 var1335-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var2939 (Array Int var2582) arr-var2582-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var2154 Int (Int_valueOf/-1371140006 2147483647)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(2147483647) 
(declare-const var2939!1 (Array Int var2582))
(assert (not (= var2939!1 null-__Array__Int__var2582__)))
(assert (= (select var2939!1 0) (cast-from-Int-to-var2582 var2154))) ; Statement: $r1[0] = $r2 
(define-const var204 String (String_format/1339386452 "Cannot read more than %,d into a byte array" var2939!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Cannot read more than %,d into a byte array", $r1) 
(assert true)
;(assert (<init>/875830710 var979 var204)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r3) 

(declare-const var979!1 var1335)
(declare-const var204!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1335-init=([], java.lang.IllegalArgumentException), arr-var2582-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2582=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3030=org.apache.commons.io.output.ThresholdingOutputStream, var433=r4, var1335=java.lang.IllegalArgumentException, var979=$r0, var2582=java.lang.Object, var2939=$r1, var2154=$r2, var204=$r3}
; {org.apache.commons.io.output.ThresholdingOutputStream=var3030, r4=var433, java.lang.IllegalArgumentException=var1335, $r0=var979, java.lang.Object=var2582, $r1=var2939, $r2=var2154, $r3=var204}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r4 := @parameter0: org.apache.commons.io.output.ThresholdingOutputStream;	$r0 = new java.lang.IllegalArgumentException;	$r1 = newarray (java.lang.Object)[1];	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(2147483647);	$r1[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Cannot read more than %,d into a byte array", $r1);	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r3);	throw $r0
;block_num 1
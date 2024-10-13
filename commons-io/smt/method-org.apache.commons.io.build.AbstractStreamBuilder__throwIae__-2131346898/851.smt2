(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1979 0)
(declare-sort var3393 0)
(declare-sort var2616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3393-init () var3393)
(declare-fun arr-var2616-init () (Array Int var2616))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2616 (Int) var2616)
(declare-fun String_format/1339386452 (String (Array Int var2616)) String)
(declare-fun <init>/875830710 (var3393 String) void)
(declare-const null-var1979 var1979)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2616__ (Array Int var2616))
(declare-const var668 var1979) ; Statement: r5 := @this: org.apache.commons.io.build.AbstractStreamBuilder 
(assert (not (= var668 null-var1979)))
(declare-const var1565 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1565 null-Int)))
(declare-const var1302 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1302 null-Int)))
(define-const var2307 var3393 var3393-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var3120 (Array Int var2616) arr-var2616-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(define-const var1456 Int (Int_valueOf/-1371140006 var1565)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var3120!1 (Array Int var2616))
(assert (not (= var3120!1 null-__Array__Int__var2616__)))
(assert (= (select var3120!1 0) (cast-from-Int-to-var2616 var1456))) ; Statement: $r1[0] = $r2 
(define-const var1230 Int (Int_valueOf/-1371140006 var1302)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var3120!2 (Array Int var2616))
(assert (not (= var3120!2 null-__Array__Int__var2616__)))
(assert (= (select var3120!2 1) (cast-from-Int-to-var2616 var1230))) ; Statement: $r1[1] = $r3 
(define-const var2716 String (String_format/1339386452 "Request %,d exceeds maximum %,d" var3120!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Request %,d exceeds maximum %,d", $r1) 
(assert true)
;(assert (<init>/875830710 var2307 var2716)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var2307!1 var3393)
(declare-const var2716!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3393-init=([], java.lang.IllegalArgumentException), arr-var2616-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2616=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1979=org.apache.commons.io.build.AbstractStreamBuilder, var668=r5, var1565=i0, var1302=i1, var3393=java.lang.IllegalArgumentException, var2307=$r0, var2616=java.lang.Object, var3120=$r1, var1456=$r2, var1230=$r3, var2716=$r4}
; {org.apache.commons.io.build.AbstractStreamBuilder=var1979, r5=var668, i0=var1565, i1=var1302, java.lang.IllegalArgumentException=var3393, $r0=var2307, java.lang.Object=var2616, $r1=var3120, $r2=var1456, $r3=var1230, $r4=var2716}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r5 := @this: org.apache.commons.io.build.AbstractStreamBuilder;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.IllegalArgumentException;	$r1 = newarray (java.lang.Object)[2];	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r1[0] = $r2;	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r1[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Request %,d exceeds maximum %,d", $r1);	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 1
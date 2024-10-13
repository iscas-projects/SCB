(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1897 0)
(declare-sort var3936 0)
(declare-sort var3735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3936-init () var3936)
(declare-fun arr-var3735-init () (Array Int var3735))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var3735 (Int) var3735)
(declare-fun String_format/1339386452 (String (Array Int var3735)) String)
(declare-fun <init>/1107025377 (var3936 String) void)
(declare-const null-var1897 var1897)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3735__ (Array Int var3735))
(declare-const var148 var1897) ; Statement: r1 := @this: org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream 
(assert (not (= var148 null-var1897)))
(declare-const var3404 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var3404 null-__Array__Int__Int__)))
(declare-const var3623 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3623 null-Int)))
(declare-const var2827 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2827 null-Int)))
 ; Statement: if i0 < 0 goto $r2 = new java.lang.IndexOutOfBoundsException 
(assert (< var3623 0)) ; Cond: i0 < 0 
(define-const var2235 var3936 var3936-init) ; Statement: $r2 = new java.lang.IndexOutOfBoundsException 
(define-const var1002 (Array Int var3735) arr-var3735-init) ; Statement: $r3 = newarray (java.lang.Object)[2] 
(define-const var2255 Int (Int_valueOf/-1371140006 var3623)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var1002!1 (Array Int var3735))
(assert (not (= var1002!1 null-__Array__Int__var3735__)))
(assert (= (select var1002!1 0) (cast-from-Int-to-var3735 var2255))) ; Statement: $r3[0] = $r4 
(define-const var1872 Int (Int_valueOf/-1371140006 var2827)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var1002!2 (Array Int var3735))
(assert (not (= var1002!2 null-__Array__Int__var3735__)))
(assert (= (select var1002!2 1) (cast-from-Int-to-var3735 var1872))) ; Statement: $r3[1] = $r5 
(define-const var807 String (String_format/1339386452 "offset=%,d, length=%,d" var1002!2)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("offset=%,d, length=%,d", $r3) 
(assert true)
;(assert (<init>/1107025377 var2235 var807)) ; Statement: specialinvoke $r2.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r6) 

(declare-const var2235!1 var3936)
(declare-const var807!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3936-init=([], java.lang.IndexOutOfBoundsException), arr-var3735-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var3735=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var1897=org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream, var148=r1, var3404=r0, var3623=i0, var2827=i1, var3936=java.lang.IndexOutOfBoundsException, var2235=$r2, var3735=java.lang.Object, var1002=$r3, var2255=$r4, var1872=$r5, var807=$r6}
; {org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream=var1897, r1=var148, r0=var3404, i0=var3623, i1=var2827, java.lang.IndexOutOfBoundsException=var3936, $r2=var2235, java.lang.Object=var3735, $r3=var1002, $r4=var2255, $r5=var1872, $r6=var807}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;	r0 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 < 0 goto $r2 = new java.lang.IndexOutOfBoundsException;	$r2 = new java.lang.IndexOutOfBoundsException;	$r3 = newarray (java.lang.Object)[2];	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3[0] = $r4;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r3[1] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("offset=%,d, length=%,d", $r3);	specialinvoke $r2.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2
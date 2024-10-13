(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1098 0)
(declare-sort var3742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1098-init () var1098)
(declare-fun arr-var3742-init () (Array Int var3742))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var3742 (Int) var3742)
(declare-fun String_format/1339386452 (String (Array Int var3742)) String)
(declare-fun <init>/1107025377 (var1098 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3742__ (Array Int var3742))
(declare-const var2629 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2629 null-__Array__Int__Int__)))
(declare-const var1477 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1477 null-Int)))
(declare-const var129 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var129 null-Int)))
 ; Statement: if i0 < 0 goto $r2 = new java.lang.IndexOutOfBoundsException 
(assert (< var1477 0)) ; Cond: i0 < 0 
(define-const var3541 var1098 var1098-init) ; Statement: $r2 = new java.lang.IndexOutOfBoundsException 
(define-const var2569 (Array Int var3742) arr-var3742-init) ; Statement: $r3 = newarray (java.lang.Object)[3] 
(define-const var169 Int (getLength-Arr-Int-1 var2629)) ; Statement: $i4 = lengthof r0 
(define-const var1719 Int (Int_valueOf/-1371140006 var169)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i4) 
(declare-const var2569!1 (Array Int var3742))
(assert (not (= var2569!1 null-__Array__Int__var3742__)))
(assert (= (select var2569!1 0) (cast-from-Int-to-var3742 var1719))) ; Statement: $r3[0] = $r4 
(define-const var1662 Int (Int_valueOf/-1371140006 var1477)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2569!2 (Array Int var3742))
(assert (not (= var2569!2 null-__Array__Int__var3742__)))
(assert (= (select var2569!2 1) (cast-from-Int-to-var3742 var1662))) ; Statement: $r3[1] = $r5 
(define-const var1239 Int (Int_valueOf/-1371140006 var129)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var2569!3 (Array Int var3742))
(assert (not (= var2569!3 null-__Array__Int__var3742__)))
(assert (= (select var2569!3 2) (cast-from-Int-to-var3742 var1239))) ; Statement: $r3[2] = $r6 
(define-const var1228 String (String_format/1339386452 "bytes.length=%d, offset=%d, length=%d" var2569!3)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("bytes.length=%d, offset=%d, length=%d", $r3) 
(assert true)
;(assert (<init>/1107025377 var3541 var1228)) ; Statement: specialinvoke $r2.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7) 

(declare-const var3541!1 var1098)
(declare-const var1228!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1098-init=([], java.lang.IndexOutOfBoundsException), arr-var3742-init=([], java.lang.Object[]), getLength-Arr-Int-1=([byte[]], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var3742=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var2629=r0, var1477=i0, var129=i1, var1098=java.lang.IndexOutOfBoundsException, var3541=$r2, var3742=java.lang.Object, var2569=$r3, var169=$i4, var1719=$r4, var1662=$r5, var1239=$r6, var1228=$r7}
; {r0=var2629, i0=var1477, i1=var129, java.lang.IndexOutOfBoundsException=var1098, $r2=var3541, java.lang.Object=var3742, $r3=var2569, $i4=var169, $r4=var1719, $r5=var1662, $r6=var1239, $r7=var1228}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 < 0 goto $r2 = new java.lang.IndexOutOfBoundsException;	$r2 = new java.lang.IndexOutOfBoundsException;	$r3 = newarray (java.lang.Object)[3];	$i4 = lengthof r0;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i4);	$r3[0] = $r4;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3[1] = $r5;	$r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r3[2] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("bytes.length=%d, offset=%d, length=%d", $r3);	specialinvoke $r2.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7);	throw $r2
;block_num 2
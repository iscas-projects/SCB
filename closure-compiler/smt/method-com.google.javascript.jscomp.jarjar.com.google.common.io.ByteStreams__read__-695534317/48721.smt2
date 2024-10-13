(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2681 0)
(declare-sort var2015 0)
(declare-sort var2927 0)
(declare-sort var620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2015_checkNotNull/1446102589 (var2927) var2927)
(declare-fun cast-from-var2681-to-var2927 (var2681) var2927)
(declare-fun cast-from-__Array__Int__Int__-to-var2927 ((Array Int Int)) var2927)
(declare-fun var620-init () var620)
(declare-fun arr-var2927-init () (Array Int var2927))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2927 (Int) var2927)
(declare-fun String_format/1339386452 (String (Array Int var2927)) String)
(declare-fun <init>/1107025377 (var620 String) void)
(declare-const null-var2681 var2681)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2927__ (Array Int var2927))
(declare-const var1831 var2681) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var1831 null-var2681)))
(declare-const var3259 (Array Int Int)) ; Statement: r1 := @parameter1: byte[] 
(assert (not (= var3259 null-__Array__Int__Int__)))
(declare-const var485 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var485 null-Int)))
(declare-const var1132 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var1132 null-Int)))
;(assert (var2015_checkNotNull/1446102589 (cast-from-var2681-to-var2927 var1831))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var1831!1 var2681)
;(assert (var2015_checkNotNull/1446102589 (cast-from-__Array__Int__Int__-to-var2927 var3259))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 

(declare-const var3259!1 (Array Int Int))
 ; Statement: if i0 >= 0 goto $i3 = i1 + i0 
(assert (not (>= var1132 0))) ; Negate: Cond: i0 >= 0  
(define-const var715 var620 var620-init) ; Statement: $r6 = new java.lang.IndexOutOfBoundsException 
(define-const var3480 (Array Int var2927) arr-var2927-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(define-const var3625 Int (Int_valueOf/-1371140006 var1132)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var3480!1 (Array Int var2927))
(assert (not (= var3480!1 null-__Array__Int__var2927__)))
(assert (= (select var3480!1 0) (cast-from-Int-to-var2927 var3625))) ; Statement: $r3[0] = $r4 
(define-const var3082 String (String_format/1339386452 "len (%s) cannot be negative" var3480!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("len (%s) cannot be negative", $r3) 
(assert true)
;(assert (<init>/1107025377 var715 var3082)) ; Statement: specialinvoke $r6.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r5) 

(declare-const var715!1 var620)
(declare-const var3082!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2015_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var2681-to-var2927=([java.io.InputStream], java.lang.Object), cast-from-__Array__Int__Int__-to-var2927=([byte[]], java.lang.Object), var620-init=([], java.lang.IndexOutOfBoundsException), arr-var2927-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2927=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var2681=java.io.InputStream, var1831=r0, var3259=r1, var485=i1, var1132=i0, var2015=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2927=java.lang.Object, var620=java.lang.IndexOutOfBoundsException, var715=$r6, var3480=$r3, var3625=$r4, var3082=$r5}
; {java.io.InputStream=var2681, r0=var1831, r1=var3259, i1=var485, i0=var1132, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2015, java.lang.Object=var2927, java.lang.IndexOutOfBoundsException=var620, $r6=var715, $r3=var3480, $r4=var3625, $r5=var3082}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.io.InputStream;	r1 := @parameter1: byte[];	i1 := @parameter2: int;	i0 := @parameter3: int;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	if i0 >= 0 goto $i3 = i1 + i0;	$r6 = new java.lang.IndexOutOfBoundsException;	$r3 = newarray (java.lang.Object)[1];	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3[0] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("len (%s) cannot be negative", $r3);	specialinvoke $r6.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r5);	throw $r6
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var795 0)
(declare-sort var171 0)
(declare-sort var1926 0)
(declare-sort var1889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var171_checkArgument/1031231112 (Bool String var1926) void)
(declare-fun cast-from-String-to-var1926 (String) var1926)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var1889_fromBytesNoCopy/93615162 ((Array Int Int)) var1889)
(declare-const null-String String)
(declare-const var351 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var351 null-String)))
(assert true)
(define-const var2779 Int (length/-134980193 var351)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 < 2 goto $z0 = 0 
(assert (< var2779 2)) ; Cond: $i0 < 2 
(define-const var241 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
;(assert (var171_checkArgument/1031231112 var241 "input string (%s) must have at least 2 characters" (cast-from-String-to-var1926 var351))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "input string (%s) must have at least 2 characters", r0) 

(declare-const var241!1 Bool)
(declare-const var1432 String)
(declare-const var351!1 String)
(assert true)
(define-const var1990 Int (length/-134980193 var351!1)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1856 Int (mod var1990 2)) ; Statement: $i2 = $i1 % 2 
 ; Statement: if $i2 != 0 goto $z1 = 0 
(assert (not (= var1856 0))) ; Cond: $i2 != 0 
(define-const var2495 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var171_checkArgument/1031231112 var2495 "input string (%s) must have an even number of characters" (cast-from-String-to-var1926 var351!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "input string (%s) must have an even number of characters", r0) 

(declare-const var2495!1 Bool)
(declare-const var3714 String)
(declare-const var351!2 String)
(assert true)
(define-const var70 Int (length/-134980193 var351!2)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var131 Int (div var70 2)) ; Statement: $i4 = $i3 / 2 
(define-const var1944 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (byte)[$i4] 
(define-const var2505 Int 0) ; Statement: i14 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2814 Int (length/-134980193 var351!2)) ; Statement: $i15 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i14 >= $i15 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2) 
(assert (>= var2505 var2814)) ; Cond: i14 >= $i15 
(define-const var2504 var1889 (var1889_fromBytesNoCopy/93615162 var1944)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var171_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var1926=([java.lang.String], java.lang.Object), arr-Int-init=([], byte[]), var1889_fromBytesNoCopy/93615162=([byte[]], com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode)}
; {var351=r0, var795=null_type, var2779=$i0, var241=$z0, var171=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1926=java.lang.Object, var1432="input string (%s) must have at least 2 characters", var1990=$i1, var1856=$i2, var2495=$z1, var3714="input string (%s) must have an even number of characters", var70=$i3, var131=$i4, var1944=$r2, var2505=i14, var2814=$i15, var1889=com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode, var2504=$r1}
; {r0=var351, null_type=var795, $i0=var2779, $z0=var241, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var171, java.lang.Object=var1926, "input string (%s) must have at least 2 characters"=var1432, $i1=var1990, $i2=var1856, $z1=var2495, "input string (%s) must have an even number of characters"=var3714, $i3=var70, $i4=var131, $r2=var1944, i14=var2505, $i15=var2814, com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode=var1889, $r1=var2504}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 4}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 < 2 goto $z0 = 0;	$z0 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "input string (%s) must have at least 2 characters", r0);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = $i1 % 2;	if $i2 != 0 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "input string (%s) must have an even number of characters", r0);	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	$i4 = $i3 / 2;	$r2 = newarray (byte)[$i4];	i14 = 0;	$i15 = virtualinvoke r0.<java.lang.String: int length()>();	if i14 >= $i15 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2);	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2);	return $r1
;block_num 7
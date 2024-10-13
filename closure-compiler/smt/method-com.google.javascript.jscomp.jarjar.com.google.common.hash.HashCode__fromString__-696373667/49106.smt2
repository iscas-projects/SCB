(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var741 0)
(declare-sort var210 0)
(declare-sort var3545 0)
(declare-sort var1699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var210_checkArgument/1031231112 (Bool String var3545) void)
(declare-fun cast-from-String-to-var3545 (String) var3545)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var1699_fromBytesNoCopy/93615162 ((Array Int Int)) var1699)
(declare-const null-String String)
(declare-const var362 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var362 null-String)))
(assert true)
(define-const var159 Int (length/-134980193 var362)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 < 2 goto $z0 = 0 
(assert (not (< var159 2))) ; Negate: Cond: $i0 < 2  
(define-const var1550 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "input string (%s) must have at least 2 characters", r0)] 
(assert true) ; Non Conditional
;(assert (var210_checkArgument/1031231112 var1550 "input string (%s) must have at least 2 characters" (cast-from-String-to-var3545 var362))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "input string (%s) must have at least 2 characters", r0) 

(declare-const var1550!1 Bool)
(declare-const var3103 String)
(declare-const var362!1 String)
(assert true)
(define-const var3759 Int (length/-134980193 var362!1)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3377 Int (mod var3759 2)) ; Statement: $i2 = $i1 % 2 
 ; Statement: if $i2 != 0 goto $z1 = 0 
(assert (not (= var3377 0))) ; Cond: $i2 != 0 
(define-const var3764 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var210_checkArgument/1031231112 var3764 "input string (%s) must have an even number of characters" (cast-from-String-to-var3545 var362!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "input string (%s) must have an even number of characters", r0) 

(declare-const var3764!1 Bool)
(declare-const var3771 String)
(declare-const var362!2 String)
(assert true)
(define-const var1896 Int (length/-134980193 var362!2)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var811 Int (div var1896 2)) ; Statement: $i4 = $i3 / 2 
(define-const var1855 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (byte)[$i4] 
(define-const var3288 Int 0) ; Statement: i14 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1347 Int (length/-134980193 var362!2)) ; Statement: $i15 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i14 >= $i15 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2) 
(assert (>= var3288 var1347)) ; Cond: i14 >= $i15 
(define-const var3307 var1699 (var1699_fromBytesNoCopy/93615162 var1855)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var210_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var3545=([java.lang.String], java.lang.Object), arr-Int-init=([], byte[]), var1699_fromBytesNoCopy/93615162=([byte[]], com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode)}
; {var362=r0, var741=null_type, var159=$i0, var1550=$z0, var210=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3545=java.lang.Object, var3103="input string (%s) must have at least 2 characters", var3759=$i1, var3377=$i2, var3764=$z1, var3771="input string (%s) must have an even number of characters", var1896=$i3, var811=$i4, var1855=$r2, var3288=i14, var1347=$i15, var1699=com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode, var3307=$r1}
; {r0=var362, null_type=var741, $i0=var159, $z0=var1550, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var210, java.lang.Object=var3545, "input string (%s) must have at least 2 characters"=var3103, $i1=var3759, $i2=var3377, $z1=var3764, "input string (%s) must have an even number of characters"=var3771, $i3=var1896, $i4=var811, $r2=var1855, i14=var3288, $i15=var1347, com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode=var1699, $r1=var3307}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 4}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 < 2 goto $z0 = 0;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "input string (%s) must have at least 2 characters", r0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "input string (%s) must have at least 2 characters", r0);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = $i1 % 2;	if $i2 != 0 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "input string (%s) must have an even number of characters", r0);	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	$i4 = $i3 / 2;	$r2 = newarray (byte)[$i4];	i14 = 0;	$i15 = virtualinvoke r0.<java.lang.String: int length()>();	if i14 >= $i15 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2);	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2);	return $r1
;block_num 7
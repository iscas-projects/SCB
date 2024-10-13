(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2654 0)
(declare-sort var1340 0)
(declare-sort var633 0)
(declare-sort var175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1340_checkArgument/1031231112 (Bool String var633) void)
(declare-fun cast-from-String-to-var633 (String) var633)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var175_fromBytesNoCopy/93615162 ((Array Int Int)) var175)
(declare-const null-String String)
(declare-const var1515 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1515 null-String)))
(assert true)
(define-const var1989 Int (length/-134980193 var1515)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 < 2 goto $z0 = 0 
(assert (not (< var1989 2))) ; Negate: Cond: $i0 < 2  
(define-const var1467 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "input string (%s) must have at least 2 characters", r0)] 
(assert true) ; Non Conditional
;(assert (var1340_checkArgument/1031231112 var1467 "input string (%s) must have at least 2 characters" (cast-from-String-to-var633 var1515))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "input string (%s) must have at least 2 characters", r0) 

(declare-const var1467!1 Bool)
(declare-const var639 String)
(declare-const var1515!1 String)
(assert true)
(define-const var2812 Int (length/-134980193 var1515!1)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var961 Int (mod var2812 2)) ; Statement: $i2 = $i1 % 2 
 ; Statement: if $i2 != 0 goto $z1 = 0 
(assert (not (not (= var961 0)))) ; Negate: Cond: $i2 != 0  
(define-const var3847 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "input string (%s) must have an even number of characters", r0)] 
(assert true) ; Non Conditional
;(assert (var1340_checkArgument/1031231112 var3847 "input string (%s) must have an even number of characters" (cast-from-String-to-var633 var1515!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "input string (%s) must have an even number of characters", r0) 

(declare-const var3847!1 Bool)
(declare-const var1711 String)
(declare-const var1515!2 String)
(assert true)
(define-const var3470 Int (length/-134980193 var1515!2)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2331 Int (div var3470 2)) ; Statement: $i4 = $i3 / 2 
(define-const var3299 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (byte)[$i4] 
(define-const var2098 Int 0) ; Statement: i14 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var523 Int (length/-134980193 var1515!2)) ; Statement: $i15 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i14 >= $i15 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2) 
(assert (>= var2098 var523)) ; Cond: i14 >= $i15 
(define-const var433 var175 (var175_fromBytesNoCopy/93615162 var3299)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1340_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var633=([java.lang.String], java.lang.Object), arr-Int-init=([], byte[]), var175_fromBytesNoCopy/93615162=([byte[]], com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode)}
; {var1515=r0, var2654=null_type, var1989=$i0, var1467=$z0, var1340=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var633=java.lang.Object, var639="input string (%s) must have at least 2 characters", var2812=$i1, var961=$i2, var3847=$z1, var1711="input string (%s) must have an even number of characters", var3470=$i3, var2331=$i4, var3299=$r2, var2098=i14, var523=$i15, var175=com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode, var433=$r1}
; {r0=var1515, null_type=var2654, $i0=var1989, $z0=var1467, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1340, java.lang.Object=var633, "input string (%s) must have at least 2 characters"=var639, $i1=var2812, $i2=var961, $z1=var3847, "input string (%s) must have an even number of characters"=var1711, $i3=var3470, $i4=var2331, $r2=var3299, i14=var2098, $i15=var523, com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode=var175, $r1=var433}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 4}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 < 2 goto $z0 = 0;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "input string (%s) must have at least 2 characters", r0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "input string (%s) must have at least 2 characters", r0);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = $i1 % 2;	if $i2 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "input string (%s) must have an even number of characters", r0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "input string (%s) must have an even number of characters", r0);	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	$i4 = $i3 / 2;	$r2 = newarray (byte)[$i4];	i14 = 0;	$i15 = virtualinvoke r0.<java.lang.String: int length()>();	if i14 >= $i15 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2);	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2);	return $r1
;block_num 7
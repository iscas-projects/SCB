(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3301 0)
(declare-sort var201 0)
(declare-sort var669 0)
(declare-sort var904 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var201_checkArgument/1031231112 (Bool String var669) void)
(declare-fun cast-from-String-to-var669 (String) var669)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var904_fromBytesNoCopy/93615162 ((Array Int Int)) var904)
(declare-const null-String String)
(declare-const var1981 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1981 null-String)))
(assert true)
(define-const var1612 Int (length/-134980193 var1981)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 < 2 goto $z0 = 0 
(assert (< var1612 2)) ; Cond: $i0 < 2 
(define-const var3077 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
;(assert (var201_checkArgument/1031231112 var3077 "input string (%s) must have at least 2 characters" (cast-from-String-to-var669 var1981))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "input string (%s) must have at least 2 characters", r0) 

(declare-const var3077!1 Bool)
(declare-const var3943 String)
(declare-const var1981!1 String)
(assert true)
(define-const var1237 Int (length/-134980193 var1981!1)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var678 Int (mod var1237 2)) ; Statement: $i2 = $i1 % 2 
 ; Statement: if $i2 != 0 goto $z1 = 0 
(assert (not (not (= var678 0)))) ; Negate: Cond: $i2 != 0  
(define-const var775 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "input string (%s) must have an even number of characters", r0)] 
(assert true) ; Non Conditional
;(assert (var201_checkArgument/1031231112 var775 "input string (%s) must have an even number of characters" (cast-from-String-to-var669 var1981!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "input string (%s) must have an even number of characters", r0) 

(declare-const var775!1 Bool)
(declare-const var803 String)
(declare-const var1981!2 String)
(assert true)
(define-const var2378 Int (length/-134980193 var1981!2)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var987 Int (div var2378 2)) ; Statement: $i4 = $i3 / 2 
(define-const var2877 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (byte)[$i4] 
(define-const var2671 Int 0) ; Statement: i14 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1878 Int (length/-134980193 var1981!2)) ; Statement: $i15 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i14 >= $i15 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2) 
(assert (>= var2671 var1878)) ; Cond: i14 >= $i15 
(define-const var679 var904 (var904_fromBytesNoCopy/93615162 var2877)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var201_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var669=([java.lang.String], java.lang.Object), arr-Int-init=([], byte[]), var904_fromBytesNoCopy/93615162=([byte[]], com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode)}
; {var1981=r0, var3301=null_type, var1612=$i0, var3077=$z0, var201=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var669=java.lang.Object, var3943="input string (%s) must have at least 2 characters", var1237=$i1, var678=$i2, var775=$z1, var803="input string (%s) must have an even number of characters", var2378=$i3, var987=$i4, var2877=$r2, var2671=i14, var1878=$i15, var904=com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode, var679=$r1}
; {r0=var1981, null_type=var3301, $i0=var1612, $z0=var3077, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var201, java.lang.Object=var669, "input string (%s) must have at least 2 characters"=var3943, $i1=var1237, $i2=var678, $z1=var775, "input string (%s) must have an even number of characters"=var803, $i3=var2378, $i4=var987, $r2=var2877, i14=var2671, $i15=var1878, com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode=var904, $r1=var679}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 4}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 < 2 goto $z0 = 0;	$z0 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "input string (%s) must have at least 2 characters", r0);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = $i1 % 2;	if $i2 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "input string (%s) must have an even number of characters", r0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "input string (%s) must have an even number of characters", r0);	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	$i4 = $i3 / 2;	$r2 = newarray (byte)[$i4];	i14 = 0;	$i15 = virtualinvoke r0.<java.lang.String: int length()>();	if i14 >= $i15 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2);	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fromBytesNoCopy(byte[])>($r2);	return $r1
;block_num 7
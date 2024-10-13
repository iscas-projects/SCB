(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3336 0)
(declare-sort var3967 0)
(declare-sort var1301 0)
(declare-sort var1174 0)
(declare-sort var3635 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1301_checkNotNullParameter/-2060636419 (var1174 String) void)
(declare-fun cast-from-String-to-var1174 (String) var1174)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3635_min/-1112089438 (Int Int) Int)
(declare-const null-var3336 var3336)
(declare-const null-String String)
(declare-const var3830 var3336) ; Statement: r2 := @this: okhttp3.CipherSuite$Companion$ORDER_BY_NAME$1 
(assert (not (= var3830 null-var3336)))
(declare-const var2706 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2706 null-String)))
(declare-const var2881 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2881 null-String)))
;(assert (var1301_checkNotNullParameter/-2060636419 (cast-from-String-to-var1174 var2706) "a")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "a") 

(declare-const var2706!1 String)
(declare-const var3018 String)
;(assert (var1301_checkNotNullParameter/-2060636419 (cast-from-String-to-var1174 var2881) "b")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "b") 

(declare-const var2881!1 String)
(declare-const var3381 String)
(define-const var1711 Int 4) ; Statement: i4 = 4 
(assert true)
(define-const var2989 Int (length/-134980193 var2706!1)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var3667 Int (length/-134980193 var2881!1)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3723 Int (var3635_min/-1112089438 var2989 var3667)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i2 goto i8 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (>= var1711 var3723)) ; Cond: i4 >= i2 
(assert true)
(define-const var2208 Int (length/-134980193 var2706!1)) ; Statement: i8 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var3648 Int (length/-134980193 var2881!1)) ; Statement: i9 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i8 == i9 goto return 0 
(assert (= var2208 var3648)) ; Cond: i8 == i9 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1301_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1174=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), var3635_min/-1112089438=([int, int], int)}
; {var3336=okhttp3.CipherSuite$Companion$ORDER_BY_NAME$1, var3830=r2, var2706=r0, var3967=null_type, var2881=r1, var1301=kotlin.jvm.internal.Intrinsics, var1174=java.lang.Object, var3018="a", var3381="b", var1711=i4, var2989=$i1, var3667=$i0, var3635=java.lang.Math, var3723=i2, var2208=i8, var3648=i9}
; {okhttp3.CipherSuite$Companion$ORDER_BY_NAME$1=var3336, r2=var3830, r0=var2706, null_type=var3967, r1=var2881, kotlin.jvm.internal.Intrinsics=var1301, java.lang.Object=var1174, "a"=var3018, "b"=var3381, i4=var1711, $i1=var2989, $i0=var3667, java.lang.Math=var3635, i2=var3723, i8=var2208, i9=var3648}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 4}
;stmts r2 := @this: okhttp3.CipherSuite$Companion$ORDER_BY_NAME$1;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "a");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "b");	i4 = 4;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	if i4 >= i2 goto i8 = virtualinvoke r0.<java.lang.String: int length()>();	i8 = virtualinvoke r0.<java.lang.String: int length()>();	i9 = virtualinvoke r1.<java.lang.String: int length()>();	if i8 == i9 goto return 0;	return 0
;block_num 4
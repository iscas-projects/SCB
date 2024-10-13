(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var132 0)
(declare-sort var3649 0)
(declare-sort var3644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3644) void)
(declare-fun cast-from-var132-to-var3644 (var132) var3644)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun source/-1766936497 (var132) String)
(declare-const null-var132 var132)
(declare-const null-String String)
(declare-const var2795 var132) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExp 
(assert (not (= var2795 null-var132)))
(declare-const var3900 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3900 null-String)))
(declare-const var2682 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2682 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var132-to-var3644 var2795))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2795!1 var132)
(assert true)
(define-const var619 Int (length/-134980193 var3900)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r4 = r1 
(assert (not (= var619 0))) ; Cond: $i0 != 0 
(define-const var585 String var3900) ; Statement: $r4 = r1 
(assert true) ; Non Conditional
(declare-const var2795!2 var132)
(assert (not (= var2795!2 null-var132)))
(assert (= (source/-1766936497 var2795!2) var585)) ; Statement: r0.<jdk.nashorn.internal.runtime.regexp.RegExp: java.lang.String source> = $r4 
(define-const var2745 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2259 Int (length/-134980193 var2682)) ; Statement: $i3 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i3 goto return 
(assert (>= var2745 var2259)) ; Cond: i2 >= $i3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var132-to-var3644=([jdk.nashorn.internal.runtime.regexp.RegExp], java.lang.Object), length/-134980193=([java.lang.String], int), source/-1766936497=([jdk.nashorn.internal.runtime.regexp.RegExp], java.lang.String)}
; {var132=jdk.nashorn.internal.runtime.regexp.RegExp, var2795=r0, var3900=r1, var3649=null_type, var2682=r2, var3644=java.lang.Object, var619=$i0, var585=$r4, var2745=i2, var2259=$i3}
; {jdk.nashorn.internal.runtime.regexp.RegExp=var132, r0=var2795, r1=var3900, null_type=var3649, r2=var2682, java.lang.Object=var3644, $i0=var619, $r4=var585, i2=var2745, $i3=var2259}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExp;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 != 0 goto $r4 = r1;	$r4 = r1;	r0.<jdk.nashorn.internal.runtime.regexp.RegExp: java.lang.String source> = $r4;	i2 = 0;	$i3 = virtualinvoke r2.<java.lang.String: int length()>();	if i2 >= $i3 goto return;	return
;block_num 5
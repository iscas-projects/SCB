(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1747 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1747 null-String)))
(define-const var2424 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var2126 Int (length/-134980193 var1747)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2518 Int (+ var2126 1)) ; Statement: $i1 = $i0 + 1 
(assert true)
;(assert (<init>/543593434 var2424 var2518)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2424!1 String)
(declare-const var2518!1 Int)
(define-const var3170 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3461 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2670 Int (length/-134980193 var1747)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i2 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3461 var2670)) ; Cond: i6 >= $i2 
(assert true)
(define-const var136 String (toString/-2075883882 var2424!1)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1747=r1, var2106=null_type, var2424=$r3, var2126=$i0, var2518=$i1, var3170=z1, var3461=i6, var2670=$i2, var136=$r2}
; {r1=var1747, null_type=var2106, $r3=var2424, $i0=var2126, $i1=var2518, z1=var3170, i6=var3461, $i2=var2670, $r2=var136}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r3 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 1;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	z1 = 0;	i6 = 0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	if i6 >= $i2 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3
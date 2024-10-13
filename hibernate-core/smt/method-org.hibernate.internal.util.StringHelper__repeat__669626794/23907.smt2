(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2226 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2226 null-String)))
(declare-const var2266 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2266 null-Int)))
(declare-const var239 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var239 null-String)))
(define-const var3178 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1994 Int (length/-134980193 var2226)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var732 Int (* var1994 var2266)) ; Statement: $i5 = $i1 * i0 
(assert true)
(define-const var1175 Int (length/-134980193 var239)) ; Statement: $i3 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var3848 Int (- var2266 1)) ; Statement: $i2 = i0 - 1 
(define-const var3362 Int (* var1175 var3848)) ; Statement: $i4 = $i3 * $i2 
(define-const var2256 Int (+ var732 var3362)) ; Statement: $i6 = $i5 + $i4 
(assert true)
;(assert (<init>/543593434 var3178 var2256)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i6) 

(declare-const var3178!1 String)
(declare-const var2256!1 Int)
(assert true)
(define-const var1389 String (append/672562846 var3178!1 var2226)) ; Statement: r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3178!2 String)
(assert (= var3178!2 (str.++ var3178!1 var2226)))
(define-const var2674 Int 1) ; Statement: i7 = 1 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto $r4 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2674 var2266)) ; Cond: i7 >= i0 
(assert true)
(define-const var173 String (toString/-2075883882 var1389)) ; Statement: $r4 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2226=r1, var3153=null_type, var2266=i0, var239=r2, var3178=$r0, var1994=$i1, var732=$i5, var1175=$i3, var3848=$i2, var3362=$i4, var2256=$i6, var1389=r3, var2674=i7, var173=$r4}
; {r1=var2226, null_type=var3153, i0=var2266, r2=var239, $r0=var3178, $i1=var1994, $i5=var732, $i3=var1175, $i2=var3848, $i4=var3362, $i6=var2256, r3=var1389, i7=var2674, $r4=var173}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r2 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuilder;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i5 = $i1 * i0;	$i3 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = i0 - 1;	$i4 = $i3 * $i2;	$i6 = $i5 + $i4;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i6);	r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	i7 = 1;	if i7 >= i0 goto $r4 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var620 0)
(declare-sort var342 0)
(declare-sort var784 0)
(declare-sort var1302 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var342_checkNotNull/1446102589 (var784) var784)
(declare-fun cast-from-String-to-var784 (String) var784)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1302-init () var1302)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1057600344 (var1302 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1472 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1472 null-String)))
(declare-const var3283 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3283 null-Int)))
;(assert (var342_checkNotNull/1446102589 (cast-from-String-to-var784 var1472))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var1472!1 String)
 ; Statement: if i0 > 1 goto i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (> var3283 1)) ; Cond: i0 > 1 
(assert true)
(define-const var3689 Int (length/-134980193 var1472!1)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2708 Int (cast-from-Int-to-Int var3689)) ; Statement: $l3 = (long) i1 
(define-const var2343 Int (cast-from-Int-to-Int var3283)) ; Statement: $l2 = (long) i0 
(define-const var324 Int (* var2708 var2343)) ; Statement: l4 = $l3 * $l2 
(define-const var2110 Int (cast-from-Int-to-Int var324)) ; Statement: i5 = (int) l4 
(define-const var2947 Int (cast-from-Int-to-Int var2110)) ; Statement: $l6 = (long) i5 
(define-const var2672 Int (ite (> var2947 var324) 1 (ite (< var2947 var324) (- 1) 0))) ; Statement: $b7 = $l6 cmp l4 
 ; Statement: if $b7 == 0 goto r1 = newarray (char)[i5] 
(assert (not (= var2672 0))) ; Negate: Cond: $b7 == 0  
(define-const var3498 var1302 var1302-init) ; Statement: $r3 = new java.lang.ArrayIndexOutOfBoundsException 
(define-const var2550 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2550)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2550!1 String)
(assert (= var2550!1 ""))
(assert true)
(define-const var1348 String (append/672562846 var2550!1 "Required array size too large: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Required array size too large: ") 
(declare-const var2550!2 String)
(assert (= var2550!2 (str.++ var2550!1 "Required array size too large: ")))
(assert true)
(define-const var1950 String (append/-901862667 var1348 var324)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l4) 
(declare-const var1348!1 String)
(assert (str.prefixof var1348 var1348!1))
(assert true)
(define-const var1393 String (toString/-2075883882 var1950)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1057600344 var3498 var1393)) ; Statement: specialinvoke $r3.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r7) 

(declare-const var3498!1 var1302)
(declare-const var1393!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var342_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var784=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], long), var1302-init=([], java.lang.ArrayIndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1057600344=([java.lang.ArrayIndexOutOfBoundsException, java.lang.String], void)}
; {var1472=r0, var620=null_type, var3283=i0, var342=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var784=java.lang.Object, var3689=i1, var2708=$l3, var2343=$l2, var324=l4, var2110=i5, var2947=$l6, var2672=$b7, var1302=java.lang.ArrayIndexOutOfBoundsException, var3498=$r3, var2550=$r4, var1348=$r5, var1950=$r6, var1393=$r7}
; {r0=var1472, null_type=var620, i0=var3283, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var342, java.lang.Object=var784, i1=var3689, $l3=var2708, $l2=var2343, l4=var324, i5=var2110, $l6=var2947, $b7=var2672, java.lang.ArrayIndexOutOfBoundsException=var1302, $r3=var3498, $r4=var2550, $r5=var1348, $r6=var1950, $r7=var1393}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	if i0 > 1 goto i1 = virtualinvoke r0.<java.lang.String: int length()>();	i1 = virtualinvoke r0.<java.lang.String: int length()>();	$l3 = (long) i1;	$l2 = (long) i0;	l4 = $l3 * $l2;	i5 = (int) l4;	$l6 = (long) i5;	$b7 = $l6 cmp l4;	if $b7 == 0 goto r1 = newarray (char)[i5];	$r3 = new java.lang.ArrayIndexOutOfBoundsException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Required array size too large: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 3
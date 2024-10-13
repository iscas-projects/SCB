(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1203 0)
(declare-sort var591 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var591-init () var591)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var591 String) void)
(declare-const null-var1203 var1203)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2314 var1203) ; Statement: r0 := @parameter0: java.io.Reader 
(assert (not (= var2314 null-var1203)))
(declare-const var2665 (Array Int Int)) ; Statement: r1 := @parameter1: char[] 
(assert (not (= var2665 null-__Array__Int__Int__)))
(declare-const var3047 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3047 null-Int)))
(declare-const var3931 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3931 null-Int)))
 ; Statement: if i0 >= 0 goto i6 = i0 
(assert (not (>= var3931 0))) ; Negate: Cond: i0 >= 0  
(define-const var2279 var591 var591-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var1578 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1578)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1578!1 String)
(assert (= var1578!1 ""))
(assert true)
(define-const var1100 String (append/672562846 var1578!1 "Length must not be negative: ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Length must not be negative: ") 
(declare-const var1578!2 String)
(assert (= var1578!2 (str.++ var1578!1 "Length must not be negative: ")))
(assert true)
(define-const var3363 String (append/-1001720160 var1100 var3931)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1100!1 String)
(assert (str.prefixof var1100 var1100!1))
(assert true)
(define-const var233 String (toString/-2075883882 var3363)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2279 var233)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var2279!1 var591)
(declare-const var233!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var591-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1203=java.io.Reader, var2314=r0, var2665=r1, var3047=i3, var3931=i0, var591=java.lang.IllegalArgumentException, var2279=$r8, var1578=$r7, var1100=$r4, var3363=$r5, var233=$r6}
; {java.io.Reader=var1203, r0=var2314, r1=var2665, i3=var3047, i0=var3931, java.lang.IllegalArgumentException=var591, $r8=var2279, $r7=var1578, $r4=var1100, $r5=var3363, $r6=var233}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.Reader;	r1 := @parameter1: char[];	i3 := @parameter2: int;	i0 := @parameter3: int;	if i0 >= 0 goto i6 = i0;	$r8 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Length must not be negative: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2
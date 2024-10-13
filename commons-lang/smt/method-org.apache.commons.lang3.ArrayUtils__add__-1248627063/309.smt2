(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3723 0)
(declare-sort var413 0)
(declare-sort var2574 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var413_getLength/133105635 (var3723) Int)
(declare-fun var2574-init () var2574)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var2574 String) void)
(declare-const null-var3723 var3723)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const var3272 var3723) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3272 null-var3723)))
(declare-const var1548 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1548 null-Int)))
(declare-const var3509 var3723) ; Statement: r10 := @parameter2: java.lang.Object 
(assert (not (= var3509 null-var3723)))
(declare-const var3588 ClassObject) ; Statement: r8 := @parameter3: java.lang.Class 
(assert (not (= var3588 null-ClassObject)))
 ; Statement: if r0 != null goto i4 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r0) 
(assert (not (= var3272 null-var3723))) ; Cond: r0 != null 
(define-const var3991 Int (var413_getLength/133105635 var3272)) ; Statement: i4 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r0) 
 ; Statement: if i0 > i4 goto $r1 = new java.lang.IndexOutOfBoundsException 
(assert (> var1548 var3991)) ; Cond: i0 > i4 
(define-const var2432 var2574 var2574-init) ; Statement: $r1 = new java.lang.IndexOutOfBoundsException 
(define-const var1856 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1856)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1856!1 String)
(assert (= var1856!1 ""))
(assert true)
(define-const var3544 String (append/672562846 var1856!1 "Index: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index: ") 
(declare-const var1856!2 String)
(assert (= var1856!2 (str.++ var1856!1 "Index: ")))
(assert true)
(define-const var1496 String (append/-1001720160 var3544 var1548)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3544!1 String)
(assert (str.prefixof var3544 var3544!1))
(assert true)
(define-const var2525 String (append/672562846 var1496 ", Length: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Length: ") 
(declare-const var1496!1 String)
(assert (= var1496!1 (str.++ var1496 ", Length: ")))
(assert true)
(define-const var1072 String (append/-1001720160 var2525 var3991)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var2525!1 String)
(assert (str.prefixof var2525 var2525!1))
(assert true)
(define-const var2789 String (toString/-2075883882 var1072)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var2432 var2789)) ; Statement: specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7) 

(declare-const var2432!1 var2574)
(declare-const var2789!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var413_getLength/133105635=([java.lang.Object], int), var2574-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var3723=java.lang.Object, var3272=r0, var1548=i0, var3509=r10, var3588=r8, var413=java.lang.reflect.Array, var3991=i4, var2574=java.lang.IndexOutOfBoundsException, var2432=$r1, var1856=$r2, var3544=$r3, var1496=$r4, var2525=$r5, var1072=$r6, var2789=$r7}
; {java.lang.Object=var3723, r0=var3272, i0=var1548, r10=var3509, r8=var3588, java.lang.reflect.Array=var413, i4=var3991, java.lang.IndexOutOfBoundsException=var2574, $r1=var2432, $r2=var1856, $r3=var3544, $r4=var1496, $r5=var2525, $r6=var1072, $r7=var2789}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	r10 := @parameter2: java.lang.Object;	r8 := @parameter3: java.lang.Class;	if r0 != null goto i4 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r0);	i4 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r0);	if i0 > i4 goto $r1 = new java.lang.IndexOutOfBoundsException;	$r1 = new java.lang.IndexOutOfBoundsException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Length: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2136 0)
(declare-sort var3307 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3307-init () var3307)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var3307 String) void)
(declare-const null-var2136 var2136)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const var1208 var2136) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1208 null-var2136)))
(declare-const var3720 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3720 null-Int)))
(declare-const var1502 var2136) ; Statement: r10 := @parameter2: java.lang.Object 
(assert (not (= var1502 null-var2136)))
(declare-const var1967 ClassObject) ; Statement: r8 := @parameter3: java.lang.Class 
(assert (not (= var1967 null-ClassObject)))
 ; Statement: if r0 != null goto i4 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r0) 
(assert (not (not (= var1208 null-var2136)))) ; Negate: Cond: r0 != null  
 ; Statement: if i0 == 0 goto r17 = staticinvoke <java.lang.reflect.Array: java.lang.Object newInstance(java.lang.Class,int)>(r8, 1) 
(assert (not (= var3720 0))) ; Negate: Cond: i0 == 0  
(define-const var315 var3307 var3307-init) ; Statement: $r11 = new java.lang.IndexOutOfBoundsException 
(define-const var3316 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3316)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3316!1 String)
(assert (= var3316!1 ""))
(assert true)
(define-const var1106 String (append/672562846 var3316!1 "Index: ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index: ") 
(declare-const var3316!2 String)
(assert (= var3316!2 (str.++ var3316!1 "Index: ")))
(assert true)
(define-const var1834 String (append/-1001720160 var1106 var3720)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1106!1 String)
(assert (str.prefixof var1106 var1106!1))
(assert true)
(define-const var30 String (append/672562846 var1834 ", Length: 0")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Length: 0") 
(declare-const var1834!1 String)
(assert (= var1834!1 (str.++ var1834 ", Length: 0")))
(assert true)
(define-const var3510 String (toString/-2075883882 var30)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var315 var3510)) ; Statement: specialinvoke $r11.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r16) 

(declare-const var315!1 var3307)
(declare-const var3510!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3307-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var2136=java.lang.Object, var1208=r0, var3720=i0, var1502=r10, var1967=r8, var3307=java.lang.IndexOutOfBoundsException, var315=$r11, var3316=$r12, var1106=$r13, var1834=$r14, var30=$r15, var3510=$r16}
; {java.lang.Object=var2136, r0=var1208, i0=var3720, r10=var1502, r8=var1967, java.lang.IndexOutOfBoundsException=var3307, $r11=var315, $r12=var3316, $r13=var1106, $r14=var1834, $r15=var30, $r16=var3510}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	r10 := @parameter2: java.lang.Object;	r8 := @parameter3: java.lang.Class;	if r0 != null goto i4 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r0);	if i0 == 0 goto r17 = staticinvoke <java.lang.reflect.Array: java.lang.Object newInstance(java.lang.Class,int)>(r8, 1);	$r11 = new java.lang.IndexOutOfBoundsException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Length: 0");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r16);	throw $r11
;block_num 3
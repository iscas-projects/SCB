(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2655 0)
(declare-sort var1140 0)
(declare-sort var2885 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun var1140-init () var1140)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var2885) String)
(declare-fun cast-from-ClassObject-to-var2885 (ClassObject) var2885)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var2655-to-var2885 (var2655) var2885)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1140 String) void)
(declare-const null-var2655 var2655)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var2554 var2655) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken 
(assert (not (= var2554 null-var2655)))
(declare-const var2894 ClassObject) ; Statement: r3 := @parameter0: java.lang.Class 
(assert (not (= var2894 null-ClassObject)))
(declare-const var3577 (Array Int ClassObject)) ; Statement: r0 := @parameter1: java.lang.reflect.Type[] 
(assert (not (= var3577 null-__Array__Int__ClassObject__)))
(define-const var1512 Int (getLength-Arr-ClassObject-1 var3577)) ; Statement: i0 = lengthof r0 
(define-const var1056 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (>= var1056 var1512)) ; Cond: i1 >= i0 
(define-const var3528 var1140 var1140-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var115 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var115)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var115!1 String)
(assert (= var115!1 ""))
(assert true)
(define-const var1198 String (append/-1031950772 var115!1 (cast-from-ClassObject-to-var2885 var2894))) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var115!2 String)
(assert (str.prefixof var115!1 var115!2))
(assert true)
(define-const var460 String (append/672562846 var1198 " isn\u0027t a super type of ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" isn\'t a super type of ") 
(declare-const var1198!1 String)
(assert (= var1198!1 (str.++ var1198 " isn\u0027t a super type of ")))
(assert true)
(define-const var3753 String (append/-1031950772 var460 (cast-from-var2655-to-var2885 var2554))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var460!1 String)
(assert (str.prefixof var460 var460!1))
(assert true)
(define-const var1747 String (toString/-2075883882 var3753)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3528 var1747)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var3528!1 var1140)
(declare-const var1747!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-ClassObject-1=([java.lang.reflect.Type[]], int), var1140-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2885=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var2655-to-var2885=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2655=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, var2554=r5, var2894=r3, var3577=r0, var1512=i0, var1056=i1, var1140=java.lang.IllegalArgumentException, var3528=$r1, var115=$r2, var2885=java.lang.Object, var1198=$r4, var460=$r6, var3753=$r7, var1747=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken=var2655, r5=var2554, r3=var2894, r0=var3577, i0=var1512, i1=var1056, java.lang.IllegalArgumentException=var1140, $r1=var3528, $r2=var115, java.lang.Object=var2885, $r4=var1198, $r6=var460, $r7=var3753, $r8=var1747}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken;	r3 := @parameter0: java.lang.Class;	r0 := @parameter1: java.lang.reflect.Type[];	i0 = lengthof r0;	i1 = 0;	if i1 >= i0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" isn\'t a super type of ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2229 0)
(declare-sort var2992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2992-init () var2992)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2992 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var2103 ClassObject) ; Statement: r8 := @parameter0: java.lang.Class 
(assert (not (= var2103 null-ClassObject)))
(declare-const var3190 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3190 null-String)))
(declare-const var2946 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var2946 null-String)))
(define-const var3331 var2992 var2992-init) ; Statement: $r0 = new java.lang.RuntimeException 
(define-const var1428 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1428)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1428!1 String)
(assert (= var1428!1 ""))
(assert true)
(define-const var3786 String (append/672562846 var1428!1 "not found ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not found ") 
(declare-const var1428!2 String)
(assert (= var1428!2 (str.++ var1428!1 "not found ")))
(assert true)
(define-const var3957 String (append/672562846 var3786 var3190)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3786!1 String)
(assert (= var3786!1 (str.++ var3786 var3190)))
(assert true)
(define-const var806 String (append/672562846 var3957 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3957!1 String)
(assert (= var3957!1 (str.++ var3957 ":")))
(assert true)
(define-const var1233 String (append/672562846 var806 var2946)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var806!1 String)
(assert (= var806!1 (str.++ var806 var2946)))
(assert true)
(define-const var3677 String (append/672562846 var1233 " in ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ") 
(declare-const var1233!1 String)
(assert (= var1233!1 (str.++ var1233 " in ")))
(assert true)
(define-const var1253 String (getName/-1958580599 var2103)) ; Statement: $r9 = virtualinvoke r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2288 String (append/672562846 var3677 var1253)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3677!1 String)
(assert (= var3677!1 (str.++ var3677 var1253)))
(assert true)
(define-const var2360 String (toString/-2075883882 var2288)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3331 var2360)) ; Statement: specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r12) 

(declare-const var3331!1 var2992)
(declare-const var2360!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2992-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2103=r8, var3190=r2, var2229=null_type, var2946=r5, var2992=java.lang.RuntimeException, var3331=$r0, var1428=$r1, var3786=$r3, var3957=$r4, var806=$r6, var1233=$r7, var3677=$r10, var1253=$r9, var2288=$r11, var2360=$r12}
; {r8=var2103, r2=var3190, null_type=var2229, r5=var2946, java.lang.RuntimeException=var2992, $r0=var3331, $r1=var1428, $r3=var3786, $r4=var3957, $r6=var806, $r7=var1233, $r10=var3677, $r9=var1253, $r11=var2288, $r12=var2360}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	$r0 = new java.lang.RuntimeException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not found ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ");	$r9 = virtualinvoke r8.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r12);	throw $r0
;block_num 1
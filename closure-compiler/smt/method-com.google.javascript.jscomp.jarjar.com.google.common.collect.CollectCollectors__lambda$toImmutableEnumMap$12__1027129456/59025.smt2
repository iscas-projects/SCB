(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2162 0)
(declare-sort var1782 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1782-init () var1782)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2162) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1782 String) void)
(declare-const null-var2162 var2162)
(declare-const var3137 var2162) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3137 null-var2162)))
(declare-const var882 var2162) ; Statement: r5 := @parameter1: java.lang.Object 
(assert (not (= var882 null-var2162)))
(define-const var1412 var1782 var1782-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var912 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var912)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var912!1 String)
(assert (= var912!1 ""))
(assert true)
(define-const var1232 String (append/672562846 var912!1 "Multiple values for key: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Multiple values for key: ") 
(declare-const var912!2 String)
(assert (= var912!2 (str.++ var912!1 "Multiple values for key: ")))
(assert true)
(define-const var3608 String (append/-1031950772 var1232 var3137)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1232!1 String)
(assert (str.prefixof var1232 var1232!1))
(assert true)
(define-const var1408 String (append/672562846 var3608 ", ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3608!1 String)
(assert (= var3608!1 (str.++ var3608 ", ")))
(assert true)
(define-const var1399 String (append/-1031950772 var1408 var882)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var1408!1 String)
(assert (str.prefixof var1408 var1408!1))
(assert true)
(define-const var117 String (toString/-2075883882 var1399)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1412 var117)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var1412!1 var1782)
(declare-const var117!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1782-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2162=java.lang.Object, var3137=r2, var882=r5, var1782=java.lang.IllegalArgumentException, var1412=$r0, var912=$r1, var1232=$r3, var3608=$r4, var1408=$r6, var1399=$r7, var117=$r8}
; {java.lang.Object=var2162, r2=var3137, r5=var882, java.lang.IllegalArgumentException=var1782, $r0=var1412, $r1=var912, $r3=var1232, $r4=var3608, $r6=var1408, $r7=var1399, $r8=var117}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Object;	r5 := @parameter1: java.lang.Object;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Multiple values for key: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r0
;block_num 1
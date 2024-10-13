(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3524 0)
(declare-sort var1287 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1287-init () var1287)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3524) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1287 String) void)
(declare-const null-var3524 var3524)
(declare-const var1068 var3524) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1068 null-var3524)))
(declare-const var372 var3524) ; Statement: r5 := @parameter1: java.lang.Object 
(assert (not (= var372 null-var3524)))
(define-const var141 var1287 var1287-init) ; Statement: $r0 = new java.lang.IllegalStateException 
(define-const var702 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var702)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var702!1 String)
(assert (= var702!1 ""))
(assert true)
(define-const var3096 String (append/672562846 var702!1 "Conflicting values ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Conflicting values ") 
(declare-const var702!2 String)
(assert (= var702!2 (str.++ var702!1 "Conflicting values ")))
(assert true)
(define-const var3892 String (append/-1031950772 var3096 var1068)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3096!1 String)
(assert (str.prefixof var3096 var3096!1))
(assert true)
(define-const var435 String (append/672562846 var3892 " and ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var3892!1 String)
(assert (= var3892!1 (str.++ var3892 " and ")))
(assert true)
(define-const var50 String (append/-1031950772 var435 var372)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var435!1 String)
(assert (str.prefixof var435 var435!1))
(assert true)
(define-const var3674 String (toString/-2075883882 var50)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var141 var3674)) ; Statement: specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var141!1 var1287)
(declare-const var3674!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1287-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3524=java.lang.Object, var1068=r2, var372=r5, var1287=java.lang.IllegalStateException, var141=$r0, var702=$r1, var3096=$r3, var3892=$r4, var435=$r6, var50=$r7, var3674=$r8}
; {java.lang.Object=var3524, r2=var1068, r5=var372, java.lang.IllegalStateException=var1287, $r0=var141, $r1=var702, $r3=var3096, $r4=var3892, $r6=var435, $r7=var50, $r8=var3674}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Object;	r5 := @parameter1: java.lang.Object;	$r0 = new java.lang.IllegalStateException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Conflicting values ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r0
;block_num 1
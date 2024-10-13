(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var949 0)
(declare-sort var2611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2611-init () var2611)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-106732513 (var2611 String) void)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2637 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2637 null-Bool)))
(declare-const var833 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var833 null-String)))
(declare-const var339 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var339 null-Int)))
(declare-const var1742 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var1742 null-Int)))
 ; Statement: if z0 != 0 goto return 
(assert (not (not (= (ite var2637 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var965 var2611 var2611-init) ; Statement: $r0 = new java.lang.ArithmeticException 
(define-const var2448 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2448)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2448!1 String)
(assert (= var2448!1 ""))
(assert true)
(define-const var3012 String (append/672562846 var2448!1 "overflow: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("overflow: ") 
(declare-const var2448!2 String)
(assert (= var2448!2 (str.++ var2448!1 "overflow: ")))
(assert true)
(define-const var2497 String (append/672562846 var3012 var833)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3012!1 String)
(assert (= var3012!1 (str.++ var3012 var833)))
(assert true)
(define-const var1966 String (append/672562846 var2497 "(")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2497!1 String)
(assert (= var2497!1 (str.++ var2497 "(")))
(assert true)
(define-const var2400 String (append/-901862667 var1966 var339)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1966!1 String)
(assert (str.prefixof var1966 var1966!1))
(assert true)
(define-const var856 String (append/672562846 var2400 ", ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2400!1 String)
(assert (= var2400!1 (str.++ var2400 ", ")))
(assert true)
(define-const var1962 String (append/-901862667 var856 var1742)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1) 
(declare-const var856!1 String)
(assert (str.prefixof var856 var856!1))
(assert true)
(define-const var2439 String (append/672562846 var1962 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1962!1 String)
(assert (= var1962!1 (str.++ var1962 ")")))
(assert true)
(define-const var14 String (toString/-2075883882 var2439)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-106732513 var965 var14)) ; Statement: specialinvoke $r0.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r10) 

(declare-const var965!1 var2611)
(declare-const var14!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2611-init=([], java.lang.ArithmeticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-106732513=([java.lang.ArithmeticException, java.lang.String], void)}
; {var2637=z0, var833=r2, var949=null_type, var339=l0, var1742=l1, var2611=java.lang.ArithmeticException, var965=$r0, var2448=$r1, var3012=$r3, var2497=$r4, var1966=$r5, var2400=$r6, var856=$r7, var1962=$r8, var2439=$r9, var14=$r10}
; {z0=var2637, r2=var833, null_type=var949, l0=var339, l1=var1742, java.lang.ArithmeticException=var2611, $r0=var965, $r1=var2448, $r3=var3012, $r4=var2497, $r5=var1966, $r6=var2400, $r7=var856, $r8=var1962, $r9=var2439, $r10=var14}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	r2 := @parameter1: java.lang.String;	l0 := @parameter2: long;	l1 := @parameter3: long;	if z0 != 0 goto return;	$r0 = new java.lang.ArithmeticException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("overflow: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r10);	throw $r0
;block_num 2
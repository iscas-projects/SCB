(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2944 0)
(declare-sort var730 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var730-init () var730)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var730 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1284 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1284 null-String)))
(declare-const var3734 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3734 null-Int)))
 ; Statement: if i0 > 0 goto return i0 
(assert (not (> var3734 0))) ; Negate: Cond: i0 > 0  
(define-const var287 var730 var730-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var46 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var46)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var46!1 String)
(assert (= var46!1 ""))
(assert true)
(define-const var2471 String (append/672562846 var46!1 var1284)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var46!2 String)
(assert (= var46!2 (str.++ var46!1 var1284)))
(assert true)
(define-const var997 String (append/672562846 var2471 " (")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2471!1 String)
(assert (= var2471!1 (str.++ var2471 " (")))
(assert true)
(define-const var204 String (append/-1001720160 var997 var3734)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var997!1 String)
(assert (str.prefixof var997 var997!1))
(assert true)
(define-const var1242 String (append/672562846 var204 ") must be > 0")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be > 0") 
(declare-const var204!1 String)
(assert (= var204!1 (str.++ var204 ") must be > 0")))
(assert true)
(define-const var1925 String (toString/-2075883882 var1242)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var287 var1925)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var287!1 var730)
(declare-const var1925!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var730-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1284=r2, var2944=null_type, var3734=i0, var730=java.lang.IllegalArgumentException, var287=$r0, var46=$r1, var2471=$r3, var997=$r4, var204=$r5, var1242=$r6, var1925=$r7}
; {r2=var1284, null_type=var2944, i0=var3734, java.lang.IllegalArgumentException=var730, $r0=var287, $r1=var46, $r3=var2471, $r4=var997, $r5=var204, $r6=var1242, $r7=var1925}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	if i0 > 0 goto return i0;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be > 0");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var12 0)
(declare-sort var2205 0)
(declare-sort var3894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2205) String)
(declare-fun cast-from-var12-to-var2205 (var12) var2205)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3894-init () var3894)
(declare-fun <init>/-1092629202 (var3894 String) void)
(declare-const null-var12 var12)
(declare-const null-Bool Bool)
(declare-const var2296 var12) ; Statement: r1 := @parameter0: org.apache.poi.ss.usermodel.CellType 
(assert (not (= var2296 null-var12)))
(declare-const var68 var12) ; Statement: r4 := @parameter1: org.apache.poi.ss.usermodel.CellType 
(assert (not (= var68 null-var12)))
(declare-const var3704 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3704 null-Bool)))
(define-const var3402 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3402)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3402!1 String)
(assert (= var3402!1 ""))
(assert true)
(define-const var462 String (append/672562846 var3402!1 "Cannot get a ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get a ") 
(declare-const var3402!2 String)
(assert (= var3402!2 (str.++ var3402!1 "Cannot get a ")))
(assert true)
(define-const var1339 String (append/-1031950772 var462 (cast-from-var12-to-var2205 var2296))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var462!1 String)
(assert (str.prefixof var462 var462!1))
(assert true)
(define-const var2674 String (append/672562846 var1339 " value from a ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" value from a ") 
(declare-const var1339!1 String)
(assert (= var1339!1 (str.++ var1339 " value from a ")))
(assert true)
(define-const var2931 String (append/-1031950772 var2674 (cast-from-var12-to-var2205 var68))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var2674!1 String)
(assert (str.prefixof var2674 var2674!1))
(assert true)
(define-const var2780 String (append/672562846 var2931 " ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2931!1 String)
(assert (= var2931!1 (str.++ var2931 " ")))
 ; Statement: if z0 == 0 goto $r12 = "" 
(assert (= (ite var3704 1 0) 0)) ; Cond: z0 == 0 
(define-const var2765 String "") ; Statement: $r12 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var3053 String (append/672562846 var2780 var2765)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2780!1 String)
(assert (= var2780!1 (str.++ var2780 var2765)))
(assert true)
(define-const var2386 String (append/672562846 var3053 "cell")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cell") 
(declare-const var3053!1 String)
(assert (= var3053!1 (str.++ var3053 "cell")))
(assert true)
(define-const var691 String (toString/-2075883882 var2386)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var944 var3894 var3894-init) ; Statement: $r10 = new java.lang.IllegalStateException 
(assert true)
;(assert (<init>/-1092629202 var944 var691)) ; Statement: specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11) 

(declare-const var944!1 var3894)
(declare-const var691!1 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var12-to-var2205=([org.apache.poi.ss.usermodel.CellType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3894-init=([], java.lang.IllegalStateException), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var12=org.apache.poi.ss.usermodel.CellType, var2296=r1, var68=r4, var3704=z0, var3402=$r0, var462=$r2, var2205=java.lang.Object, var1339=$r3, var2674=$r5, var2931=$r6, var2780=$r7, var2765=$r12, var3053=$r8, var2386=$r9, var691=$r11, var3894=java.lang.IllegalStateException, var944=$r10}
; {org.apache.poi.ss.usermodel.CellType=var12, r1=var2296, r4=var68, z0=var3704, $r0=var3402, $r2=var462, java.lang.Object=var2205, $r3=var1339, $r5=var2674, $r6=var2931, $r7=var2780, $r12=var2765, $r8=var3053, $r9=var2386, $r11=var691, java.lang.IllegalStateException=var3894, $r10=var944}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.apache.poi.ss.usermodel.CellType;	r4 := @parameter1: org.apache.poi.ss.usermodel.CellType;	z0 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get a ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" value from a ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	if z0 == 0 goto $r12 = "";	$r12 = "";	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cell");	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new java.lang.IllegalStateException;	specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11);	return $r10
;block_num 3
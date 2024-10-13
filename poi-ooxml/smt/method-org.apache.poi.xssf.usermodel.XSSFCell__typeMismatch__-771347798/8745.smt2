(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1068 0)
(declare-sort var473 0)
(declare-sort var135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var473) String)
(declare-fun cast-from-var1068-to-var473 (var1068) var473)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var135-init () var135)
(declare-fun <init>/-1092629202 (var135 String) void)
(declare-const null-var1068 var1068)
(declare-const null-Bool Bool)
(declare-const var949 var1068) ; Statement: r1 := @parameter0: org.apache.poi.ss.usermodel.CellType 
(assert (not (= var949 null-var1068)))
(declare-const var3883 var1068) ; Statement: r4 := @parameter1: org.apache.poi.ss.usermodel.CellType 
(assert (not (= var3883 null-var1068)))
(declare-const var935 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var935 null-Bool)))
(define-const var3248 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3248)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3248!1 String)
(assert (= var3248!1 ""))
(assert true)
(define-const var1310 String (append/672562846 var3248!1 "Cannot get a ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get a ") 
(declare-const var3248!2 String)
(assert (= var3248!2 (str.++ var3248!1 "Cannot get a ")))
(assert true)
(define-const var325 String (append/-1031950772 var1310 (cast-from-var1068-to-var473 var949))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1310!1 String)
(assert (str.prefixof var1310 var1310!1))
(assert true)
(define-const var1768 String (append/672562846 var325 " value from a ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" value from a ") 
(declare-const var325!1 String)
(assert (= var325!1 (str.++ var325 " value from a ")))
(assert true)
(define-const var1493 String (append/-1031950772 var1768 (cast-from-var1068-to-var473 var3883))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var1768!1 String)
(assert (str.prefixof var1768 var1768!1))
(assert true)
(define-const var739 String (append/672562846 var1493 " ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1493!1 String)
(assert (= var1493!1 (str.++ var1493 " ")))
 ; Statement: if z0 == 0 goto $r12 = "" 
(assert (not (= (ite var935 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var393 String "formula ") ; Statement: $r12 = "formula " 
 ; Statement: goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1163 String (append/672562846 var739 var393)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var739!1 String)
(assert (= var739!1 (str.++ var739 var393)))
(assert true)
(define-const var3825 String (append/672562846 var1163 "cell")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cell") 
(declare-const var1163!1 String)
(assert (= var1163!1 (str.++ var1163 "cell")))
(assert true)
(define-const var634 String (toString/-2075883882 var3825)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2883 var135 var135-init) ; Statement: $r10 = new java.lang.IllegalStateException 
(assert true)
;(assert (<init>/-1092629202 var2883 var634)) ; Statement: specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11) 

(declare-const var2883!1 var135)
(declare-const var634!1 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1068-to-var473=([org.apache.poi.ss.usermodel.CellType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var135-init=([], java.lang.IllegalStateException), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1068=org.apache.poi.ss.usermodel.CellType, var949=r1, var3883=r4, var935=z0, var3248=$r0, var1310=$r2, var473=java.lang.Object, var325=$r3, var1768=$r5, var1493=$r6, var739=$r7, var393=$r12, var1163=$r8, var3825=$r9, var634=$r11, var135=java.lang.IllegalStateException, var2883=$r10}
; {org.apache.poi.ss.usermodel.CellType=var1068, r1=var949, r4=var3883, z0=var935, $r0=var3248, $r2=var1310, java.lang.Object=var473, $r3=var325, $r5=var1768, $r6=var1493, $r7=var739, $r12=var393, $r8=var1163, $r9=var3825, $r11=var634, java.lang.IllegalStateException=var135, $r10=var2883}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.apache.poi.ss.usermodel.CellType;	r4 := @parameter1: org.apache.poi.ss.usermodel.CellType;	z0 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get a ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" value from a ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	if z0 == 0 goto $r12 = "";	$r12 = "formula ";	goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cell");	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new java.lang.IllegalStateException;	specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11);	return $r10
;block_num 3
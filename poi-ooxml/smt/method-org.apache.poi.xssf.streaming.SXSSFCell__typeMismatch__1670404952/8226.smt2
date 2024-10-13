(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1454 0)
(declare-sort var3414 0)
(declare-sort var1932 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3414) String)
(declare-fun cast-from-var1454-to-var3414 (var1454) var3414)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1932-init () var1932)
(declare-fun <init>/-1092629202 (var1932 String) void)
(declare-const null-var1454 var1454)
(declare-const null-Bool Bool)
(declare-const var1100 var1454) ; Statement: r1 := @parameter0: org.apache.poi.ss.usermodel.CellType 
(assert (not (= var1100 null-var1454)))
(declare-const var1408 var1454) ; Statement: r4 := @parameter1: org.apache.poi.ss.usermodel.CellType 
(assert (not (= var1408 null-var1454)))
(declare-const var233 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var233 null-Bool)))
(define-const var1280 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1280)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1280!1 String)
(assert (= var1280!1 ""))
(assert true)
(define-const var2850 String (append/672562846 var1280!1 "Cannot get a ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get a ") 
(declare-const var1280!2 String)
(assert (= var1280!2 (str.++ var1280!1 "Cannot get a ")))
(assert true)
(define-const var3468 String (append/-1031950772 var2850 (cast-from-var1454-to-var3414 var1100))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2850!1 String)
(assert (str.prefixof var2850 var2850!1))
(assert true)
(define-const var2972 String (append/672562846 var3468 " value from a ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" value from a ") 
(declare-const var3468!1 String)
(assert (= var3468!1 (str.++ var3468 " value from a ")))
(assert true)
(define-const var158 String (append/-1031950772 var2972 (cast-from-var1454-to-var3414 var1408))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var2972!1 String)
(assert (str.prefixof var2972 var2972!1))
(assert true)
(define-const var3569 String (append/672562846 var158 " ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var158!1 String)
(assert (= var158!1 (str.++ var158 " ")))
 ; Statement: if z0 == 0 goto $r12 = "" 
(assert (= (ite var233 1 0) 0)) ; Cond: z0 == 0 
(define-const var1957 String "") ; Statement: $r12 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var669 String (append/672562846 var3569 var1957)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3569!1 String)
(assert (= var3569!1 (str.++ var3569 var1957)))
(assert true)
(define-const var2048 String (append/672562846 var669 "cell")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cell") 
(declare-const var669!1 String)
(assert (= var669!1 (str.++ var669 "cell")))
(assert true)
(define-const var457 String (toString/-2075883882 var2048)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2732 var1932 var1932-init) ; Statement: $r10 = new java.lang.IllegalStateException 
(assert true)
;(assert (<init>/-1092629202 var2732 var457)) ; Statement: specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11) 

(declare-const var2732!1 var1932)
(declare-const var457!1 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1454-to-var3414=([org.apache.poi.ss.usermodel.CellType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1932-init=([], java.lang.IllegalStateException), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1454=org.apache.poi.ss.usermodel.CellType, var1100=r1, var1408=r4, var233=z0, var1280=$r0, var2850=$r2, var3414=java.lang.Object, var3468=$r3, var2972=$r5, var158=$r6, var3569=$r7, var1957=$r12, var669=$r8, var2048=$r9, var457=$r11, var1932=java.lang.IllegalStateException, var2732=$r10}
; {org.apache.poi.ss.usermodel.CellType=var1454, r1=var1100, r4=var1408, z0=var233, $r0=var1280, $r2=var2850, java.lang.Object=var3414, $r3=var3468, $r5=var2972, $r6=var158, $r7=var3569, $r12=var1957, $r8=var669, $r9=var2048, $r11=var457, java.lang.IllegalStateException=var1932, $r10=var2732}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.apache.poi.ss.usermodel.CellType;	r4 := @parameter1: org.apache.poi.ss.usermodel.CellType;	z0 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get a ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" value from a ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	if z0 == 0 goto $r12 = "";	$r12 = "";	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cell");	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new java.lang.IllegalStateException;	specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11);	return $r10
;block_num 3
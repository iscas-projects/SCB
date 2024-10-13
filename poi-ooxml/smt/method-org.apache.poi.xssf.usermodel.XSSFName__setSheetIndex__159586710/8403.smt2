(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2193 0)
(declare-sort var1318 0)
(declare-sort var1095 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _workbook/-35664305 (var2193) var1318)
(declare-fun getNumberOfSheets/-444742460 (var1318) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1095-init () var1095)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1095 String) void)
(declare-const null-var2193 var2193)
(declare-const null-Int Int)
(declare-const var3569 var2193) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFName 
(assert (not (= var3569 null-var2193)))
(declare-const var3134 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var3134 null-Int)))
(define-const var325 var1318 (_workbook/-35664305 var3569)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFName: org.apache.poi.xssf.usermodel.XSSFWorkbook _workbook> 
(assert true)
(define-const var3162 Int (getNumberOfSheets/-444742460 var325)) ; Statement: $i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getNumberOfSheets()>() 
(define-const var1513 Int (- var3162 1)) ; Statement: i1 = $i0 - 1 
(define-const var2436 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i2 < $i5 goto $r19 = new java.lang.IllegalArgumentException 
(assert (< var3134 var2436)) ; Cond: i2 < $i5 
(define-const var1415 var1095 var1095-init) ; Statement: $r19 = new java.lang.IllegalArgumentException 
(define-const var58 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var58)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var58!1 String)
(assert (= var58!1 ""))
(assert true)
(define-const var2153 String (append/672562846 var58!1 "Sheet index (")) ; Statement: $r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sheet index (") 
(declare-const var58!2 String)
(assert (= var58!2 (str.++ var58!1 "Sheet index (")))
(assert true)
(define-const var2866 String (append/-1001720160 var2153 var3134)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var2153!1 String)
(assert (str.prefixof var2153 var2153!1))
(assert true)
(define-const var2844 String (append/672562846 var2866 ") is out of range")) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") is out of range") 
(declare-const var2866!1 String)
(assert (= var2866!1 (str.++ var2866 ") is out of range")))
(define-const var727 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i1 != $i7 goto $r18 = new java.lang.StringBuilder 
(assert (not (= var1513 var727))) ; Cond: i1 != $i7 
(define-const var3839 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3839)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3839!1 String)
(assert (= var3839!1 ""))
(assert true)
(define-const var3347 String (append/672562846 var3839!1 " (0..")) ; Statement: $r7 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (0..") 
(declare-const var3839!2 String)
(assert (= var3839!2 (str.++ var3839!1 " (0..")))
(assert true)
(define-const var1280 String (append/-1001720160 var3347 var1513)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3347!1 String)
(assert (str.prefixof var3347 var3347!1))
(assert true)
(define-const var3427 String (append/672562846 var1280 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1280!1 String)
(assert (= var1280!1 (str.++ var1280 ")")))
(assert true)
(define-const var3850 String (toString/-2075883882 var3427)) ; Statement: $r16 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1640 String (append/672562846 var2844 var3850)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var2844!1 String)
(assert (= var2844!1 (str.++ var2844 var3850)))
(assert true)
(define-const var981 String (toString/-2075883882 var1640)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1415 var981)) ; Statement: specialinvoke $r19.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var1415!1 var1095)
(declare-const var981!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {_workbook/-35664305=([org.apache.poi.xssf.usermodel.XSSFName], org.apache.poi.xssf.usermodel.XSSFWorkbook), getNumberOfSheets/-444742460=([org.apache.poi.xssf.usermodel.XSSFWorkbook], int), cast-from-Int-to-Int=([int], int), var1095-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2193=org.apache.poi.xssf.usermodel.XSSFName, var3569=r0, var3134=i2, var1318=org.apache.poi.xssf.usermodel.XSSFWorkbook, var325=$r1, var3162=$i0, var1513=i1, var2436=$i5, var1095=java.lang.IllegalArgumentException, var1415=$r19, var58=$r17, var2153=$r4, var2866=$r5, var2844=$r10, var727=$i7, var3839=$r18, var3347=$r7, var1280=$r8, var3427=$r9, var3850=$r16, var1640=$r11, var981=$r12}
; {org.apache.poi.xssf.usermodel.XSSFName=var2193, r0=var3569, i2=var3134, org.apache.poi.xssf.usermodel.XSSFWorkbook=var1318, $r1=var325, $i0=var3162, i1=var1513, $i5=var2436, java.lang.IllegalArgumentException=var1095, $r19=var1415, $r17=var58, $r4=var2153, $r5=var2866, $r10=var2844, $i7=var727, $r18=var3839, $r7=var3347, $r8=var1280, $r9=var3427, $r16=var3850, $r11=var1640, $r12=var981}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFName;	i2 := @parameter0: int;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFName: org.apache.poi.xssf.usermodel.XSSFWorkbook _workbook>;	$i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getNumberOfSheets()>();	i1 = $i0 - 1;	$i5 = (int) -1;	if i2 < $i5 goto $r19 = new java.lang.IllegalArgumentException;	$r19 = new java.lang.IllegalArgumentException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sheet index (");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") is out of range");	$i7 = (int) -1;	if i1 != $i7 goto $r18 = new java.lang.StringBuilder;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (0..");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r16 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r19
;block_num 4
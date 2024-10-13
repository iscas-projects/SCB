(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1056 0)
(declare-sort var1382 0)
(declare-sort var3098 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _workbook/-35664305 (var1056) var1382)
(declare-fun getNumberOfSheets/-444742460 (var1382) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3098-init () var3098)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3098 String) void)
(declare-const null-var1056 var1056)
(declare-const null-Int Int)
(declare-const var2840 var1056) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFName 
(assert (not (= var2840 null-var1056)))
(declare-const var392 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var392 null-Int)))
(define-const var2331 var1382 (_workbook/-35664305 var2840)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFName: org.apache.poi.xssf.usermodel.XSSFWorkbook _workbook> 
(assert true)
(define-const var1761 Int (getNumberOfSheets/-444742460 var2331)) ; Statement: $i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getNumberOfSheets()>() 
(define-const var2026 Int (- var1761 1)) ; Statement: i1 = $i0 - 1 
(define-const var664 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i2 < $i5 goto $r19 = new java.lang.IllegalArgumentException 
(assert (< var392 var664)) ; Cond: i2 < $i5 
(define-const var2608 var3098 var3098-init) ; Statement: $r19 = new java.lang.IllegalArgumentException 
(define-const var698 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var698)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var698!1 String)
(assert (= var698!1 ""))
(assert true)
(define-const var288 String (append/672562846 var698!1 "Sheet index (")) ; Statement: $r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sheet index (") 
(declare-const var698!2 String)
(assert (= var698!2 (str.++ var698!1 "Sheet index (")))
(assert true)
(define-const var1765 String (append/-1001720160 var288 var392)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var288!1 String)
(assert (str.prefixof var288 var288!1))
(assert true)
(define-const var486 String (append/672562846 var1765 ") is out of range")) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") is out of range") 
(declare-const var1765!1 String)
(assert (= var1765!1 (str.++ var1765 ") is out of range")))
(define-const var3722 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i1 != $i7 goto $r18 = new java.lang.StringBuilder 
(assert (not (not (= var2026 var3722)))) ; Negate: Cond: i1 != $i7  
(define-const var3063 String "") ; Statement: $r16 = "" 
 ; Statement: goto [?= $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16)] 
(assert true) ; Non Conditional
(assert true)
(define-const var790 String (append/672562846 var486 var3063)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var486!1 String)
(assert (= var486!1 (str.++ var486 var3063)))
(assert true)
(define-const var2531 String (toString/-2075883882 var790)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2608 var2531)) ; Statement: specialinvoke $r19.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var2608!1 var3098)
(declare-const var2531!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {_workbook/-35664305=([org.apache.poi.xssf.usermodel.XSSFName], org.apache.poi.xssf.usermodel.XSSFWorkbook), getNumberOfSheets/-444742460=([org.apache.poi.xssf.usermodel.XSSFWorkbook], int), cast-from-Int-to-Int=([int], int), var3098-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1056=org.apache.poi.xssf.usermodel.XSSFName, var2840=r0, var392=i2, var1382=org.apache.poi.xssf.usermodel.XSSFWorkbook, var2331=$r1, var1761=$i0, var2026=i1, var664=$i5, var3098=java.lang.IllegalArgumentException, var2608=$r19, var698=$r17, var288=$r4, var1765=$r5, var486=$r10, var3722=$i7, var3063=$r16, var790=$r11, var2531=$r12}
; {org.apache.poi.xssf.usermodel.XSSFName=var1056, r0=var2840, i2=var392, org.apache.poi.xssf.usermodel.XSSFWorkbook=var1382, $r1=var2331, $i0=var1761, i1=var2026, $i5=var664, java.lang.IllegalArgumentException=var3098, $r19=var2608, $r17=var698, $r4=var288, $r5=var1765, $r10=var486, $i7=var3722, $r16=var3063, $r11=var790, $r12=var2531}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFName;	i2 := @parameter0: int;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFName: org.apache.poi.xssf.usermodel.XSSFWorkbook _workbook>;	$i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getNumberOfSheets()>();	i1 = $i0 - 1;	$i5 = (int) -1;	if i2 < $i5 goto $r19 = new java.lang.IllegalArgumentException;	$r19 = new java.lang.IllegalArgumentException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sheet index (");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") is out of range");	$i7 = (int) -1;	if i1 != $i7 goto $r18 = new java.lang.StringBuilder;	$r16 = "";	goto [?= $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16)];	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r19
;block_num 4
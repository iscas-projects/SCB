(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3788 0)
(declare-sort var657 0)
(declare-sort var3590 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun sheets/-433134786 (var3788) var657)
(declare-fun var657_size/-959786421 (var657) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getSheet/-1213929324 (var3788 String) var3590)
(declare-fun createSheet/179007908 (var3788 String) var3590)
(declare-const null-var3788 var3788)
(declare-const null-var3590 var3590)
(declare-const var1316 var3788) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var1316 null-var3788)))
(define-const var1729 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1729)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1729!1 String)
(assert (= var1729!1 ""))
(assert true)
(define-const var836 String (append/672562846 var1729!1 "Sheet")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sheet") 
(declare-const var1729!2 String)
(assert (= var1729!2 (str.++ var1729!1 "Sheet")))
(define-const var996 var657 (sheets/-433134786 var1316)) ; Statement: $r2 = r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List sheets> 
(define-const var1085 Int (var657_size/-959786421 var996)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
(assert true)
(define-const var3491 String (append/-1001720160 var836 var1085)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var836!1 String)
(assert (str.prefixof var836 var836!1))
(assert true)
(define-const var1534 String (toString/-2075883882 var3491)) ; Statement: r10 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3406 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1255 var3590 (getSheet/-1213929324 var1316 var1534)) ; Statement: $r5 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFSheet getSheet(java.lang.String)>(r10) 
 ; Statement: if $r5 == null goto $r6 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFSheet createSheet(java.lang.String)>(r10) 
(assert (= var1255 null-var3590)) ; Cond: $r5 == null 
(assert true)
(define-const var2054 var3590 (createSheet/179007908 var1316 var1534)) ; Statement: $r6 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFSheet createSheet(java.lang.String)>(r10) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), sheets/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], java.util.List), var657_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getSheet/-1213929324=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String], org.apache.poi.xssf.usermodel.XSSFSheet), createSheet/179007908=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String], org.apache.poi.xssf.usermodel.XSSFSheet)}
; {var3788=org.apache.poi.xssf.usermodel.XSSFWorkbook, var1316=r1, var1729=$r0, var836=$r3, var657=java.util.List, var996=$r2, var1085=$i0, var3491=$r4, var1534=r10, var3406=i1, var3590=org.apache.poi.xssf.usermodel.XSSFSheet, var1255=$r5, var2054=$r6}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var3788, r1=var1316, $r0=var1729, $r3=var836, java.util.List=var657, $r2=var996, $i0=var1085, $r4=var3491, r10=var1534, i1=var3406, org.apache.poi.xssf.usermodel.XSSFSheet=var3590, $r5=var1255, $r6=var2054}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sheet");	$r2 = r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List sheets>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	r10 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	i1 = 0;	$r5 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFSheet getSheet(java.lang.String)>(r10);	if $r5 == null goto $r6 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFSheet createSheet(java.lang.String)>(r10);	$r6 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFSheet createSheet(java.lang.String)>(r10);	return $r6
;block_num 3
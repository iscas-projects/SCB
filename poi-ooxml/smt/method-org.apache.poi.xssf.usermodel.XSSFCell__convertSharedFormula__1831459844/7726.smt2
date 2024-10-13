(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3362 0)
(declare-sort var1644 0)
(declare-sort var3296 0)
(declare-sort var2958 0)
(declare-sort var750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSheet/1494324359 (var3362) var3296)
(declare-fun getSharedFormula/1971024200 (var3296 Int) var2958)
(declare-fun var750-init () var750)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var750 String) void)
(declare-const null-var3362 var3362)
(declare-const null-Int Int)
(declare-const null-var1644 var1644)
(declare-const null-var2958 var2958)
(declare-const var2564 var3362) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell 
(assert (not (= var2564 null-var3362)))
(declare-const var3139 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3139 null-Int)))
(declare-const var298 var1644) ; Statement: r9 := @parameter1: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook 
(assert (not (= var298 null-var1644)))
(assert true)
(define-const var2343 var3296 (getSheet/1494324359 var2564)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.xssf.usermodel.XSSFSheet getSheet()>() 
(assert true)
(define-const var3680 var2958 (getSharedFormula/1971024200 var2343 var3139)) ; Statement: r2 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula getSharedFormula(int)>(i0) 
 ; Statement: if r2 != null goto r3 = interfaceinvoke r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula: java.lang.String getStringValue()>() 
(assert (not (not (= var3680 null-var2958)))) ; Negate: Cond: r2 != null  
(define-const var122 var750 var750-init) ; Statement: $r14 = new java.lang.IllegalStateException 
(define-const var554 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var554)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var554!1 String)
(assert (= var554!1 ""))
(assert true)
(define-const var3844 String (append/672562846 var554!1 "Master cell of a shared formula with sid=")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Master cell of a shared formula with sid=") 
(declare-const var554!2 String)
(assert (= var554!2 (str.++ var554!1 "Master cell of a shared formula with sid=")))
(assert true)
(define-const var1711 String (append/-1001720160 var3844 var3139)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3844!1 String)
(assert (str.prefixof var3844 var3844!1))
(assert true)
(define-const var3205 String (append/672562846 var1711 " was not found")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was not found") 
(declare-const var1711!1 String)
(assert (= var1711!1 (str.++ var1711 " was not found")))
(assert true)
(define-const var2805 String (toString/-2075883882 var3205)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var122 var2805)) ; Statement: specialinvoke $r14.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r19) 

(declare-const var122!1 var750)
(declare-const var2805!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getSheet/1494324359=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.xssf.usermodel.XSSFSheet), getSharedFormula/1971024200=([org.apache.poi.xssf.usermodel.XSSFSheet, int], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula), var750-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3362=org.apache.poi.xssf.usermodel.XSSFCell, var2564=r0, var3139=i0, var1644=org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook, var298=r9, var3296=org.apache.poi.xssf.usermodel.XSSFSheet, var2343=r1, var2958=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula, var3680=r2, var750=java.lang.IllegalStateException, var122=$r14, var554=$r15, var3844=$r16, var1711=$r17, var3205=$r18, var2805=$r19}
; {org.apache.poi.xssf.usermodel.XSSFCell=var3362, r0=var2564, i0=var3139, org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook=var1644, r9=var298, org.apache.poi.xssf.usermodel.XSSFSheet=var3296, r1=var2343, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula=var2958, r2=var3680, java.lang.IllegalStateException=var750, $r14=var122, $r15=var554, $r16=var3844, $r17=var1711, $r18=var3205, $r19=var2805}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell;	i0 := @parameter0: int;	r9 := @parameter1: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook;	r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.xssf.usermodel.XSSFSheet getSheet()>();	r2 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula getSharedFormula(int)>(i0);	if r2 != null goto r3 = interfaceinvoke r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula: java.lang.String getStringValue()>();	$r14 = new java.lang.IllegalStateException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Master cell of a shared formula with sid=");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was not found");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r19);	throw $r14
;block_num 2
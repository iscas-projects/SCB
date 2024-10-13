(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var532 0)
(declare-sort var3184 0)
(declare-sort var1376 0)
(declare-sort var2392 0)
(declare-sort var1939 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSheet/1494324359 (var532) var3184)
(declare-fun getFirstCellInArrayFormula/-558682336 (var3184 var532) var532)
(declare-fun var1376-init () var1376)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2392-init () var2392)
(declare-fun cast-from-var532-to-var1939 (var532) var1939)
(declare-fun <init>/1524963672 (var2392 var1939) void)
(declare-fun formatAsString/583597915 (var2392) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1376 String) void)
(declare-const null-var532 var532)
(declare-const var2284 var532) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell 
(assert (not (= var2284 null-var532)))
(assert true)
(define-const var117 var3184 (getSheet/1494324359 var2284)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.xssf.usermodel.XSSFSheet getSheet()>() 
(assert true)
(define-const var2299 var532 (getFirstCellInArrayFormula/-558682336 var117 var2284)) ; Statement: r2 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFCell getFirstCellInArrayFormula(org.apache.poi.xssf.usermodel.XSSFCell)>(r0) 
 ; Statement: if r2 != null goto $r3 = r2.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell> 
(assert (not (not (= var2299 null-var532)))) ; Negate: Cond: r2 != null  
(define-const var2423 var1376 var1376-init) ; Statement: $r17 = new java.lang.IllegalStateException 
(define-const var908 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var908)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var908!1 String)
(assert (= var908!1 ""))
(assert true)
(define-const var3275 String (append/672562846 var908!1 "Cell ")) ; Statement: $r11 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cell ") 
(declare-const var908!2 String)
(assert (= var908!2 (str.++ var908!1 "Cell ")))
(define-const var3019 var2392 var2392-init) ; Statement: $r16 = new org.apache.poi.ss.util.CellReference 
(define-const var183 var1939 (cast-from-var532-to-var1939 var2284)) ; Statement: $r18 = (org.apache.poi.ss.usermodel.Cell) r0 
(assert true)
;(assert (<init>/1524963672 var3019 var183)) ; Statement: specialinvoke $r16.<org.apache.poi.ss.util.CellReference: void <init>(org.apache.poi.ss.usermodel.Cell)>($r18) 

(declare-const var3019!1 var2392)
(declare-const var183!1 var1939)
(assert true)
(define-const var3050 String (formatAsString/583597915 var3019!1)) ; Statement: $r10 = virtualinvoke $r16.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>() 
(assert true)
(define-const var1941 String (append/672562846 var3275 var3050)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3275!1 String)
(assert (= var3275!1 (str.++ var3275 var3050)))
(assert true)
(define-const var762 String (append/672562846 var1941 " is not part of an array formula.")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not part of an array formula.") 
(declare-const var1941!1 String)
(assert (= var1941!1 (str.++ var1941 " is not part of an array formula.")))
(assert true)
(define-const var624 String (toString/-2075883882 var762)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2423 var624)) ; Statement: specialinvoke $r17.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r14) 

(declare-const var2423!1 var1376)
(declare-const var624!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getSheet/1494324359=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.xssf.usermodel.XSSFSheet), getFirstCellInArrayFormula/-558682336=([org.apache.poi.xssf.usermodel.XSSFSheet, org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.xssf.usermodel.XSSFCell), var1376-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2392-init=([], org.apache.poi.ss.util.CellReference), cast-from-var532-to-var1939=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.ss.usermodel.Cell), <init>/1524963672=([org.apache.poi.ss.util.CellReference, org.apache.poi.ss.usermodel.Cell], void), formatAsString/583597915=([org.apache.poi.ss.util.CellReference], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var532=org.apache.poi.xssf.usermodel.XSSFCell, var2284=r0, var3184=org.apache.poi.xssf.usermodel.XSSFSheet, var117=$r1, var2299=r2, var1376=java.lang.IllegalStateException, var2423=$r17, var908=$r15, var3275=$r11, var2392=org.apache.poi.ss.util.CellReference, var3019=$r16, var1939=org.apache.poi.ss.usermodel.Cell, var183=$r18, var3050=$r10, var1941=$r12, var762=$r13, var624=$r14}
; {org.apache.poi.xssf.usermodel.XSSFCell=var532, r0=var2284, org.apache.poi.xssf.usermodel.XSSFSheet=var3184, $r1=var117, r2=var2299, java.lang.IllegalStateException=var1376, $r17=var2423, $r15=var908, $r11=var3275, org.apache.poi.ss.util.CellReference=var2392, $r16=var3019, org.apache.poi.ss.usermodel.Cell=var1939, $r18=var183, $r10=var3050, $r12=var1941, $r13=var762, $r14=var624}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.xssf.usermodel.XSSFSheet getSheet()>();	r2 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFCell getFirstCellInArrayFormula(org.apache.poi.xssf.usermodel.XSSFCell)>(r0);	if r2 != null goto $r3 = r2.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;	$r17 = new java.lang.IllegalStateException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cell ");	$r16 = new org.apache.poi.ss.util.CellReference;	$r18 = (org.apache.poi.ss.usermodel.Cell) r0;	specialinvoke $r16.<org.apache.poi.ss.util.CellReference: void <init>(org.apache.poi.ss.usermodel.Cell)>($r18);	$r10 = virtualinvoke $r16.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not part of an array formula.");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r14);	throw $r17
;block_num 2
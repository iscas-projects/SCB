(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3301 0)
(declare-sort var2661 0)
(declare-sort var3993 0)
(declare-sort var2767 0)
(declare-sort var1822 0)
(declare-sort var3433 0)
(declare-sort var957 0)
(declare-sort var3850 0)
(declare-sort var1398 0)
(declare-sort var185 0)
(declare-sort var132 0)
(declare-sort var3499 0)
(declare-sort var1738 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSheet/-1571924661 (var3301) var2661)
(declare-fun getWorkbook/803238250 (var2661) var3993)
(declare-fun var2767_getInstance/119930044 () var2767)
(declare-fun getPackagePart/-804310696 (var3433) var1822)
(declare-fun cast-from-var3301-to-var3433 (var3301) var3433)
(declare-fun getPackage/-674655752 (var1822) var957)
(declare-fun getContentType/-305056247 (var1398) String)
(declare-fun cast-from-var3850-to-var1398 (var3850) var1398)
(declare-fun getPartsByContentType/1630629848 (var957 String) var185)
(declare-fun size/-1863229846 (var185) Int)
(declare-fun var3499-init () var3499)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var3499 String var1738) void)
(declare-fun cast-from-var132-to-var1738 (var132) var1738)
(declare-const null-var3301 var3301)
(declare-const null-var3993 var3993)
(declare-const var3850-CHART var3850)
(declare-const null-var132 var132)
(declare-const var3512 var3301) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFDrawing 
(assert (not (= var3512 null-var3301)))
(assert true)
(define-const var876 var2661 (getSheet/-1571924661 var3512)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: org.apache.poi.xssf.usermodel.XSSFSheet getSheet()>() 
(assert true)
(define-const var2568 var3993 (getWorkbook/803238250 var876)) ; Statement: r2 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
 ; Statement: if r2 != null goto $r17 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFFactory getXssfFactory()>() 
(assert (not (not (= var2568 null-var3993)))) ; Negate: Cond: r2 != null  
(define-const var2485 var2767 var2767_getInstance/119930044) ; Statement: $r17 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFFactory: org.apache.poi.xssf.usermodel.XSSFFactory getInstance()>() 
 ; Statement: goto [?= r3 = $r17] 
(assert true) ; Non Conditional
(define-const var3006 var2767 var2485) ; Statement: r3 = $r17 
(assert true)
(define-const var623 var1822 (getPackagePart/-804310696 (cast-from-var3301-to-var3433 var3512))) ; Statement: $r4 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>() 
(assert true)
(define-const var517 var957 (getPackage/-674655752 var623)) ; Statement: $r10 = virtualinvoke $r4.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.OPCPackage getPackage()>() 
(define-const var2411 var3850 var3850-CHART) ; Statement: $r5 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation CHART> 
(assert true)
(define-const var1260 String (getContentType/-305056247 (cast-from-var3850-to-var1398 var2411))) ; Statement: $r6 = virtualinvoke $r5.<org.apache.poi.xssf.usermodel.XSSFRelation: java.lang.String getContentType()>() 
(assert true)
(define-const var2861 var185 (getPartsByContentType/1630629848 var517 var1260)) ; Statement: $r7 = virtualinvoke $r10.<org.apache.poi.openxml4j.opc.OPCPackage: java.util.ArrayList getPartsByContentType(java.lang.String)>($r6) 
(assert true)
(define-const var1325 Int (size/-1863229846 var2861)) ; Statement: $i0 = virtualinvoke $r7.<java.util.ArrayList: int size()>() 
(define-const var2859 Int (+ var1325 1)) ; Statement: i1 = $i0 + 1 
(assert true) ; Non Conditional
(define-const var3941 var3850 var3850-CHART) ; Statement: $r18 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation CHART> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3068 var132) ; Statement: $r11 := @caughtexception 
(assert (not (= var3068 null-var132)))
(define-const var2029 var3499 var3499-init) ; Statement: $r12 = new java.lang.IllegalStateException 
(define-const var731 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var731)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var731!1 String)
(assert (= var731!1 ""))
(assert true)
(define-const var2459 String (append/672562846 var731!1 "Failed for ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed for ") 
(declare-const var731!2 String)
(assert (= var731!2 (str.++ var731!1 "Failed for ")))
(assert true)
(define-const var293 String (append/-1001720160 var2459 var2859)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2459!1 String)
(assert (str.prefixof var2459 var2459!1))
(assert true)
(define-const var1677 String (toString/-2075883882 var293)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var2029 var1677 (cast-from-var132-to-var1738 var3068))) ; Statement: specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r11) 

(declare-const var2029!1 var3499)
(declare-const var1677!1 String)
(declare-const var3068!1 var132)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSheet/-1571924661=([org.apache.poi.xssf.usermodel.XSSFDrawing], org.apache.poi.xssf.usermodel.XSSFSheet), getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), var2767_getInstance/119930044=([], org.apache.poi.xssf.usermodel.XSSFFactory), getPackagePart/-804310696=([org.apache.poi.ooxml.POIXMLDocumentPart], org.apache.poi.openxml4j.opc.PackagePart), cast-from-var3301-to-var3433=([org.apache.poi.xssf.usermodel.XSSFDrawing], org.apache.poi.ooxml.POIXMLDocumentPart), getPackage/-674655752=([org.apache.poi.openxml4j.opc.PackagePart], org.apache.poi.openxml4j.opc.OPCPackage), getContentType/-305056247=([org.apache.poi.ooxml.POIXMLRelation], java.lang.String), cast-from-var3850-to-var1398=([org.apache.poi.xssf.usermodel.XSSFRelation], org.apache.poi.ooxml.POIXMLRelation), getPartsByContentType/1630629848=([org.apache.poi.openxml4j.opc.OPCPackage, java.lang.String], java.util.ArrayList), size/-1863229846=([java.util.ArrayList], int), var3499-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void), cast-from-var132-to-var1738=([org.apache.poi.openxml4j.exceptions.InvalidFormatException], java.lang.Throwable)}
; {var3301=org.apache.poi.xssf.usermodel.XSSFDrawing, var3512=r0, var2661=org.apache.poi.xssf.usermodel.XSSFSheet, var876=$r1, var3993=org.apache.poi.xssf.usermodel.XSSFWorkbook, var2568=r2, var2767=org.apache.poi.xssf.usermodel.XSSFFactory, var2485=$r17, var3006=r3, var1822=org.apache.poi.openxml4j.opc.PackagePart, var3433=org.apache.poi.ooxml.POIXMLDocumentPart, var623=$r4, var957=org.apache.poi.openxml4j.opc.OPCPackage, var517=$r10, var3850=org.apache.poi.xssf.usermodel.XSSFRelation, var2411=$r5, var1398=org.apache.poi.ooxml.POIXMLRelation, var1260=$r6, var185=java.util.ArrayList, var2861=$r7, var1325=$i0, var2859=i1, var3941=$r18, var132=org.apache.poi.openxml4j.exceptions.InvalidFormatException, var3068=$r11, var3499=java.lang.IllegalStateException, var2029=$r12, var731=$r13, var2459=$r14, var293=$r15, var1677=$r16, var1738=java.lang.Throwable}
; {org.apache.poi.xssf.usermodel.XSSFDrawing=var3301, r0=var3512, org.apache.poi.xssf.usermodel.XSSFSheet=var2661, $r1=var876, org.apache.poi.xssf.usermodel.XSSFWorkbook=var3993, r2=var2568, org.apache.poi.xssf.usermodel.XSSFFactory=var2767, $r17=var2485, r3=var3006, org.apache.poi.openxml4j.opc.PackagePart=var1822, org.apache.poi.ooxml.POIXMLDocumentPart=var3433, $r4=var623, org.apache.poi.openxml4j.opc.OPCPackage=var957, $r10=var517, org.apache.poi.xssf.usermodel.XSSFRelation=var3850, $r5=var2411, org.apache.poi.ooxml.POIXMLRelation=var1398, $r6=var1260, java.util.ArrayList=var185, $r7=var2861, $i0=var1325, i1=var2859, $r18=var3941, org.apache.poi.openxml4j.exceptions.InvalidFormatException=var132, $r11=var3068, java.lang.IllegalStateException=var3499, $r12=var2029, $r13=var731, $r14=var2459, $r15=var293, $r16=var1677, java.lang.Throwable=var1738}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFDrawing;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: org.apache.poi.xssf.usermodel.XSSFSheet getSheet()>();	r2 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	if r2 != null goto $r17 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFFactory getXssfFactory()>();	$r17 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFFactory: org.apache.poi.xssf.usermodel.XSSFFactory getInstance()>();	goto [?= r3 = $r17];	r3 = $r17;	$r4 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>();	$r10 = virtualinvoke $r4.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.OPCPackage getPackage()>();	$r5 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation CHART>;	$r6 = virtualinvoke $r5.<org.apache.poi.xssf.usermodel.XSSFRelation: java.lang.String getContentType()>();	$r7 = virtualinvoke $r10.<org.apache.poi.openxml4j.opc.OPCPackage: java.util.ArrayList getPartsByContentType(java.lang.String)>($r6);	$i0 = virtualinvoke $r7.<java.util.ArrayList: int size()>();	i1 = $i0 + 1;	$r18 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation CHART>;	$r11 := @caughtexception;	$r12 = new java.lang.IllegalStateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed for ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r11);	throw $r12
;block_num 5
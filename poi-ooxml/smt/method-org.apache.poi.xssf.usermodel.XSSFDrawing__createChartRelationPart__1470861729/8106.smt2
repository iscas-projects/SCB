(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var456 0)
(declare-sort var3730 0)
(declare-sort var2870 0)
(declare-sort var3338 0)
(declare-sort var1562 0)
(declare-sort var3712 0)
(declare-sort var828 0)
(declare-sort var2353 0)
(declare-sort var2198 0)
(declare-sort var2036 0)
(declare-sort var155 0)
(declare-sort var3269 0)
(declare-sort var3383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSheet/-1571924661 (var456) var3730)
(declare-fun getWorkbook/803238250 (var3730) var2870)
(declare-fun getXssfFactory/-1892579267 (var2870) var3338)
(declare-fun getPackagePart/-804310696 (var3712) var1562)
(declare-fun cast-from-var456-to-var3712 (var456) var3712)
(declare-fun getPackage/-674655752 (var1562) var828)
(declare-fun getContentType/-305056247 (var2198) String)
(declare-fun cast-from-var2353-to-var2198 (var2353) var2198)
(declare-fun getPartsByContentType/1630629848 (var828 String) var2036)
(declare-fun size/-1863229846 (var2036) Int)
(declare-fun var3269-init () var3269)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var3269 String var3383) void)
(declare-fun cast-from-var155-to-var3383 (var155) var3383)
(declare-const null-var456 var456)
(declare-const null-var2870 var2870)
(declare-const var2353-CHART var2353)
(declare-const null-var155 var155)
(declare-const var2408 var456) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFDrawing 
(assert (not (= var2408 null-var456)))
(assert true)
(define-const var2954 var3730 (getSheet/-1571924661 var2408)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: org.apache.poi.xssf.usermodel.XSSFSheet getSheet()>() 
(assert true)
(define-const var365 var2870 (getWorkbook/803238250 var2954)) ; Statement: r2 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
 ; Statement: if r2 != null goto $r17 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFFactory getXssfFactory()>() 
(assert (not (= var365 null-var2870))) ; Cond: r2 != null 
(assert true)
(define-const var3769 var3338 (getXssfFactory/-1892579267 var365)) ; Statement: $r17 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFFactory getXssfFactory()>() 
(assert true) ; Non Conditional
(define-const var3395 var3338 var3769) ; Statement: r3 = $r17 
(assert true)
(define-const var1588 var1562 (getPackagePart/-804310696 (cast-from-var456-to-var3712 var2408))) ; Statement: $r4 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>() 
(assert true)
(define-const var3653 var828 (getPackage/-674655752 var1588)) ; Statement: $r10 = virtualinvoke $r4.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.OPCPackage getPackage()>() 
(define-const var2795 var2353 var2353-CHART) ; Statement: $r5 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation CHART> 
(assert true)
(define-const var1181 String (getContentType/-305056247 (cast-from-var2353-to-var2198 var2795))) ; Statement: $r6 = virtualinvoke $r5.<org.apache.poi.xssf.usermodel.XSSFRelation: java.lang.String getContentType()>() 
(assert true)
(define-const var3561 var2036 (getPartsByContentType/1630629848 var3653 var1181)) ; Statement: $r7 = virtualinvoke $r10.<org.apache.poi.openxml4j.opc.OPCPackage: java.util.ArrayList getPartsByContentType(java.lang.String)>($r6) 
(assert true)
(define-const var1450 Int (size/-1863229846 var3561)) ; Statement: $i0 = virtualinvoke $r7.<java.util.ArrayList: int size()>() 
(define-const var2652 Int (+ var1450 1)) ; Statement: i1 = $i0 + 1 
(assert true) ; Non Conditional
(define-const var2854 var2353 var2353-CHART) ; Statement: $r18 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation CHART> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2404 var155) ; Statement: $r11 := @caughtexception 
(assert (not (= var2404 null-var155)))
(define-const var2742 var3269 var3269-init) ; Statement: $r12 = new java.lang.IllegalStateException 
(define-const var3005 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3005)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3005!1 String)
(assert (= var3005!1 ""))
(assert true)
(define-const var2901 String (append/672562846 var3005!1 "Failed for ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed for ") 
(declare-const var3005!2 String)
(assert (= var3005!2 (str.++ var3005!1 "Failed for ")))
(assert true)
(define-const var605 String (append/-1001720160 var2901 var2652)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2901!1 String)
(assert (str.prefixof var2901 var2901!1))
(assert true)
(define-const var151 String (toString/-2075883882 var605)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var2742 var151 (cast-from-var155-to-var3383 var2404))) ; Statement: specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r11) 

(declare-const var2742!1 var3269)
(declare-const var151!1 String)
(declare-const var2404!1 var155)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSheet/-1571924661=([org.apache.poi.xssf.usermodel.XSSFDrawing], org.apache.poi.xssf.usermodel.XSSFSheet), getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), getXssfFactory/-1892579267=([org.apache.poi.xssf.usermodel.XSSFWorkbook], org.apache.poi.xssf.usermodel.XSSFFactory), getPackagePart/-804310696=([org.apache.poi.ooxml.POIXMLDocumentPart], org.apache.poi.openxml4j.opc.PackagePart), cast-from-var456-to-var3712=([org.apache.poi.xssf.usermodel.XSSFDrawing], org.apache.poi.ooxml.POIXMLDocumentPart), getPackage/-674655752=([org.apache.poi.openxml4j.opc.PackagePart], org.apache.poi.openxml4j.opc.OPCPackage), getContentType/-305056247=([org.apache.poi.ooxml.POIXMLRelation], java.lang.String), cast-from-var2353-to-var2198=([org.apache.poi.xssf.usermodel.XSSFRelation], org.apache.poi.ooxml.POIXMLRelation), getPartsByContentType/1630629848=([org.apache.poi.openxml4j.opc.OPCPackage, java.lang.String], java.util.ArrayList), size/-1863229846=([java.util.ArrayList], int), var3269-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void), cast-from-var155-to-var3383=([org.apache.poi.openxml4j.exceptions.InvalidFormatException], java.lang.Throwable)}
; {var456=org.apache.poi.xssf.usermodel.XSSFDrawing, var2408=r0, var3730=org.apache.poi.xssf.usermodel.XSSFSheet, var2954=$r1, var2870=org.apache.poi.xssf.usermodel.XSSFWorkbook, var365=r2, var3338=org.apache.poi.xssf.usermodel.XSSFFactory, var3769=$r17, var3395=r3, var1562=org.apache.poi.openxml4j.opc.PackagePart, var3712=org.apache.poi.ooxml.POIXMLDocumentPart, var1588=$r4, var828=org.apache.poi.openxml4j.opc.OPCPackage, var3653=$r10, var2353=org.apache.poi.xssf.usermodel.XSSFRelation, var2795=$r5, var2198=org.apache.poi.ooxml.POIXMLRelation, var1181=$r6, var2036=java.util.ArrayList, var3561=$r7, var1450=$i0, var2652=i1, var2854=$r18, var155=org.apache.poi.openxml4j.exceptions.InvalidFormatException, var2404=$r11, var3269=java.lang.IllegalStateException, var2742=$r12, var3005=$r13, var2901=$r14, var605=$r15, var151=$r16, var3383=java.lang.Throwable}
; {org.apache.poi.xssf.usermodel.XSSFDrawing=var456, r0=var2408, org.apache.poi.xssf.usermodel.XSSFSheet=var3730, $r1=var2954, org.apache.poi.xssf.usermodel.XSSFWorkbook=var2870, r2=var365, org.apache.poi.xssf.usermodel.XSSFFactory=var3338, $r17=var3769, r3=var3395, org.apache.poi.openxml4j.opc.PackagePart=var1562, org.apache.poi.ooxml.POIXMLDocumentPart=var3712, $r4=var1588, org.apache.poi.openxml4j.opc.OPCPackage=var828, $r10=var3653, org.apache.poi.xssf.usermodel.XSSFRelation=var2353, $r5=var2795, org.apache.poi.ooxml.POIXMLRelation=var2198, $r6=var1181, java.util.ArrayList=var2036, $r7=var3561, $i0=var1450, i1=var2652, $r18=var2854, org.apache.poi.openxml4j.exceptions.InvalidFormatException=var155, $r11=var2404, java.lang.IllegalStateException=var3269, $r12=var2742, $r13=var3005, $r14=var2901, $r15=var605, $r16=var151, java.lang.Throwable=var3383}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFDrawing;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: org.apache.poi.xssf.usermodel.XSSFSheet getSheet()>();	r2 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	if r2 != null goto $r17 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFFactory getXssfFactory()>();	$r17 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFFactory getXssfFactory()>();	r3 = $r17;	$r4 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>();	$r10 = virtualinvoke $r4.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.OPCPackage getPackage()>();	$r5 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation CHART>;	$r6 = virtualinvoke $r5.<org.apache.poi.xssf.usermodel.XSSFRelation: java.lang.String getContentType()>();	$r7 = virtualinvoke $r10.<org.apache.poi.openxml4j.opc.OPCPackage: java.util.ArrayList getPartsByContentType(java.lang.String)>($r6);	$i0 = virtualinvoke $r7.<java.util.ArrayList: int size()>();	i1 = $i0 + 1;	$r18 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation CHART>;	$r11 := @caughtexception;	$r12 = new java.lang.IllegalStateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed for ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r11);	throw $r12
;block_num 5
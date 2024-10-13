(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1230 0)
(declare-sort var2496 0)
(declare-sort var3938 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun table/423986562 (var1230) var2496)
(declare-fun getCommonXpath/915087386 (var2496) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun ctXmlColumnPr/423986562 (var1230) var3938)
(declare-fun var3938_getXpath/2016344116 (var3938) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1230 var1230)
(declare-const var12 var1230) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.helpers.XSSFXmlColumnPr 
(assert (not (= var12 null-var1230)))
(define-const var2243 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2243)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2243!1 String)
(assert (= var2243!1 ""))
(define-const var2661 var2496 (table/423986562 var12)) ; Statement: $r2 = r1.<org.apache.poi.xssf.usermodel.helpers.XSSFXmlColumnPr: org.apache.poi.xssf.usermodel.XSSFTable table> 
(assert true)
(define-const var2883 String (getCommonXpath/915087386 var2661)) ; Statement: $r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFTable: java.lang.String getCommonXpath()>() 
(assert true)
(define-const var710 (Array Int String) (split/-636890950 var2883 "/")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String[] split(java.lang.String)>("/") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var2883 "/") i) (re.++ (re.* re.all) (str.to_re "/") (re.* re.all))))))
(define-const var1035 Int (getLength-Arr-String-1 var710)) ; Statement: $i0 = lengthof $r4 
(define-const var3825 Int (- var1035 1)) ; Statement: i1 = $i0 - 1 
(define-const var2517 var3938 (ctXmlColumnPr/423986562 var12)) ; Statement: $r5 = r1.<org.apache.poi.xssf.usermodel.helpers.XSSFXmlColumnPr: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXmlColumnPr ctXmlColumnPr> 
(define-const var96 String (var3938_getXpath/2016344116 var2517)) ; Statement: $r6 = interfaceinvoke $r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXmlColumnPr: java.lang.String getXpath()>() 
(assert true)
(define-const var3291 (Array Int String) (split/-636890950 var96 "/")) ; Statement: r7 = virtualinvoke $r6.<java.lang.String: java.lang.String[] split(java.lang.String)>("/") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var96 "/") i) (re.++ (re.* re.all) (str.to_re "/") (re.* re.all))))))
(define-const var1754 Int var3825) ; Statement: i3 = i1 
(assert true) ; Non Conditional
(define-const var1601 Int (getLength-Arr-String-1 var3291)) ; Statement: $i2 = lengthof r7 
 ; Statement: if i3 >= $i2 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1754 var1601)) ; Cond: i3 >= $i2 
(assert true)
(define-const var2774 String (toString/-2075883882 var2243!1)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), table/423986562=([org.apache.poi.xssf.usermodel.helpers.XSSFXmlColumnPr], org.apache.poi.xssf.usermodel.XSSFTable), getCommonXpath/915087386=([org.apache.poi.xssf.usermodel.XSSFTable], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), ctXmlColumnPr/423986562=([org.apache.poi.xssf.usermodel.helpers.XSSFXmlColumnPr], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXmlColumnPr), var3938_getXpath/2016344116=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXmlColumnPr], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1230=org.apache.poi.xssf.usermodel.helpers.XSSFXmlColumnPr, var12=r1, var2243=$r0, var2496=org.apache.poi.xssf.usermodel.XSSFTable, var2661=$r2, var2883=$r3, var710=$r4, var1035=$i0, var3825=i1, var3938=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXmlColumnPr, var2517=$r5, var96=$r6, var3291=r7, var1754=i3, var1601=$i2, var2774=$r8}
; {org.apache.poi.xssf.usermodel.helpers.XSSFXmlColumnPr=var1230, r1=var12, $r0=var2243, org.apache.poi.xssf.usermodel.XSSFTable=var2496, $r2=var2661, $r3=var2883, $r4=var710, $i0=var1035, i1=var3825, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXmlColumnPr=var3938, $r5=var2517, $r6=var96, r7=var3291, i3=var1754, $i2=var1601, $r8=var2774}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String[] split(java.lang.String)>;	<java.lang.String: java.lang.String[] split(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String[] split(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.helpers.XSSFXmlColumnPr;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.poi.xssf.usermodel.helpers.XSSFXmlColumnPr: org.apache.poi.xssf.usermodel.XSSFTable table>;	$r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFTable: java.lang.String getCommonXpath()>();	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String[] split(java.lang.String)>("/");	$i0 = lengthof $r4;	i1 = $i0 - 1;	$r5 = r1.<org.apache.poi.xssf.usermodel.helpers.XSSFXmlColumnPr: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXmlColumnPr ctXmlColumnPr>;	$r6 = interfaceinvoke $r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXmlColumnPr: java.lang.String getXpath()>();	r7 = virtualinvoke $r6.<java.lang.String: java.lang.String[] split(java.lang.String)>("/");	i3 = i1;	$i2 = lengthof r7;	if i3 >= $i2 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3
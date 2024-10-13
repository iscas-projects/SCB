(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2066 0)
(declare-sort var480 0)
(declare-sort var122 0)
(declare-sort var2157 0)
(declare-sort var1743 0)
(declare-sort var915 0)
(declare-sort var1719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2066_getT/-1894210475 (var2066) String)
(declare-fun var480_get/1088891777 (var480 var2157) var2157)
(declare-fun cast-from-String-to-var2157 (String) var2157)
(declare-fun cast-from-var2157-to-var122 (var2157) var122)
(declare-fun var2066_schemaType/1783659962 (var2066) var1743)
(declare-fun var1743_getName/-1542331349 (var1743) var915)
(declare-fun getLocalPart/-809441474 (var915) String)
(declare-fun var1719-init () var1719)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1934569527 (var1719 String) void)
(declare-const null-var2066 var2066)
(declare-const var122-LOOKUP var480)
(declare-const null-var122 var122)
(declare-const var888 var2066) ; Statement: r0 := @parameter0: com.microsoft.schemas.office.visio.x2012.main.RowType 
(assert (not (= var888 null-var2066)))
(define-const var2892 String (var2066_getT/-1894210475 var888)) ; Statement: r1 = interfaceinvoke r0.<com.microsoft.schemas.office.visio.x2012.main.RowType: java.lang.String getT()>() 
(define-const var3432 var480 var122-LOOKUP) ; Statement: $r2 = <org.apache.poi.xdgf.usermodel.section.GeometryRowTypes: java.util.Map LOOKUP> 
(define-const var2463 var2157 (var480_get/1088891777 var3432 (cast-from-String-to-var2157 var2892))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2455 var122 (cast-from-var2157-to-var122 var2463)) ; Statement: r4 = (org.apache.poi.xdgf.usermodel.section.GeometryRowTypes) $r3 
 ; Statement: if r4 != null goto $r5 = r4.<org.apache.poi.xdgf.usermodel.section.GeometryRowTypes: java.util.function.Function constructor> 
(assert (not (not (= var2455 null-var122)))) ; Negate: Cond: r4 != null  
(define-const var2438 var1743 (var2066_schemaType/1783659962 var888)) ; Statement: $r8 = interfaceinvoke r0.<com.microsoft.schemas.office.visio.x2012.main.RowType: org.apache.xmlbeans.SchemaType schemaType()>() 
(define-const var1124 var915 (var1743_getName/-1542331349 var2438)) ; Statement: $r9 = interfaceinvoke $r8.<org.apache.xmlbeans.SchemaType: javax.xml.namespace.QName getName()>() 
(assert true)
(define-const var1150 String (getLocalPart/-809441474 var1124)) ; Statement: r10 = virtualinvoke $r9.<javax.xml.namespace.QName: java.lang.String getLocalPart()>() 
(define-const var3765 var1719 var1719-init) ; Statement: $r11 = new org.apache.poi.ooxml.POIXMLException 
(define-const var95 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var95)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var95!1 String)
(assert (= var95!1 ""))
(assert true)
(define-const var2238 String (append/672562846 var95!1 "Invalid \u0027")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid \'") 
(declare-const var95!2 String)
(assert (= var95!2 (str.++ var95!1 "Invalid \u0027")))
(assert true)
(define-const var3898 String (append/672562846 var2238 var1150)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var2238!1 String)
(assert (= var2238!1 (str.++ var2238 var1150)))
(assert true)
(define-const var1973 String (append/672562846 var3898 "\u0027 name \u0027")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' name \'") 
(declare-const var3898!1 String)
(assert (= var3898!1 (str.++ var3898 "\u0027 name \u0027")))
(assert true)
(define-const var1331 String (append/672562846 var1973 var2892)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1973!1 String)
(assert (= var1973!1 (str.++ var1973 var2892)))
(assert true)
(define-const var2331 String (append/672562846 var1331 "\u0027")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1331!1 String)
(assert (= var1331!1 (str.++ var1331 "\u0027")))
(assert true)
(define-const var1291 String (toString/-2075883882 var2331)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1934569527 var3765 var1291)) ; Statement: specialinvoke $r11.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String)>($r18) 

(declare-const var3765!1 var1719)
(declare-const var1291!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2066_getT/-1894210475=([com.microsoft.schemas.office.visio.x2012.main.RowType], java.lang.String), var480_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2157=([java.lang.String], java.lang.Object), cast-from-var2157-to-var122=([java.lang.Object], org.apache.poi.xdgf.usermodel.section.GeometryRowTypes), var2066_schemaType/1783659962=([com.microsoft.schemas.office.visio.x2012.main.RowType], org.apache.xmlbeans.SchemaType), var1743_getName/-1542331349=([org.apache.xmlbeans.SchemaType], javax.xml.namespace.QName), getLocalPart/-809441474=([javax.xml.namespace.QName], java.lang.String), var1719-init=([], org.apache.poi.ooxml.POIXMLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1934569527=([org.apache.poi.ooxml.POIXMLException, java.lang.String], void)}
; {var2066=com.microsoft.schemas.office.visio.x2012.main.RowType, var888=r0, var2892=r1, var480=java.util.Map, var122=org.apache.poi.xdgf.usermodel.section.GeometryRowTypes, var3432=$r2, var2157=java.lang.Object, var2463=$r3, var2455=r4, var1743=org.apache.xmlbeans.SchemaType, var2438=$r8, var915=javax.xml.namespace.QName, var1124=$r9, var1150=r10, var1719=org.apache.poi.ooxml.POIXMLException, var3765=$r11, var95=$r12, var2238=$r13, var3898=$r14, var1973=$r15, var1331=$r16, var2331=$r17, var1291=$r18}
; {com.microsoft.schemas.office.visio.x2012.main.RowType=var2066, r0=var888, r1=var2892, java.util.Map=var480, org.apache.poi.xdgf.usermodel.section.GeometryRowTypes=var122, $r2=var3432, java.lang.Object=var2157, $r3=var2463, r4=var2455, org.apache.xmlbeans.SchemaType=var1743, $r8=var2438, javax.xml.namespace.QName=var915, $r9=var1124, r10=var1150, org.apache.poi.ooxml.POIXMLException=var1719, $r11=var3765, $r12=var95, $r13=var2238, $r14=var3898, $r15=var1973, $r16=var1331, $r17=var2331, $r18=var1291}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.microsoft.schemas.office.visio.x2012.main.RowType;	r1 = interfaceinvoke r0.<com.microsoft.schemas.office.visio.x2012.main.RowType: java.lang.String getT()>();	$r2 = <org.apache.poi.xdgf.usermodel.section.GeometryRowTypes: java.util.Map LOOKUP>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.apache.poi.xdgf.usermodel.section.GeometryRowTypes) $r3;	if r4 != null goto $r5 = r4.<org.apache.poi.xdgf.usermodel.section.GeometryRowTypes: java.util.function.Function constructor>;	$r8 = interfaceinvoke r0.<com.microsoft.schemas.office.visio.x2012.main.RowType: org.apache.xmlbeans.SchemaType schemaType()>();	$r9 = interfaceinvoke $r8.<org.apache.xmlbeans.SchemaType: javax.xml.namespace.QName getName()>();	r10 = virtualinvoke $r9.<javax.xml.namespace.QName: java.lang.String getLocalPart()>();	$r11 = new org.apache.poi.ooxml.POIXMLException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid \'");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' name \'");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String)>($r18);	throw $r11
;block_num 2
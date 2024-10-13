(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1210 0)
(declare-sort var3882 0)
(declare-sort var440 0)
(declare-sort var1054 0)
(declare-sort var1496 0)
(declare-sort var325 0)
(declare-sort var744 0)
(declare-sort var3318 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1210_getN/136693350 (var1210) String)
(declare-fun var440_get/1088891777 (var440 var1496) var1496)
(declare-fun cast-from-String-to-var1496 (String) var1496)
(declare-fun cast-from-var1496-to-var1054 (var1496) var1054)
(declare-fun var1210_schemaType/-374716795 (var1210) var325)
(declare-fun var325_getName/-1542331349 (var325) var744)
(declare-fun getLocalPart/-809441474 (var744) String)
(declare-fun var3318-init () var3318)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1934569527 (var3318 String) void)
(declare-const null-var1210 var1210)
(declare-const null-var3882 var3882)
(declare-const var1054-LOOKUP var440)
(declare-const null-var1054 var1054)
(declare-const var1325 var1210) ; Statement: r0 := @parameter0: com.microsoft.schemas.office.visio.x2012.main.SectionType 
(assert (not (= var1325 null-var1210)))
(declare-const var739 var3882) ; Statement: r5 := @parameter1: org.apache.poi.xdgf.usermodel.XDGFSheet 
(assert (not (= var739 null-var3882)))
(define-const var1749 String (var1210_getN/136693350 var1325)) ; Statement: r1 = interfaceinvoke r0.<com.microsoft.schemas.office.visio.x2012.main.SectionType: java.lang.String getN()>() 
(define-const var3433 var440 var1054-LOOKUP) ; Statement: $r2 = <org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes: java.util.Map LOOKUP> 
(define-const var3944 var1496 (var440_get/1088891777 var3433 (cast-from-String-to-var1496 var1749))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2016 var1054 (cast-from-var1496-to-var1054 var3944)) ; Statement: r4 = (org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes) $r3 
 ; Statement: if r4 != null goto $r6 = r4.<org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes: java.util.function.BiFunction constructor> 
(assert (not (not (= var2016 null-var1054)))) ; Negate: Cond: r4 != null  
(define-const var604 var325 (var1210_schemaType/-374716795 var1325)) ; Statement: $r9 = interfaceinvoke r0.<com.microsoft.schemas.office.visio.x2012.main.SectionType: org.apache.xmlbeans.SchemaType schemaType()>() 
(define-const var2436 var744 (var325_getName/-1542331349 var604)) ; Statement: $r10 = interfaceinvoke $r9.<org.apache.xmlbeans.SchemaType: javax.xml.namespace.QName getName()>() 
(assert true)
(define-const var2861 String (getLocalPart/-809441474 var2436)) ; Statement: r11 = virtualinvoke $r10.<javax.xml.namespace.QName: java.lang.String getLocalPart()>() 
(define-const var2566 var3318 var3318-init) ; Statement: $r12 = new org.apache.poi.ooxml.POIXMLException 
(define-const var2696 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2696)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2696!1 String)
(assert (= var2696!1 ""))
(assert true)
(define-const var3002 String (append/672562846 var2696!1 "Invalid \u0027")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid \'") 
(declare-const var2696!2 String)
(assert (= var2696!2 (str.++ var2696!1 "Invalid \u0027")))
(assert true)
(define-const var1969 String (append/672562846 var3002 var2861)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var3002!1 String)
(assert (= var3002!1 (str.++ var3002 var2861)))
(assert true)
(define-const var3648 String (append/672562846 var1969 "\u0027 name \u0027")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' name \'") 
(declare-const var1969!1 String)
(assert (= var1969!1 (str.++ var1969 "\u0027 name \u0027")))
(assert true)
(define-const var840 String (append/672562846 var3648 var1749)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3648!1 String)
(assert (= var3648!1 (str.++ var3648 var1749)))
(assert true)
(define-const var634 String (append/672562846 var840 "\u0027")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var840!1 String)
(assert (= var840!1 (str.++ var840 "\u0027")))
(assert true)
(define-const var580 String (toString/-2075883882 var634)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1934569527 var2566 var580)) ; Statement: specialinvoke $r12.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String)>($r19) 

(declare-const var2566!1 var3318)
(declare-const var580!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1210_getN/136693350=([com.microsoft.schemas.office.visio.x2012.main.SectionType], java.lang.String), var440_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1496=([java.lang.String], java.lang.Object), cast-from-var1496-to-var1054=([java.lang.Object], org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes), var1210_schemaType/-374716795=([com.microsoft.schemas.office.visio.x2012.main.SectionType], org.apache.xmlbeans.SchemaType), var325_getName/-1542331349=([org.apache.xmlbeans.SchemaType], javax.xml.namespace.QName), getLocalPart/-809441474=([javax.xml.namespace.QName], java.lang.String), var3318-init=([], org.apache.poi.ooxml.POIXMLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1934569527=([org.apache.poi.ooxml.POIXMLException, java.lang.String], void)}
; {var1210=com.microsoft.schemas.office.visio.x2012.main.SectionType, var1325=r0, var3882=org.apache.poi.xdgf.usermodel.XDGFSheet, var739=r5, var1749=r1, var440=java.util.Map, var1054=org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes, var3433=$r2, var1496=java.lang.Object, var3944=$r3, var2016=r4, var325=org.apache.xmlbeans.SchemaType, var604=$r9, var744=javax.xml.namespace.QName, var2436=$r10, var2861=r11, var3318=org.apache.poi.ooxml.POIXMLException, var2566=$r12, var2696=$r13, var3002=$r14, var1969=$r15, var3648=$r16, var840=$r17, var634=$r18, var580=$r19}
; {com.microsoft.schemas.office.visio.x2012.main.SectionType=var1210, r0=var1325, org.apache.poi.xdgf.usermodel.XDGFSheet=var3882, r5=var739, r1=var1749, java.util.Map=var440, org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes=var1054, $r2=var3433, java.lang.Object=var1496, $r3=var3944, r4=var2016, org.apache.xmlbeans.SchemaType=var325, $r9=var604, javax.xml.namespace.QName=var744, $r10=var2436, r11=var2861, org.apache.poi.ooxml.POIXMLException=var3318, $r12=var2566, $r13=var2696, $r14=var3002, $r15=var1969, $r16=var3648, $r17=var840, $r18=var634, $r19=var580}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.microsoft.schemas.office.visio.x2012.main.SectionType;	r5 := @parameter1: org.apache.poi.xdgf.usermodel.XDGFSheet;	r1 = interfaceinvoke r0.<com.microsoft.schemas.office.visio.x2012.main.SectionType: java.lang.String getN()>();	$r2 = <org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes: java.util.Map LOOKUP>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes) $r3;	if r4 != null goto $r6 = r4.<org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes: java.util.function.BiFunction constructor>;	$r9 = interfaceinvoke r0.<com.microsoft.schemas.office.visio.x2012.main.SectionType: org.apache.xmlbeans.SchemaType schemaType()>();	$r10 = interfaceinvoke $r9.<org.apache.xmlbeans.SchemaType: javax.xml.namespace.QName getName()>();	r11 = virtualinvoke $r10.<javax.xml.namespace.QName: java.lang.String getLocalPart()>();	$r12 = new org.apache.poi.ooxml.POIXMLException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid \'");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' name \'");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String)>($r19);	throw $r12
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1760 0)
(declare-sort var570 0)
(declare-sort var3230 0)
(declare-sort var2808 0)
(declare-sort var3297 0)
(declare-sort var3917 0)
(declare-sort var267 0)
(declare-sort var236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun extPart/-1073079887 (var1760) var570)
(declare-fun ext/-1073079887 (var1760) var3230)
(declare-fun var3230_access$300/1985250816 (var3230) var2808)
(declare-fun toString/-522406933 (var3297) String)
(declare-fun cast-from-var2808-to-var3297 (var2808) var3297)
(declare-fun var267-init () var267)
(declare-fun <init>/302705060 (var267 var236) void)
(declare-fun cast-from-var3917-to-var236 (var3917) var236)
(declare-const null-var1760 var1760)
(declare-const null-var570 var570)
(declare-const null-var3230 var3230)
(declare-const null-var2808 var2808)
(declare-const var1760-NEW_EXT_INSTANCE var2808)
(declare-const null-var3917 var3917)
(declare-const var438 var1760) ; Statement: r0 := @this: org.apache.poi.ooxml.POIXMLProperties 
(assert (not (= var438 null-var1760)))
(define-const var3500 var570 (extPart/-1073079887 var438)) ; Statement: $r1 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart extPart> 
 ; Statement: if $r1 != null goto $r56 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart> 
(assert (not (not (= var3500 null-var570)))) ; Negate: Cond: $r1 != null  
(define-const var1180 var3230 (ext/-1073079887 var438)) ; Statement: $r31 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties ext> 
 ; Statement: if $r31 == null goto $r56 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart> 
(assert (not (= var1180 null-var3230))) ; Negate: Cond: $r31 == null  
(define-const var2554 var3230 (ext/-1073079887 var438)) ; Statement: $r32 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties ext> 
(define-const var2589 var2808 (var3230_access$300/1985250816 var2554)) ; Statement: $r33 = staticinvoke <org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties: org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.PropertiesDocument access$300(org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties)>($r32) 
 ; Statement: if $r33 == null goto $r56 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart> 
(assert (not (= var2589 null-var2808))) ; Negate: Cond: $r33 == null  
(define-const var3851 var2808 var1760-NEW_EXT_INSTANCE) ; Statement: $r34 = <org.apache.poi.ooxml.POIXMLProperties: org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.PropertiesDocument NEW_EXT_INSTANCE> 
(assert true)
(define-const var3867 String (toString/-522406933 (cast-from-var2808-to-var3297 var3851))) ; Statement: $r38 = virtualinvoke $r34.<java.lang.Object: java.lang.String toString()>() 
(define-const var1827 var3230 (ext/-1073079887 var438)) ; Statement: $r35 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties ext> 
(define-const var812 var2808 (var3230_access$300/1985250816 var1827)) ; Statement: $r36 = staticinvoke <org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties: org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.PropertiesDocument access$300(org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties)>($r35) 
(assert true)
(define-const var3104 String (toString/-522406933 (cast-from-var2808-to-var3297 var812))) ; Statement: $r37 = virtualinvoke $r36.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var743 Bool (= var3867 var3104)) ; Statement: $z1 = virtualinvoke $r38.<java.lang.String: boolean equals(java.lang.Object)>($r37) 
 ; Statement: if $z1 != 0 goto $r56 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart> 
(assert (not (not (= (ite var743 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(declare-const var1132 var3917) ; Statement: $r53 := @caughtexception 
(assert (not (= var1132 null-var3917)))
(define-const var2043 var267 var267-init) ; Statement: $r64 = new org.apache.poi.ooxml.POIXMLException 
(assert true)
;(assert (<init>/302705060 var2043 (cast-from-var3917-to-var236 var1132))) ; Statement: specialinvoke $r64.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.Throwable)>($r53) 

(declare-const var2043!1 var267)
(declare-const var1132!1 var3917)
 ; Statement: throw $r64 
(check-sat)
(get-model)
(get-unsat-core)
; {extPart/-1073079887=([org.apache.poi.ooxml.POIXMLProperties], org.apache.poi.openxml4j.opc.PackagePart), ext/-1073079887=([org.apache.poi.ooxml.POIXMLProperties], org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties), var3230_access$300/1985250816=([org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties], org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.PropertiesDocument), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2808-to-var3297=([org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.PropertiesDocument], java.lang.Object), var267-init=([], org.apache.poi.ooxml.POIXMLException), <init>/302705060=([org.apache.poi.ooxml.POIXMLException, java.lang.Throwable], void), cast-from-var3917-to-var236=([org.apache.poi.openxml4j.exceptions.InvalidFormatException], java.lang.Throwable)}
; {var1760=org.apache.poi.ooxml.POIXMLProperties, var438=r0, var570=org.apache.poi.openxml4j.opc.PackagePart, var3500=$r1, var3230=org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties, var1180=$r31, var2554=$r32, var2808=org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.PropertiesDocument, var2589=$r33, var3851=$r34, var3297=java.lang.Object, var3867=$r38, var1827=$r35, var812=$r36, var3104=$r37, var743=$z1, var3917=org.apache.poi.openxml4j.exceptions.InvalidFormatException, var1132=$r53, var267=org.apache.poi.ooxml.POIXMLException, var2043=$r64, var236=java.lang.Throwable}
; {org.apache.poi.ooxml.POIXMLProperties=var1760, r0=var438, org.apache.poi.openxml4j.opc.PackagePart=var570, $r1=var3500, org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties=var3230, $r31=var1180, $r32=var2554, org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.PropertiesDocument=var2808, $r33=var2589, $r34=var3851, java.lang.Object=var3297, $r38=var3867, $r35=var1827, $r36=var812, $r37=var3104, $z1=var743, org.apache.poi.openxml4j.exceptions.InvalidFormatException=var3917, $r53=var1132, org.apache.poi.ooxml.POIXMLException=var267, $r64=var2043, java.lang.Throwable=var236}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.poi.ooxml.POIXMLProperties;	$r1 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart extPart>;	if $r1 != null goto $r56 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart>;	$r31 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties ext>;	if $r31 == null goto $r56 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart>;	$r32 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties ext>;	$r33 = staticinvoke <org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties: org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.PropertiesDocument access$300(org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties)>($r32);	if $r33 == null goto $r56 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart>;	$r34 = <org.apache.poi.ooxml.POIXMLProperties: org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.PropertiesDocument NEW_EXT_INSTANCE>;	$r38 = virtualinvoke $r34.<java.lang.Object: java.lang.String toString()>();	$r35 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties ext>;	$r36 = staticinvoke <org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties: org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.PropertiesDocument access$300(org.apache.poi.ooxml.POIXMLProperties$ExtendedProperties)>($r35);	$r37 = virtualinvoke $r36.<java.lang.Object: java.lang.String toString()>();	$z1 = virtualinvoke $r38.<java.lang.String: boolean equals(java.lang.Object)>($r37);	if $z1 != 0 goto $r56 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart>;	$r53 := @caughtexception;	$r64 = new org.apache.poi.ooxml.POIXMLException;	specialinvoke $r64.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.Throwable)>($r53);	throw $r64
;block_num 5
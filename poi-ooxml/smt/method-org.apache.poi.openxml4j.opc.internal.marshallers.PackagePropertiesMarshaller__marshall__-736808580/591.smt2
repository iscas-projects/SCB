(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2061 0)
(declare-sort var828 0)
(declare-sort var2750 0)
(declare-sort var144 0)
(declare-sort var1968 0)
(declare-sort var2969 0)
(declare-sort var3039 0)
(declare-sort var3287 0)
(declare-sort var1126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var828-to-var144 (var828) var144)
(declare-fun propsPart/272398238 (var2061) var144)
(declare-fun var2969_createDocument/1910893956 () var1968)
(declare-fun xmlDoc/272398238 (var2061) var1968)
(declare-fun getNamespaceURI/-1289495534 (var3039) String)
(declare-fun getQName/1415514546 (var2061 String var3039) String)
(declare-fun var1968_createElementNS/1445905347 (var1968 String String) var3287)
(declare-fun getPrefix/1099482225 (var3039) String)
(declare-fun var2969_addNamespaceDeclaration/80244326 (var3287 String String) void)
(declare-fun var1126_appendChild/-892350246 (var1126 var1126) var1126)
(declare-fun cast-from-var1968-to-var1126 (var1968) var1126)
(declare-fun cast-from-var3287-to-var1126 (var3287) var1126)
(declare-fun addCategory/-694110782 (var2061) void)
(declare-fun addContentStatus/473108335 (var2061) void)
(declare-fun addContentType/1245588519 (var2061) void)
(declare-fun addCreated/466346738 (var2061) void)
(declare-fun addCreator/475999022 (var2061) void)
(declare-fun addDescription/-2104111394 (var2061) void)
(declare-fun addIdentifier/-1036606089 (var2061) void)
(declare-fun addKeywords/765445014 (var2061) void)
(declare-fun addLanguage/887228712 (var2061) void)
(declare-fun addLastModifiedBy/-249431734 (var2061) void)
(declare-fun addLastPrinted/2096430084 (var2061) void)
(declare-fun addModified/518887447 (var2061) void)
(declare-fun addRevision/-1718029883 (var2061) void)
(declare-fun addSubject/-1476970962 (var2061) void)
(declare-fun addTitle/1673135298 (var2061) void)
(declare-fun addVersion/-1573830910 (var2061) void)
(declare-const null-var2061 var2061)
(declare-const null-var828 var828)
(declare-const null-var2750 var2750)
(declare-const var2061-namespaceCoreProperties var3039)
(declare-const var2061-namespaceDC var3039)
(declare-const var2061-namespaceDcTerms var3039)
(declare-const var2061-namespaceXSI var3039)
(declare-const var2642 var2061) ; Statement: r1 := @this: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller 
(assert (not (= var2642 null-var2061)))
(declare-const var3790 var828) ; Statement: r0 := @parameter0: org.apache.poi.openxml4j.opc.PackagePart 
(assert (not (= var3790 null-var828)))
(declare-const var2920 var2750) ; Statement: r34 := @parameter1: java.io.OutputStream 
(assert (not (= var2920 null-var2750)))
(define-const var2500 Bool false) ; Statement: $z0 = r0 instanceof org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart 
 ; Statement: if $z0 != 0 goto $r2 = (org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart) r0 
(assert (not (= (ite var2500 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1201 var144 (cast-from-var828-to-var144 var3790)) ; Statement: $r2 = (org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart) r0 
(declare-const var2642!1 var2061)
(assert (not (= var2642!1 null-var2061)))
(assert (= (propsPart/272398238 var2642!1) var1201)) ; Statement: r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart propsPart> = $r2 
(define-const var1202 var1968 var2969_createDocument/1910893956) ; Statement: $r3 = staticinvoke <org.apache.poi.ooxml.util.DocumentHelper: org.w3c.dom.Document createDocument()>() 
(declare-const var2642!2 var2061)
(assert (not (= var2642!2 null-var2061)))
(assert (= (xmlDoc/272398238 var2642!2) var1202)) ; Statement: r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.w3c.dom.Document xmlDoc> = $r3 
(define-const var232 var1968 (xmlDoc/272398238 var2642!2)) ; Statement: $r5 = r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.w3c.dom.Document xmlDoc> 
(define-const var1263 var3039 var2061-namespaceCoreProperties) ; Statement: $r4 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceCoreProperties> 
(assert true)
(define-const var1311 String (getNamespaceURI/-1289495534 var1263)) ; Statement: $r8 = virtualinvoke $r4.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getNamespaceURI()>() 
(define-const var2420 var3039 var2061-namespaceCoreProperties) ; Statement: $r6 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceCoreProperties> 
(assert true)
(define-const var1144 String (getQName/1415514546 var2642!2 "coreProperties" var2420)) ; Statement: $r7 = specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: java.lang.String getQName(java.lang.String,org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl)>("coreProperties", $r6) 
(define-const var1270 var3287 (var1968_createElementNS/1445905347 var232 var1311 var1144)) ; Statement: r9 = interfaceinvoke $r5.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>($r8, $r7) 
(define-const var3632 var3039 var2061-namespaceCoreProperties) ; Statement: $r10 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceCoreProperties> 
(assert true)
(define-const var218 String (getPrefix/1099482225 var3632)) ; Statement: $r13 = virtualinvoke $r10.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getPrefix()>() 
(define-const var1199 var3039 var2061-namespaceCoreProperties) ; Statement: $r11 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceCoreProperties> 
(assert true)
(define-const var436 String (getNamespaceURI/-1289495534 var1199)) ; Statement: $r12 = virtualinvoke $r11.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getNamespaceURI()>() 
;(assert (var2969_addNamespaceDeclaration/80244326 var1270 var218 var436)) ; Statement: staticinvoke <org.apache.poi.ooxml.util.DocumentHelper: void addNamespaceDeclaration(org.w3c.dom.Element,java.lang.String,java.lang.String)>(r9, $r13, $r12) 

(declare-const var1270!1 var3287)
(declare-const var218!1 String)
(declare-const var436!1 String)
(define-const var1245 var3039 var2061-namespaceDC) ; Statement: $r14 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceDC> 
(assert true)
(define-const var2937 String (getPrefix/1099482225 var1245)) ; Statement: $r17 = virtualinvoke $r14.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getPrefix()>() 
(define-const var2982 var3039 var2061-namespaceDC) ; Statement: $r15 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceDC> 
(assert true)
(define-const var1816 String (getNamespaceURI/-1289495534 var2982)) ; Statement: $r16 = virtualinvoke $r15.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getNamespaceURI()>() 
;(assert (var2969_addNamespaceDeclaration/80244326 var1270!1 var2937 var1816)) ; Statement: staticinvoke <org.apache.poi.ooxml.util.DocumentHelper: void addNamespaceDeclaration(org.w3c.dom.Element,java.lang.String,java.lang.String)>(r9, $r17, $r16) 

(declare-const var1270!2 var3287)
(declare-const var2937!1 String)
(declare-const var1816!1 String)
(define-const var2786 var3039 var2061-namespaceDcTerms) ; Statement: $r18 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceDcTerms> 
(assert true)
(define-const var369 String (getPrefix/1099482225 var2786)) ; Statement: $r21 = virtualinvoke $r18.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getPrefix()>() 
(define-const var1596 var3039 var2061-namespaceDcTerms) ; Statement: $r19 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceDcTerms> 
(assert true)
(define-const var1705 String (getNamespaceURI/-1289495534 var1596)) ; Statement: $r20 = virtualinvoke $r19.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getNamespaceURI()>() 
;(assert (var2969_addNamespaceDeclaration/80244326 var1270!2 var369 var1705)) ; Statement: staticinvoke <org.apache.poi.ooxml.util.DocumentHelper: void addNamespaceDeclaration(org.w3c.dom.Element,java.lang.String,java.lang.String)>(r9, $r21, $r20) 

(declare-const var1270!3 var3287)
(declare-const var369!1 String)
(declare-const var1705!1 String)
(define-const var53 var3039 var2061-namespaceXSI) ; Statement: $r22 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceXSI> 
(assert true)
(define-const var2478 String (getPrefix/1099482225 var53)) ; Statement: $r25 = virtualinvoke $r22.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getPrefix()>() 
(define-const var3341 var3039 var2061-namespaceXSI) ; Statement: $r23 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceXSI> 
(assert true)
(define-const var677 String (getNamespaceURI/-1289495534 var3341)) ; Statement: $r24 = virtualinvoke $r23.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getNamespaceURI()>() 
;(assert (var2969_addNamespaceDeclaration/80244326 var1270!3 var2478 var677)) ; Statement: staticinvoke <org.apache.poi.ooxml.util.DocumentHelper: void addNamespaceDeclaration(org.w3c.dom.Element,java.lang.String,java.lang.String)>(r9, $r25, $r24) 

(declare-const var1270!4 var3287)
(declare-const var2478!1 String)
(declare-const var677!1 String)
(define-const var3242 var1968 (xmlDoc/272398238 var2642!2)) ; Statement: $r26 = r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.w3c.dom.Document xmlDoc> 
;(assert (var1126_appendChild/-892350246 (cast-from-var1968-to-var1126 var3242) (cast-from-var3287-to-var1126 var1270!4))) ; Statement: interfaceinvoke $r26.<org.w3c.dom.Document: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r9) 

(declare-const var3242!1 var1968)
(declare-const var1270!5 var3287)
(assert true)
;(assert (addCategory/-694110782 var2642!2)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addCategory()>() 

(declare-const var2642!3 var2061)
(assert true)
;(assert (addContentStatus/473108335 var2642!3)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addContentStatus()>() 

(declare-const var2642!4 var2061)
(assert true)
;(assert (addContentType/1245588519 var2642!4)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addContentType()>() 

(declare-const var2642!5 var2061)
(assert true)
;(assert (addCreated/466346738 var2642!5)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addCreated()>() 

(declare-const var2642!6 var2061)
(assert true)
;(assert (addCreator/475999022 var2642!6)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addCreator()>() 

(declare-const var2642!7 var2061)
(assert true)
;(assert (addDescription/-2104111394 var2642!7)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addDescription()>() 

(declare-const var2642!8 var2061)
(assert true)
;(assert (addIdentifier/-1036606089 var2642!8)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addIdentifier()>() 

(declare-const var2642!9 var2061)
(assert true)
;(assert (addKeywords/765445014 var2642!9)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addKeywords()>() 

(declare-const var2642!10 var2061)
(assert true)
;(assert (addLanguage/887228712 var2642!10)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addLanguage()>() 

(declare-const var2642!11 var2061)
(assert true)
;(assert (addLastModifiedBy/-249431734 var2642!11)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addLastModifiedBy()>() 

(declare-const var2642!12 var2061)
(assert true)
;(assert (addLastPrinted/2096430084 var2642!12)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addLastPrinted()>() 

(declare-const var2642!13 var2061)
(assert true)
;(assert (addModified/518887447 var2642!13)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addModified()>() 

(declare-const var2642!14 var2061)
(assert true)
;(assert (addRevision/-1718029883 var2642!14)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addRevision()>() 

(declare-const var2642!15 var2061)
(assert true)
;(assert (addSubject/-1476970962 var2642!15)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addSubject()>() 

(declare-const var2642!16 var2061)
(assert true)
;(assert (addTitle/1673135298 var2642!16)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addTitle()>() 

(declare-const var2642!17 var2061)
(assert true)
;(assert (addVersion/-1573830910 var2642!17)) ; Statement: specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addVersion()>() 

(declare-const var2642!18 var2061)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var828-to-var144=([org.apache.poi.openxml4j.opc.PackagePart], org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart), propsPart/272398238=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart), var2969_createDocument/1910893956=([], org.w3c.dom.Document), xmlDoc/272398238=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], org.w3c.dom.Document), getNamespaceURI/-1289495534=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl], java.lang.String), getQName/1415514546=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller, java.lang.String, org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl], java.lang.String), var1968_createElementNS/1445905347=([org.w3c.dom.Document, java.lang.String, java.lang.String], org.w3c.dom.Element), getPrefix/1099482225=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl], java.lang.String), var2969_addNamespaceDeclaration/80244326=([org.w3c.dom.Element, java.lang.String, java.lang.String], void), var1126_appendChild/-892350246=([org.w3c.dom.Node, org.w3c.dom.Node], org.w3c.dom.Node), cast-from-var1968-to-var1126=([org.w3c.dom.Document], org.w3c.dom.Node), cast-from-var3287-to-var1126=([org.w3c.dom.Element], org.w3c.dom.Node), addCategory/-694110782=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void), addContentStatus/473108335=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void), addContentType/1245588519=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void), addCreated/466346738=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void), addCreator/475999022=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void), addDescription/-2104111394=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void), addIdentifier/-1036606089=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void), addKeywords/765445014=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void), addLanguage/887228712=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void), addLastModifiedBy/-249431734=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void), addLastPrinted/2096430084=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void), addModified/518887447=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void), addRevision/-1718029883=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void), addSubject/-1476970962=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void), addTitle/1673135298=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void), addVersion/-1573830910=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller], void)}
; {var2061=org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller, var2642=r1, var828=org.apache.poi.openxml4j.opc.PackagePart, var3790=r0, var2750=java.io.OutputStream, var2920=r34, var2500=$z0, var144=org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart, var1201=$r2, var1968=org.w3c.dom.Document, var2969=org.apache.poi.ooxml.util.DocumentHelper, var1202=$r3, var232=$r5, var3039=org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl, var1263=$r4, var1311=$r8, var2420=$r6, var1144=$r7, var3287=org.w3c.dom.Element, var1270=r9, var3632=$r10, var218=$r13, var1199=$r11, var436=$r12, var1245=$r14, var2937=$r17, var2982=$r15, var1816=$r16, var2786=$r18, var369=$r21, var1596=$r19, var1705=$r20, var53=$r22, var2478=$r25, var3341=$r23, var677=$r24, var3242=$r26, var1126=org.w3c.dom.Node}
; {org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller=var2061, r1=var2642, org.apache.poi.openxml4j.opc.PackagePart=var828, r0=var3790, java.io.OutputStream=var2750, r34=var2920, $z0=var2500, org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart=var144, $r2=var1201, org.w3c.dom.Document=var1968, org.apache.poi.ooxml.util.DocumentHelper=var2969, $r3=var1202, $r5=var232, org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl=var3039, $r4=var1263, $r8=var1311, $r6=var2420, $r7=var1144, org.w3c.dom.Element=var3287, r9=var1270, $r10=var3632, $r13=var218, $r11=var1199, $r12=var436, $r14=var1245, $r17=var2937, $r15=var2982, $r16=var1816, $r18=var2786, $r21=var369, $r19=var1596, $r20=var1705, $r22=var53, $r25=var2478, $r23=var3341, $r24=var677, $r26=var3242, org.w3c.dom.Node=var1126}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller;	r0 := @parameter0: org.apache.poi.openxml4j.opc.PackagePart;	r34 := @parameter1: java.io.OutputStream;	$z0 = r0 instanceof org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart;	if $z0 != 0 goto $r2 = (org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart) r0;	$r2 = (org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart) r0;	r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart propsPart> = $r2;	$r3 = staticinvoke <org.apache.poi.ooxml.util.DocumentHelper: org.w3c.dom.Document createDocument()>();	r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.w3c.dom.Document xmlDoc> = $r3;	$r5 = r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.w3c.dom.Document xmlDoc>;	$r4 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceCoreProperties>;	$r8 = virtualinvoke $r4.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getNamespaceURI()>();	$r6 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceCoreProperties>;	$r7 = specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: java.lang.String getQName(java.lang.String,org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl)>("coreProperties", $r6);	r9 = interfaceinvoke $r5.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>($r8, $r7);	$r10 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceCoreProperties>;	$r13 = virtualinvoke $r10.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getPrefix()>();	$r11 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceCoreProperties>;	$r12 = virtualinvoke $r11.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getNamespaceURI()>();	staticinvoke <org.apache.poi.ooxml.util.DocumentHelper: void addNamespaceDeclaration(org.w3c.dom.Element,java.lang.String,java.lang.String)>(r9, $r13, $r12);	$r14 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceDC>;	$r17 = virtualinvoke $r14.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getPrefix()>();	$r15 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceDC>;	$r16 = virtualinvoke $r15.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getNamespaceURI()>();	staticinvoke <org.apache.poi.ooxml.util.DocumentHelper: void addNamespaceDeclaration(org.w3c.dom.Element,java.lang.String,java.lang.String)>(r9, $r17, $r16);	$r18 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceDcTerms>;	$r21 = virtualinvoke $r18.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getPrefix()>();	$r19 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceDcTerms>;	$r20 = virtualinvoke $r19.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getNamespaceURI()>();	staticinvoke <org.apache.poi.ooxml.util.DocumentHelper: void addNamespaceDeclaration(org.w3c.dom.Element,java.lang.String,java.lang.String)>(r9, $r21, $r20);	$r22 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceXSI>;	$r25 = virtualinvoke $r22.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getPrefix()>();	$r23 = <org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl namespaceXSI>;	$r24 = virtualinvoke $r23.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getNamespaceURI()>();	staticinvoke <org.apache.poi.ooxml.util.DocumentHelper: void addNamespaceDeclaration(org.w3c.dom.Element,java.lang.String,java.lang.String)>(r9, $r25, $r24);	$r26 = r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: org.w3c.dom.Document xmlDoc>;	interfaceinvoke $r26.<org.w3c.dom.Document: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r9);	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addCategory()>();	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addContentStatus()>();	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addContentType()>();	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addCreated()>();	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addCreator()>();	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addDescription()>();	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addIdentifier()>();	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addKeywords()>();	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addLanguage()>();	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addLastModifiedBy()>();	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addLastPrinted()>();	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addModified()>();	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addRevision()>();	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addSubject()>();	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addTitle()>();	specialinvoke r1.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller: void addVersion()>();	return 1
;block_num 2
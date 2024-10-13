(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2561 0)
(declare-sort var3266 0)
(declare-sort var2940 0)
(declare-sort var1344 0)
(declare-sort var279 0)
(declare-sort var1046 0)
(declare-sort var76 0)
(declare-sort var1617 0)
(declare-sort var1306 0)
(declare-sort var1932 0)
(declare-sort var1798 0)
(declare-sort var1113 0)
(declare-sort var3643 0)
(declare-sort var1506 0)
(declare-sort var916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1344_newDocumentBuilder/-692293106 () var2940)
(declare-fun var279-init () var279)
(declare-fun var1046-init () var1046)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun <init>/814598262 (var1046 String) void)
(declare-fun <init>/8154792 (var279 var76) void)
(declare-fun cast-from-var1046-to-var76 (var1046) var76)
(declare-fun parse/1352398329 (var2940 var279) var1617)
(declare-fun _map/278570954 (var2561) var1306)
(declare-fun getRelatedSingleXMLCell/1687886305 (var1306) var1932)
(declare-fun getRelatedTables/-970884189 (var1306) var1932)
(declare-fun var1113_getFactory/-914461488 () var1798)
(declare-fun newXPath/-118670642 (var1798) var3643)
(declare-fun var1506-init () var1506)
(declare-fun <init>/-1198422980 (var1506 var1617) void)
(declare-fun var3643_setNamespaceContext/1610105634 (var3643 var916) void)
(declare-fun cast-from-var1506-to-var916 (var1506) var916)
(declare-fun var1932_iterator/-912451715 (var1932) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var2561 var2561)
(declare-const null-String String)
(declare-const var2744 var2561) ; Statement: r6 := @this: org.apache.poi.xssf.extractor.XSSFImportFromXML 
(assert (not (= var2744 null-var2561)))
(declare-const var2745 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2745 null-String)))
(define-const var606 var2940 var1344_newDocumentBuilder/-692293106) ; Statement: r0 = staticinvoke <org.apache.poi.ooxml.util.DocumentHelper: javax.xml.parsers.DocumentBuilder newDocumentBuilder()>() 
(define-const var3852 var279 var279-init) ; Statement: $r68 = new org.xml.sax.InputSource 
(define-const var2653 var1046 var1046-init) ; Statement: $r67 = new java.io.StringReader 
(assert true)
(define-const var412 String (trim/-847153721 var2745)) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: java.lang.String trim()>() 
(assert true)
;(assert (<init>/814598262 var2653 var412)) ; Statement: specialinvoke $r67.<java.io.StringReader: void <init>(java.lang.String)>($r4) 

(declare-const var2653!1 var1046)
(declare-const var412!1 String)
(assert true)
;(assert (<init>/8154792 var3852 (cast-from-var1046-to-var76 var2653!1))) ; Statement: specialinvoke $r68.<org.xml.sax.InputSource: void <init>(java.io.Reader)>($r67) 

(declare-const var3852!1 var279)
(declare-const var2653!2 var1046)
(assert true)
(define-const var2073 var1617 (parse/1352398329 var606 var3852!1)) ; Statement: r5 = virtualinvoke r0.<javax.xml.parsers.DocumentBuilder: org.w3c.dom.Document parse(org.xml.sax.InputSource)>($r68) 
(define-const var1578 var1306 (_map/278570954 var2744)) ; Statement: $r7 = r6.<org.apache.poi.xssf.extractor.XSSFImportFromXML: org.apache.poi.xssf.usermodel.XSSFMap _map> 
(assert true)
(define-const var2842 var1932 (getRelatedSingleXMLCell/1687886305 var1578)) ; Statement: r8 = virtualinvoke $r7.<org.apache.poi.xssf.usermodel.XSSFMap: java.util.List getRelatedSingleXMLCell()>() 
(define-const var501 var1306 (_map/278570954 var2744)) ; Statement: $r9 = r6.<org.apache.poi.xssf.extractor.XSSFImportFromXML: org.apache.poi.xssf.usermodel.XSSFMap _map> 
(assert true)
(define-const var3313 var1932 (getRelatedTables/-970884189 var501)) ; Statement: r10 = virtualinvoke $r9.<org.apache.poi.xssf.usermodel.XSSFMap: java.util.List getRelatedTables()>() 
(define-const var3444 var1798 var1113_getFactory/-914461488) ; Statement: $r11 = staticinvoke <org.apache.poi.ooxml.util.XPathHelper: javax.xml.xpath.XPathFactory getFactory()>() 
(assert true)
(define-const var1313 var3643 (newXPath/-118670642 var3444)) ; Statement: r12 = virtualinvoke $r11.<javax.xml.xpath.XPathFactory: javax.xml.xpath.XPath newXPath()>() 
(define-const var2057 var1506 var1506-init) ; Statement: $r69 = new org.apache.poi.xssf.extractor.XSSFImportFromXML$DefaultNamespaceContext 
(assert true)
;(assert (<init>/-1198422980 var2057 var2073)) ; Statement: specialinvoke $r69.<org.apache.poi.xssf.extractor.XSSFImportFromXML$DefaultNamespaceContext: void <init>(org.w3c.dom.Document)>(r5) 

(declare-const var2057!1 var1506)
(declare-const var2073!1 var1617)
;(assert (var3643_setNamespaceContext/1610105634 var1313 (cast-from-var1506-to-var916 var2057!1))) ; Statement: interfaceinvoke r12.<javax.xml.xpath.XPath: void setNamespaceContext(javax.xml.namespace.NamespaceContext)>($r69) 

(declare-const var1313!1 var3643)
(declare-const var2057!2 var1506)
(define-const var1642 Iterator (var1932_iterator/-912451715 var2842)) ; Statement: r52 = interfaceinvoke r8.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3664 Bool (Iterator_hasNext/-1669924200 var1642)) ; Statement: $z0 = interfaceinvoke r52.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r59 = interfaceinvoke r10.<java.util.List: java.util.Iterator iterator()>() 
(assert (= (ite var3664 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3667 Iterator (var1932_iterator/-912451715 var3313)) ; Statement: r59 = interfaceinvoke r10.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var429 Bool (Iterator_hasNext/-1669924200 var3667)) ; Statement: $z1 = interfaceinvoke r59.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var429 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1344_newDocumentBuilder/-692293106=([], javax.xml.parsers.DocumentBuilder), var279-init=([], org.xml.sax.InputSource), var1046-init=([], java.io.StringReader), trim/-847153721=([java.lang.String], java.lang.String), <init>/814598262=([java.io.StringReader, java.lang.String], void), <init>/8154792=([org.xml.sax.InputSource, java.io.Reader], void), cast-from-var1046-to-var76=([java.io.StringReader], java.io.Reader), parse/1352398329=([javax.xml.parsers.DocumentBuilder, org.xml.sax.InputSource], org.w3c.dom.Document), _map/278570954=([org.apache.poi.xssf.extractor.XSSFImportFromXML], org.apache.poi.xssf.usermodel.XSSFMap), getRelatedSingleXMLCell/1687886305=([org.apache.poi.xssf.usermodel.XSSFMap], java.util.List), getRelatedTables/-970884189=([org.apache.poi.xssf.usermodel.XSSFMap], java.util.List), var1113_getFactory/-914461488=([], javax.xml.xpath.XPathFactory), newXPath/-118670642=([javax.xml.xpath.XPathFactory], javax.xml.xpath.XPath), var1506-init=([], org.apache.poi.xssf.extractor.XSSFImportFromXML$DefaultNamespaceContext), <init>/-1198422980=([org.apache.poi.xssf.extractor.XSSFImportFromXML$DefaultNamespaceContext, org.w3c.dom.Document], void), var3643_setNamespaceContext/1610105634=([javax.xml.xpath.XPath, javax.xml.namespace.NamespaceContext], void), cast-from-var1506-to-var916=([org.apache.poi.xssf.extractor.XSSFImportFromXML$DefaultNamespaceContext], javax.xml.namespace.NamespaceContext), var1932_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var2561=org.apache.poi.xssf.extractor.XSSFImportFromXML, var2744=r6, var2745=r3, var3266=null_type, var2940=javax.xml.parsers.DocumentBuilder, var1344=org.apache.poi.ooxml.util.DocumentHelper, var606=r0, var279=org.xml.sax.InputSource, var3852=$r68, var1046=java.io.StringReader, var2653=$r67, var412=$r4, var76=java.io.Reader, var1617=org.w3c.dom.Document, var2073=r5, var1306=org.apache.poi.xssf.usermodel.XSSFMap, var1578=$r7, var1932=java.util.List, var2842=r8, var501=$r9, var3313=r10, var1798=javax.xml.xpath.XPathFactory, var1113=org.apache.poi.ooxml.util.XPathHelper, var3444=$r11, var3643=javax.xml.xpath.XPath, var1313=r12, var1506=org.apache.poi.xssf.extractor.XSSFImportFromXML$DefaultNamespaceContext, var2057=$r69, var916=javax.xml.namespace.NamespaceContext, var1642=r52, var3664=$z0, var3667=r59, var429=$z1}
; {org.apache.poi.xssf.extractor.XSSFImportFromXML=var2561, r6=var2744, r3=var2745, null_type=var3266, javax.xml.parsers.DocumentBuilder=var2940, org.apache.poi.ooxml.util.DocumentHelper=var1344, r0=var606, org.xml.sax.InputSource=var279, $r68=var3852, java.io.StringReader=var1046, $r67=var2653, $r4=var412, java.io.Reader=var76, org.w3c.dom.Document=var1617, r5=var2073, org.apache.poi.xssf.usermodel.XSSFMap=var1306, $r7=var1578, java.util.List=var1932, r8=var2842, $r9=var501, r10=var3313, javax.xml.xpath.XPathFactory=var1798, org.apache.poi.ooxml.util.XPathHelper=var1113, $r11=var3444, javax.xml.xpath.XPath=var3643, r12=var1313, org.apache.poi.xssf.extractor.XSSFImportFromXML$DefaultNamespaceContext=var1506, $r69=var2057, javax.xml.namespace.NamespaceContext=var916, r52=var1642, $z0=var3664, r59=var3667, $z1=var429}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r6 := @this: org.apache.poi.xssf.extractor.XSSFImportFromXML;	r3 := @parameter0: java.lang.String;	r0 = staticinvoke <org.apache.poi.ooxml.util.DocumentHelper: javax.xml.parsers.DocumentBuilder newDocumentBuilder()>();	$r68 = new org.xml.sax.InputSource;	$r67 = new java.io.StringReader;	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String trim()>();	specialinvoke $r67.<java.io.StringReader: void <init>(java.lang.String)>($r4);	specialinvoke $r68.<org.xml.sax.InputSource: void <init>(java.io.Reader)>($r67);	r5 = virtualinvoke r0.<javax.xml.parsers.DocumentBuilder: org.w3c.dom.Document parse(org.xml.sax.InputSource)>($r68);	$r7 = r6.<org.apache.poi.xssf.extractor.XSSFImportFromXML: org.apache.poi.xssf.usermodel.XSSFMap _map>;	r8 = virtualinvoke $r7.<org.apache.poi.xssf.usermodel.XSSFMap: java.util.List getRelatedSingleXMLCell()>();	$r9 = r6.<org.apache.poi.xssf.extractor.XSSFImportFromXML: org.apache.poi.xssf.usermodel.XSSFMap _map>;	r10 = virtualinvoke $r9.<org.apache.poi.xssf.usermodel.XSSFMap: java.util.List getRelatedTables()>();	$r11 = staticinvoke <org.apache.poi.ooxml.util.XPathHelper: javax.xml.xpath.XPathFactory getFactory()>();	r12 = virtualinvoke $r11.<javax.xml.xpath.XPathFactory: javax.xml.xpath.XPath newXPath()>();	$r69 = new org.apache.poi.xssf.extractor.XSSFImportFromXML$DefaultNamespaceContext;	specialinvoke $r69.<org.apache.poi.xssf.extractor.XSSFImportFromXML$DefaultNamespaceContext: void <init>(org.w3c.dom.Document)>(r5);	interfaceinvoke r12.<javax.xml.xpath.XPath: void setNamespaceContext(javax.xml.namespace.NamespaceContext)>($r69);	r52 = interfaceinvoke r8.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r52.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r59 = interfaceinvoke r10.<java.util.List: java.util.Iterator iterator()>();	r59 = interfaceinvoke r10.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r59.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto return;	return
;block_num 5
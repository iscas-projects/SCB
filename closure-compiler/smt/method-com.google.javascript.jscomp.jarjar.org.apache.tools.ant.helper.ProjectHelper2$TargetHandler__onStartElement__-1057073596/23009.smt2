(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var397 0)
(declare-sort var2201 0)
(declare-sort var1066 0)
(declare-sort var893 0)
(declare-sort var3401 0)
(declare-sort var3318 0)
(declare-sort var2184 0)
(declare-sort var2155 0)
(declare-sort var2935 0)
(declare-sort var2309 0)
(declare-sort var2837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProject/-757559556 (var893) var3318)
(declare-fun var2184-init () var2184)
(declare-fun cast-from-var2184-to-var2155 (var2184) var2155)
(declare-fun <init>/927204249 (var2184) void)
(declare-fun setProject/-1688873970 (var2155 var3318) void)
(declare-fun var2935-init () var2935)
(declare-fun getLocator/1367348006 (var893) var2309)
(declare-fun <init>/2107837502 (var2935 var2309) void)
(declare-fun setLocation/-1671768026 (var2155 var2935) void)
(declare-fun addTarget/-585147349 (var893 var2155) void)
(declare-fun var1066_getLength/-511576848 (var1066) Int)
(declare-fun var2837-init () var2837)
(declare-fun <init>/723551348 (var2837 String var2309) void)
(declare-const null-var397 var397)
(declare-const null-String String)
(declare-const null-var1066 var1066)
(declare-const null-var893 var893)
(declare-const null-var3401 var3401)
(declare-const var1201 var397) ; Statement: r30 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$TargetHandler 
(assert (not (= var1201 null-var397)))
(declare-const var954 String) ; Statement: r78 := @parameter0: java.lang.String 
(assert (not (= var954 null-String)))
(declare-const var2580 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2580 null-String)))
(declare-const var3672 String) ; Statement: r85 := @parameter2: java.lang.String 
(assert (not (= var3672 null-String)))
(declare-const var2970 var1066) ; Statement: r7 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var2970 null-var1066)))
(declare-const var1485 var893) ; Statement: r0 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext 
(assert (not (= var1485 null-var893)))
(define-const var3661 String null-String) ; Statement: r86 = null 
(define-const var867 String "") ; Statement: r87 = "" 
(define-const var3681 String null-String) ; Statement: r88 = null 
(define-const var3095 var3401 null-var3401) ; Statement: r89 = null 
(assert true)
(define-const var1482 var3318 (getProject/-757559556 var1485)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var3094 String "target") ; Statement: $r3 = "target" 
(assert true)
(define-const var2677 Bool (= var3094 var2580)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $r106 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExtensionPoint 
(assert (= (ite var2677 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2927 var2184 var2184-init) ; Statement: $r106 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExtensionPoint 
(define-const var2187 var2155 (cast-from-var2184-to-var2155 var2927)) ; Statement: $r90 = $r106 
(assert true)
;(assert (<init>/927204249 var2927)) ; Statement: specialinvoke $r106.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExtensionPoint: void <init>()>() 

(declare-const var2927!1 var2184)
(assert true) ; Non Conditional
(define-const var944 var2155 var2187) ; Statement: r4 = $r90 
(assert true)
;(assert (setProject/-1688873970 var2187 var1482)) ; Statement: virtualinvoke $r90.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void setProject(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r1) 

(declare-const var2187!1 var2155)
(declare-const var1482!1 var3318)
(define-const var1333 var2935 var2935-init) ; Statement: $r107 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location 
(assert true)
(define-const var1834 var2309 (getLocator/1367348006 var1485)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>() 
(assert true)
;(assert (<init>/2107837502 var1333 var1834)) ; Statement: specialinvoke $r107.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: void <init>(org.xml.sax.Locator)>($r6) 

(declare-const var1333!1 var2935)
(declare-const var1834!1 var2309)
(assert true)
;(assert (setLocation/-1671768026 var2187!1 var1333!1)) ; Statement: virtualinvoke $r90.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void setLocation(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r107) 

(declare-const var2187!2 var2155)
(declare-const var1333!2 var2935)
(assert true)
;(assert (addTarget/-585147349 var1485 var2187!2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: void addTarget(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target)>($r90) 

(declare-const var1485!1 var893)
(declare-const var2187!3 var2155)
(define-const var77 Int 0) ; Statement: i0 = 0 
(assert true) ; Non Conditional
(define-const var3512 Int (var1066_getLength/-511576848 var2970)) ; Statement: $i1 = interfaceinvoke r7.<org.xml.sax.Attributes: int getLength()>() 
 ; Statement: if i0 >= $i1 goto (branch) 
(assert (>= var77 var3512)) ; Cond: i0 >= $i1 
 ; Statement: if r86 != null goto r94 = null 
(assert (not (not (= var3661 null-String)))) ; Negate: Cond: r86 != null  
(define-const var14 var2837 var2837-init) ; Statement: $r113 = new org.xml.sax.SAXParseException 
(assert true)
(define-const var3187 var2309 (getLocator/1367348006 var1485!1)) ; Statement: $r67 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>() 
(assert true)
;(assert (<init>/723551348 var14 "target element appears without a name attribute" var3187)) ; Statement: specialinvoke $r113.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>("target element appears without a name attribute", $r67) 

(declare-const var14!1 var2837)
(declare-const var2167 String)
(declare-const var3187!1 var2309)
 ; Statement: throw $r113 
(check-sat)
(get-model)
(get-unsat-core)
; {getProject/-757559556=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), var2184-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExtensionPoint), cast-from-var2184-to-var2155=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExtensionPoint], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target), <init>/927204249=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExtensionPoint], void), setProject/-1688873970=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), var2935-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), getLocator/1367348006=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], org.xml.sax.Locator), <init>/2107837502=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, org.xml.sax.Locator], void), setLocation/-1671768026=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), addTarget/-585147349=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], void), var1066_getLength/-511576848=([org.xml.sax.Attributes], int), var2837-init=([], org.xml.sax.SAXParseException), <init>/723551348=([org.xml.sax.SAXParseException, java.lang.String, org.xml.sax.Locator], void)}
; {var397=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$TargetHandler, var1201=r30, var954=r78, var2201=null_type, var2580=r2, var3672=r85, var1066=org.xml.sax.Attributes, var2970=r7, var893=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, var1485=r0, var3661=r86, var867=r87, var3681=r88, var3401=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper$OnMissingExtensionPoint, var3095=r89, var3318=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1482=r1, var3094=$r3, var2677=$z0, var2184=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExtensionPoint, var2927=$r106, var2155=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var2187=$r90, var944=r4, var2935=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1333=$r107, var2309=org.xml.sax.Locator, var1834=$r6, var77=i0, var3512=$i1, var2837=org.xml.sax.SAXParseException, var14=$r113, var3187=$r67, var2167="target element appears without a name attribute"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$TargetHandler=var397, r30=var1201, r78=var954, null_type=var2201, r2=var2580, r85=var3672, org.xml.sax.Attributes=var1066, r7=var2970, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext=var893, r0=var1485, r86=var3661, r87=var867, r88=var3681, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper$OnMissingExtensionPoint=var3401, r89=var3095, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3318, r1=var1482, $r3=var3094, $z0=var2677, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExtensionPoint=var2184, $r106=var2927, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var2155, $r90=var2187, r4=var944, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2935, $r107=var1333, org.xml.sax.Locator=var2309, $r6=var1834, i0=var77, $i1=var3512, org.xml.sax.SAXParseException=var2837, $r113=var14, $r67=var3187, "target element appears without a name attribute"=var2167}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r30 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$TargetHandler;	r78 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r85 := @parameter2: java.lang.String;	r7 := @parameter3: org.xml.sax.Attributes;	r0 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext;	r86 = null;	r87 = "";	r88 = null;	r89 = null;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r3 = "target";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $r106 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExtensionPoint;	$r106 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExtensionPoint;	$r90 = $r106;	specialinvoke $r106.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExtensionPoint: void <init>()>();	r4 = $r90;	virtualinvoke $r90.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void setProject(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r1);	$r107 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location;	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>();	specialinvoke $r107.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: void <init>(org.xml.sax.Locator)>($r6);	virtualinvoke $r90.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void setLocation(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r107);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: void addTarget(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target)>($r90);	i0 = 0;	$i1 = interfaceinvoke r7.<org.xml.sax.Attributes: int getLength()>();	if i0 >= $i1 goto (branch);	if r86 != null goto r94 = null;	$r113 = new org.xml.sax.SAXParseException;	$r67 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>();	specialinvoke $r113.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>("target element appears without a name attribute", $r67);	throw $r113
;block_num 6
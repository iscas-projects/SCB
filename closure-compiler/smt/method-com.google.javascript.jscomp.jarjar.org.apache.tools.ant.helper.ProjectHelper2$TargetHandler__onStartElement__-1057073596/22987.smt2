(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var411 0)
(declare-sort var963 0)
(declare-sort var2296 0)
(declare-sort var2222 0)
(declare-sort var3006 0)
(declare-sort var2005 0)
(declare-sort var3069 0)
(declare-sort var491 0)
(declare-sort var3965 0)
(declare-sort var900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProject/-757559556 (var2222) var2005)
(declare-fun var3069-init () var3069)
(declare-fun <init>/346115993 (var3069) void)
(declare-fun setProject/-1688873970 (var3069 var2005) void)
(declare-fun var491-init () var491)
(declare-fun getLocator/1367348006 (var2222) var3965)
(declare-fun <init>/2107837502 (var491 var3965) void)
(declare-fun setLocation/-1671768026 (var3069 var491) void)
(declare-fun addTarget/-585147349 (var2222 var3069) void)
(declare-fun var2296_getLength/-511576848 (var2296) Int)
(declare-fun var900-init () var900)
(declare-fun <init>/723551348 (var900 String var3965) void)
(declare-const null-var411 var411)
(declare-const null-String String)
(declare-const null-var2296 var2296)
(declare-const null-var2222 var2222)
(declare-const null-var3006 var3006)
(declare-const var902 var411) ; Statement: r30 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$TargetHandler 
(assert (not (= var902 null-var411)))
(declare-const var3907 String) ; Statement: r78 := @parameter0: java.lang.String 
(assert (not (= var3907 null-String)))
(declare-const var3581 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3581 null-String)))
(declare-const var3944 String) ; Statement: r85 := @parameter2: java.lang.String 
(assert (not (= var3944 null-String)))
(declare-const var1487 var2296) ; Statement: r7 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var1487 null-var2296)))
(declare-const var2541 var2222) ; Statement: r0 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext 
(assert (not (= var2541 null-var2222)))
(define-const var66 String null-String) ; Statement: r86 = null 
(define-const var3526 String "") ; Statement: r87 = "" 
(define-const var3527 String null-String) ; Statement: r88 = null 
(define-const var174 var3006 null-var3006) ; Statement: r89 = null 
(assert true)
(define-const var1790 var2005 (getProject/-757559556 var2541)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var1537 String "target") ; Statement: $r3 = "target" 
(assert true)
(define-const var2114 Bool (= var1537 var3581)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $r106 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExtensionPoint 
(assert (not (= (ite var2114 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2270 var3069 var3069-init) ; Statement: $r105 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target 
(define-const var3140 var3069 var2270) ; Statement: $r90 = $r105 
(assert true)
;(assert (<init>/346115993 var2270)) ; Statement: specialinvoke $r105.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void <init>()>() 

(declare-const var2270!1 var3069)
 ; Statement: goto [?= r4 = $r90] 
(assert true) ; Non Conditional
(define-const var1851 var3069 var3140) ; Statement: r4 = $r90 
(assert true)
;(assert (setProject/-1688873970 var3140 var1790)) ; Statement: virtualinvoke $r90.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void setProject(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r1) 

(declare-const var3140!1 var3069)
(declare-const var1790!1 var2005)
(define-const var1680 var491 var491-init) ; Statement: $r107 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location 
(assert true)
(define-const var1001 var3965 (getLocator/1367348006 var2541)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>() 
(assert true)
;(assert (<init>/2107837502 var1680 var1001)) ; Statement: specialinvoke $r107.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: void <init>(org.xml.sax.Locator)>($r6) 

(declare-const var1680!1 var491)
(declare-const var1001!1 var3965)
(assert true)
;(assert (setLocation/-1671768026 var3140!1 var1680!1)) ; Statement: virtualinvoke $r90.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void setLocation(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r107) 

(declare-const var3140!2 var3069)
(declare-const var1680!2 var491)
(assert true)
;(assert (addTarget/-585147349 var2541 var3140!2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: void addTarget(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target)>($r90) 

(declare-const var2541!1 var2222)
(declare-const var3140!3 var3069)
(define-const var1044 Int 0) ; Statement: i0 = 0 
(assert true) ; Non Conditional
(define-const var573 Int (var2296_getLength/-511576848 var1487)) ; Statement: $i1 = interfaceinvoke r7.<org.xml.sax.Attributes: int getLength()>() 
 ; Statement: if i0 >= $i1 goto (branch) 
(assert (>= var1044 var573)) ; Cond: i0 >= $i1 
 ; Statement: if r86 != null goto r94 = null 
(assert (not (not (= var66 null-String)))) ; Negate: Cond: r86 != null  
(define-const var912 var900 var900-init) ; Statement: $r113 = new org.xml.sax.SAXParseException 
(assert true)
(define-const var698 var3965 (getLocator/1367348006 var2541!1)) ; Statement: $r67 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>() 
(assert true)
;(assert (<init>/723551348 var912 "target element appears without a name attribute" var698)) ; Statement: specialinvoke $r113.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>("target element appears without a name attribute", $r67) 

(declare-const var912!1 var900)
(declare-const var2746 String)
(declare-const var698!1 var3965)
 ; Statement: throw $r113 
(check-sat)
(get-model)
(get-unsat-core)
; {getProject/-757559556=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), var3069-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target), <init>/346115993=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], void), setProject/-1688873970=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), var491-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), getLocator/1367348006=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], org.xml.sax.Locator), <init>/2107837502=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, org.xml.sax.Locator], void), setLocation/-1671768026=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), addTarget/-585147349=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], void), var2296_getLength/-511576848=([org.xml.sax.Attributes], int), var900-init=([], org.xml.sax.SAXParseException), <init>/723551348=([org.xml.sax.SAXParseException, java.lang.String, org.xml.sax.Locator], void)}
; {var411=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$TargetHandler, var902=r30, var3907=r78, var963=null_type, var3581=r2, var3944=r85, var2296=org.xml.sax.Attributes, var1487=r7, var2222=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, var2541=r0, var66=r86, var3526=r87, var3527=r88, var3006=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper$OnMissingExtensionPoint, var174=r89, var2005=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1790=r1, var1537=$r3, var2114=$z0, var3069=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var2270=$r105, var3140=$r90, var1851=r4, var491=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1680=$r107, var3965=org.xml.sax.Locator, var1001=$r6, var1044=i0, var573=$i1, var900=org.xml.sax.SAXParseException, var912=$r113, var698=$r67, var2746="target element appears without a name attribute"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$TargetHandler=var411, r30=var902, r78=var3907, null_type=var963, r2=var3581, r85=var3944, org.xml.sax.Attributes=var2296, r7=var1487, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext=var2222, r0=var2541, r86=var66, r87=var3526, r88=var3527, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper$OnMissingExtensionPoint=var3006, r89=var174, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2005, r1=var1790, $r3=var1537, $z0=var2114, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var3069, $r105=var2270, $r90=var3140, r4=var1851, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var491, $r107=var1680, org.xml.sax.Locator=var3965, $r6=var1001, i0=var1044, $i1=var573, org.xml.sax.SAXParseException=var900, $r113=var912, $r67=var698, "target element appears without a name attribute"=var2746}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r30 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$TargetHandler;	r78 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r85 := @parameter2: java.lang.String;	r7 := @parameter3: org.xml.sax.Attributes;	r0 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext;	r86 = null;	r87 = "";	r88 = null;	r89 = null;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r3 = "target";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $r106 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExtensionPoint;	$r105 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target;	$r90 = $r105;	specialinvoke $r105.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void <init>()>();	goto [?= r4 = $r90];	r4 = $r90;	virtualinvoke $r90.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void setProject(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r1);	$r107 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location;	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>();	specialinvoke $r107.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: void <init>(org.xml.sax.Locator)>($r6);	virtualinvoke $r90.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void setLocation(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r107);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: void addTarget(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target)>($r90);	i0 = 0;	$i1 = interfaceinvoke r7.<org.xml.sax.Attributes: int getLength()>();	if i0 >= $i1 goto (branch);	if r86 != null goto r94 = null;	$r113 = new org.xml.sax.SAXParseException;	$r67 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>();	specialinvoke $r113.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>("target element appears without a name attribute", $r67);	throw $r113
;block_num 6
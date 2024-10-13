(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3619 0)
(declare-sort var3 0)
(declare-sort var2449 0)
(declare-sort var3489 0)
(declare-sort var3895 0)
(declare-sort var997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3895-init () var3895)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocator/1367348006 (var3489) var997)
(declare-fun <init>/723551348 (var3895 String var997) void)
(declare-const null-var3619 var3619)
(declare-const null-String String)
(declare-const null-var2449 var2449)
(declare-const null-var3489 var3489)
(declare-const var2708 var3619) ; Statement: r9 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler 
(assert (not (= var2708 null-var3619)))
(declare-const var2048 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2048 null-String)))
(declare-const var2417 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var2417 null-String)))
(declare-const var2059 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2059 null-String)))
(declare-const var756 var2449) ; Statement: r12 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var756 null-var2449)))
(declare-const var3467 var3489) ; Statement: r6 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext 
(assert (not (= var3467 null-var3489)))
(define-const var1195 var3895 var3895-init) ; Statement: $r0 = new org.xml.sax.SAXParseException 
(define-const var3782 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3782)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3782!1 String)
(assert (= var3782!1 ""))
(assert true)
(define-const var144 String (append/672562846 var3782!1 "Unexpected element \u0022")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected element \"") 
(declare-const var3782!2 String)
(assert (= var3782!2 (str.++ var3782!1 "Unexpected element \u0022")))
(assert true)
(define-const var2746 String (append/672562846 var144 var2059)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var144!1 String)
(assert (= var144!1 (str.++ var144 var2059)))
(assert true)
(define-const var857 String (append/672562846 var2746 " \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \"") 
(declare-const var2746!1 String)
(assert (= var2746!1 (str.++ var2746 " \u0022")))
(assert true)
(define-const var2868 String (toString/-2075883882 var857)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var442 var997 (getLocator/1367348006 var3467)) ; Statement: $r7 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>() 
(assert true)
;(assert (<init>/723551348 var1195 var2868 var442)) ; Statement: specialinvoke $r0.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>($r8, $r7) 

(declare-const var1195!1 var3895)
(declare-const var2868!1 String)
(declare-const var442!1 var997)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3895-init=([], org.xml.sax.SAXParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocator/1367348006=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], org.xml.sax.Locator), <init>/723551348=([org.xml.sax.SAXParseException, java.lang.String, org.xml.sax.Locator], void)}
; {var3619=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler, var2708=r9, var2048=r10, var3=null_type, var2417=r11, var2059=r2, var2449=org.xml.sax.Attributes, var756=r12, var3489=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, var3467=r6, var3895=org.xml.sax.SAXParseException, var1195=$r0, var3782=$r1, var144=$r3, var2746=$r4, var857=$r5, var2868=$r8, var997=org.xml.sax.Locator, var442=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler=var3619, r9=var2708, r10=var2048, null_type=var3, r11=var2417, r2=var2059, org.xml.sax.Attributes=var2449, r12=var756, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext=var3489, r6=var3467, org.xml.sax.SAXParseException=var3895, $r0=var1195, $r1=var3782, $r3=var144, $r4=var2746, $r5=var857, $r8=var2868, org.xml.sax.Locator=var997, $r7=var442}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler;	r10 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r12 := @parameter3: org.xml.sax.Attributes;	r6 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext;	$r0 = new org.xml.sax.SAXParseException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected element \"");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \"");	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>();	specialinvoke $r0.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>($r8, $r7);	throw $r0
;block_num 1
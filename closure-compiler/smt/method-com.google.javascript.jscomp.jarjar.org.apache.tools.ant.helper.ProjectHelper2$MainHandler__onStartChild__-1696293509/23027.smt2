(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3968 0)
(declare-sort var3083 0)
(declare-sort var3770 0)
(declare-sort var3855 0)
(declare-sort var3574 0)
(declare-sort var2460 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3574-init () var3574)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocator/1367348006 (var3855) var2460)
(declare-fun <init>/723551348 (var3574 String var2460) void)
(declare-const null-var3968 var3968)
(declare-const null-String String)
(declare-const null-var3770 var3770)
(declare-const null-var3855 var3855)
(declare-const var1190 var3968) ; Statement: r26 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$MainHandler 
(assert (not (= var1190 null-var3968)))
(declare-const var218 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var218 null-String)))
(declare-const var3356 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3356 null-String)))
(declare-const var550 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var550 null-String)))
(declare-const var770 var3770) ; Statement: r27 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var770 null-var3770)))
(declare-const var1341 var3855) ; Statement: r9 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext 
(assert (not (= var1341 null-var3855)))
(define-const var1799 String "project") ; Statement: $r1 = "project" 
(assert true)
(define-const var460 Bool (= var1799 var3356)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
(assert (= (ite var460 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3130 Bool (= var3356 var550)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z1 == 0 goto $r3 = new org.xml.sax.SAXParseException 
(assert (= (ite var3130 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3109 var3574 var3574-init) ; Statement: $r3 = new org.xml.sax.SAXParseException 
(define-const var1753 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1753)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1753!1 String)
(assert (= var1753!1 ""))
(assert true)
(define-const var2162 String (append/672562846 var1753!1 "Unexpected element \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected element \"") 
(declare-const var1753!2 String)
(assert (= var1753!2 (str.++ var1753!1 "Unexpected element \u0022")))
(assert true)
(define-const var2409 String (append/672562846 var2162 var550)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2162!1 String)
(assert (= var2162!1 (str.++ var2162 var550)))
(assert true)
(define-const var3736 String (append/672562846 var2409 "\u0022 ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" ") 
(declare-const var2409!1 String)
(assert (= var2409!1 (str.++ var2409 "\u0022 ")))
(assert true)
(define-const var2630 String (append/672562846 var3736 var3356)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3736!1 String)
(assert (= var3736!1 (str.++ var3736 var3356)))
(assert true)
(define-const var1699 String (toString/-2075883882 var2630)) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2879 var2460 (getLocator/1367348006 var1341)) ; Statement: $r10 = virtualinvoke r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>() 
(assert true)
;(assert (<init>/723551348 var3109 var1699 var2879)) ; Statement: specialinvoke $r3.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>($r11, $r10) 

(declare-const var3109!1 var3574)
(declare-const var1699!1 String)
(declare-const var2879!1 var2460)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3574-init=([], org.xml.sax.SAXParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocator/1367348006=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], org.xml.sax.Locator), <init>/723551348=([org.xml.sax.SAXParseException, java.lang.String, org.xml.sax.Locator], void)}
; {var3968=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$MainHandler, var1190=r26, var218=r14, var3083=null_type, var3356=r0, var550=r2, var3770=org.xml.sax.Attributes, var770=r27, var3855=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, var1341=r9, var1799=$r1, var460=$z0, var3130=$z1, var3574=org.xml.sax.SAXParseException, var3109=$r3, var1753=$r4, var2162=$r5, var2409=$r6, var3736=$r7, var2630=$r8, var1699=$r11, var2460=org.xml.sax.Locator, var2879=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$MainHandler=var3968, r26=var1190, r14=var218, null_type=var3083, r0=var3356, r2=var550, org.xml.sax.Attributes=var3770, r27=var770, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext=var3855, r9=var1341, $r1=var1799, $z0=var460, $z1=var3130, org.xml.sax.SAXParseException=var3574, $r3=var3109, $r4=var1753, $r5=var2162, $r6=var2409, $r7=var3736, $r8=var2630, $r11=var1699, org.xml.sax.Locator=var2460, $r10=var2879}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r26 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$MainHandler;	r14 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r27 := @parameter3: org.xml.sax.Attributes;	r9 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext;	$r1 = "project";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r2);	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z1 == 0 goto $r3 = new org.xml.sax.SAXParseException;	$r3 = new org.xml.sax.SAXParseException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected element \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>();	specialinvoke $r3.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>($r11, $r10);	throw $r3
;block_num 3
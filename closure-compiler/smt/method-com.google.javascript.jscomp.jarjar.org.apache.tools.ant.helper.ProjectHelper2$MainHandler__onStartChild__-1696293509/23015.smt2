(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3624 0)
(declare-sort var880 0)
(declare-sort var239 0)
(declare-sort var1460 0)
(declare-sort var2422 0)
(declare-sort var3901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2422-init () var2422)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocator/1367348006 (var1460) var3901)
(declare-fun <init>/723551348 (var2422 String var3901) void)
(declare-const null-var3624 var3624)
(declare-const null-String String)
(declare-const null-var239 var239)
(declare-const null-var1460 var1460)
(declare-const var2692 var3624) ; Statement: r26 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$MainHandler 
(assert (not (= var2692 null-var3624)))
(declare-const var1854 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var1854 null-String)))
(declare-const var258 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var258 null-String)))
(declare-const var1804 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1804 null-String)))
(declare-const var2770 var239) ; Statement: r27 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var2770 null-var239)))
(declare-const var2779 var1460) ; Statement: r9 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext 
(assert (not (= var2779 null-var1460)))
(define-const var3106 String "project") ; Statement: $r1 = "project" 
(assert true)
(define-const var3550 Bool (= var3106 var258)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
(assert (= (ite var3550 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var369 Bool (= var258 var1804)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z1 == 0 goto $r3 = new org.xml.sax.SAXParseException 
(assert (not (= (ite var369 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3435 var2422 var2422-init) ; Statement: $r12 = new org.xml.sax.SAXParseException 
(define-const var523 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var523)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var523!1 String)
(assert (= var523!1 ""))
(assert true)
(define-const var261 String (append/672562846 var523!1 "Unexpected element \u0022{")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected element \"{") 
(declare-const var523!2 String)
(assert (= var523!2 (str.++ var523!1 "Unexpected element \u0022{")))
(assert true)
(define-const var1137 String (append/672562846 var261 var1854)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var261!1 String)
(assert (= var261!1 (str.++ var261 var1854)))
(assert true)
(define-const var3092 String (append/672562846 var1137 "}")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1137!1 String)
(assert (= var1137!1 (str.++ var1137 "}")))
(assert true)
(define-const var736 String (append/672562846 var3092 var258)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3092!1 String)
(assert (= var3092!1 (str.++ var3092 var258)))
(assert true)
(define-const var3299 String (append/672562846 var736 "\u0022 {")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" {") 
(declare-const var736!1 String)
(assert (= var736!1 (str.++ var736 "\u0022 {")))
(assert true)
(define-const var3907 String (append/672562846 var3299 "antlib:org.apache.tools.ant")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("antlib:org.apache.tools.ant") 
(declare-const var3299!1 String)
(assert (= var3299!1 (str.++ var3299 "antlib:org.apache.tools.ant")))
(assert true)
(define-const var3163 String (append/672562846 var3907 "}")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3907!1 String)
(assert (= var3907!1 (str.++ var3907 "}")))
(assert true)
(define-const var637 String (append/672562846 var3163 var258)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3163!1 String)
(assert (= var3163!1 (str.++ var3163 var258)))
(assert true)
(define-const var592 String (toString/-2075883882 var637)) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2043 var3901 (getLocator/1367348006 var2779)) ; Statement: $r23 = virtualinvoke r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>() 
(assert true)
;(assert (<init>/723551348 var3435 var592 var2043)) ; Statement: specialinvoke $r12.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>($r24, $r23) 

(declare-const var3435!1 var2422)
(declare-const var592!1 String)
(declare-const var2043!1 var3901)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2422-init=([], org.xml.sax.SAXParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocator/1367348006=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], org.xml.sax.Locator), <init>/723551348=([org.xml.sax.SAXParseException, java.lang.String, org.xml.sax.Locator], void)}
; {var3624=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$MainHandler, var2692=r26, var1854=r14, var880=null_type, var258=r0, var1804=r2, var239=org.xml.sax.Attributes, var2770=r27, var1460=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, var2779=r9, var3106=$r1, var3550=$z0, var369=$z1, var2422=org.xml.sax.SAXParseException, var3435=$r12, var523=$r13, var261=$r15, var1137=$r16, var3092=$r17, var736=$r18, var3299=$r19, var3907=$r20, var3163=$r21, var637=$r22, var592=$r24, var3901=org.xml.sax.Locator, var2043=$r23}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$MainHandler=var3624, r26=var2692, r14=var1854, null_type=var880, r0=var258, r2=var1804, org.xml.sax.Attributes=var239, r27=var2770, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext=var1460, r9=var2779, $r1=var3106, $z0=var3550, $z1=var369, org.xml.sax.SAXParseException=var2422, $r12=var3435, $r13=var523, $r15=var261, $r16=var1137, $r17=var3092, $r18=var736, $r19=var3299, $r20=var3907, $r21=var3163, $r22=var637, $r24=var592, org.xml.sax.Locator=var3901, $r23=var2043}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r26 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$MainHandler;	r14 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r27 := @parameter3: org.xml.sax.Attributes;	r9 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext;	$r1 = "project";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r2);	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z1 == 0 goto $r3 = new org.xml.sax.SAXParseException;	$r12 = new org.xml.sax.SAXParseException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected element \"{");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" {");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("antlib:org.apache.tools.ant");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	$r23 = virtualinvoke r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>();	specialinvoke $r12.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>($r24, $r23);	throw $r12
;block_num 3
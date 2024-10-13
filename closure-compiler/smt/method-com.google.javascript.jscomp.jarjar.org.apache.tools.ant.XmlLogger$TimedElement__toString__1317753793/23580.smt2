(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2253 0)
(declare-sort var1200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun element/-1306362911 (var2253) var1200)
(declare-fun var1200_getTagName/1916305756 (var1200) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1200_getAttribute/210607306 (var1200 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2253 var2253)
(declare-const var2592 var2253) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger$TimedElement 
(assert (not (= var2592 null-var2253)))
(define-const var2742 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2742)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2742!1 String)
(assert (= var2742!1 ""))
(define-const var2957 var1200 (element/-1306362911 var2592)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger$TimedElement: org.w3c.dom.Element element> 
(define-const var2607 String (var1200_getTagName/1916305756 var2957)) ; Statement: $r3 = interfaceinvoke $r2.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var3720 String (append/672562846 var2742!1 var2607)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2742!2 String)
(assert (= var2742!2 (str.++ var2742!1 var2607)))
(assert true)
(define-const var1757 String (append/672562846 var3720 ":")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3720!1 String)
(assert (= var3720!1 (str.++ var3720 ":")))
(define-const var1812 var1200 (element/-1306362911 var2592)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger$TimedElement: org.w3c.dom.Element element> 
(define-const var3991 String (var1200_getAttribute/210607306 var1812 "name")) ; Statement: $r6 = interfaceinvoke $r5.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("name") 
(assert true)
(define-const var1826 String (append/672562846 var1757 var3991)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1757!1 String)
(assert (= var1757!1 (str.++ var1757 var3991)))
(assert true)
(define-const var2444 String (toString/-2075883882 var1826)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), element/-1306362911=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger$TimedElement], org.w3c.dom.Element), var1200_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1200_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2253=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger$TimedElement, var2592=r1, var2742=$r0, var1200=org.w3c.dom.Element, var2957=$r2, var2607=$r3, var3720=$r4, var1757=$r7, var1812=$r5, var3991=$r6, var1826=$r8, var2444=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger$TimedElement=var2253, r1=var2592, $r0=var2742, org.w3c.dom.Element=var1200, $r2=var2957, $r3=var2607, $r4=var3720, $r7=var1757, $r5=var1812, $r6=var3991, $r8=var1826, $r9=var2444}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger$TimedElement;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger$TimedElement: org.w3c.dom.Element element>;	$r3 = interfaceinvoke $r2.<org.w3c.dom.Element: java.lang.String getTagName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger$TimedElement: org.w3c.dom.Element element>;	$r6 = interfaceinvoke $r5.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("name");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1
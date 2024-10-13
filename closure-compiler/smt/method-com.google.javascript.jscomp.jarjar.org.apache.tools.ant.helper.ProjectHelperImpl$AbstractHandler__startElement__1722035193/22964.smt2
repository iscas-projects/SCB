(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3798 0)
(declare-sort var2137 0)
(declare-sort var3357 0)
(declare-sort var2780 0)
(declare-sort var522 0)
(declare-sort var3184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2780-init () var2780)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun helperImpl/2111030186 (var3798) var522)
(declare-fun var522_access$100/-2046293021 (var522) var3184)
(declare-fun <init>/723551348 (var2780 String var3184) void)
(declare-const null-var3798 var3798)
(declare-const null-String String)
(declare-const null-var3357 var3357)
(declare-const var2896 var3798) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler 
(assert (not (= var2896 null-var3798)))
(declare-const var3716 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3716 null-String)))
(declare-const var643 var3357) ; Statement: r10 := @parameter1: org.xml.sax.AttributeList 
(assert (not (= var643 null-var3357)))
(define-const var249 var2780 var2780-init) ; Statement: $r0 = new org.xml.sax.SAXParseException 
(define-const var1658 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1658)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1658!1 String)
(assert (= var1658!1 ""))
(assert true)
(define-const var458 String (append/672562846 var1658!1 "Unexpected element \u0022")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected element \"") 
(declare-const var1658!2 String)
(assert (= var1658!2 (str.++ var1658!1 "Unexpected element \u0022")))
(assert true)
(define-const var2122 String (append/672562846 var458 var3716)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var458!1 String)
(assert (= var458!1 (str.++ var458 var3716)))
(assert true)
(define-const var2673 String (append/672562846 var2122 "\u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2122!1 String)
(assert (= var2122!1 (str.++ var2122 "\u0022")))
(assert true)
(define-const var1816 String (toString/-2075883882 var2673)) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1392 var522 (helperImpl/2111030186 var2896)) ; Statement: $r7 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl> 
(define-const var3536 var3184 (var522_access$100/-2046293021 var1392)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: org.xml.sax.Locator access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r7) 
(assert true)
;(assert (<init>/723551348 var249 var1816 var3536)) ; Statement: specialinvoke $r0.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>($r9, $r8) 

(declare-const var249!1 var2780)
(declare-const var1816!1 String)
(declare-const var3536!1 var3184)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2780-init=([], org.xml.sax.SAXParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), helperImpl/2111030186=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl), var522_access$100/-2046293021=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl], org.xml.sax.Locator), <init>/723551348=([org.xml.sax.SAXParseException, java.lang.String, org.xml.sax.Locator], void)}
; {var3798=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler, var2896=r6, var3716=r2, var2137=null_type, var3357=org.xml.sax.AttributeList, var643=r10, var2780=org.xml.sax.SAXParseException, var249=$r0, var1658=$r1, var458=$r3, var2122=$r4, var2673=$r5, var1816=$r9, var522=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl, var1392=$r7, var3184=org.xml.sax.Locator, var3536=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler=var3798, r6=var2896, r2=var3716, null_type=var2137, org.xml.sax.AttributeList=var3357, r10=var643, org.xml.sax.SAXParseException=var2780, $r0=var249, $r1=var1658, $r3=var458, $r4=var2122, $r5=var2673, $r9=var1816, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl=var522, $r7=var1392, org.xml.sax.Locator=var3184, $r8=var3536}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler;	r2 := @parameter0: java.lang.String;	r10 := @parameter1: org.xml.sax.AttributeList;	$r0 = new org.xml.sax.SAXParseException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected element \"");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl>;	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: org.xml.sax.Locator access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r7);	specialinvoke $r0.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>($r9, $r8);	throw $r0
;block_num 1
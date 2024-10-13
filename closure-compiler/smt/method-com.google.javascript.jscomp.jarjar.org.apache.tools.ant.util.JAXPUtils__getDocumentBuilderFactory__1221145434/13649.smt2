(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2244 0)
(declare-sort var3475 0)
(declare-sort var2484 0)
(declare-sort var1167 0)
(declare-sort var1256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1167-init () var1167)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var2484-to-var1256 (var2484) var1256)
(declare-fun getMessage/-633328035 (var1256) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var1167 String var2484) void)
(declare-const var3475-builderFactory var2244)
(declare-const null-var2244 var2244)
(declare-const null-var2484 var2484)
(define-const var1618 var2244 var3475-builderFactory) ; Statement: $r0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JAXPUtils: com.google.javascript.jscomp.jarjar.javax.xml.parsers.DocumentBuilderFactory builderFactory> 
 ; Statement: if $r0 != null goto $r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JAXPUtils: com.google.javascript.jscomp.jarjar.javax.xml.parsers.DocumentBuilderFactory builderFactory> 
(assert (not (not (= var1618 null-var2244)))) ; Negate: Cond: $r0 != null  
(declare-const var1444 var2484) ; Statement: $r3 := @caughtexception 
(assert (not (= var1444 null-var2484)))
(define-const var1923 var1167 var1167-init) ; Statement: $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var742 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var742)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var742!1 String)
(assert (= var742!1 ""))
(assert true)
(define-const var765 String (append/672562846 var742!1 "Document builder factory has not been configured correctly: ")) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Document builder factory has not been configured correctly: ") 
(declare-const var742!2 String)
(assert (= var742!2 (str.++ var742!1 "Document builder factory has not been configured correctly: ")))
(define-const var1148 var1256 (cast-from-var2484-to-var1256 var1444)) ; Statement: $r12 = (com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError) $r3 
(assert true)
(define-const var1471 String (getMessage/-633328035 var1148)) ; Statement: $r6 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError: java.lang.String getMessage()>() 
(assert true)
(define-const var3807 String (append/672562846 var765 var1471)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var765!1 String)
(assert (= var765!1 (str.++ var765 var1471)))
(assert true)
(define-const var2672 String (toString/-2075883882 var3807)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var1923 var2672 var1444)) ; Statement: specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3) 

(declare-const var1923!1 var1167)
(declare-const var2672!1 String)
(declare-const var1444!1 var2484)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1167-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var2484-to-var1256=([java.lang.Throwable], com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError), getMessage/-633328035=([com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var2244=com.google.javascript.jscomp.jarjar.javax.xml.parsers.DocumentBuilderFactory, var3475=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JAXPUtils, var1618=$r0, var2484=java.lang.Throwable, var1444=$r3, var1167=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1923=$r11, var742=$r10, var765=$r7, var1256=com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError, var1148=$r12, var1471=$r6, var3807=$r8, var2672=$r9}
; {com.google.javascript.jscomp.jarjar.javax.xml.parsers.DocumentBuilderFactory=var2244, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JAXPUtils=var3475, $r0=var1618, java.lang.Throwable=var2484, $r3=var1444, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1167, $r11=var1923, $r10=var742, $r7=var765, com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError=var1256, $r12=var1148, $r6=var1471, $r8=var3807, $r9=var2672}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JAXPUtils: com.google.javascript.jscomp.jarjar.javax.xml.parsers.DocumentBuilderFactory builderFactory>;	if $r0 != null goto $r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JAXPUtils: com.google.javascript.jscomp.jarjar.javax.xml.parsers.DocumentBuilderFactory builderFactory>;	$r3 := @caughtexception;	$r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Document builder factory has not been configured correctly: ");	$r12 = (com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError) $r3;	$r6 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError: java.lang.String getMessage()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3);	throw $r11
;block_num 2
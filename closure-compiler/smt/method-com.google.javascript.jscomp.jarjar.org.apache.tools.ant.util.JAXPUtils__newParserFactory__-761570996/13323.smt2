(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3447 0)
(declare-sort var2870 0)
(declare-sort var1462 0)
(declare-sort var2450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3447_newInstance/-330245712 () var3447)
(declare-fun var1462-init () var1462)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var2870-to-var2450 (var2870) var2450)
(declare-fun getMessage/-633328035 (var2450) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var1462 String var2870) void)
(declare-const null-var2870 var2870)
(define-const var3633 var3447 var3447_newInstance/-330245712) ; Statement: $r0 = staticinvoke <com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParserFactory: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParserFactory newInstance()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var56 var2870) ; Statement: $r1 := @caughtexception 
(assert (not (= var56 null-var2870)))
(define-const var810 var1462 var1462-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var136 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var136)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var136!1 String)
(assert (= var136!1 ""))
(assert true)
(define-const var3342 String (append/672562846 var136!1 "XML parser factory has not been configured correctly: ")) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XML parser factory has not been configured correctly: ") 
(declare-const var136!2 String)
(assert (= var136!2 (str.++ var136!1 "XML parser factory has not been configured correctly: ")))
(define-const var2738 var2450 (cast-from-var2870-to-var2450 var56)) ; Statement: $r10 = (com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError) $r1 
(assert true)
(define-const var3686 String (getMessage/-633328035 var2738)) ; Statement: $r4 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError: java.lang.String getMessage()>() 
(assert true)
(define-const var3936 String (append/672562846 var3342 var3686)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3342!1 String)
(assert (= var3342!1 (str.++ var3342 var3686)))
(assert true)
(define-const var1957 String (toString/-2075883882 var3936)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var810 var1957 var56)) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r1) 

(declare-const var810!1 var1462)
(declare-const var1957!1 String)
(declare-const var56!1 var2870)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3447_newInstance/-330245712=([], com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParserFactory), var1462-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var2870-to-var2450=([java.lang.Throwable], com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError), getMessage/-633328035=([com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var3447=com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParserFactory, var3633=$r0, var2870=java.lang.Throwable, var56=$r1, var1462=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var810=$r9, var136=$r8, var3342=$r5, var2450=com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError, var2738=$r10, var3686=$r4, var3936=$r6, var1957=$r7}
; {com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParserFactory=var3447, $r0=var3633, java.lang.Throwable=var2870, $r1=var56, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1462, $r9=var810, $r8=var136, $r5=var3342, com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError=var2450, $r10=var2738, $r4=var3686, $r6=var3936, $r7=var1957}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = staticinvoke <com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParserFactory: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParserFactory newInstance()>();	$r1 := @caughtexception;	$r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XML parser factory has not been configured correctly: ");	$r10 = (com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError) $r1;	$r4 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.javax.xml.parsers.FactoryConfigurationError: java.lang.String getMessage()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r1);	throw $r9
;block_num 2
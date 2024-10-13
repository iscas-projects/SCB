(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1375 0)
(declare-sort var3602 0)
(declare-sort var3097 0)
(declare-sort var689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3097-init () var3097)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var3602-to-var689 (var3602) var689)
(declare-fun getMessage/1732988389 (var689) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var3097 String var3602) void)
(declare-const null-var1375 var1375)
(declare-const null-var3602 var3602)
(declare-const var2287 var1375) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParserFactory 
(assert (not (= var2287 null-var1375)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var967 var3602) ; Statement: $r4 := @caughtexception 
(assert (not (= var967 null-var3602)))
(define-const var1182 var3097 var3097-init) ; Statement: $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3058 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3058)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3058!1 String)
(assert (= var3058!1 ""))
(assert true)
(define-const var1745 String (append/672562846 var3058!1 "Cannot create parser for the given configuration: ")) ; Statement: $r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot create parser for the given configuration: ") 
(declare-const var3058!2 String)
(assert (= var3058!2 (str.++ var3058!1 "Cannot create parser for the given configuration: ")))
(define-const var2842 var689 (cast-from-var3602-to-var689 var967)) ; Statement: $r13 = (com.google.javascript.jscomp.jarjar.javax.xml.parsers.ParserConfigurationException) $r4 
(assert true)
(define-const var2890 String (getMessage/1732988389 var2842)) ; Statement: $r7 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.javax.xml.parsers.ParserConfigurationException: java.lang.String getMessage()>() 
(assert true)
(define-const var1751 String (append/672562846 var1745 var2890)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1745!1 String)
(assert (= var1745!1 (str.++ var1745 var2890)))
(assert true)
(define-const var2389 String (toString/-2075883882 var1751)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var1182 var2389 var967)) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4) 

(declare-const var1182!1 var3097)
(declare-const var2389!1 String)
(declare-const var967!1 var3602)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var3097-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var3602-to-var689=([java.lang.Throwable], com.google.javascript.jscomp.jarjar.javax.xml.parsers.ParserConfigurationException), getMessage/1732988389=([com.google.javascript.jscomp.jarjar.javax.xml.parsers.ParserConfigurationException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var1375=com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParserFactory, var2287=r0, var3602=java.lang.Throwable, var967=$r4, var3097=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1182=$r12, var3058=$r11, var1745=$r8, var689=com.google.javascript.jscomp.jarjar.javax.xml.parsers.ParserConfigurationException, var2842=$r13, var2890=$r7, var1751=$r9, var2389=$r10}
; {com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParserFactory=var1375, r0=var2287, java.lang.Throwable=var3602, $r4=var967, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3097, $r12=var1182, $r11=var3058, $r8=var1745, com.google.javascript.jscomp.jarjar.javax.xml.parsers.ParserConfigurationException=var689, $r13=var2842, $r7=var2890, $r9=var1751, $r10=var2389}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParserFactory;	$r4 := @caughtexception;	$r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot create parser for the given configuration: ");	$r13 = (com.google.javascript.jscomp.jarjar.javax.xml.parsers.ParserConfigurationException) $r4;	$r7 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.javax.xml.parsers.ParserConfigurationException: java.lang.String getMessage()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4);	throw $r12
;block_num 2
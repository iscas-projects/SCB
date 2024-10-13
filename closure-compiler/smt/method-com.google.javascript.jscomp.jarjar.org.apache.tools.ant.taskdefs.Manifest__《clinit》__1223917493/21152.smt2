(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2380 0)
(declare-sort var262 0)
(declare-sort var2723 0)
(declare-sort var2734 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1362759805 (var2380) String)
(declare-fun toLowerCase/1946809429 (String var2734) String)
(declare-const var262-UTF_8 var2380)
(declare-const var2723-JAR_CHARSET var2380)
(declare-const var2734-ENGLISH var2734)
(define-const var3375 var2380 var262-UTF_8) ; Statement: $r0 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(define-const var21 var2380 var3375) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.nio.charset.Charset JAR_CHARSET> = $r0 
(define-const var1272 var2380 var2723-JAR_CHARSET) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.nio.charset.Charset JAR_CHARSET> 
(assert true)
(define-const var1530 String (name/1362759805 var1272)) ; Statement: $r2 = virtualinvoke $r1.<java.nio.charset.Charset: java.lang.String name()>() 
(define-const var1414 String var1530) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String JAR_ENCODING> = $r2 
(define-const var2875 String "Manifest-Version") ; Statement: $r4 = "Manifest-Version" 
(define-const var2972 var2734 var2734-ENGLISH) ; Statement: $r3 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var115 String (toLowerCase/1946809429 var2875 var2972)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(define-const var2359 String var115) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_MANIFEST_VERSION_LC> = $r5 
(define-const var1571 String "Name") ; Statement: $r7 = "Name" 
(define-const var2902 var2734 var2734-ENGLISH) ; Statement: $r6 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2571 String (toLowerCase/1946809429 var1571 var2902)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r6) 
(define-const var2064 String var2571) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_NAME_LC> = $r8 
(define-const var829 String "From") ; Statement: $r10 = "From" 
(define-const var1572 var2734 var2734-ENGLISH) ; Statement: $r9 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var492 String (toLowerCase/1946809429 var829 var1572)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r9) 
(define-const var1186 String var492) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_FROM_LC> = $r11 
(define-const var2766 String "Class-Path") ; Statement: $r13 = "Class-Path" 
(define-const var784 var2734 var2734-ENGLISH) ; Statement: $r12 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2440 String (toLowerCase/1946809429 var2766 var784)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r12) 
(define-const var274 String var2440) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_CLASSPATH_LC> = $r14 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1362759805=([java.nio.charset.Charset], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var2380=java.nio.charset.Charset, var262=java.nio.charset.StandardCharsets, var3375=$r0, var21=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.nio.charset.Charset JAR_CHARSET>, var2723=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest, var1272=$r1, var1530=$r2, var1414=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String JAR_ENCODING>, var2875=$r4, var2734=java.util.Locale, var2972=$r3, var115=$r5, var2359=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_MANIFEST_VERSION_LC>, var1571=$r7, var2902=$r6, var2571=$r8, var2064=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_NAME_LC>, var829=$r10, var1572=$r9, var492=$r11, var1186=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_FROM_LC>, var2766=$r13, var784=$r12, var2440=$r14, var274=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_CLASSPATH_LC>}
; {java.nio.charset.Charset=var2380, java.nio.charset.StandardCharsets=var262, $r0=var3375, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.nio.charset.Charset JAR_CHARSET>=var21, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest=var2723, $r1=var1272, $r2=var1530, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String JAR_ENCODING>=var1414, $r4=var2875, java.util.Locale=var2734, $r3=var2972, $r5=var115, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_MANIFEST_VERSION_LC>=var2359, $r7=var1571, $r6=var2902, $r8=var2571, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_NAME_LC>=var2064, $r10=var829, $r9=var1572, $r11=var492, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_FROM_LC>=var1186, $r13=var2766, $r12=var784, $r14=var2440, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_CLASSPATH_LC>=var274}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 4}
;stmts $r0 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.nio.charset.Charset JAR_CHARSET> = $r0;	$r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.nio.charset.Charset JAR_CHARSET>;	$r2 = virtualinvoke $r1.<java.nio.charset.Charset: java.lang.String name()>();	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String JAR_ENCODING> = $r2;	$r4 = "Manifest-Version";	$r3 = <java.util.Locale: java.util.Locale ENGLISH>;	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_MANIFEST_VERSION_LC> = $r5;	$r7 = "Name";	$r6 = <java.util.Locale: java.util.Locale ENGLISH>;	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r6);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_NAME_LC> = $r8;	$r10 = "From";	$r9 = <java.util.Locale: java.util.Locale ENGLISH>;	$r11 = virtualinvoke $r10.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r9);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_FROM_LC> = $r11;	$r13 = "Class-Path";	$r12 = <java.util.Locale: java.util.Locale ENGLISH>;	$r14 = virtualinvoke $r13.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r12);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String ATTRIBUTE_CLASSPATH_LC> = $r14;	return
;block_num 1
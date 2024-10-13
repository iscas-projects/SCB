(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1163 0)
(declare-sort var240 0)
(declare-sort var886 0)
(declare-sort var2311 0)
(declare-sort var2638 0)
(declare-sort var1671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logError/2025982030 (var1163 var240 String) void)
(declare-fun var886-init () var886)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun stylesheet/-380281402 (var1163) var2311)
(declare-fun append/-1031950772 (String var2638) String)
(declare-fun cast-from-var2311-to-var2638 (var2311) var2638)
(declare-fun getMessageAndLocation/-1145302269 (var240) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-var240-to-var1671 (var240) var1671)
(declare-fun <init>/-191906322 (var886 String var1671) void)
(declare-const null-var1163 var1163)
(declare-const null-var240 var240)
(declare-const var1603 var1163) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison 
(assert (not (= var1603 null-var1163)))
(declare-const var3859 var240) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.javax.xml.transform.TransformerException 
(assert (not (= var3859 null-var240)))
(assert true)
;(assert (logError/2025982030 var1603 var3859 "Fatal Error")) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison: void logError(com.google.javascript.jscomp.jarjar.javax.xml.transform.TransformerException,java.lang.String)>(r1, "Fatal Error") 

(declare-const var1603!1 var1163)
(declare-const var3859!1 var240)
(declare-const var2688 String)
(define-const var1619 var886 var886-init) ; Statement: $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var188 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var188)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var188!1 String)
(assert (= var188!1 ""))
(assert true)
(define-const var2278 String (append/672562846 var188!1 "Fatal error during transformation using ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Fatal error during transformation using ") 
(declare-const var188!2 String)
(assert (= var188!2 (str.++ var188!1 "Fatal error during transformation using ")))
(define-const var1699 var2311 (stylesheet/-380281402 var1603!1)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource stylesheet> 
(assert true)
(define-const var1021 String (append/-1031950772 var2278 (cast-from-var2311-to-var2638 var1699))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2278!1 String)
(assert (str.prefixof var2278 var2278!1))
(assert true)
(define-const var2500 String (append/672562846 var1021 ": ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var1021!1 String)
(assert (= var1021!1 (str.++ var1021 ": ")))
(assert true)
(define-const var2680 String (getMessageAndLocation/-1145302269 var3859!1)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.javax.xml.transform.TransformerException: java.lang.String getMessageAndLocation()>() 
(assert true)
(define-const var36 String (append/672562846 var2500 var2680)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2500!1 String)
(assert (= var2500!1 (str.++ var2500 var2680)))
(assert true)
(define-const var1150 String (toString/-2075883882 var36)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3731 var1671 (cast-from-var240-to-var1671 var3859!1)) ; Statement: $r13 = (java.lang.Throwable) r1 
(assert true)
;(assert (<init>/-191906322 var1619 var1150 var3731)) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r13) 

(declare-const var1619!1 var886)
(declare-const var1150!1 String)
(declare-const var3731!1 var1671)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {logError/2025982030=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison, com.google.javascript.jscomp.jarjar.javax.xml.transform.TransformerException, java.lang.String], void), var886-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), stylesheet/-380281402=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2311-to-var2638=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.Object), getMessageAndLocation/-1145302269=([com.google.javascript.jscomp.jarjar.javax.xml.transform.TransformerException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-var240-to-var1671=([com.google.javascript.jscomp.jarjar.javax.xml.transform.TransformerException], java.lang.Throwable), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var1163=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison, var1603=r0, var240=com.google.javascript.jscomp.jarjar.javax.xml.transform.TransformerException, var3859=r1, var2688="Fatal Error", var886=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1619=$r12, var188=$r11, var2278=$r5, var2311=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var1699=$r4, var2638=java.lang.Object, var1021=$r6, var2500=$r8, var2680=$r7, var36=$r9, var1150=$r10, var1671=java.lang.Throwable, var3731=$r13}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison=var1163, r0=var1603, com.google.javascript.jscomp.jarjar.javax.xml.transform.TransformerException=var240, r1=var3859, "Fatal Error"=var2688, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var886, $r12=var1619, $r11=var188, $r5=var2278, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var2311, $r4=var1699, java.lang.Object=var2638, $r6=var1021, $r8=var2500, $r7=var2680, $r9=var36, $r10=var1150, java.lang.Throwable=var1671, $r13=var3731}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.javax.xml.transform.TransformerException;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison: void logError(com.google.javascript.jscomp.jarjar.javax.xml.transform.TransformerException,java.lang.String)>(r1, "Fatal Error");	$r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Fatal error during transformation using ");	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource stylesheet>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.javax.xml.transform.TransformerException: java.lang.String getMessageAndLocation()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = (java.lang.Throwable) r1;	specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r13);	throw $r12
;block_num 1
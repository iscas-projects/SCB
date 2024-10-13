(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3832 0)
(declare-sort var776 0)
(declare-sort var2760 0)
(declare-sort var3029 0)
(declare-sort var2719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3029-init () var3029)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1461999723 (var3832) String)
(declare-fun append/-1031950772 (String var2719) String)
(declare-fun cast-from-var2760-to-var2719 (var2760) var2719)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var3029 String var2760) void)
(declare-const null-var3832 var3832)
(declare-const null-var776 var776)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2760 var2760)
(declare-const var1619 var3832) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition 
(assert (not (= var1619 null-var3832)))
(declare-const var294 var776) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var294 null-var776)))
(declare-const var1512 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var1512 null-ClassObject)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var729 var2760) ; Statement: $r4 := @caughtexception 
(assert (not (= var729 null-var2760)))
(define-const var1163 var3029 var3029-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1939 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1939)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1939!1 String)
(assert (= var1939!1 ""))
(assert true)
(define-const var2255 String (append/672562846 var1939!1 "Could not create type ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create type ") 
(declare-const var1939!2 String)
(assert (= var1939!2 (str.++ var1939!1 "Could not create type ")))
(define-const var1409 String (name/-1461999723 var1619)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name> 
(assert true)
(define-const var3590 String (append/672562846 var2255 var1409)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2255!1 String)
(assert (= var2255!1 (str.++ var2255 var1409)))
(assert true)
(define-const var149 String (append/672562846 var3590 " due to ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" due to ") 
(declare-const var3590!1 String)
(assert (= var3590!1 (str.++ var3590 " due to ")))
(assert true)
(define-const var3328 String (append/-1031950772 var149 (cast-from-var2760-to-var2719 var729))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var149!1 String)
(assert (str.prefixof var149 var149!1))
(assert true)
(define-const var1088 String (toString/-2075883882 var3328)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var1163 var1088 var729)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r4) 

(declare-const var1163!1 var3029)
(declare-const var1088!1 String)
(declare-const var729!1 var2760)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3029-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1461999723=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2760-to-var2719=([java.lang.Throwable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var3832=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var1619=r0, var776=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var294=r2, var1512=r1, var2760=java.lang.Throwable, var729=$r4, var3029=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1163=$r5, var1939=$r6, var2255=$r8, var1409=$r7, var3590=$r9, var149=$r10, var2719=java.lang.Object, var3328=$r11, var1088=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var3832, r0=var1619, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var776, r2=var294, r1=var1512, java.lang.Throwable=var2760, $r4=var729, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3029, $r5=var1163, $r6=var1939, $r8=var2255, $r7=var1409, $r9=var3590, $r10=var149, java.lang.Object=var2719, $r11=var3328, $r12=var1088}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter1: java.lang.Class;	$r4 := @caughtexception;	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create type ");	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" due to ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r4);	throw $r5
;block_num 2
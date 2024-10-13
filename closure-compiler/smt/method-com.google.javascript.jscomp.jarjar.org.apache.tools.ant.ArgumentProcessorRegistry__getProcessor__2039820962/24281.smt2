(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1431 0)
(declare-sort var842 0)
(declare-sort var1924 0)
(declare-sort var3375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1924-init () var1924)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var1924 String var3375) void)
(declare-fun cast-from-var842-to-var3375 (var842) var3375)
(declare-const null-var1431 var1431)
(declare-const null-ClassObject ClassObject)
(declare-const null-var842 var842)
(declare-const var764 var1431) ; Statement: r14 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry 
(assert (not (= var764 null-var1431)))
(declare-const var3938 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3938 null-ClassObject)))
(define-const var906 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var347 var842) ; Statement: $r6 := @caughtexception 
(assert (not (= var347 null-var842)))
(define-const var1559 var1924 var1924-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3033 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3033)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3033!1 String)
(assert (= var3033!1 ""))
(assert true)
(define-const var2414 String (append/672562846 var3033!1 "The argument processor class")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The argument processor class") 
(declare-const var3033!2 String)
(assert (= var3033!2 (str.++ var3033!1 "The argument processor class")))
(assert true)
(define-const var3439 String (getName/-1958580599 var3938)) ; Statement: $r9 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2171 String (append/672562846 var2414 var3439)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2414!1 String)
(assert (= var2414!1 (str.++ var2414 var3439)))
(assert true)
(define-const var2074 String (append/672562846 var2171 " could not be instantiated with a default constructor")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" could not be instantiated with a default constructor") 
(declare-const var2171!1 String)
(assert (= var2171!1 (str.++ var2171 " could not be instantiated with a default constructor")))
(assert true)
(define-const var2266 String (toString/-2075883882 var2074)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var1559 var2266 (cast-from-var842-to-var3375 var347))) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var1559!1 var1924)
(declare-const var2266!1 String)
(declare-const var347!1 var842)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var1924-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var842-to-var3375=([java.lang.Exception], java.lang.Throwable)}
; {var1431=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry, var764=r14, var3938=r0, var906=$r1, var842=java.lang.Exception, var347=$r6, var1924=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1559=$r7, var3033=$r8, var2414=$r10, var3439=$r9, var2171=$r11, var2074=$r12, var2266=$r13, var3375=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry=var1431, r14=var764, r0=var3938, $r1=var906, java.lang.Exception=var842, $r6=var347, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1924, $r7=var1559, $r8=var3033, $r10=var2414, $r9=var3439, $r11=var2171, $r12=var2074, $r13=var2266, java.lang.Throwable=var3375}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r14 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry;	r0 := @parameter0: java.lang.Class;	$r1 = newarray (java.lang.Class)[0];	$r6 := @caughtexception;	$r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The argument processor class");	$r9 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" could not be instantiated with a default constructor");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2
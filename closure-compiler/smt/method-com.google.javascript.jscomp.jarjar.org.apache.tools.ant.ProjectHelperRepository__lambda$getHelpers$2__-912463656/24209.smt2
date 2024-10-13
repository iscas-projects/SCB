(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var426 0)
(declare-sort var596 0)
(declare-sort var871 0)
(declare-sort var528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var596-init () (Array Int var596))
(declare-fun var528-init () var528)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1336633176 (var426) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var528 String) void)
(declare-const null-var426 var426)
(declare-const null-var871 var871)
(declare-const var2706 var426) ; Statement: r0 := @parameter0: java.lang.reflect.Constructor 
(assert (not (= var2706 null-var426)))
(define-const var3619 (Array Int var596) arr-var596-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1666 var871) ; Statement: $r4 := @caughtexception 
(assert (not (= var1666 null-var871)))
(define-const var3331 var528 var528-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3875 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3875)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3875!1 String)
(assert (= var3875!1 ""))
(assert true)
(define-const var3437 String (append/672562846 var3875!1 "Failed to invoke no-arg constructor on ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to invoke no-arg constructor on ") 
(declare-const var3875!2 String)
(assert (= var3875!2 (str.++ var3875!1 "Failed to invoke no-arg constructor on ")))
(assert true)
(define-const var302 String (getName/1336633176 var2706)) ; Statement: $r7 = virtualinvoke r0.<java.lang.reflect.Constructor: java.lang.String getName()>() 
(assert true)
(define-const var3159 String (append/672562846 var3437 var302)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3437!1 String)
(assert (= var3437!1 (str.++ var3437 var302)))
(assert true)
(define-const var2014 String (toString/-2075883882 var3159)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var3331 var2014)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r10) 

(declare-const var3331!1 var528)
(declare-const var2014!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var596-init=([], java.lang.Object[]), var528-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1336633176=([java.lang.reflect.Constructor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var426=java.lang.reflect.Constructor, var2706=r0, var596=java.lang.Object, var3619=$r1, var871=java.lang.Exception, var1666=$r4, var528=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3331=$r5, var3875=$r6, var3437=$r8, var302=$r7, var3159=$r9, var2014=$r10}
; {java.lang.reflect.Constructor=var426, r0=var2706, java.lang.Object=var596, $r1=var3619, java.lang.Exception=var871, $r4=var1666, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var528, $r5=var3331, $r6=var3875, $r8=var3437, $r7=var302, $r9=var3159, $r10=var2014}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Constructor;	$r1 = newarray (java.lang.Object)[0];	$r4 := @caughtexception;	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to invoke no-arg constructor on ");	$r7 = virtualinvoke r0.<java.lang.reflect.Constructor: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2
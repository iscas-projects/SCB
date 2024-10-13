(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3900 0)
(declare-sort var1043 0)
(declare-sort var2997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var2997-init () var2997)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var2997 String) void)
(declare-const null-var3900 var3900)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1043 var1043)
(declare-const var2108 var3900) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository 
(assert (not (= var2108 null-var3900)))
(declare-const var1312 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var1312 null-ClassObject)))
(define-const var186 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r2 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3896 var1043) ; Statement: $r4 := @caughtexception 
(assert (not (= var3896 null-var1043)))
(define-const var30 var2997 var2997-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3828 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3828)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3828!1 String)
(assert (= var3828!1 ""))
(assert true)
(define-const var704 String (append/672562846 var3828!1 "Couldn\u0027t find no-arg constructor in ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t find no-arg constructor in ") 
(declare-const var3828!2 String)
(assert (= var3828!2 (str.++ var3828!1 "Couldn\u0027t find no-arg constructor in ")))
(assert true)
(define-const var3259 String (getName/-1958580599 var1312)) ; Statement: $r7 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var842 String (append/672562846 var704 var3259)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var704!1 String)
(assert (= var704!1 (str.++ var704 var3259)))
(assert true)
(define-const var3644 String (toString/-2075883882 var842)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var30 var3644)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r10) 

(declare-const var30!1 var2997)
(declare-const var3644!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var2997-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3900=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository, var2108=r0, var1312=r1, var186=$r2, var1043=java.lang.NoSuchMethodException, var3896=$r4, var2997=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var30=$r5, var3828=$r6, var704=$r8, var3259=$r7, var842=$r9, var3644=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository=var3900, r0=var2108, r1=var1312, $r2=var186, java.lang.NoSuchMethodException=var1043, $r4=var3896, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2997, $r5=var30, $r6=var3828, $r8=var704, $r7=var3259, $r9=var842, $r10=var3644}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository;	r1 := @parameter0: java.lang.Class;	$r2 = newarray (java.lang.Class)[0];	$r4 := @caughtexception;	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t find no-arg constructor in ");	$r7 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2
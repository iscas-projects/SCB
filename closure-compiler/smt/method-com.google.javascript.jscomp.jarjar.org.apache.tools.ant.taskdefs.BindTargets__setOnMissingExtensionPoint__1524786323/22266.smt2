(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1364 0)
(declare-sort var3441 0)
(declare-sort var2697 0)
(declare-sort var1038 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1038-init () var1038)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var1038 String) void)
(declare-const null-var1364 var1364)
(declare-const null-String String)
(declare-const null-var2697 var2697)
(declare-const var3948 var1364) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets 
(assert (not (= var3948 null-var1364)))
(declare-const var1497 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1497 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2160 var2697) ; Statement: $r3 := @caughtexception 
(assert (not (= var2160 null-var2697)))
(define-const var2383 var1038 var1038-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var113 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var113)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var113!1 String)
(assert (= var113!1 ""))
(assert true)
(define-const var15 String (append/672562846 var113!1 "Invalid onMissingExtensionPoint: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid onMissingExtensionPoint: ") 
(declare-const var113!2 String)
(assert (= var113!2 (str.++ var113!1 "Invalid onMissingExtensionPoint: ")))
(assert true)
(define-const var3040 String (append/672562846 var15 var1497)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var15!1 String)
(assert (= var15!1 (str.++ var15 var1497)))
(assert true)
(define-const var3146 String (toString/-2075883882 var3040)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var2383 var3146)) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r8) 

(declare-const var2383!1 var1038)
(declare-const var3146!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1038-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1364=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets, var3948=r0, var1497=r1, var3441=null_type, var2697=java.lang.IllegalArgumentException, var2160=$r3, var1038=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2383=$r4, var113=$r5, var15=$r6, var3040=$r7, var3146=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets=var1364, r0=var3948, r1=var1497, null_type=var3441, java.lang.IllegalArgumentException=var2697, $r3=var2160, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1038, $r4=var2383, $r5=var113, $r6=var15, $r7=var3040, $r8=var3146}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets;	r1 := @parameter0: java.lang.String;	$r3 := @caughtexception;	$r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid onMissingExtensionPoint: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2
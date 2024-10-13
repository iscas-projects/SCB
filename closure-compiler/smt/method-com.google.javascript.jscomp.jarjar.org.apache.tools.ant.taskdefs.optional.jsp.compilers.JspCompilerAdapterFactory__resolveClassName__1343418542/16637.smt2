(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2143 0)
(declare-sort var3103 0)
(declare-sort var1352 0)
(declare-sort var2907 0)
(declare-sort var1440 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2907-init () var2907)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var2907 String var1440) void)
(declare-fun cast-from-var1352-to-var1440 (var1352) var1440)
(declare-const null-String String)
(declare-const null-var3103 var3103)
(declare-const null-var1352 var1352)
(declare-const var897 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var897 null-String)))
(declare-const var3690 var3103) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var3690 null-var3103)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1293 var1352) ; Statement: $r20 := @caughtexception 
(assert (not (= var1293 null-var1352)))
(define-const var3151 var2907 var2907-init) ; Statement: $r21 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var814 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var814)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var814!1 String)
(assert (= var814!1 ""))
(assert true)
(define-const var2909 String (append/672562846 var814!1 var897)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var814!2 String)
(assert (= var814!2 (str.++ var814!1 var897)))
(assert true)
(define-const var2202 String (append/672562846 var2909 " can\u0027t be found.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" can\'t be found.") 
(declare-const var2909!1 String)
(assert (= var2909!1 (str.++ var2909 " can\u0027t be found.")))
(assert true)
(define-const var1621 String (toString/-2075883882 var2202)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var3151 var1621 (cast-from-var1352-to-var1440 var1293))) ; Statement: specialinvoke $r21.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r20) 

(declare-const var3151!1 var2907)
(declare-const var1621!1 String)
(declare-const var1293!1 var1352)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {var2907-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var1352-to-var1440=([java.lang.ClassNotFoundException], java.lang.Throwable)}
; {var897=r1, var2143=null_type, var3103=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var3690=r0, var1352=java.lang.ClassNotFoundException, var1293=$r20, var2907=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3151=$r21, var814=$r22, var2909=$r23, var2202=$r24, var1621=$r25, var1440=java.lang.Throwable}
; {r1=var897, null_type=var2143, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var3103, r0=var3690, java.lang.ClassNotFoundException=var1352, $r20=var1293, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2907, $r21=var3151, $r22=var814, $r23=var2909, $r24=var2202, $r25=var1621, java.lang.Throwable=var1440}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	$r20 := @caughtexception;	$r21 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" can\'t be found.");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r20);	throw $r21
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var283 0)
(declare-sort var1447 0)
(declare-sort var2259 0)
(declare-sort var1535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun failOnError/1286477936 (var283) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2259) String)
(declare-fun cast-from-var1447-to-var2259 (var1447) var2259)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1535 String Int) void)
(declare-fun cast-from-var283-to-var1535 (var283) var1535)
(declare-const null-var283 var283)
(declare-const null-var1447 var1447)
(declare-const var2090 var283) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess 
(assert (not (= var2090 null-var283)))
(declare-const var3046 var1447) ; Statement: r2 := @parameter0: java.lang.Throwable 
(assert (not (= var3046 null-var1447)))
(define-const var2965 Bool (failOnError/1286477936 var2090)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: boolean failOnError> 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var2965 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3855 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3855)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3855!1 String)
(assert (= var3855!1 ""))
(assert true)
(define-const var84 String (append/672562846 var3855!1 "Caught an exception: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Caught an exception: ") 
(declare-const var3855!2 String)
(assert (= var3855!2 (str.++ var3855!1 "Caught an exception: ")))
(assert true)
(define-const var3213 String (append/-1031950772 var84 (cast-from-var1447-to-var2259 var3046))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var84!1 String)
(assert (str.prefixof var84 var84!1))
(assert true)
(define-const var1508 String (toString/-2075883882 var3213)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var283-to-var1535 var2090) var1508 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void log(java.lang.String,int)>($r5, 1) 

(declare-const var2090!1 var283)
(declare-const var1508!1 String)
(declare-const var627 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {failOnError/1286477936=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1447-to-var2259=([java.lang.Throwable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var283-to-var1535=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var283=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess, var2090=r0, var1447=java.lang.Throwable, var3046=r2, var2965=$z0, var3855=$r1, var84=$r3, var2259=java.lang.Object, var3213=$r4, var1508=$r5, var1535=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var627=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess=var283, r0=var2090, java.lang.Throwable=var1447, r2=var3046, $z0=var2965, $r1=var3855, $r3=var84, java.lang.Object=var2259, $r4=var3213, $r5=var1508, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1535, 1=var627}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess;	r2 := @parameter0: java.lang.Throwable;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: boolean failOnError>;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Caught an exception: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void log(java.lang.String,int)>($r5, 1);	return
;block_num 2
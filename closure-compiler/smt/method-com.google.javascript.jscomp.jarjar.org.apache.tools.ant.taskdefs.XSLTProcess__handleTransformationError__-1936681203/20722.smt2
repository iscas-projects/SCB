(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1488 0)
(declare-sort var2568 0)
(declare-sort var3539 0)
(declare-sort var1767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun failOnError/1286477936 (var1488) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3539) String)
(declare-fun cast-from-var2568-to-var3539 (var2568) var3539)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1767 String Int) void)
(declare-fun cast-from-var1488-to-var1767 (var1488) var1767)
(declare-const null-var1488 var1488)
(declare-const null-var2568 var2568)
(declare-const var872 var1488) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess 
(assert (not (= var872 null-var1488)))
(declare-const var3667 var2568) ; Statement: r2 := @parameter0: java.lang.Exception 
(assert (not (= var3667 null-var2568)))
(define-const var3825 Bool (failOnError/1286477936 var872)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: boolean failOnError> 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var3825 1 0) 0)) ; Cond: $z0 == 0 
(define-const var66 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var66)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var66!1 String)
(assert (= var66!1 ""))
(assert true)
(define-const var2052 String (append/672562846 var66!1 "Caught an error during transformation: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Caught an error during transformation: ") 
(declare-const var66!2 String)
(assert (= var66!2 (str.++ var66!1 "Caught an error during transformation: ")))
(assert true)
(define-const var3554 String (append/-1031950772 var2052 (cast-from-var2568-to-var3539 var3667))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2052!1 String)
(assert (str.prefixof var2052 var2052!1))
(assert true)
(define-const var2853 String (toString/-2075883882 var3554)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1488-to-var1767 var872) var2853 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void log(java.lang.String,int)>($r5, 1) 

(declare-const var872!1 var1488)
(declare-const var2853!1 String)
(declare-const var2260 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {failOnError/1286477936=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2568-to-var3539=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1488-to-var1767=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var1488=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess, var872=r0, var2568=java.lang.Exception, var3667=r2, var3825=$z0, var66=$r1, var2052=$r3, var3539=java.lang.Object, var3554=$r4, var2853=$r5, var1767=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2260=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess=var1488, r0=var872, java.lang.Exception=var2568, r2=var3667, $z0=var3825, $r1=var66, $r3=var2052, java.lang.Object=var3539, $r4=var3554, $r5=var2853, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1767, 1=var2260}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess;	r2 := @parameter0: java.lang.Exception;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: boolean failOnError>;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Caught an error during transformation: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void log(java.lang.String,int)>($r5, 1);	return
;block_num 2
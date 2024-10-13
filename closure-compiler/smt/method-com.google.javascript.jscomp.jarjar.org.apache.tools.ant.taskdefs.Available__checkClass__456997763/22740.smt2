(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var944 0)
(declare-sort var874 0)
(declare-sort var783 0)
(declare-sort var1605 0)
(declare-sort var2425 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1605) String)
(declare-fun cast-from-var783-to-var1605 (var783) var1605)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var2425 String Int) void)
(declare-fun cast-from-var944-to-var2425 (var944) var2425)
(declare-const null-var944 var944)
(declare-const null-String String)
(declare-const null-var783 var783)
(declare-const var2743 var944) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Available 
(assert (not (= var2743 null-var944)))
(declare-const var3601 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3601 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1763 var783) ; Statement: $r11 := @caughtexception 
(assert (not (= var1763 null-var783)))
(define-const var2099 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2099)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2099!1 String)
(assert (= var2099!1 ""))
(assert true)
(define-const var894 String (append/672562846 var2099!1 "Could not load dependent class \u0022")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not load dependent class \"") 
(declare-const var2099!2 String)
(assert (= var2099!2 (str.++ var2099!1 "Could not load dependent class \u0022")))
(assert true)
(define-const var1323 String (getMessage/849299655 (cast-from-var783-to-var1605 var1763))) ; Statement: $r13 = virtualinvoke $r11.<java.lang.NoClassDefFoundError: java.lang.String getMessage()>() 
(assert true)
(define-const var2854 String (append/672562846 var894 var1323)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var894!1 String)
(assert (= var894!1 (str.++ var894 var1323)))
(assert true)
(define-const var1817 String (append/672562846 var2854 "\u0022 for class \u0022")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" for class \"") 
(declare-const var2854!1 String)
(assert (= var2854!1 (str.++ var2854 "\u0022 for class \u0022")))
(assert true)
(define-const var230 String (append/672562846 var1817 var3601)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1817!1 String)
(assert (= var1817!1 (str.++ var1817 var3601)))
(assert true)
(define-const var3155 String (append/672562846 var230 "\u0022")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var230!1 String)
(assert (= var230!1 (str.++ var230 "\u0022")))
(assert true)
(define-const var2201 String (toString/-2075883882 var3155)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var944-to-var2425 var2743) var2201 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Available: void log(java.lang.String,int)>($r19, 4) 

(declare-const var2743!1 var944)
(declare-const var2201!1 String)
(declare-const var3584 Int)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var783-to-var1605=([java.lang.NoClassDefFoundError], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var944-to-var2425=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Available], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var944=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Available, var2743=r0, var3601=r3, var874=null_type, var783=java.lang.NoClassDefFoundError, var1763=$r11, var2099=$r12, var894=$r14, var1605=java.lang.Throwable, var1323=$r13, var2854=$r15, var1817=$r16, var230=$r17, var3155=$r18, var2201=$r19, var2425=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3584=4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Available=var944, r0=var2743, r3=var3601, null_type=var874, java.lang.NoClassDefFoundError=var783, $r11=var1763, $r12=var2099, $r14=var894, java.lang.Throwable=var1605, $r13=var1323, $r15=var2854, $r16=var1817, $r17=var230, $r18=var3155, $r19=var2201, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2425, 4=var3584}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Available;	r3 := @parameter0: java.lang.String;	$r11 := @caughtexception;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not load dependent class \"");	$r13 = virtualinvoke $r11.<java.lang.NoClassDefFoundError: java.lang.String getMessage()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" for class \"");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Available: void log(java.lang.String,int)>($r19, 4);	return 0
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2535 0)
(declare-sort var3147 0)
(declare-sort var2819 0)
(declare-sort var64 0)
(declare-sort var2518 0)
(declare-sort var1293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var64 String Int) void)
(declare-fun cast-from-var2535-to-var64 (var2535) var64)
(declare-fun var1293_bootstrap$/-564959007 (var2535) var2518)
(declare-fun var2819_forEach/1471512036 (var2819 var2518) void)
(declare-const null-var2535 var2535)
(declare-const null-String String)
(declare-const null-var2819 var2819)
(declare-const var1836 var2535) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend 
(assert (not (= var1836 null-var2535)))
(declare-const var2239 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2239 null-String)))
(declare-const var1620 var2819) ; Statement: r7 := @parameter1: java.util.Map 
(assert (not (= var1620 null-var2819)))
(define-const var152 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var152)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var152!1 String)
(assert (= var152!1 ""))
(assert true)
(define-const var3671 String (append/672562846 var152!1 " Class ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Class ") 
(declare-const var152!2 String)
(assert (= var152!2 (str.++ var152!1 " Class ")))
(assert true)
(define-const var2400 String (append/672562846 var3671 var2239)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3671!1 String)
(assert (= var3671!1 (str.++ var3671 var2239)))
(assert true)
(define-const var2688 String (append/672562846 var2400 " affects:")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" affects:") 
(declare-const var2400!1 String)
(assert (= var2400!1 (str.++ var2400 " affects:")))
(assert true)
(define-const var882 String (toString/-2075883882 var2688)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var2535-to-var64 var1836) var882 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: void log(java.lang.String,int)>($r6, 4) 

(declare-const var1836!1 var2535)
(declare-const var882!1 String)
(declare-const var979 Int)
(define-const var2450 var2518 (var1293_bootstrap$/-564959007 var1836!1)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_dumpDependencies_3__392: java.util.function.BiConsumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend)>(r0) 
;(assert (var2819_forEach/1471512036 var1620 var2450)) ; Statement: interfaceinvoke r7.<java.util.Map: void forEach(java.util.function.BiConsumer)>($r8) 

(declare-const var1620!1 var2819)
(declare-const var2450!1 var2518)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2535-to-var64=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var1293_bootstrap$/-564959007=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend], java.util.function.BiConsumer), var2819_forEach/1471512036=([java.util.Map, java.util.function.BiConsumer], void)}
; {var2535=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend, var1836=r0, var2239=r2, var3147=null_type, var2819=java.util.Map, var1620=r7, var152=$r1, var3671=$r3, var2400=$r4, var2688=$r5, var882=$r6, var64=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var979=4, var2518=java.util.function.BiConsumer, var1293=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_dumpDependencies_3__392, var2450=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend=var2535, r0=var1836, r2=var2239, null_type=var3147, java.util.Map=var2819, r7=var1620, $r1=var152, $r3=var3671, $r4=var2400, $r5=var2688, $r6=var882, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var64, 4=var979, java.util.function.BiConsumer=var2518, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_dumpDependencies_3__392=var1293, $r8=var2450}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend;	r2 := @parameter0: java.lang.String;	r7 := @parameter1: java.util.Map;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Class ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" affects:");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: void log(java.lang.String,int)>($r6, 4);	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_dumpDependencies_3__392: java.util.function.BiConsumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend)>(r0);	interfaceinvoke r7.<java.util.Map: void forEach(java.util.function.BiConsumer)>($r8);	return
;block_num 1
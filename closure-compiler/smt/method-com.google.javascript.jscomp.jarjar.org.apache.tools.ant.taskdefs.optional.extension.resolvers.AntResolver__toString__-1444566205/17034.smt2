(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3592 0)
(declare-sort var2842 0)
(declare-sort var3253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun antfile/-1250996757 (var3592) var2842)
(declare-fun append/-1031950772 (String var3253) String)
(declare-fun cast-from-var2842-to-var3253 (var2842) var3253)
(declare-fun destfile/-1250996757 (var3592) var2842)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3592 var3592)
(declare-const var2456 var3592) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.AntResolver 
(assert (not (= var2456 null-var3592)))
(define-const var2811 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2811)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2811!1 String)
(assert (= var2811!1 ""))
(assert true)
(define-const var99 String (append/672562846 var2811!1 "Ant[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ant[") 
(declare-const var2811!2 String)
(assert (= var2811!2 (str.++ var2811!1 "Ant[")))
(define-const var2552 var2842 (antfile/-1250996757 var2456)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.AntResolver: java.io.File antfile> 
(assert true)
(define-const var2715 String (append/-1031950772 var99 (cast-from-var2842-to-var3253 var2552))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var99!1 String)
(assert (str.prefixof var99 var99!1))
(assert true)
(define-const var2315 String (append/672562846 var2715 "==>")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("==>") 
(declare-const var2715!1 String)
(assert (= var2715!1 (str.++ var2715 "==>")))
(define-const var1072 var2842 (destfile/-1250996757 var2456)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.AntResolver: java.io.File destfile> 
(assert true)
(define-const var1048 String (append/-1031950772 var2315 (cast-from-var2842-to-var3253 var1072))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2315!1 String)
(assert (str.prefixof var2315 var2315!1))
(assert true)
(define-const var1630 String (append/672562846 var1048 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1048!1 String)
(assert (= var1048!1 (str.++ var1048 "]")))
(assert true)
(define-const var3500 String (toString/-2075883882 var1630)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), antfile/-1250996757=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.AntResolver], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2842-to-var3253=([java.io.File], java.lang.Object), destfile/-1250996757=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.AntResolver], java.io.File), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3592=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.AntResolver, var2456=r1, var2811=$r0, var99=$r3, var2842=java.io.File, var2552=$r2, var3253=java.lang.Object, var2715=$r4, var2315=$r6, var1072=$r5, var1048=$r7, var1630=$r8, var3500=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.AntResolver=var3592, r1=var2456, $r0=var2811, $r3=var99, java.io.File=var2842, $r2=var2552, java.lang.Object=var3253, $r4=var2715, $r6=var2315, $r5=var1072, $r7=var1048, $r8=var1630, $r9=var3500}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.AntResolver;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ant[");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.AntResolver: java.io.File antfile>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("==>");	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.AntResolver: java.io.File destfile>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1
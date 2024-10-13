(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3896 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun location/-1970615619 (var3896) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3896 var3896)
(declare-const var1926 var3896) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.LocationResolver 
(assert (not (= var1926 null-var3896)))
(define-const var3854 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3854)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3854!1 String)
(assert (= var3854!1 ""))
(assert true)
(define-const var2585 String (append/672562846 var3854!1 "Location[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Location[") 
(declare-const var3854!2 String)
(assert (= var3854!2 (str.++ var3854!1 "Location[")))
(define-const var1927 String (location/-1970615619 var1926)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.LocationResolver: java.lang.String location> 
(assert true)
(define-const var2870 String (append/672562846 var2585 var1927)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2585!1 String)
(assert (= var2585!1 (str.++ var2585 var1927)))
(assert true)
(define-const var509 String (append/672562846 var2870 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2870!1 String)
(assert (= var2870!1 (str.++ var2870 "]")))
(assert true)
(define-const var2811 String (toString/-2075883882 var509)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), location/-1970615619=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.LocationResolver], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3896=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.LocationResolver, var1926=r1, var3854=$r0, var2585=$r3, var1927=$r2, var2870=$r4, var509=$r5, var2811=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.LocationResolver=var3896, r1=var1926, $r0=var3854, $r3=var2585, $r2=var1927, $r4=var2870, $r5=var509, $r6=var2811}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.LocationResolver;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Location[");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.LocationResolver: java.lang.String location>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
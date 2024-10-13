(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3033 0)
(declare-sort var686 0)
(declare-sort var881 0)
(declare-sort var2526 0)
(declare-sort var2785 0)
(declare-sort var1317 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1314741259 (var881) String)
(declare-fun cast-from-var3033-to-var881 (var3033) var881)
(declare-fun getResourceAsStream/269938975 (var686 String) var2526)
(declare-fun var2785-init () var2785)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1317) String)
(declare-fun cast-from-var686-to-var1317 (var686) var1317)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1681661674 (var2785 String) void)
(declare-const null-var3033 var3033)
(declare-const null-var686 var686)
(declare-const null-var2526 var2526)
(declare-const var2207 var3033) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource 
(assert (not (= var2207 null-var3033)))
(declare-const var3717 var686) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var3717 null-var686)))
 ; Statement: if r0 != null goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>() 
(assert (not (= var3717 null-var686))) ; Cond: r0 != null 
(assert true)
(define-const var239 String (getName/1314741259 (cast-from-var3033-to-var881 var2207))) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>() 
(assert true)
(define-const var160 var2526 (getResourceAsStream/269938975 var3717 var239)) ; Statement: r19 = virtualinvoke r0.<java.lang.ClassLoader: java.io.InputStream getResourceAsStream(java.lang.String)>($r2) 
 ; Statement: if r19 != null goto return r19 
(assert (not (not (= var160 null-var2526)))) ; Negate: Cond: r19 != null  
(define-const var696 var2785 var2785-init) ; Statement: $r3 = new java.io.FileNotFoundException 
(define-const var3926 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3926)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3926!1 String)
(assert (= var3926!1 ""))
(assert true)
(define-const var1846 String (append/672562846 var3926!1 "No resource ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No resource ") 
(declare-const var3926!2 String)
(assert (= var3926!2 (str.++ var3926!1 "No resource ")))
(assert true)
(define-const var2506 String (getName/1314741259 (cast-from-var3033-to-var881 var2207))) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>() 
(assert true)
(define-const var1332 String (append/672562846 var1846 var2506)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1846!1 String)
(assert (= var1846!1 (str.++ var1846 var2506)))
(assert true)
(define-const var3377 String (append/672562846 var1332 " on the classpath ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on the classpath ") 
(declare-const var1332!1 String)
(assert (= var1332!1 (str.++ var1332 " on the classpath ")))
(assert true)
(define-const var2375 String (append/-1031950772 var3377 (cast-from-var686-to-var1317 var3717))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3377!1 String)
(assert (str.prefixof var3377 var3377!1))
(assert true)
(define-const var499 String (toString/-2075883882 var2375)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681661674 var696 var499)) ; Statement: specialinvoke $r3.<java.io.FileNotFoundException: void <init>(java.lang.String)>($r10) 

(declare-const var696!1 var2785)
(declare-const var499!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1314741259=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), cast-from-var3033-to-var881=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), getResourceAsStream/269938975=([java.lang.ClassLoader, java.lang.String], java.io.InputStream), var2785-init=([], java.io.FileNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var686-to-var1317=([java.lang.ClassLoader], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1681661674=([java.io.FileNotFoundException, java.lang.String], void)}
; {var3033=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource, var2207=r1, var686=java.lang.ClassLoader, var3717=r0, var881=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var239=$r2, var2526=java.io.InputStream, var160=r19, var2785=java.io.FileNotFoundException, var696=$r3, var3926=$r4, var1846=$r6, var2506=$r5, var1332=$r7, var3377=$r8, var1317=java.lang.Object, var2375=$r9, var499=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource=var3033, r1=var2207, java.lang.ClassLoader=var686, r0=var3717, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var881, $r2=var239, java.io.InputStream=var2526, r19=var160, java.io.FileNotFoundException=var2785, $r3=var696, $r4=var3926, $r6=var1846, $r5=var2506, $r7=var1332, $r8=var3377, java.lang.Object=var1317, $r9=var2375, $r10=var499}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource;	r0 := @parameter0: java.lang.ClassLoader;	if r0 != null goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>();	r19 = virtualinvoke r0.<java.lang.ClassLoader: java.io.InputStream getResourceAsStream(java.lang.String)>($r2);	if r19 != null goto return r19;	$r3 = new java.io.FileNotFoundException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No resource ");	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on the classpath ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.io.FileNotFoundException: void <init>(java.lang.String)>($r10);	throw $r3
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3533 0)
(declare-sort var762 0)
(declare-sort var410 0)
(declare-sort var96 0)
(declare-sort var1714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1314741259 (var410) String)
(declare-fun cast-from-var3533-to-var410 (var3533) var410)
(declare-fun var762_getSystemResourceAsStream/-651782480 (String) var96)
(declare-fun var1714-init () var1714)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1681661674 (var1714 String) void)
(declare-const null-var3533 var3533)
(declare-const null-var762 var762)
(declare-const null-var96 var96)
(declare-const var1536 var3533) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource 
(assert (not (= var1536 null-var3533)))
(declare-const var3823 var762) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var3823 null-var762)))
 ; Statement: if r0 != null goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>() 
(assert (not (not (= var3823 null-var762)))) ; Negate: Cond: r0 != null  
(assert true)
(define-const var179 String (getName/1314741259 (cast-from-var3533-to-var410 var1536))) ; Statement: $r11 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>() 
(define-const var2934 var96 (var762_getSystemResourceAsStream/-651782480 var179)) ; Statement: r19 = staticinvoke <java.lang.ClassLoader: java.io.InputStream getSystemResourceAsStream(java.lang.String)>($r11) 
 ; Statement: if r19 != null goto return r19 
(assert (not (not (= var2934 null-var96)))) ; Negate: Cond: r19 != null  
(define-const var2139 var1714 var1714-init) ; Statement: $r12 = new java.io.FileNotFoundException 
(define-const var1629 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1629)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1629!1 String)
(assert (= var1629!1 ""))
(assert true)
(define-const var2501 String (append/672562846 var1629!1 "No resource ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No resource ") 
(declare-const var1629!2 String)
(assert (= var1629!2 (str.++ var1629!1 "No resource ")))
(assert true)
(define-const var3116 String (getName/1314741259 (cast-from-var3533-to-var410 var1536))) ; Statement: $r14 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>() 
(assert true)
(define-const var1271 String (append/672562846 var2501 var3116)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2501!1 String)
(assert (= var2501!1 (str.++ var2501 var3116)))
(assert true)
(define-const var3327 String (append/672562846 var1271 " on Ant\u0027s classpath")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on Ant\'s classpath") 
(declare-const var1271!1 String)
(assert (= var1271!1 (str.++ var1271 " on Ant\u0027s classpath")))
(assert true)
(define-const var2940 String (toString/-2075883882 var3327)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681661674 var2139 var2940)) ; Statement: specialinvoke $r12.<java.io.FileNotFoundException: void <init>(java.lang.String)>($r18) 

(declare-const var2139!1 var1714)
(declare-const var2940!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1314741259=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), cast-from-var3533-to-var410=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), var762_getSystemResourceAsStream/-651782480=([java.lang.String], java.io.InputStream), var1714-init=([], java.io.FileNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1681661674=([java.io.FileNotFoundException, java.lang.String], void)}
; {var3533=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource, var1536=r1, var762=java.lang.ClassLoader, var3823=r0, var410=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var179=$r11, var96=java.io.InputStream, var2934=r19, var1714=java.io.FileNotFoundException, var2139=$r12, var1629=$r13, var2501=$r15, var3116=$r14, var1271=$r16, var3327=$r17, var2940=$r18}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource=var3533, r1=var1536, java.lang.ClassLoader=var762, r0=var3823, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var410, $r11=var179, java.io.InputStream=var96, r19=var2934, java.io.FileNotFoundException=var1714, $r12=var2139, $r13=var1629, $r15=var2501, $r14=var3116, $r16=var1271, $r17=var3327, $r18=var2940}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource;	r0 := @parameter0: java.lang.ClassLoader;	if r0 != null goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>();	$r11 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>();	r19 = staticinvoke <java.lang.ClassLoader: java.io.InputStream getSystemResourceAsStream(java.lang.String)>($r11);	if r19 != null goto return r19;	$r12 = new java.io.FileNotFoundException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No resource ");	$r14 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on Ant\'s classpath");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.io.FileNotFoundException: void <init>(java.lang.String)>($r18);	throw $r12
;block_num 3
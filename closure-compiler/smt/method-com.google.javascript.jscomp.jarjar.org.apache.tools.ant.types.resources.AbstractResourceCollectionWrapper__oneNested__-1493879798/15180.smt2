(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3547 0)
(declare-sort var1016 0)
(declare-sort var1033 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1016-init () var1016)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/284685176 (var1033) String)
(declare-fun cast-from-var3547-to-var1033 (var3547) var1033)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var1016 String) void)
(declare-const null-var3547 var3547)
(declare-const var995 var3547) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.AbstractResourceCollectionWrapper 
(assert (not (= var995 null-var3547)))
(define-const var3214 var1016 var1016-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1118 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1118)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1118!1 String)
(assert (= var1118!1 ""))
(assert true)
(define-const var154 String (toString/284685176 (cast-from-var3547-to-var1033 var995))) ; Statement: $r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType: java.lang.String toString()>() 
(assert true)
(define-const var1339 String (append/672562846 var1118!1 var154)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1118!2 String)
(assert (= var1118!2 (str.++ var1118!1 var154)))
(assert true)
(define-const var484 String (append/672562846 var1339 " expects exactly one nested resource collection.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" expects exactly one nested resource collection.") 
(declare-const var1339!1 String)
(assert (= var1339!1 (str.++ var1339 " expects exactly one nested resource collection.")))
(assert true)
(define-const var3653 String (toString/-2075883882 var484)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var3214 var3653)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6) 

(declare-const var3214!1 var1016)
(declare-const var3653!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1016-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/284685176=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], java.lang.String), cast-from-var3547-to-var1033=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.AbstractResourceCollectionWrapper], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3547=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.AbstractResourceCollectionWrapper, var995=r2, var1016=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3214=$r0, var1118=$r1, var1033=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType, var154=$r3, var1339=$r4, var484=$r5, var3653=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.AbstractResourceCollectionWrapper=var3547, r2=var995, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1016, $r0=var3214, $r1=var1118, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType=var1033, $r3=var154, $r4=var1339, $r5=var484, $r6=var3653}
;seq <java.lang.StringBuilder: void <init>()>;	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.AbstractResourceCollectionWrapper;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType: java.lang.String toString()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" expects exactly one nested resource collection.");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6);	return $r0
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var427 0)
(declare-sort var3363 0)
(declare-sort var1950 0)
(declare-sort var551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1950-init () var1950)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDataTypeName/-1724610511 (var551) String)
(declare-fun cast-from-var427-to-var551 (var427) var551)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var1950 String) void)
(declare-const null-var427 var427)
(declare-const null-var3363 var3363)
(declare-const var3560 var427) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.MultiRootFileSet 
(assert (not (= var3560 null-var427)))
(declare-const var221 var3363) ; Statement: r7 := @parameter0: java.io.File 
(assert (not (= var221 null-var3363)))
(define-const var2000 var1950 var1950-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var776 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var776)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var776!1 String)
(assert (= var776!1 ""))
(assert true)
(define-const var1142 String (getDataTypeName/-1724610511 (cast-from-var427-to-var551 var3560))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.MultiRootFileSet: java.lang.String getDataTypeName()>() 
(assert true)
(define-const var600 String (append/672562846 var776!1 var1142)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var776!2 String)
(assert (= var776!2 (str.++ var776!1 var1142)))
(assert true)
(define-const var2323 String (append/672562846 var600 " doesn\u0027t support the dir attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the dir attribute") 
(declare-const var600!1 String)
(assert (= var600!1 (str.++ var600 " doesn\u0027t support the dir attribute")))
(assert true)
(define-const var3267 String (toString/-2075883882 var2323)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var2000 var3267)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6) 

(declare-const var2000!1 var1950)
(declare-const var3267!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1950-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDataTypeName/-1724610511=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], java.lang.String), cast-from-var427-to-var551=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.MultiRootFileSet], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var427=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.MultiRootFileSet, var3560=r2, var3363=java.io.File, var221=r7, var1950=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2000=$r0, var776=$r1, var551=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType, var1142=$r3, var600=$r4, var2323=$r5, var3267=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.MultiRootFileSet=var427, r2=var3560, java.io.File=var3363, r7=var221, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1950, $r0=var2000, $r1=var776, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType=var551, $r3=var1142, $r4=var600, $r5=var2323, $r6=var3267}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.MultiRootFileSet;	r7 := @parameter0: java.io.File;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.MultiRootFileSet: java.lang.String getDataTypeName()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the dir attribute");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2546 0)
(declare-sort var3879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun mapJspToBaseName/-169318027 (var2546 var3879) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2546 var2546)
(declare-const null-var3879 var3879)
(declare-const var3999 var2546) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler 
(assert (not (= var3999 null-var2546)))
(declare-const var3391 var3879) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var3391 null-var3879)))
(define-const var784 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var784)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var784!1 String)
(assert (= var784!1 ""))
(assert true)
(define-const var902 String (mapJspToBaseName/-169318027 var3999 var3391)) ; Statement: $r3 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler: java.lang.String mapJspToBaseName(java.io.File)>(r2) 
(assert true)
(define-const var427 String (append/672562846 var784!1 var902)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var784!2 String)
(assert (= var784!2 (str.++ var784!1 var902)))
(assert true)
(define-const var2854 String (append/672562846 var427 ".java")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java") 
(declare-const var427!1 String)
(assert (= var427!1 (str.++ var427 ".java")))
(assert true)
(define-const var1453 String (toString/-2075883882 var2854)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), mapJspToBaseName/-169318027=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler, java.io.File], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2546=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler, var3999=r1, var3879=java.io.File, var3391=r2, var784=$r0, var902=$r3, var427=$r4, var2854=$r5, var1453=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler=var2546, r1=var3999, java.io.File=var3879, r2=var3391, $r0=var784, $r3=var902, $r4=var427, $r5=var2854, $r6=var1453}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler;	r2 := @parameter0: java.io.File;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler: java.lang.String mapJspToBaseName(java.io.File)>(r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
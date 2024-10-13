(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2171 0)
(declare-sort var2303 0)
(declare-sort var2631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2303-init () var2303)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDataTypeName/-1724610511 (var2631) String)
(declare-fun cast-from-var2171-to-var2631 (var2171) var2631)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var2303 String) void)
(declare-const null-var2171 var2171)
(declare-const null-Bool Bool)
(declare-const var83 var2171) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator 
(assert (not (= var83 null-var2171)))
(declare-const var1667 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1667 null-Bool)))
(define-const var2538 var2303 var2303-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3937 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3937)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3937!1 String)
(assert (= var3937!1 ""))
(assert true)
(define-const var3061 String (append/672562846 var3937!1 "you can\u0027t change the directory state of a ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("you can\'t change the directory state of a ") 
(declare-const var3937!2 String)
(assert (= var3937!2 (str.++ var3937!1 "you can\u0027t change the directory state of a ")))
(assert true)
(define-const var1253 String (getDataTypeName/-1724610511 (cast-from-var2171-to-var2631 var83))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator: java.lang.String getDataTypeName()>() 
(assert true)
(define-const var1017 String (append/672562846 var3061 var1253)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3061!1 String)
(assert (= var3061!1 (str.++ var3061 var1253)))
(assert true)
(define-const var2099 String (toString/-2075883882 var1017)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var2538 var2099)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6) 

(declare-const var2538!1 var2303)
(declare-const var2099!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2303-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDataTypeName/-1724610511=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], java.lang.String), cast-from-var2171-to-var2631=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var2171=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator, var83=r2, var1667=z0, var2303=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2538=$r0, var3937=$r1, var3061=$r4, var2631=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType, var1253=$r3, var1017=$r5, var2099=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator=var2171, r2=var83, z0=var1667, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2303, $r0=var2538, $r1=var3937, $r4=var3061, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType=var2631, $r3=var1253, $r5=var1017, $r6=var2099}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator;	z0 := @parameter0: boolean;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("you can\'t change the directory state of a ");	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator: java.lang.String getDataTypeName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1
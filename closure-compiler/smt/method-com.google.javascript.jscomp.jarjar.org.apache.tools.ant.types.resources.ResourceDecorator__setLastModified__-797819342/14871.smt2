(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3414 0)
(declare-sort var3607 0)
(declare-sort var2005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3607-init () var3607)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDataTypeName/-1724610511 (var2005) String)
(declare-fun cast-from-var3414-to-var2005 (var3414) var2005)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var3607 String) void)
(declare-const null-var3414 var3414)
(declare-const null-Int Int)
(declare-const var3635 var3414) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator 
(assert (not (= var3635 null-var3414)))
(declare-const var666 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var666 null-Int)))
(define-const var1830 var3607 var3607-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1499 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1499)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1499!1 String)
(assert (= var1499!1 ""))
(assert true)
(define-const var3497 String (append/672562846 var1499!1 "you can\u0027t change the timestamp of a ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("you can\'t change the timestamp of a ") 
(declare-const var1499!2 String)
(assert (= var1499!2 (str.++ var1499!1 "you can\u0027t change the timestamp of a ")))
(assert true)
(define-const var2990 String (getDataTypeName/-1724610511 (cast-from-var3414-to-var2005 var3635))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator: java.lang.String getDataTypeName()>() 
(assert true)
(define-const var3608 String (append/672562846 var3497 var2990)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3497!1 String)
(assert (= var3497!1 (str.++ var3497 var2990)))
(assert true)
(define-const var3883 String (toString/-2075883882 var3608)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var1830 var3883)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6) 

(declare-const var1830!1 var3607)
(declare-const var3883!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3607-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDataTypeName/-1724610511=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], java.lang.String), cast-from-var3414-to-var2005=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3414=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator, var3635=r2, var666=l0, var3607=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1830=$r0, var1499=$r1, var3497=$r4, var2005=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType, var2990=$r3, var3608=$r5, var3883=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator=var3414, r2=var3635, l0=var666, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3607, $r0=var1830, $r1=var1499, $r4=var3497, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType=var2005, $r3=var2990, $r5=var3608, $r6=var3883}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator;	l0 := @parameter0: long;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("you can\'t change the timestamp of a ");	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator: java.lang.String getDataTypeName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1
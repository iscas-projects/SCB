(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var111 0)
(declare-sort var2669 0)
(declare-sort var351 0)
(declare-sort var3562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var351-init () var351)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDataTypeName/-1724610511 (var3562) String)
(declare-fun cast-from-var111-to-var3562 (var111) var3562)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var351 String) void)
(declare-const null-var111 var111)
(declare-const null-String String)
(declare-const var1626 var111) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator 
(assert (not (= var1626 null-var111)))
(declare-const var1302 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var1302 null-String)))
(define-const var1901 var351 var351-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3813 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3813)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3813!1 String)
(assert (= var3813!1 ""))
(assert true)
(define-const var3996 String (append/672562846 var3813!1 "you can\u0027t change the name of a ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("you can\'t change the name of a ") 
(declare-const var3813!2 String)
(assert (= var3813!2 (str.++ var3813!1 "you can\u0027t change the name of a ")))
(assert true)
(define-const var199 String (getDataTypeName/-1724610511 (cast-from-var111-to-var3562 var1626))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator: java.lang.String getDataTypeName()>() 
(assert true)
(define-const var3359 String (append/672562846 var3996 var199)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3996!1 String)
(assert (= var3996!1 (str.++ var3996 var199)))
(assert true)
(define-const var1531 String (toString/-2075883882 var3359)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var1901 var1531)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6) 

(declare-const var1901!1 var351)
(declare-const var1531!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var351-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDataTypeName/-1724610511=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], java.lang.String), cast-from-var111-to-var3562=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var111=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator, var1626=r2, var1302=r7, var2669=null_type, var351=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1901=$r0, var3813=$r1, var3996=$r4, var3562=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType, var199=$r3, var3359=$r5, var1531=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator=var111, r2=var1626, r7=var1302, null_type=var2669, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var351, $r0=var1901, $r1=var3813, $r4=var3996, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType=var3562, $r3=var199, $r5=var3359, $r6=var1531}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator;	r7 := @parameter0: java.lang.String;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("you can\'t change the name of a ");	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator: java.lang.String getDataTypeName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1
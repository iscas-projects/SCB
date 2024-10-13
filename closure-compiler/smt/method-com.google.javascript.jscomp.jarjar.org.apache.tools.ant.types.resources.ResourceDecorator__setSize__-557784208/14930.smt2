(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1263 0)
(declare-sort var419 0)
(declare-sort var119 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var419-init () var419)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDataTypeName/-1724610511 (var119) String)
(declare-fun cast-from-var1263-to-var119 (var1263) var119)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var419 String) void)
(declare-const null-var1263 var1263)
(declare-const null-Int Int)
(declare-const var19 var1263) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator 
(assert (not (= var19 null-var1263)))
(declare-const var3662 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3662 null-Int)))
(define-const var2696 var419 var419-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var901 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var901)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var901!1 String)
(assert (= var901!1 ""))
(assert true)
(define-const var2474 String (append/672562846 var901!1 "you can\u0027t change the size of a ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("you can\'t change the size of a ") 
(declare-const var901!2 String)
(assert (= var901!2 (str.++ var901!1 "you can\u0027t change the size of a ")))
(assert true)
(define-const var3975 String (getDataTypeName/-1724610511 (cast-from-var1263-to-var119 var19))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator: java.lang.String getDataTypeName()>() 
(assert true)
(define-const var253 String (append/672562846 var2474 var3975)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2474!1 String)
(assert (= var2474!1 (str.++ var2474 var3975)))
(assert true)
(define-const var2123 String (toString/-2075883882 var253)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var2696 var2123)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6) 

(declare-const var2696!1 var419)
(declare-const var2123!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var419-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDataTypeName/-1724610511=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], java.lang.String), cast-from-var1263-to-var119=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1263=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator, var19=r2, var3662=l0, var419=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2696=$r0, var901=$r1, var2474=$r4, var119=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType, var3975=$r3, var253=$r5, var2123=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator=var1263, r2=var19, l0=var3662, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var419, $r0=var2696, $r1=var901, $r4=var2474, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType=var119, $r3=var3975, $r5=var253, $r6=var2123}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator;	l0 := @parameter0: long;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("you can\'t change the size of a ");	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator: java.lang.String getDataTypeName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1
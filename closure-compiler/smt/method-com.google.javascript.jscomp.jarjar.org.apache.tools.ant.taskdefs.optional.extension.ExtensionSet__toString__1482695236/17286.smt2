(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3859 0)
(declare-sort var1170 0)
(declare-sort var2828 0)
(declare-sort var3731 0)
(declare-sort var342 0)
(declare-sort var3669 0)
(declare-sort var3466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getProject/416672769 (var2828) var1170)
(declare-fun cast-from-var3859-to-var2828 (var3859) var2828)
(declare-fun toExtensions/684786486 (var3859 var1170) (Array Int var3731))
(declare-fun var3669_asList/1779083644 ((Array Int var3466)) var342)
(declare-fun cast-from-__Array__Int__var3731__-to-__Array__Int__var3466__ ((Array Int var3731)) (Array Int var3466))
(declare-fun append/-1031950772 (String var3466) String)
(declare-fun cast-from-var342-to-var3466 (var342) var3466)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3859 var3859)
(declare-const var858 var3859) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionSet 
(assert (not (= var858 null-var3859)))
(define-const var3429 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3429)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3429!1 String)
(assert (= var3429!1 ""))
(assert true)
(define-const var2518 String (append/672562846 var3429!1 "ExtensionSet")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ExtensionSet") 
(declare-const var3429!2 String)
(assert (= var3429!2 (str.++ var3429!1 "ExtensionSet")))
(assert true)
(define-const var2881 var1170 (getProject/416672769 (cast-from-var3859-to-var2828 var858))) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionSet: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var1234 (Array Int var3731) (toExtensions/684786486 var858 var2881)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionSet: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension[] toExtensions(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r2) 
(define-const var639 var342 (var3669_asList/1779083644 (cast-from-__Array__Int__var3731__-to-__Array__Int__var3466__ var1234))) ; Statement: $r4 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r3) 
(assert true)
(define-const var3142 String (append/-1031950772 var2518 (cast-from-var342-to-var3466 var639))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2518!1 String)
(assert (str.prefixof var2518 var2518!1))
(assert true)
(define-const var1904 String (toString/-2075883882 var3142)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var3859-to-var2828=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionSet], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), toExtensions/684786486=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionSet, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension[]), var3669_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__var3731__-to-__Array__Int__var3466__=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension[]], java.lang.Object[]), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var342-to-var3466=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3859=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionSet, var858=r1, var3429=$r0, var2518=$r5, var1170=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2828=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2881=$r2, var3731=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension, var1234=$r3, var342=java.util.List, var3669=java.util.Arrays, var3466=java.lang.Object, var639=$r4, var3142=$r6, var1904=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionSet=var3859, r1=var858, $r0=var3429, $r5=var2518, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1170, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2828, $r2=var2881, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension=var3731, $r3=var1234, java.util.List=var342, java.util.Arrays=var3669, java.lang.Object=var3466, $r4=var639, $r6=var3142, $r7=var1904}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionSet;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ExtensionSet");	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionSet: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionSet: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension[] toExtensions(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r2);	$r4 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1
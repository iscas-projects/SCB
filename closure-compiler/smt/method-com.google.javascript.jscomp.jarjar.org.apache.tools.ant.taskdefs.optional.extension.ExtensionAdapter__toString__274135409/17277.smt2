(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3217 0)
(declare-sort var679 0)
(declare-sort var3374 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toExtension/1012195456 (var3217) var679)
(declare-fun append/-1031950772 (String var3374) String)
(declare-fun cast-from-var679-to-var3374 (var679) var3374)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3217 var3217)
(declare-const var3686 var3217) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionAdapter 
(assert (not (= var3686 null-var3217)))
(define-const var3687 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3687)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3687!1 String)
(assert (= var3687!1 ""))
(assert true)
(define-const var1008 String (append/672562846 var3687!1 "{")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var3687!2 String)
(assert (= var3687!2 (str.++ var3687!1 "{")))
(assert true)
(define-const var1626 var679 (toExtension/1012195456 var3686)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension toExtension()>() 
(assert true)
(define-const var2531 String (append/-1031950772 var1008 (cast-from-var679-to-var3374 var1626))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1008!1 String)
(assert (str.prefixof var1008 var1008!1))
(assert true)
(define-const var1736 String (append/672562846 var2531 "}")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2531!1 String)
(assert (= var2531!1 (str.++ var2531 "}")))
(assert true)
(define-const var1958 String (toString/-2075883882 var1736)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toExtension/1012195456=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var679-to-var3374=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3217=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionAdapter, var3686=r1, var3687=$r0, var1008=$r3, var679=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension, var1626=$r2, var3374=java.lang.Object, var2531=$r4, var1736=$r5, var1958=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionAdapter=var3217, r1=var3686, $r0=var3687, $r3=var1008, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension=var679, $r2=var1626, java.lang.Object=var3374, $r4=var2531, $r5=var1736, $r6=var1958}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionAdapter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.ExtensionAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension toExtension()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
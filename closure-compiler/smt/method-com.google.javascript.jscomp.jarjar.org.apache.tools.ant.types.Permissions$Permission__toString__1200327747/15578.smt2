(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2201 0)
(declare-sort var2390 0)
(declare-sort var1374 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun className/-1608030493 (var2201) String)
(declare-fun name/-1608030493 (var2201) String)
(declare-fun actions/-1608030493 (var2201) var2390)
(declare-fun append/-1031950772 (String var1374) String)
(declare-fun cast-from-var2390-to-var1374 (var2390) var1374)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2201 var2201)
(declare-const var1073 var2201) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission 
(assert (not (= var1073 null-var2201)))
(define-const var2421 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2421)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2421!1 String)
(assert (= var2421!1 ""))
(assert true)
(define-const var1604 String (append/672562846 var2421!1 "Permission: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Permission: ") 
(declare-const var2421!2 String)
(assert (= var2421!2 (str.++ var2421!1 "Permission: ")))
(define-const var3061 String (className/-1608030493 var1073)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String className> 
(assert true)
(define-const var3089 String (append/672562846 var1604 var3061)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1604!1 String)
(assert (= var1604!1 (str.++ var1604 var3061)))
(assert true)
(define-const var2840 String (append/672562846 var3089 " (\u0022")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (\"") 
(declare-const var3089!1 String)
(assert (= var3089!1 (str.++ var3089 " (\u0022")))
(define-const var1989 String (name/-1608030493 var1073)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String name> 
(assert true)
(define-const var569 String (append/672562846 var2840 var1989)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2840!1 String)
(assert (= var2840!1 (str.++ var2840 var1989)))
(assert true)
(define-const var1595 String (append/672562846 var569 "\u0022, \u0022")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\", \"") 
(declare-const var569!1 String)
(assert (= var569!1 (str.++ var569 "\u0022, \u0022")))
(define-const var3016 var2390 (actions/-1608030493 var1073)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.util.Set actions> 
(assert true)
(define-const var2537 String (append/-1031950772 var1595 (cast-from-var2390-to-var1374 var3016))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1595!1 String)
(assert (str.prefixof var1595 var1595!1))
(assert true)
(define-const var35 String (append/672562846 var2537 "\u0022)")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\")") 
(declare-const var2537!1 String)
(assert (= var2537!1 (str.++ var2537 "\u0022)")))
(assert true)
(define-const var2165 String (toString/-2075883882 var35)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), className/-1608030493=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission], java.lang.String), name/-1608030493=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission], java.lang.String), actions/-1608030493=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission], java.util.Set), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2390-to-var1374=([java.util.Set], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2201=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission, var1073=r1, var2421=$r0, var1604=$r3, var3061=$r2, var3089=$r4, var2840=$r6, var1989=$r5, var569=$r7, var1595=$r9, var2390=java.util.Set, var3016=$r8, var1374=java.lang.Object, var2537=$r10, var35=$r11, var2165=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission=var2201, r1=var1073, $r0=var2421, $r3=var1604, $r2=var3061, $r4=var3089, $r6=var2840, $r5=var1989, $r7=var569, $r9=var1595, java.util.Set=var2390, $r8=var3016, java.lang.Object=var1374, $r10=var2537, $r11=var35, $r12=var2165}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Permission: ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String className>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (\"");	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String name>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\", \"");	$r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.util.Set actions>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1
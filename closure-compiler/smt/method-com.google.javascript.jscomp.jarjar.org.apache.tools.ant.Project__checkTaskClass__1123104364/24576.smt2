(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2418 0)
(declare-sort var2036 0)
(declare-sort var2474 0)
(declare-sort var2381 0)
(declare-sort var1659 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2036_getComponentHelper/-1420741764 (var2418) var2036)
(declare-fun checkTaskClass/1914977082 (var2036 ClassObject) void)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var2474_isPublic/-426263739 (Int) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var2381) String)
(declare-fun cast-from-ClassObject-to-var2381 (ClassObject) var2381)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var2418 String Int) void)
(declare-fun var1659-init () var1659)
(declare-fun <init>/1864341934 (var1659 String) void)
(declare-const null-var2418 var2418)
(declare-const null-ClassObject ClassObject)
(declare-const var2992 var2418) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var2992 null-var2418)))
(declare-const var3311 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3311 null-ClassObject)))
(define-const var2214 var2036 (var2036_getComponentHelper/-1420741764 var2992)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper getComponentHelper(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r0) 
(assert true)
;(assert (checkTaskClass/1914977082 var2214 var3311)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: void checkTaskClass(java.lang.Class)>(r1) 

(declare-const var2214!1 var2036)
(declare-const var3311!1 ClassObject)
(assert true)
(define-const var2488 Int (getModifiers/698981592 var3311!1)) ; Statement: $i0 = virtualinvoke r1.<java.lang.Class: int getModifiers()>() 
(define-const var3544 Bool (var2474_isPublic/-426263739 var2488)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isPublic(int)>($i0) 
 ; Statement: if $z0 != 0 goto $i1 = virtualinvoke r1.<java.lang.Class: int getModifiers()>() 
(assert (not (not (= (ite var3544 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var591 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var591)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var591!1 String)
(assert (= var591!1 ""))
(assert true)
(define-const var3400 String (append/-1031950772 var591!1 (cast-from-ClassObject-to-var2381 var3311!1))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var591!2 String)
(assert (str.prefixof var591!1 var591!2))
(assert true)
(define-const var3596 String (append/672562846 var3400 " is not public")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not public") 
(declare-const var3400!1 String)
(assert (= var3400!1 (str.++ var3400 " is not public")))
(assert true)
(define-const var3200 String (toString/-2075883882 var3596)) ; Statement: r25 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var2992 var3200 0)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>(r25, 0) 

(declare-const var2992!1 var2418)
(declare-const var3200!1 String)
(declare-const var1531 Int)
(define-const var2267 var1659 var1659-init) ; Statement: $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var2267 var3200!1)) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>(r25) 

(declare-const var2267!1 var1659)
(declare-const var3200!2 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2036_getComponentHelper/-1420741764=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper), checkTaskClass/1914977082=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, java.lang.Class], void), getModifiers/698981592=([java.lang.Class], int), var2474_isPublic/-426263739=([int], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2381=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void), var1659-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var2418=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2992=r0, var3311=r1, var2036=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, var2214=$r2, var2488=$i0, var2474=java.lang.reflect.Modifier, var3544=$z0, var591=$r9, var2381=java.lang.Object, var3400=$r10, var3596=$r11, var3200=r25, var1531=0, var1659=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2267=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2418, r0=var2992, r1=var3311, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper=var2036, $r2=var2214, $i0=var2488, java.lang.reflect.Modifier=var2474, $z0=var3544, $r9=var591, java.lang.Object=var2381, $r10=var3400, $r11=var3596, r25=var3200, 0=var1531, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1659, $r12=var2267}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter0: java.lang.Class;	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper getComponentHelper(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r0);	virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: void checkTaskClass(java.lang.Class)>(r1);	$i0 = virtualinvoke r1.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isPublic(int)>($i0);	if $z0 != 0 goto $i1 = virtualinvoke r1.<java.lang.Class: int getModifiers()>();	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not public");	r25 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>(r25, 0);	$r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>(r25);	throw $r12
;block_num 2
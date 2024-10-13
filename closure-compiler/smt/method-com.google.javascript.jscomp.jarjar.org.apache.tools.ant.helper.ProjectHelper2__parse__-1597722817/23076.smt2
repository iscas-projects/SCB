(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var152 0)
(declare-sort var495 0)
(declare-sort var2199 0)
(declare-sort var1815 0)
(declare-sort var3432 0)
(declare-sort var3222 0)
(declare-sort var2750 0)
(declare-sort var3110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1815_access$000/1439561 (var1815) var3432)
(declare-fun cast-from-var2199-to-var3222 (var2199) var3222)
(declare-fun var3110-init () var3110)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2199) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var3110 String) void)
(declare-const null-var152 var152)
(declare-const null-var495 var495)
(declare-const null-var2199 var2199)
(declare-const null-var1815 var1815)
(declare-const null-var3222 var3222)
(declare-const null-var2750 var2750)
(declare-const var3384 var152) ; Statement: r67 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2 
(assert (not (= var3384 null-var152)))
(declare-const var3439 var495) ; Statement: r11 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var3439 null-var495)))
(declare-const var2711 var2199) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2711 null-var2199)))
(declare-const var1178 var1815) ; Statement: r0 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler 
(assert (not (= var1178 null-var1815)))
(define-const var64 var3432 (var1815_access$000/1439561 var1178)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler)>(r0) 
(define-const var2397 var3222 null-var3222) ; Statement: r68 = null 
(define-const var2515 var2750 null-var2750) ; Statement: r69 = null 
(define-const var3144 Bool false) ; Statement: $z0 = r2 instanceof java.io.File 
 ; Statement: if $z0 == 0 goto $z1 = r2 instanceof java.net.URL 
(assert (not (= (ite var3144 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2397!1 var3222 (cast-from-var2199-to-var3222 var2711)) ; Statement: r68 = (java.io.File) r2 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r68 == null goto (branch) 
(assert (= var2397!1 null-var3222)) ; Cond: r68 == null 
 ; Statement: if r69 == null goto $r85 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (= var2515 null-var2750)) ; Cond: r69 == null 
(define-const var3554 var3110 var3110-init) ; Statement: $r85 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3563 String String-init) ; Statement: $r84 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3563)) ; Statement: specialinvoke $r84.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3563!1 String)
(assert (= var3563!1 ""))
(assert true)
(define-const var814 String (append/672562846 var3563!1 "Source ")) ; Statement: $r7 = virtualinvoke $r84.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Source ") 
(declare-const var3563!2 String)
(assert (= var3563!2 (str.++ var3563!1 "Source ")))
(assert true)
(define-const var3814 ClassObject (getClass/1258963082 var2711)) ; Statement: $r5 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1328 String (getName/-1958580599 var3814)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var198 String (append/672562846 var814 var1328)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var814!1 String)
(assert (= var814!1 (str.++ var814 var1328)))
(assert true)
(define-const var1143 String (append/672562846 var198 " not supported by this plugin")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not supported by this plugin") 
(declare-const var198!1 String)
(assert (= var198!1 (str.++ var198 " not supported by this plugin")))
(assert true)
(define-const var3553 String (toString/-2075883882 var1143)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var3554 var3553)) ; Statement: specialinvoke $r85.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r10) 

(declare-const var3554!1 var3110)
(declare-const var3553!1 String)
 ; Statement: throw $r85 
(check-sat)
(get-model)
(get-unsat-core)
; {var1815_access$000/1439561=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext), cast-from-var2199-to-var3222=([java.lang.Object], java.io.File), var3110-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var152=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2, var3384=r67, var495=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3439=r11, var2199=java.lang.Object, var2711=r2, var1815=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler, var1178=r0, var3432=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, var64=r1, var3222=java.io.File, var2397=r68, var2750=java.net.URL, var2515=r69, var3144=$z0, var3110=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3554=$r85, var3563=$r84, var814=$r7, var3814=$r5, var1328=$r6, var198=$r8, var1143=$r9, var3553=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2=var152, r67=var3384, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var495, r11=var3439, java.lang.Object=var2199, r2=var2711, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler=var1815, r0=var1178, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext=var3432, r1=var64, java.io.File=var3222, r68=var2397, java.net.URL=var2750, r69=var2515, $z0=var3144, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3110, $r85=var3554, $r84=var3563, $r7=var814, $r5=var3814, $r6=var1328, $r8=var198, $r9=var1143, $r10=var3553}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r67 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2;	r11 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r2 := @parameter1: java.lang.Object;	r0 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler;	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler)>(r0);	r68 = null;	r69 = null;	$z0 = r2 instanceof java.io.File;	if $z0 == 0 goto $z1 = r2 instanceof java.net.URL;	r68 = (java.io.File) r2;	goto [?= (branch)];	if r68 == null goto (branch);	if r69 == null goto $r85 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r85 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r84 = new java.lang.StringBuilder;	specialinvoke $r84.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r84.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Source ");	$r5 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not supported by this plugin");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r85.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r10);	throw $r85
;block_num 5
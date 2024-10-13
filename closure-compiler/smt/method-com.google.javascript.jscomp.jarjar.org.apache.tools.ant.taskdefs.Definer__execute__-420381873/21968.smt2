(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var459 0)
(declare-sort var526 0)
(declare-sort var3785 0)
(declare-sort var2592 0)
(declare-sort var3370 0)
(declare-sort var778 0)
(declare-sort var34 0)
(declare-sort var2062 0)
(declare-sort var1252 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun createLoader/321672321 (var3785) var526)
(declare-fun cast-from-var459-to-var3785 (var459) var3785)
(declare-fun definerSet/723307835 (var459) Bool)
(declare-fun getURI/-346485925 (var2592) String)
(declare-fun cast-from-var459-to-var2592 (var459) var2592)
(declare-fun var778-init () var778)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTaskName/237633316 (var34) String)
(declare-fun cast-from-var459-to-var34 (var459) var34)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var1252) var2062)
(declare-fun cast-from-var459-to-var1252 (var459) var1252)
(declare-fun <init>/-469549130 (var778 String var2062) void)
(declare-const null-var459 var459)
(declare-const null-String String)
(declare-const var1054 var459) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer 
(assert (not (= var1054 null-var459)))
(assert true)
(define-const var3572 var526 (createLoader/321672321 (cast-from-var459-to-var3785 var1054))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: java.lang.ClassLoader createLoader()>() 
(define-const var2768 Bool (definerSet/723307835 var1054)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: boolean definerSet> 
 ; Statement: if $z0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: java.lang.String name> 
(assert (not (not (= (ite var2768 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3910 String (getURI/-346485925 (cast-from-var459-to-var2592 var1054))) ; Statement: $r47 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: java.lang.String getURI()>() 
 ; Statement: if $r47 != null goto $r48 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: java.lang.String getURI()>() 
(assert (not (not (= var3910 null-String)))) ; Negate: Cond: $r47 != null  
(define-const var1687 var778 var778-init) ; Statement: $r57 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1478 String String-init) ; Statement: $r58 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1478)) ; Statement: specialinvoke $r58.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1478!1 String)
(assert (= var1478!1 ""))
(assert true)
(define-const var1190 String (append/672562846 var1478!1 "name, file or resource attribute of ")) ; Statement: $r60 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("name, file or resource attribute of ") 
(declare-const var1478!2 String)
(assert (= var1478!2 (str.++ var1478!1 "name, file or resource attribute of ")))
(assert true)
(define-const var3275 String (getTaskName/237633316 (cast-from-var459-to-var34 var1054))) ; Statement: $r59 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: java.lang.String getTaskName()>() 
(assert true)
(define-const var1264 String (append/672562846 var1190 var3275)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r59) 
(declare-const var1190!1 String)
(assert (= var1190!1 (str.++ var1190 var3275)))
(assert true)
(define-const var2070 String (append/672562846 var1264 " is undefined")) ; Statement: $r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is undefined") 
(declare-const var1264!1 String)
(assert (= var1264!1 (str.++ var1264 " is undefined")))
(assert true)
(define-const var2497 String (toString/-2075883882 var2070)) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3446 var2062 (getLocation/851674571 (cast-from-var459-to-var1252 var1054))) ; Statement: $r63 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var1687 var2497 var3446)) ; Statement: specialinvoke $r57.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r64, $r63) 

(declare-const var1687!1 var778)
(declare-const var2497!1 String)
(declare-const var3446!1 var2062)
 ; Statement: throw $r57 
(check-sat)
(get-model)
(get-unsat-core)
; {createLoader/321672321=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefBase], java.lang.ClassLoader), cast-from-var459-to-var3785=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefBase), definerSet/723307835=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer], boolean), getURI/-346485925=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition], java.lang.String), cast-from-var459-to-var2592=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition), var778-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTaskName/237633316=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var459-to-var34=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var459-to-var1252=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var459=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer, var1054=r0, var526=java.lang.ClassLoader, var3785=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefBase, var3572=r1, var2768=$z0, var2592=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition, var3910=$r47, var3370=null_type, var778=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1687=$r57, var1478=$r58, var1190=$r60, var34=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3275=$r59, var1264=$r61, var2070=$r62, var2497=$r64, var2062=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1252=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3446=$r63}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer=var459, r0=var1054, java.lang.ClassLoader=var526, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefBase=var3785, r1=var3572, $z0=var2768, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition=var2592, $r47=var3910, null_type=var3370, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var778, $r57=var1687, $r58=var1478, $r60=var1190, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var34, $r59=var3275, $r61=var1264, $r62=var2070, $r64=var2497, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2062, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1252, $r63=var3446}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: java.lang.ClassLoader createLoader()>();	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: boolean definerSet>;	if $z0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: java.lang.String name>;	$r47 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: java.lang.String getURI()>();	if $r47 != null goto $r48 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: java.lang.String getURI()>();	$r57 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r58 = new java.lang.StringBuilder;	specialinvoke $r58.<java.lang.StringBuilder: void <init>()>();	$r60 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("name, file or resource attribute of ");	$r59 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: java.lang.String getTaskName()>();	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r59);	$r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is undefined");	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.String toString()>();	$r63 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r57.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r64, $r63);	throw $r57
;block_num 3
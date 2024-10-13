(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var270 0)
(declare-sort var1087 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mainClass/-2083790041 (var270) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/-2083790041 (var270) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun module/-2083790041 (var270) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var270 var270)
(declare-const null-String String)
(declare-const var3819 var270) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher 
(assert (not (= var3819 null-var270)))
(define-const var114 String (mainClass/-2083790041 var3819)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String mainClass> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var114 null-String)) ; Cond: $r1 == null 
(define-const var121 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var121)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var121!1 String)
(assert (= var121!1 ""))
(define-const var1975 String (name/-2083790041 var3819)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String name> 
(assert true)
(define-const var3283 String (append/672562846 var121!1 var1975)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var121!2 String)
(assert (= var121!2 (str.++ var121!1 var1975)))
(assert true)
(define-const var3249 String (append/672562846 var3283 "=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var3283!1 String)
(assert (= var3283!1 (str.++ var3283 "=")))
(define-const var486 String (module/-2083790041 var3819)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String module> 
(assert true)
(define-const var707 String (append/672562846 var3249 var486)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3249!1 String)
(assert (= var3249!1 (str.++ var3249 var486)))
(assert true)
(define-const var1767 String (toString/-2075883882 var707)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {mainClass/-2083790041=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/-2083790041=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), module/-2083790041=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var270=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher, var3819=r0, var114=$r1, var1087=null_type, var121=$r2, var1975=$r3, var3283=$r4, var3249=$r6, var486=$r5, var707=$r7, var1767=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher=var270, r0=var3819, $r1=var114, null_type=var1087, $r2=var121, $r3=var1975, $r4=var3283, $r6=var3249, $r5=var486, $r7=var707, $r8=var1767}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String mainClass>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String name>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String module>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1619 0)
(declare-sort var3105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mainClass/-2083790041 (var1619) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/-2083790041 (var1619) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun module/-2083790041 (var1619) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1619 var1619)
(declare-const null-String String)
(declare-const var1544 var1619) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher 
(assert (not (= var1544 null-var1619)))
(define-const var2400 String (mainClass/-2083790041 var1544)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String mainClass> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var2400 null-String))) ; Negate: Cond: $r1 == null  
(define-const var845 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var845)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var845!1 String)
(assert (= var845!1 ""))
(define-const var1938 String (name/-2083790041 var1544)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String name> 
(assert true)
(define-const var3883 String (append/672562846 var845!1 var1938)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var845!2 String)
(assert (= var845!2 (str.++ var845!1 var1938)))
(assert true)
(define-const var3622 String (append/672562846 var3883 "=")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var3883!1 String)
(assert (= var3883!1 (str.++ var3883 "=")))
(define-const var426 String (module/-2083790041 var1544)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String module> 
(assert true)
(define-const var19 String (append/672562846 var3622 var426)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3622!1 String)
(assert (= var3622!1 (str.++ var3622 var426)))
(assert true)
(define-const var218 String (append/672562846 var19 "/")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var19!1 String)
(assert (= var19!1 (str.++ var19 "/")))
(define-const var2127 String (mainClass/-2083790041 var1544)) ; Statement: $r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String mainClass> 
(assert true)
(define-const var532 String (append/672562846 var218 var2127)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var218!1 String)
(assert (= var218!1 (str.++ var218 var2127)))
(assert true)
(define-const var2089 String (toString/-2075883882 var532)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {mainClass/-2083790041=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/-2083790041=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), module/-2083790041=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1619=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher, var1544=r0, var2400=$r1, var3105=null_type, var845=$r9, var1938=$r10, var3883=$r11, var3622=$r13, var426=$r12, var19=$r14, var218=$r16, var2127=$r15, var532=$r17, var2089=$r18}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher=var1619, r0=var1544, $r1=var2400, null_type=var3105, $r9=var845, $r10=var1938, $r11=var3883, $r13=var3622, $r12=var426, $r14=var19, $r16=var218, $r15=var2127, $r17=var532, $r18=var2089}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String mainClass>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String name>;	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String module>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String mainClass>;	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 2
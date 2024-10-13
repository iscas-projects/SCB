(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3581 0)
(declare-sort var2150 0)
(declare-sort var549 0)
(declare-sort var2482 0)
(declare-sort var312 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var549_getFileUtils/-1544204204 () var549)
(declare-fun areSame/1840858377 (var549 var3581 var3581) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2482) String)
(declare-fun cast-from-var3581-to-var2482 (var3581) var2482)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var312_log/1493387868 (var2150 String) void)
(declare-const null-var3581 var3581)
(declare-const null-var2150 var2150)
(declare-const var224 var3581) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var224 null-var3581)))
(declare-const var1249 var3581) ; Statement: r1 := @parameter1: java.io.File 
(assert (not (= var1249 null-var3581)))
(declare-const var3512 var2150) ; Statement: r9 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var3512 null-var2150)))
(define-const var323 var549 var549_getFileUtils/-1544204204) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils getFileUtils()>() 
(assert true)
(define-const var655 Bool (areSame/1840858377 var323 var224 var1249)) ; Statement: $z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean areSame(java.io.File,java.io.File)>(r0, r1) 
 ; Statement: if $z0 == 0 goto r3 = virtualinvoke r1.<java.io.File: java.io.File getParentFile()>() 
(assert (not (= (ite var655 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1485 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1485)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1485!1 String)
(assert (= var1485!1 ""))
(assert true)
(define-const var3173 String (append/672562846 var1485!1 "Skipping (self) copy of ")) ; Statement: $r11 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping (self) copy of ") 
(declare-const var1485!2 String)
(assert (= var1485!2 (str.++ var1485!1 "Skipping (self) copy of ")))
(assert true)
(define-const var1449 String (append/-1031950772 var3173 (cast-from-var3581-to-var2482 var224))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3173!1 String)
(assert (str.prefixof var3173 var3173!1))
(assert true)
(define-const var1915 String (append/672562846 var1449 " to ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var1449!1 String)
(assert (= var1449!1 (str.++ var1449 " to ")))
(assert true)
(define-const var2865 String (append/-1031950772 var1915 (cast-from-var3581-to-var2482 var1249))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1915!1 String)
(assert (str.prefixof var1915 var1915!1))
(assert true)
(define-const var1135 String (toString/-2075883882 var2865)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var312_log/1493387868 var3512 var1135)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils: void log(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String)>(r9, $r15) 

(declare-const var3512!1 var2150)
(declare-const var1135!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var549_getFileUtils/-1544204204=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils), areSame/1840858377=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, java.io.File, java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3581-to-var2482=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var312_log/1493387868=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], void)}
; {var3581=java.io.File, var224=r0, var1249=r1, var2150=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3512=r9, var549=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var323=$r2, var655=$z0, var1485=$r30, var3173=$r11, var2482=java.lang.Object, var1449=$r12, var1915=$r13, var2865=$r14, var1135=$r15, var312=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils}
; {java.io.File=var3581, r0=var224, r1=var1249, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2150, r9=var3512, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var549, $r2=var323, $z0=var655, $r30=var1485, $r11=var3173, java.lang.Object=var2482, $r12=var1449, $r13=var1915, $r14=var2865, $r15=var1135, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils=var312}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	r1 := @parameter1: java.io.File;	r9 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils getFileUtils()>();	$z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean areSame(java.io.File,java.io.File)>(r0, r1);	if $z0 == 0 goto r3 = virtualinvoke r1.<java.io.File: java.io.File getParentFile()>();	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping (self) copy of ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils: void log(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String)>(r9, $r15);	return
;block_num 2
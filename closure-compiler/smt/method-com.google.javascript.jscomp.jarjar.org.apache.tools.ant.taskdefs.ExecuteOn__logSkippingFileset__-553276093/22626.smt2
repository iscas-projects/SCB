(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1206 0)
(declare-sort var2521 0)
(declare-sort var2177 0)
(declare-sort var3741 0)
(declare-sort var1442 0)
(declare-sort var3270 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1442) String)
(declare-fun cast-from-var3741-to-var1442 (var3741) var1442)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-497078696 (var1206) Bool)
(declare-fun log/456963423 (var3270 String Int) void)
(declare-fun cast-from-var1206-to-var3270 (var1206) var3270)
(declare-const null-var1206 var1206)
(declare-const null-String String)
(declare-const null-var2177 var2177)
(declare-const null-var3741 var3741)
(declare-const var474 var1206) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var474 null-var1206)))
(declare-const var1930 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1930 null-String)))
(declare-const var1902 var2177) ; Statement: r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var1902 null-var2177)))
(declare-const var3659 var3741) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var3659 null-var3741)))
(define-const var2418 String "dir") ; Statement: $r1 = "dir" 
(assert true)
(define-const var2509 Bool (= var2418 var1930)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $i0 = 0 
(assert (not (= (ite var2509 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3110 Int 0) ; Statement: $i0 = 0 
(assert true) ; Non Conditional
(define-const var197 String "file") ; Statement: $r2 = "file" 
(assert true)
(define-const var2788 Bool (= var197 var1930)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $i1 = 0 
(assert (not (= (ite var2788 1 0) 0))) ; Cond: $z1 != 0 
(define-const var812 Int 0) ; Statement: $i1 = 0 
(assert true) ; Non Conditional
(define-const var2338 Int (+ var3110 var812)) ; Statement: $i2 = $i0 + $i1 
(define-const var2107 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2107)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2107!1 String)
(assert (= var2107!1 ""))
(assert true)
(define-const var2889 String (append/672562846 var2107!1 "Skipping fileset for directory ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ") 
(declare-const var2107!2 String)
(assert (= var2107!2 (str.++ var2107!1 "Skipping fileset for directory ")))
(assert true)
(define-const var993 String (append/-1031950772 var2889 (cast-from-var3741-to-var1442 var3659))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var2889!1 String)
(assert (str.prefixof var2889 var2889!1))
(assert true)
(define-const var1644 String (append/672562846 var993 ". It is ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ") 
(declare-const var993!1 String)
(assert (= var993!1 (str.++ var993 ". It is ")))
 ; Statement: if $i2 <= 0 goto $r12 = "empty." 
(assert (<= var2338 0)) ; Cond: $i2 <= 0 
(define-const var530 String "empty.") ; Statement: $r12 = "empty." 
(assert true) ; Non Conditional
(assert true)
(define-const var2370 String (append/672562846 var1644 var530)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1644!1 String)
(assert (= var1644!1 (str.++ var1644 var530)))
(assert true)
(define-const var1774 String (toString/-2075883882 var2370)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3710 Bool (verbose/-497078696 var474)) ; Statement: $z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose> 
 ; Statement: if $z2 == 0 goto $b3 = 3 
(assert (= (ite var3710 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2445 Int 3) ; Statement: $b3 = 3 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var1206-to-var3270 var474) var1774 var2445)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3) 

(declare-const var474!1 var1206)
(declare-const var1774!1 String)
(declare-const var2445!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3741-to-var1442=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1206-to-var3270=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var1206=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var474=r3, var1930=r0, var2521=null_type, var2177=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var1902=r8, var3741=java.io.File, var3659=r4, var2418=$r1, var2509=$z0, var3110=$i0, var197=$r2, var2788=$z1, var812=$i1, var2338=$i2, var2107=$r9, var2889=$r10, var1442=java.lang.Object, var993=$r11, var1644=$r5, var530=$r12, var2370=$r6, var1774=$r7, var3710=$z2, var2445=$b3, var3270=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var1206, r3=var474, r0=var1930, null_type=var2521, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var2177, r8=var1902, java.io.File=var3741, r4=var3659, $r1=var2418, $z0=var2509, $i0=var3110, $r2=var197, $z1=var2788, $i1=var812, $i2=var2338, $r9=var2107, $r10=var2889, java.lang.Object=var1442, $r11=var993, $r5=var1644, $r12=var530, $r6=var2370, $r7=var1774, $z2=var3710, $b3=var2445, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3270}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r4 := @parameter2: java.io.File;	$r1 = "dir";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $i0 = 0;	$i0 = 0;	$r2 = "file";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto $i1 = 0;	$i1 = 0;	$i2 = $i0 + $i1;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ");	if $i2 <= 0 goto $r12 = "empty.";	$r12 = "empty.";	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose>;	if $z2 == 0 goto $b3 = 3;	$b3 = 3;	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3);	return
;block_num 9
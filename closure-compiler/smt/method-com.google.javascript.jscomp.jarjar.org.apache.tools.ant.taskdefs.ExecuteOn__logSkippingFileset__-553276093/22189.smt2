(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var966 0)
(declare-sort var780 0)
(declare-sort var3883 0)
(declare-sort var3087 0)
(declare-sort var1472 0)
(declare-sort var2707 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIncludedFilesCount/628081918 (var3883) Int)
(declare-fun getIncludedDirsCount/745399035 (var3883) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1472) String)
(declare-fun cast-from-var3087-to-var1472 (var3087) var1472)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-497078696 (var966) Bool)
(declare-fun log/456963423 (var2707 String Int) void)
(declare-fun cast-from-var966-to-var2707 (var966) var2707)
(declare-const null-var966 var966)
(declare-const null-String String)
(declare-const null-var3883 var3883)
(declare-const null-var3087 var3087)
(declare-const var1863 var966) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var1863 null-var966)))
(declare-const var2033 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2033 null-String)))
(declare-const var907 var3883) ; Statement: r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var907 null-var3883)))
(declare-const var399 var3087) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var399 null-var3087)))
(define-const var2546 String "dir") ; Statement: $r1 = "dir" 
(assert true)
(define-const var2269 Bool (= var2546 var2033)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $i0 = 0 
(assert (not (not (= (ite var2269 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3554 Int (getIncludedFilesCount/628081918 var907)) ; Statement: $i0 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedFilesCount()>() 
 ; Statement: goto [?= $r2 = "file"] 
(assert true) ; Non Conditional
(define-const var157 String "file") ; Statement: $r2 = "file" 
(assert true)
(define-const var1336 Bool (= var157 var2033)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $i1 = 0 
(assert (not (not (= (ite var1336 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var2714 Int (getIncludedDirsCount/745399035 var907)) ; Statement: $i1 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedDirsCount()>() 
 ; Statement: goto [?= $i2 = $i0 + $i1] 
(assert true) ; Non Conditional
(define-const var295 Int (+ var3554 var2714)) ; Statement: $i2 = $i0 + $i1 
(define-const var1646 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1646)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1646!1 String)
(assert (= var1646!1 ""))
(assert true)
(define-const var1367 String (append/672562846 var1646!1 "Skipping fileset for directory ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ") 
(declare-const var1646!2 String)
(assert (= var1646!2 (str.++ var1646!1 "Skipping fileset for directory ")))
(assert true)
(define-const var442 String (append/-1031950772 var1367 (cast-from-var3087-to-var1472 var399))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var1367!1 String)
(assert (str.prefixof var1367 var1367!1))
(assert true)
(define-const var1160 String (append/672562846 var442 ". It is ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ") 
(declare-const var442!1 String)
(assert (= var442!1 (str.++ var442 ". It is ")))
 ; Statement: if $i2 <= 0 goto $r12 = "empty." 
(assert (<= var295 0)) ; Cond: $i2 <= 0 
(define-const var1335 String "empty.") ; Statement: $r12 = "empty." 
(assert true) ; Non Conditional
(assert true)
(define-const var1701 String (append/672562846 var1160 var1335)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1160!1 String)
(assert (= var1160!1 (str.++ var1160 var1335)))
(assert true)
(define-const var1505 String (toString/-2075883882 var1701)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var940 Bool (verbose/-497078696 var1863)) ; Statement: $z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose> 
 ; Statement: if $z2 == 0 goto $b3 = 3 
(assert (= (ite var940 1 0) 0)) ; Cond: $z2 == 0 
(define-const var586 Int 3) ; Statement: $b3 = 3 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var966-to-var2707 var1863) var1505 var586)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3) 

(declare-const var1863!1 var966)
(declare-const var1505!1 String)
(declare-const var586!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getIncludedFilesCount/628081918=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], int), getIncludedDirsCount/745399035=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3087-to-var1472=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var966-to-var2707=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var966=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var1863=r3, var2033=r0, var780=null_type, var3883=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var907=r8, var3087=java.io.File, var399=r4, var2546=$r1, var2269=$z0, var3554=$i0, var157=$r2, var1336=$z1, var2714=$i1, var295=$i2, var1646=$r9, var1367=$r10, var1472=java.lang.Object, var442=$r11, var1160=$r5, var1335=$r12, var1701=$r6, var1505=$r7, var940=$z2, var586=$b3, var2707=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var966, r3=var1863, r0=var2033, null_type=var780, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var3883, r8=var907, java.io.File=var3087, r4=var399, $r1=var2546, $z0=var2269, $i0=var3554, $r2=var157, $z1=var1336, $i1=var2714, $i2=var295, $r9=var1646, $r10=var1367, java.lang.Object=var1472, $r11=var442, $r5=var1160, $r12=var1335, $r6=var1701, $r7=var1505, $z2=var940, $b3=var586, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2707}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r4 := @parameter2: java.io.File;	$r1 = "dir";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $i0 = 0;	$i0 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedFilesCount()>();	goto [?= $r2 = "file"];	$r2 = "file";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto $i1 = 0;	$i1 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedDirsCount()>();	goto [?= $i2 = $i0 + $i1];	$i2 = $i0 + $i1;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ");	if $i2 <= 0 goto $r12 = "empty.";	$r12 = "empty.";	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose>;	if $z2 == 0 goto $b3 = 3;	$b3 = 3;	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3);	return
;block_num 9
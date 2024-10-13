(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1224 0)
(declare-sort var2333 0)
(declare-sort var3482 0)
(declare-sort var803 0)
(declare-sort var1333 0)
(declare-sort var271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIncludedFilesCount/628081918 (var3482) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1333) String)
(declare-fun cast-from-var803-to-var1333 (var803) var1333)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-497078696 (var1224) Bool)
(declare-fun log/456963423 (var271 String Int) void)
(declare-fun cast-from-var1224-to-var271 (var1224) var271)
(declare-const null-var1224 var1224)
(declare-const null-String String)
(declare-const null-var3482 var3482)
(declare-const null-var803 var803)
(declare-const var3243 var1224) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var3243 null-var1224)))
(declare-const var768 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var768 null-String)))
(declare-const var3883 var3482) ; Statement: r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var3883 null-var3482)))
(declare-const var2496 var803) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var2496 null-var803)))
(define-const var354 String "dir") ; Statement: $r1 = "dir" 
(assert true)
(define-const var3061 Bool (= var354 var768)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $i0 = 0 
(assert (not (not (= (ite var3061 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var54 Int (getIncludedFilesCount/628081918 var3883)) ; Statement: $i0 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedFilesCount()>() 
 ; Statement: goto [?= $r2 = "file"] 
(assert true) ; Non Conditional
(define-const var2544 String "file") ; Statement: $r2 = "file" 
(assert true)
(define-const var1209 Bool (= var2544 var768)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $i1 = 0 
(assert (not (= (ite var1209 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3382 Int 0) ; Statement: $i1 = 0 
(assert true) ; Non Conditional
(define-const var572 Int (+ var54 var3382)) ; Statement: $i2 = $i0 + $i1 
(define-const var1039 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1039)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1039!1 String)
(assert (= var1039!1 ""))
(assert true)
(define-const var1847 String (append/672562846 var1039!1 "Skipping fileset for directory ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ") 
(declare-const var1039!2 String)
(assert (= var1039!2 (str.++ var1039!1 "Skipping fileset for directory ")))
(assert true)
(define-const var2664 String (append/-1031950772 var1847 (cast-from-var803-to-var1333 var2496))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var1847!1 String)
(assert (str.prefixof var1847 var1847!1))
(assert true)
(define-const var3390 String (append/672562846 var2664 ". It is ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ") 
(declare-const var2664!1 String)
(assert (= var2664!1 (str.++ var2664 ". It is ")))
 ; Statement: if $i2 <= 0 goto $r12 = "empty." 
(assert (<= var572 0)) ; Cond: $i2 <= 0 
(define-const var103 String "empty.") ; Statement: $r12 = "empty." 
(assert true) ; Non Conditional
(assert true)
(define-const var1820 String (append/672562846 var3390 var103)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3390!1 String)
(assert (= var3390!1 (str.++ var3390 var103)))
(assert true)
(define-const var546 String (toString/-2075883882 var1820)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1186 Bool (verbose/-497078696 var3243)) ; Statement: $z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose> 
 ; Statement: if $z2 == 0 goto $b3 = 3 
(assert (= (ite var1186 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2665 Int 3) ; Statement: $b3 = 3 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var1224-to-var271 var3243) var546 var2665)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3) 

(declare-const var3243!1 var1224)
(declare-const var546!1 String)
(declare-const var2665!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getIncludedFilesCount/628081918=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var803-to-var1333=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1224-to-var271=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var1224=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var3243=r3, var768=r0, var2333=null_type, var3482=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var3883=r8, var803=java.io.File, var2496=r4, var354=$r1, var3061=$z0, var54=$i0, var2544=$r2, var1209=$z1, var3382=$i1, var572=$i2, var1039=$r9, var1847=$r10, var1333=java.lang.Object, var2664=$r11, var3390=$r5, var103=$r12, var1820=$r6, var546=$r7, var1186=$z2, var2665=$b3, var271=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var1224, r3=var3243, r0=var768, null_type=var2333, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var3482, r8=var3883, java.io.File=var803, r4=var2496, $r1=var354, $z0=var3061, $i0=var54, $r2=var2544, $z1=var1209, $i1=var3382, $i2=var572, $r9=var1039, $r10=var1847, java.lang.Object=var1333, $r11=var2664, $r5=var3390, $r12=var103, $r6=var1820, $r7=var546, $z2=var1186, $b3=var2665, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var271}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r4 := @parameter2: java.io.File;	$r1 = "dir";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $i0 = 0;	$i0 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedFilesCount()>();	goto [?= $r2 = "file"];	$r2 = "file";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto $i1 = 0;	$i1 = 0;	$i2 = $i0 + $i1;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ");	if $i2 <= 0 goto $r12 = "empty.";	$r12 = "empty.";	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose>;	if $z2 == 0 goto $b3 = 3;	$b3 = 3;	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3);	return
;block_num 9
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3116 0)
(declare-sort var2368 0)
(declare-sort var1987 0)
(declare-sort var2190 0)
(declare-sort var1807 0)
(declare-sort var146 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIncludedFilesCount/628081918 (var1987) Int)
(declare-fun getIncludedDirsCount/745399035 (var1987) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1807) String)
(declare-fun cast-from-var2190-to-var1807 (var2190) var1807)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-497078696 (var3116) Bool)
(declare-fun log/456963423 (var146 String Int) void)
(declare-fun cast-from-var3116-to-var146 (var3116) var146)
(declare-const null-var3116 var3116)
(declare-const null-String String)
(declare-const null-var1987 var1987)
(declare-const null-var2190 var2190)
(declare-const var3103 var3116) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var3103 null-var3116)))
(declare-const var1801 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1801 null-String)))
(declare-const var78 var1987) ; Statement: r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var78 null-var1987)))
(declare-const var1898 var2190) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var1898 null-var2190)))
(define-const var1468 String "dir") ; Statement: $r1 = "dir" 
(assert true)
(define-const var3292 Bool (= var1468 var1801)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $i0 = 0 
(assert (not (not (= (ite var3292 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3621 Int (getIncludedFilesCount/628081918 var78)) ; Statement: $i0 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedFilesCount()>() 
 ; Statement: goto [?= $r2 = "file"] 
(assert true) ; Non Conditional
(define-const var3199 String "file") ; Statement: $r2 = "file" 
(assert true)
(define-const var392 Bool (= var3199 var1801)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $i1 = 0 
(assert (not (not (= (ite var392 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var1701 Int (getIncludedDirsCount/745399035 var78)) ; Statement: $i1 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedDirsCount()>() 
 ; Statement: goto [?= $i2 = $i0 + $i1] 
(assert true) ; Non Conditional
(define-const var3602 Int (+ var3621 var1701)) ; Statement: $i2 = $i0 + $i1 
(define-const var2844 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2844)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2844!1 String)
(assert (= var2844!1 ""))
(assert true)
(define-const var1653 String (append/672562846 var2844!1 "Skipping fileset for directory ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ") 
(declare-const var2844!2 String)
(assert (= var2844!2 (str.++ var2844!1 "Skipping fileset for directory ")))
(assert true)
(define-const var867 String (append/-1031950772 var1653 (cast-from-var2190-to-var1807 var1898))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var1653!1 String)
(assert (str.prefixof var1653 var1653!1))
(assert true)
(define-const var1458 String (append/672562846 var867 ". It is ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ") 
(declare-const var867!1 String)
(assert (= var867!1 (str.++ var867 ". It is ")))
 ; Statement: if $i2 <= 0 goto $r12 = "empty." 
(assert (not (<= var3602 0))) ; Negate: Cond: $i2 <= 0  
(define-const var534 String "up to date.") ; Statement: $r12 = "up to date." 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3022 String (append/672562846 var1458 var534)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1458!1 String)
(assert (= var1458!1 (str.++ var1458 var534)))
(assert true)
(define-const var2731 String (toString/-2075883882 var3022)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2135 Bool (verbose/-497078696 var3103)) ; Statement: $z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose> 
 ; Statement: if $z2 == 0 goto $b3 = 3 
(assert (= (ite var2135 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3935 Int 3) ; Statement: $b3 = 3 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var3116-to-var146 var3103) var2731 var3935)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3) 

(declare-const var3103!1 var3116)
(declare-const var2731!1 String)
(declare-const var3935!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getIncludedFilesCount/628081918=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], int), getIncludedDirsCount/745399035=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2190-to-var1807=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3116-to-var146=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var3116=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var3103=r3, var1801=r0, var2368=null_type, var1987=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var78=r8, var2190=java.io.File, var1898=r4, var1468=$r1, var3292=$z0, var3621=$i0, var3199=$r2, var392=$z1, var1701=$i1, var3602=$i2, var2844=$r9, var1653=$r10, var1807=java.lang.Object, var867=$r11, var1458=$r5, var534=$r12, var3022=$r6, var2731=$r7, var2135=$z2, var3935=$b3, var146=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var3116, r3=var3103, r0=var1801, null_type=var2368, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var1987, r8=var78, java.io.File=var2190, r4=var1898, $r1=var1468, $z0=var3292, $i0=var3621, $r2=var3199, $z1=var392, $i1=var1701, $i2=var3602, $r9=var2844, $r10=var1653, java.lang.Object=var1807, $r11=var867, $r5=var1458, $r12=var534, $r6=var3022, $r7=var2731, $z2=var2135, $b3=var3935, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var146}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r4 := @parameter2: java.io.File;	$r1 = "dir";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $i0 = 0;	$i0 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedFilesCount()>();	goto [?= $r2 = "file"];	$r2 = "file";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto $i1 = 0;	$i1 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedDirsCount()>();	goto [?= $i2 = $i0 + $i1];	$i2 = $i0 + $i1;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ");	if $i2 <= 0 goto $r12 = "empty.";	$r12 = "up to date.";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose>;	if $z2 == 0 goto $b3 = 3;	$b3 = 3;	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3);	return
;block_num 9
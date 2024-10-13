(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var645 0)
(declare-sort var1453 0)
(declare-sort var1892 0)
(declare-sort var35 0)
(declare-sort var3074 0)
(declare-sort var2155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIncludedFilesCount/628081918 (var1892) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3074) String)
(declare-fun cast-from-var35-to-var3074 (var35) var3074)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-497078696 (var645) Bool)
(declare-fun log/456963423 (var2155 String Int) void)
(declare-fun cast-from-var645-to-var2155 (var645) var2155)
(declare-const null-var645 var645)
(declare-const null-String String)
(declare-const null-var1892 var1892)
(declare-const null-var35 var35)
(declare-const var113 var645) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var113 null-var645)))
(declare-const var3712 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3712 null-String)))
(declare-const var3326 var1892) ; Statement: r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var3326 null-var1892)))
(declare-const var1588 var35) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var1588 null-var35)))
(define-const var1984 String "dir") ; Statement: $r1 = "dir" 
(assert true)
(define-const var3721 Bool (= var1984 var3712)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $i0 = 0 
(assert (not (not (= (ite var3721 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1110 Int (getIncludedFilesCount/628081918 var3326)) ; Statement: $i0 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedFilesCount()>() 
 ; Statement: goto [?= $r2 = "file"] 
(assert true) ; Non Conditional
(define-const var273 String "file") ; Statement: $r2 = "file" 
(assert true)
(define-const var2361 Bool (= var273 var3712)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $i1 = 0 
(assert (not (= (ite var2361 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1260 Int 0) ; Statement: $i1 = 0 
(assert true) ; Non Conditional
(define-const var302 Int (+ var1110 var1260)) ; Statement: $i2 = $i0 + $i1 
(define-const var279 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var279)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var279!1 String)
(assert (= var279!1 ""))
(assert true)
(define-const var2265 String (append/672562846 var279!1 "Skipping fileset for directory ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ") 
(declare-const var279!2 String)
(assert (= var279!2 (str.++ var279!1 "Skipping fileset for directory ")))
(assert true)
(define-const var2268 String (append/-1031950772 var2265 (cast-from-var35-to-var3074 var1588))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var2265!1 String)
(assert (str.prefixof var2265 var2265!1))
(assert true)
(define-const var2170 String (append/672562846 var2268 ". It is ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ") 
(declare-const var2268!1 String)
(assert (= var2268!1 (str.++ var2268 ". It is ")))
 ; Statement: if $i2 <= 0 goto $r12 = "empty." 
(assert (not (<= var302 0))) ; Negate: Cond: $i2 <= 0  
(define-const var2941 String "up to date.") ; Statement: $r12 = "up to date." 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2992 String (append/672562846 var2170 var2941)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2170!1 String)
(assert (= var2170!1 (str.++ var2170 var2941)))
(assert true)
(define-const var389 String (toString/-2075883882 var2992)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1 Bool (verbose/-497078696 var113)) ; Statement: $z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose> 
 ; Statement: if $z2 == 0 goto $b3 = 3 
(assert (= (ite var1 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2991 Int 3) ; Statement: $b3 = 3 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var645-to-var2155 var113) var389 var2991)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3) 

(declare-const var113!1 var645)
(declare-const var389!1 String)
(declare-const var2991!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getIncludedFilesCount/628081918=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var35-to-var3074=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var645-to-var2155=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var645=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var113=r3, var3712=r0, var1453=null_type, var1892=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var3326=r8, var35=java.io.File, var1588=r4, var1984=$r1, var3721=$z0, var1110=$i0, var273=$r2, var2361=$z1, var1260=$i1, var302=$i2, var279=$r9, var2265=$r10, var3074=java.lang.Object, var2268=$r11, var2170=$r5, var2941=$r12, var2992=$r6, var389=$r7, var1=$z2, var2991=$b3, var2155=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var645, r3=var113, r0=var3712, null_type=var1453, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var1892, r8=var3326, java.io.File=var35, r4=var1588, $r1=var1984, $z0=var3721, $i0=var1110, $r2=var273, $z1=var2361, $i1=var1260, $i2=var302, $r9=var279, $r10=var2265, java.lang.Object=var3074, $r11=var2268, $r5=var2170, $r12=var2941, $r6=var2992, $r7=var389, $z2=var1, $b3=var2991, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2155}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r4 := @parameter2: java.io.File;	$r1 = "dir";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $i0 = 0;	$i0 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedFilesCount()>();	goto [?= $r2 = "file"];	$r2 = "file";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto $i1 = 0;	$i1 = 0;	$i2 = $i0 + $i1;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ");	if $i2 <= 0 goto $r12 = "empty.";	$r12 = "up to date.";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose>;	if $z2 == 0 goto $b3 = 3;	$b3 = 3;	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3);	return
;block_num 9
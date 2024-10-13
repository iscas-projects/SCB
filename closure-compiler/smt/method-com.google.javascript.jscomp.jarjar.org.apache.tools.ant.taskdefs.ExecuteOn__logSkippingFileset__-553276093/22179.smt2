(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3659 0)
(declare-sort var1624 0)
(declare-sort var3675 0)
(declare-sort var921 0)
(declare-sort var1317 0)
(declare-sort var3072 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIncludedFilesCount/628081918 (var3675) Int)
(declare-fun getIncludedDirsCount/745399035 (var3675) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1317) String)
(declare-fun cast-from-var921-to-var1317 (var921) var1317)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-497078696 (var3659) Bool)
(declare-fun log/456963423 (var3072 String Int) void)
(declare-fun cast-from-var3659-to-var3072 (var3659) var3072)
(declare-const null-var3659 var3659)
(declare-const null-String String)
(declare-const null-var3675 var3675)
(declare-const null-var921 var921)
(declare-const var1289 var3659) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var1289 null-var3659)))
(declare-const var7 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var7 null-String)))
(declare-const var638 var3675) ; Statement: r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var638 null-var3675)))
(declare-const var592 var921) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var592 null-var921)))
(define-const var980 String "dir") ; Statement: $r1 = "dir" 
(assert true)
(define-const var2469 Bool (= var980 var7)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $i0 = 0 
(assert (not (not (= (ite var2469 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var2854 Int (getIncludedFilesCount/628081918 var638)) ; Statement: $i0 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedFilesCount()>() 
 ; Statement: goto [?= $r2 = "file"] 
(assert true) ; Non Conditional
(define-const var3260 String "file") ; Statement: $r2 = "file" 
(assert true)
(define-const var3096 Bool (= var3260 var7)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $i1 = 0 
(assert (not (not (= (ite var3096 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var868 Int (getIncludedDirsCount/745399035 var638)) ; Statement: $i1 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedDirsCount()>() 
 ; Statement: goto [?= $i2 = $i0 + $i1] 
(assert true) ; Non Conditional
(define-const var2741 Int (+ var2854 var868)) ; Statement: $i2 = $i0 + $i1 
(define-const var1761 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1761)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1761!1 String)
(assert (= var1761!1 ""))
(assert true)
(define-const var2853 String (append/672562846 var1761!1 "Skipping fileset for directory ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ") 
(declare-const var1761!2 String)
(assert (= var1761!2 (str.++ var1761!1 "Skipping fileset for directory ")))
(assert true)
(define-const var934 String (append/-1031950772 var2853 (cast-from-var921-to-var1317 var592))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var2853!1 String)
(assert (str.prefixof var2853 var2853!1))
(assert true)
(define-const var408 String (append/672562846 var934 ". It is ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ") 
(declare-const var934!1 String)
(assert (= var934!1 (str.++ var934 ". It is ")))
 ; Statement: if $i2 <= 0 goto $r12 = "empty." 
(assert (<= var2741 0)) ; Cond: $i2 <= 0 
(define-const var3727 String "empty.") ; Statement: $r12 = "empty." 
(assert true) ; Non Conditional
(assert true)
(define-const var1873 String (append/672562846 var408 var3727)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var408!1 String)
(assert (= var408!1 (str.++ var408 var3727)))
(assert true)
(define-const var2659 String (toString/-2075883882 var1873)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1126 Bool (verbose/-497078696 var1289)) ; Statement: $z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose> 
 ; Statement: if $z2 == 0 goto $b3 = 3 
(assert (not (= (ite var1126 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1299 Int 2) ; Statement: $b3 = 2 
 ; Statement: goto [?= virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var3659-to-var3072 var1289) var2659 var1299)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3) 

(declare-const var1289!1 var3659)
(declare-const var2659!1 String)
(declare-const var1299!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getIncludedFilesCount/628081918=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], int), getIncludedDirsCount/745399035=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var921-to-var1317=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3659-to-var3072=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var3659=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var1289=r3, var7=r0, var1624=null_type, var3675=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var638=r8, var921=java.io.File, var592=r4, var980=$r1, var2469=$z0, var2854=$i0, var3260=$r2, var3096=$z1, var868=$i1, var2741=$i2, var1761=$r9, var2853=$r10, var1317=java.lang.Object, var934=$r11, var408=$r5, var3727=$r12, var1873=$r6, var2659=$r7, var1126=$z2, var1299=$b3, var3072=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var3659, r3=var1289, r0=var7, null_type=var1624, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var3675, r8=var638, java.io.File=var921, r4=var592, $r1=var980, $z0=var2469, $i0=var2854, $r2=var3260, $z1=var3096, $i1=var868, $i2=var2741, $r9=var1761, $r10=var2853, java.lang.Object=var1317, $r11=var934, $r5=var408, $r12=var3727, $r6=var1873, $r7=var2659, $z2=var1126, $b3=var1299, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3072}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r4 := @parameter2: java.io.File;	$r1 = "dir";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $i0 = 0;	$i0 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedFilesCount()>();	goto [?= $r2 = "file"];	$r2 = "file";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto $i1 = 0;	$i1 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedDirsCount()>();	goto [?= $i2 = $i0 + $i1];	$i2 = $i0 + $i1;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ");	if $i2 <= 0 goto $r12 = "empty.";	$r12 = "empty.";	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose>;	if $z2 == 0 goto $b3 = 3;	$b3 = 2;	goto [?= virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3)];	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3);	return
;block_num 9
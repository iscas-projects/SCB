(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3617 0)
(declare-sort var3328 0)
(declare-sort var3088 0)
(declare-sort var533 0)
(declare-sort var1059 0)
(declare-sort var3503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIncludedDirsCount/745399035 (var3088) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1059) String)
(declare-fun cast-from-var533-to-var1059 (var533) var1059)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-497078696 (var3617) Bool)
(declare-fun log/456963423 (var3503 String Int) void)
(declare-fun cast-from-var3617-to-var3503 (var3617) var3503)
(declare-const null-var3617 var3617)
(declare-const null-String String)
(declare-const null-var3088 var3088)
(declare-const null-var533 var533)
(declare-const var1127 var3617) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var1127 null-var3617)))
(declare-const var2567 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2567 null-String)))
(declare-const var3163 var3088) ; Statement: r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var3163 null-var3088)))
(declare-const var1570 var533) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var1570 null-var533)))
(define-const var1666 String "dir") ; Statement: $r1 = "dir" 
(assert true)
(define-const var3199 Bool (= var1666 var2567)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $i0 = 0 
(assert (not (= (ite var3199 1 0) 0))) ; Cond: $z0 != 0 
(define-const var722 Int 0) ; Statement: $i0 = 0 
(assert true) ; Non Conditional
(define-const var1609 String "file") ; Statement: $r2 = "file" 
(assert true)
(define-const var72 Bool (= var1609 var2567)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $i1 = 0 
(assert (not (not (= (ite var72 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var40 Int (getIncludedDirsCount/745399035 var3163)) ; Statement: $i1 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedDirsCount()>() 
 ; Statement: goto [?= $i2 = $i0 + $i1] 
(assert true) ; Non Conditional
(define-const var3107 Int (+ var722 var40)) ; Statement: $i2 = $i0 + $i1 
(define-const var30 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var30)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var30!1 String)
(assert (= var30!1 ""))
(assert true)
(define-const var2211 String (append/672562846 var30!1 "Skipping fileset for directory ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ") 
(declare-const var30!2 String)
(assert (= var30!2 (str.++ var30!1 "Skipping fileset for directory ")))
(assert true)
(define-const var1731 String (append/-1031950772 var2211 (cast-from-var533-to-var1059 var1570))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var2211!1 String)
(assert (str.prefixof var2211 var2211!1))
(assert true)
(define-const var1891 String (append/672562846 var1731 ". It is ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ") 
(declare-const var1731!1 String)
(assert (= var1731!1 (str.++ var1731 ". It is ")))
 ; Statement: if $i2 <= 0 goto $r12 = "empty." 
(assert (not (<= var3107 0))) ; Negate: Cond: $i2 <= 0  
(define-const var1974 String "up to date.") ; Statement: $r12 = "up to date." 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3501 String (append/672562846 var1891 var1974)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1891!1 String)
(assert (= var1891!1 (str.++ var1891 var1974)))
(assert true)
(define-const var2574 String (toString/-2075883882 var3501)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2048 Bool (verbose/-497078696 var1127)) ; Statement: $z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose> 
 ; Statement: if $z2 == 0 goto $b3 = 3 
(assert (not (= (ite var2048 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2551 Int 2) ; Statement: $b3 = 2 
 ; Statement: goto [?= virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var3617-to-var3503 var1127) var2574 var2551)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3) 

(declare-const var1127!1 var3617)
(declare-const var2574!1 String)
(declare-const var2551!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getIncludedDirsCount/745399035=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var533-to-var1059=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3617-to-var3503=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var3617=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var1127=r3, var2567=r0, var3328=null_type, var3088=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var3163=r8, var533=java.io.File, var1570=r4, var1666=$r1, var3199=$z0, var722=$i0, var1609=$r2, var72=$z1, var40=$i1, var3107=$i2, var30=$r9, var2211=$r10, var1059=java.lang.Object, var1731=$r11, var1891=$r5, var1974=$r12, var3501=$r6, var2574=$r7, var2048=$z2, var2551=$b3, var3503=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var3617, r3=var1127, r0=var2567, null_type=var3328, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var3088, r8=var3163, java.io.File=var533, r4=var1570, $r1=var1666, $z0=var3199, $i0=var722, $r2=var1609, $z1=var72, $i1=var40, $i2=var3107, $r9=var30, $r10=var2211, java.lang.Object=var1059, $r11=var1731, $r5=var1891, $r12=var1974, $r6=var3501, $r7=var2574, $z2=var2048, $b3=var2551, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3503}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r4 := @parameter2: java.io.File;	$r1 = "dir";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $i0 = 0;	$i0 = 0;	$r2 = "file";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto $i1 = 0;	$i1 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedDirsCount()>();	goto [?= $i2 = $i0 + $i1];	$i2 = $i0 + $i1;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ");	if $i2 <= 0 goto $r12 = "empty.";	$r12 = "up to date.";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose>;	if $z2 == 0 goto $b3 = 3;	$b3 = 2;	goto [?= virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3)];	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3);	return
;block_num 9
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2571 0)
(declare-sort var583 0)
(declare-sort var1155 0)
(declare-sort var1242 0)
(declare-sort var3263 0)
(declare-sort var3056 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIncludedDirsCount/745399035 (var1155) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3263) String)
(declare-fun cast-from-var1242-to-var3263 (var1242) var3263)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-497078696 (var2571) Bool)
(declare-fun log/456963423 (var3056 String Int) void)
(declare-fun cast-from-var2571-to-var3056 (var2571) var3056)
(declare-const null-var2571 var2571)
(declare-const null-String String)
(declare-const null-var1155 var1155)
(declare-const null-var1242 var1242)
(declare-const var2774 var2571) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var2774 null-var2571)))
(declare-const var1100 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1100 null-String)))
(declare-const var132 var1155) ; Statement: r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var132 null-var1155)))
(declare-const var977 var1242) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var977 null-var1242)))
(define-const var221 String "dir") ; Statement: $r1 = "dir" 
(assert true)
(define-const var3405 Bool (= var221 var1100)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $i0 = 0 
(assert (not (= (ite var3405 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3676 Int 0) ; Statement: $i0 = 0 
(assert true) ; Non Conditional
(define-const var630 String "file") ; Statement: $r2 = "file" 
(assert true)
(define-const var3435 Bool (= var630 var1100)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $i1 = 0 
(assert (not (not (= (ite var3435 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var3606 Int (getIncludedDirsCount/745399035 var132)) ; Statement: $i1 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedDirsCount()>() 
 ; Statement: goto [?= $i2 = $i0 + $i1] 
(assert true) ; Non Conditional
(define-const var1112 Int (+ var3676 var3606)) ; Statement: $i2 = $i0 + $i1 
(define-const var2536 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2536)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2536!1 String)
(assert (= var2536!1 ""))
(assert true)
(define-const var145 String (append/672562846 var2536!1 "Skipping fileset for directory ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ") 
(declare-const var2536!2 String)
(assert (= var2536!2 (str.++ var2536!1 "Skipping fileset for directory ")))
(assert true)
(define-const var306 String (append/-1031950772 var145 (cast-from-var1242-to-var3263 var977))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var145!1 String)
(assert (str.prefixof var145 var145!1))
(assert true)
(define-const var462 String (append/672562846 var306 ". It is ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ") 
(declare-const var306!1 String)
(assert (= var306!1 (str.++ var306 ". It is ")))
 ; Statement: if $i2 <= 0 goto $r12 = "empty." 
(assert (<= var1112 0)) ; Cond: $i2 <= 0 
(define-const var2996 String "empty.") ; Statement: $r12 = "empty." 
(assert true) ; Non Conditional
(assert true)
(define-const var434 String (append/672562846 var462 var2996)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var462!1 String)
(assert (= var462!1 (str.++ var462 var2996)))
(assert true)
(define-const var1196 String (toString/-2075883882 var434)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1982 Bool (verbose/-497078696 var2774)) ; Statement: $z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose> 
 ; Statement: if $z2 == 0 goto $b3 = 3 
(assert (= (ite var1982 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1925 Int 3) ; Statement: $b3 = 3 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var2571-to-var3056 var2774) var1196 var1925)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3) 

(declare-const var2774!1 var2571)
(declare-const var1196!1 String)
(declare-const var1925!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getIncludedDirsCount/745399035=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1242-to-var3263=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2571-to-var3056=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var2571=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var2774=r3, var1100=r0, var583=null_type, var1155=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var132=r8, var1242=java.io.File, var977=r4, var221=$r1, var3405=$z0, var3676=$i0, var630=$r2, var3435=$z1, var3606=$i1, var1112=$i2, var2536=$r9, var145=$r10, var3263=java.lang.Object, var306=$r11, var462=$r5, var2996=$r12, var434=$r6, var1196=$r7, var1982=$z2, var1925=$b3, var3056=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var2571, r3=var2774, r0=var1100, null_type=var583, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var1155, r8=var132, java.io.File=var1242, r4=var977, $r1=var221, $z0=var3405, $i0=var3676, $r2=var630, $z1=var3435, $i1=var3606, $i2=var1112, $r9=var2536, $r10=var145, java.lang.Object=var3263, $r11=var306, $r5=var462, $r12=var2996, $r6=var434, $r7=var1196, $z2=var1982, $b3=var1925, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3056}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r4 := @parameter2: java.io.File;	$r1 = "dir";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $i0 = 0;	$i0 = 0;	$r2 = "file";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto $i1 = 0;	$i1 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedDirsCount()>();	goto [?= $i2 = $i0 + $i1];	$i2 = $i0 + $i1;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ");	if $i2 <= 0 goto $r12 = "empty.";	$r12 = "empty.";	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose>;	if $z2 == 0 goto $b3 = 3;	$b3 = 3;	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3);	return
;block_num 9
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var416 0)
(declare-sort var945 0)
(declare-sort var3586 0)
(declare-sort var3610 0)
(declare-sort var50 0)
(declare-sort var3048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIncludedDirsCount/745399035 (var3586) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var50) String)
(declare-fun cast-from-var3610-to-var50 (var3610) var50)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-497078696 (var416) Bool)
(declare-fun log/456963423 (var3048 String Int) void)
(declare-fun cast-from-var416-to-var3048 (var416) var3048)
(declare-const null-var416 var416)
(declare-const null-String String)
(declare-const null-var3586 var3586)
(declare-const null-var3610 var3610)
(declare-const var52 var416) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var52 null-var416)))
(declare-const var3452 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3452 null-String)))
(declare-const var648 var3586) ; Statement: r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var648 null-var3586)))
(declare-const var3394 var3610) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var3394 null-var3610)))
(define-const var3378 String "dir") ; Statement: $r1 = "dir" 
(assert true)
(define-const var2269 Bool (= var3378 var3452)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $i0 = 0 
(assert (not (= (ite var2269 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2073 Int 0) ; Statement: $i0 = 0 
(assert true) ; Non Conditional
(define-const var1879 String "file") ; Statement: $r2 = "file" 
(assert true)
(define-const var94 Bool (= var1879 var3452)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $i1 = 0 
(assert (not (not (= (ite var94 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var84 Int (getIncludedDirsCount/745399035 var648)) ; Statement: $i1 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedDirsCount()>() 
 ; Statement: goto [?= $i2 = $i0 + $i1] 
(assert true) ; Non Conditional
(define-const var2379 Int (+ var2073 var84)) ; Statement: $i2 = $i0 + $i1 
(define-const var1293 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1293)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1293!1 String)
(assert (= var1293!1 ""))
(assert true)
(define-const var1740 String (append/672562846 var1293!1 "Skipping fileset for directory ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ") 
(declare-const var1293!2 String)
(assert (= var1293!2 (str.++ var1293!1 "Skipping fileset for directory ")))
(assert true)
(define-const var3878 String (append/-1031950772 var1740 (cast-from-var3610-to-var50 var3394))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var1740!1 String)
(assert (str.prefixof var1740 var1740!1))
(assert true)
(define-const var71 String (append/672562846 var3878 ". It is ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ") 
(declare-const var3878!1 String)
(assert (= var3878!1 (str.++ var3878 ". It is ")))
 ; Statement: if $i2 <= 0 goto $r12 = "empty." 
(assert (not (<= var2379 0))) ; Negate: Cond: $i2 <= 0  
(define-const var1565 String "up to date.") ; Statement: $r12 = "up to date." 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1859 String (append/672562846 var71 var1565)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var71!1 String)
(assert (= var71!1 (str.++ var71 var1565)))
(assert true)
(define-const var664 String (toString/-2075883882 var1859)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3923 Bool (verbose/-497078696 var52)) ; Statement: $z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose> 
 ; Statement: if $z2 == 0 goto $b3 = 3 
(assert (= (ite var3923 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3685 Int 3) ; Statement: $b3 = 3 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var416-to-var3048 var52) var664 var3685)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3) 

(declare-const var52!1 var416)
(declare-const var664!1 String)
(declare-const var3685!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getIncludedDirsCount/745399035=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3610-to-var50=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var416-to-var3048=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var416=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var52=r3, var3452=r0, var945=null_type, var3586=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var648=r8, var3610=java.io.File, var3394=r4, var3378=$r1, var2269=$z0, var2073=$i0, var1879=$r2, var94=$z1, var84=$i1, var2379=$i2, var1293=$r9, var1740=$r10, var50=java.lang.Object, var3878=$r11, var71=$r5, var1565=$r12, var1859=$r6, var664=$r7, var3923=$z2, var3685=$b3, var3048=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var416, r3=var52, r0=var3452, null_type=var945, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var3586, r8=var648, java.io.File=var3610, r4=var3394, $r1=var3378, $z0=var2269, $i0=var2073, $r2=var1879, $z1=var94, $i1=var84, $i2=var2379, $r9=var1293, $r10=var1740, java.lang.Object=var50, $r11=var3878, $r5=var71, $r12=var1565, $r6=var1859, $r7=var664, $z2=var3923, $b3=var3685, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3048}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r4 := @parameter2: java.io.File;	$r1 = "dir";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $i0 = 0;	$i0 = 0;	$r2 = "file";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto $i1 = 0;	$i1 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedDirsCount()>();	goto [?= $i2 = $i0 + $i1];	$i2 = $i0 + $i1;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ");	if $i2 <= 0 goto $r12 = "empty.";	$r12 = "up to date.";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose>;	if $z2 == 0 goto $b3 = 3;	$b3 = 3;	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3);	return
;block_num 9
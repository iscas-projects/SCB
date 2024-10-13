(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2781 0)
(declare-sort var1076 0)
(declare-sort var2332 0)
(declare-sort var407 0)
(declare-sort var1851 0)
(declare-sort var2248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIncludedFilesCount/628081918 (var2332) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1851) String)
(declare-fun cast-from-var407-to-var1851 (var407) var1851)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-497078696 (var2781) Bool)
(declare-fun log/456963423 (var2248 String Int) void)
(declare-fun cast-from-var2781-to-var2248 (var2781) var2248)
(declare-const null-var2781 var2781)
(declare-const null-String String)
(declare-const null-var2332 var2332)
(declare-const null-var407 var407)
(declare-const var3704 var2781) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var3704 null-var2781)))
(declare-const var765 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var765 null-String)))
(declare-const var187 var2332) ; Statement: r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var187 null-var2332)))
(declare-const var3722 var407) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var3722 null-var407)))
(define-const var3963 String "dir") ; Statement: $r1 = "dir" 
(assert true)
(define-const var3213 Bool (= var3963 var765)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $i0 = 0 
(assert (not (not (= (ite var3213 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var2600 Int (getIncludedFilesCount/628081918 var187)) ; Statement: $i0 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedFilesCount()>() 
 ; Statement: goto [?= $r2 = "file"] 
(assert true) ; Non Conditional
(define-const var2233 String "file") ; Statement: $r2 = "file" 
(assert true)
(define-const var1724 Bool (= var2233 var765)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $i1 = 0 
(assert (not (= (ite var1724 1 0) 0))) ; Cond: $z1 != 0 
(define-const var361 Int 0) ; Statement: $i1 = 0 
(assert true) ; Non Conditional
(define-const var1325 Int (+ var2600 var361)) ; Statement: $i2 = $i0 + $i1 
(define-const var171 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var171)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var171!1 String)
(assert (= var171!1 ""))
(assert true)
(define-const var2678 String (append/672562846 var171!1 "Skipping fileset for directory ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ") 
(declare-const var171!2 String)
(assert (= var171!2 (str.++ var171!1 "Skipping fileset for directory ")))
(assert true)
(define-const var1969 String (append/-1031950772 var2678 (cast-from-var407-to-var1851 var3722))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var2678!1 String)
(assert (str.prefixof var2678 var2678!1))
(assert true)
(define-const var3886 String (append/672562846 var1969 ". It is ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ") 
(declare-const var1969!1 String)
(assert (= var1969!1 (str.++ var1969 ". It is ")))
 ; Statement: if $i2 <= 0 goto $r12 = "empty." 
(assert (not (<= var1325 0))) ; Negate: Cond: $i2 <= 0  
(define-const var586 String "up to date.") ; Statement: $r12 = "up to date." 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var777 String (append/672562846 var3886 var586)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3886!1 String)
(assert (= var3886!1 (str.++ var3886 var586)))
(assert true)
(define-const var2825 String (toString/-2075883882 var777)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3570 Bool (verbose/-497078696 var3704)) ; Statement: $z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose> 
 ; Statement: if $z2 == 0 goto $b3 = 3 
(assert (not (= (ite var3570 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3836 Int 2) ; Statement: $b3 = 2 
 ; Statement: goto [?= virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var2781-to-var2248 var3704) var2825 var3836)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3) 

(declare-const var3704!1 var2781)
(declare-const var2825!1 String)
(declare-const var3836!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getIncludedFilesCount/628081918=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var407-to-var1851=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2781-to-var2248=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var2781=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var3704=r3, var765=r0, var1076=null_type, var2332=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var187=r8, var407=java.io.File, var3722=r4, var3963=$r1, var3213=$z0, var2600=$i0, var2233=$r2, var1724=$z1, var361=$i1, var1325=$i2, var171=$r9, var2678=$r10, var1851=java.lang.Object, var1969=$r11, var3886=$r5, var586=$r12, var777=$r6, var2825=$r7, var3570=$z2, var3836=$b3, var2248=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var2781, r3=var3704, r0=var765, null_type=var1076, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var2332, r8=var187, java.io.File=var407, r4=var3722, $r1=var3963, $z0=var3213, $i0=var2600, $r2=var2233, $z1=var1724, $i1=var361, $i2=var1325, $r9=var171, $r10=var2678, java.lang.Object=var1851, $r11=var1969, $r5=var3886, $r12=var586, $r6=var777, $r7=var2825, $z2=var3570, $b3=var3836, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2248}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r4 := @parameter2: java.io.File;	$r1 = "dir";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $i0 = 0;	$i0 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedFilesCount()>();	goto [?= $r2 = "file"];	$r2 = "file";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto $i1 = 0;	$i1 = 0;	$i2 = $i0 + $i1;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ");	if $i2 <= 0 goto $r12 = "empty.";	$r12 = "up to date.";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose>;	if $z2 == 0 goto $b3 = 3;	$b3 = 2;	goto [?= virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3)];	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3);	return
;block_num 9
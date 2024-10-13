(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2224 0)
(declare-sort var1140 0)
(declare-sort var3342 0)
(declare-sort var1382 0)
(declare-sort var2031 0)
(declare-sort var3329 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIncludedDirsCount/745399035 (var3342) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2031) String)
(declare-fun cast-from-var1382-to-var2031 (var1382) var2031)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-497078696 (var2224) Bool)
(declare-fun log/456963423 (var3329 String Int) void)
(declare-fun cast-from-var2224-to-var3329 (var2224) var3329)
(declare-const null-var2224 var2224)
(declare-const null-String String)
(declare-const null-var3342 var3342)
(declare-const null-var1382 var1382)
(declare-const var3496 var2224) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var3496 null-var2224)))
(declare-const var2518 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2518 null-String)))
(declare-const var1021 var3342) ; Statement: r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var1021 null-var3342)))
(declare-const var2391 var1382) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var2391 null-var1382)))
(define-const var2928 String "dir") ; Statement: $r1 = "dir" 
(assert true)
(define-const var1868 Bool (= var2928 var2518)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $i0 = 0 
(assert (not (= (ite var1868 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1298 Int 0) ; Statement: $i0 = 0 
(assert true) ; Non Conditional
(define-const var647 String "file") ; Statement: $r2 = "file" 
(assert true)
(define-const var3745 Bool (= var647 var2518)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $i1 = 0 
(assert (not (not (= (ite var3745 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var2828 Int (getIncludedDirsCount/745399035 var1021)) ; Statement: $i1 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedDirsCount()>() 
 ; Statement: goto [?= $i2 = $i0 + $i1] 
(assert true) ; Non Conditional
(define-const var2921 Int (+ var1298 var2828)) ; Statement: $i2 = $i0 + $i1 
(define-const var3764 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3764)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3764!1 String)
(assert (= var3764!1 ""))
(assert true)
(define-const var1407 String (append/672562846 var3764!1 "Skipping fileset for directory ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ") 
(declare-const var3764!2 String)
(assert (= var3764!2 (str.++ var3764!1 "Skipping fileset for directory ")))
(assert true)
(define-const var2460 String (append/-1031950772 var1407 (cast-from-var1382-to-var2031 var2391))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var1407!1 String)
(assert (str.prefixof var1407 var1407!1))
(assert true)
(define-const var2225 String (append/672562846 var2460 ". It is ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ") 
(declare-const var2460!1 String)
(assert (= var2460!1 (str.++ var2460 ". It is ")))
 ; Statement: if $i2 <= 0 goto $r12 = "empty." 
(assert (<= var2921 0)) ; Cond: $i2 <= 0 
(define-const var3569 String "empty.") ; Statement: $r12 = "empty." 
(assert true) ; Non Conditional
(assert true)
(define-const var1613 String (append/672562846 var2225 var3569)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2225!1 String)
(assert (= var2225!1 (str.++ var2225 var3569)))
(assert true)
(define-const var2578 String (toString/-2075883882 var1613)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1521 Bool (verbose/-497078696 var3496)) ; Statement: $z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose> 
 ; Statement: if $z2 == 0 goto $b3 = 3 
(assert (not (= (ite var1521 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1532 Int 2) ; Statement: $b3 = 2 
 ; Statement: goto [?= virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var2224-to-var3329 var3496) var2578 var1532)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3) 

(declare-const var3496!1 var2224)
(declare-const var2578!1 String)
(declare-const var1532!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getIncludedDirsCount/745399035=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1382-to-var2031=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2224-to-var3329=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var2224=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var3496=r3, var2518=r0, var1140=null_type, var3342=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var1021=r8, var1382=java.io.File, var2391=r4, var2928=$r1, var1868=$z0, var1298=$i0, var647=$r2, var3745=$z1, var2828=$i1, var2921=$i2, var3764=$r9, var1407=$r10, var2031=java.lang.Object, var2460=$r11, var2225=$r5, var3569=$r12, var1613=$r6, var2578=$r7, var1521=$z2, var1532=$b3, var3329=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var2224, r3=var3496, r0=var2518, null_type=var1140, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var3342, r8=var1021, java.io.File=var1382, r4=var2391, $r1=var2928, $z0=var1868, $i0=var1298, $r2=var647, $z1=var3745, $i1=var2828, $i2=var2921, $r9=var3764, $r10=var1407, java.lang.Object=var2031, $r11=var2460, $r5=var2225, $r12=var3569, $r6=var1613, $r7=var2578, $z2=var1521, $b3=var1532, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3329}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r4 := @parameter2: java.io.File;	$r1 = "dir";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $i0 = 0;	$i0 = 0;	$r2 = "file";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto $i1 = 0;	$i1 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: int getIncludedDirsCount()>();	goto [?= $i2 = $i0 + $i1];	$i2 = $i0 + $i1;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ");	if $i2 <= 0 goto $r12 = "empty.";	$r12 = "empty.";	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose>;	if $z2 == 0 goto $b3 = 3;	$b3 = 2;	goto [?= virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3)];	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3);	return
;block_num 9
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3864 0)
(declare-sort var3577 0)
(declare-sort var2922 0)
(declare-sort var984 0)
(declare-sort var1961 0)
(declare-sort var3128 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1961) String)
(declare-fun cast-from-var984-to-var1961 (var984) var1961)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-497078696 (var3864) Bool)
(declare-fun log/456963423 (var3128 String Int) void)
(declare-fun cast-from-var3864-to-var3128 (var3864) var3128)
(declare-const null-var3864 var3864)
(declare-const null-String String)
(declare-const null-var2922 var2922)
(declare-const null-var984 var984)
(declare-const var229 var3864) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var229 null-var3864)))
(declare-const var1760 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1760 null-String)))
(declare-const var933 var2922) ; Statement: r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var933 null-var2922)))
(declare-const var1782 var984) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var1782 null-var984)))
(define-const var2810 String "dir") ; Statement: $r1 = "dir" 
(assert true)
(define-const var3254 Bool (= var2810 var1760)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $i0 = 0 
(assert (not (= (ite var3254 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3576 Int 0) ; Statement: $i0 = 0 
(assert true) ; Non Conditional
(define-const var2769 String "file") ; Statement: $r2 = "file" 
(assert true)
(define-const var3427 Bool (= var2769 var1760)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $i1 = 0 
(assert (not (= (ite var3427 1 0) 0))) ; Cond: $z1 != 0 
(define-const var120 Int 0) ; Statement: $i1 = 0 
(assert true) ; Non Conditional
(define-const var2420 Int (+ var3576 var120)) ; Statement: $i2 = $i0 + $i1 
(define-const var1250 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1250)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1250!1 String)
(assert (= var1250!1 ""))
(assert true)
(define-const var3660 String (append/672562846 var1250!1 "Skipping fileset for directory ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ") 
(declare-const var1250!2 String)
(assert (= var1250!2 (str.++ var1250!1 "Skipping fileset for directory ")))
(assert true)
(define-const var3406 String (append/-1031950772 var3660 (cast-from-var984-to-var1961 var1782))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var3660!1 String)
(assert (str.prefixof var3660 var3660!1))
(assert true)
(define-const var643 String (append/672562846 var3406 ". It is ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ") 
(declare-const var3406!1 String)
(assert (= var3406!1 (str.++ var3406 ". It is ")))
 ; Statement: if $i2 <= 0 goto $r12 = "empty." 
(assert (not (<= var2420 0))) ; Negate: Cond: $i2 <= 0  
(define-const var2542 String "up to date.") ; Statement: $r12 = "up to date." 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1178 String (append/672562846 var643 var2542)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var643!1 String)
(assert (= var643!1 (str.++ var643 var2542)))
(assert true)
(define-const var2156 String (toString/-2075883882 var1178)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1866 Bool (verbose/-497078696 var229)) ; Statement: $z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose> 
 ; Statement: if $z2 == 0 goto $b3 = 3 
(assert (not (= (ite var1866 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var178 Int 2) ; Statement: $b3 = 2 
 ; Statement: goto [?= virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var3864-to-var3128 var229) var2156 var178)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3) 

(declare-const var229!1 var3864)
(declare-const var2156!1 String)
(declare-const var178!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var984-to-var1961=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3864-to-var3128=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var3864=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var229=r3, var1760=r0, var3577=null_type, var2922=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var933=r8, var984=java.io.File, var1782=r4, var2810=$r1, var3254=$z0, var3576=$i0, var2769=$r2, var3427=$z1, var120=$i1, var2420=$i2, var1250=$r9, var3660=$r10, var1961=java.lang.Object, var3406=$r11, var643=$r5, var2542=$r12, var1178=$r6, var2156=$r7, var1866=$z2, var178=$b3, var3128=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var3864, r3=var229, r0=var1760, null_type=var3577, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var2922, r8=var933, java.io.File=var984, r4=var1782, $r1=var2810, $z0=var3254, $i0=var3576, $r2=var2769, $z1=var3427, $i1=var120, $i2=var2420, $r9=var1250, $r10=var3660, java.lang.Object=var1961, $r11=var3406, $r5=var643, $r12=var2542, $r6=var1178, $r7=var2156, $z2=var1866, $b3=var178, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3128}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r4 := @parameter2: java.io.File;	$r1 = "dir";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $i0 = 0;	$i0 = 0;	$r2 = "file";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto $i1 = 0;	$i1 = 0;	$i2 = $i0 + $i1;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ");	if $i2 <= 0 goto $r12 = "empty.";	$r12 = "up to date.";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose>;	if $z2 == 0 goto $b3 = 3;	$b3 = 2;	goto [?= virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3)];	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3);	return
;block_num 9
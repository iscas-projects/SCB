(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var49 0)
(declare-sort var2528 0)
(declare-sort var2618 0)
(declare-sort var1122 0)
(declare-sort var2811 0)
(declare-sort var958 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2811) String)
(declare-fun cast-from-var1122-to-var2811 (var1122) var2811)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-497078696 (var49) Bool)
(declare-fun log/456963423 (var958 String Int) void)
(declare-fun cast-from-var49-to-var958 (var49) var958)
(declare-const null-var49 var49)
(declare-const null-String String)
(declare-const null-var2618 var2618)
(declare-const null-var1122 var1122)
(declare-const var2447 var49) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var2447 null-var49)))
(declare-const var3250 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3250 null-String)))
(declare-const var2726 var2618) ; Statement: r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var2726 null-var2618)))
(declare-const var836 var1122) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var836 null-var1122)))
(define-const var1519 String "dir") ; Statement: $r1 = "dir" 
(assert true)
(define-const var2742 Bool (= var1519 var3250)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $i0 = 0 
(assert (not (= (ite var2742 1 0) 0))) ; Cond: $z0 != 0 
(define-const var235 Int 0) ; Statement: $i0 = 0 
(assert true) ; Non Conditional
(define-const var2038 String "file") ; Statement: $r2 = "file" 
(assert true)
(define-const var1659 Bool (= var2038 var3250)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $i1 = 0 
(assert (not (= (ite var1659 1 0) 0))) ; Cond: $z1 != 0 
(define-const var807 Int 0) ; Statement: $i1 = 0 
(assert true) ; Non Conditional
(define-const var662 Int (+ var235 var807)) ; Statement: $i2 = $i0 + $i1 
(define-const var3472 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3472)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3472!1 String)
(assert (= var3472!1 ""))
(assert true)
(define-const var3923 String (append/672562846 var3472!1 "Skipping fileset for directory ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ") 
(declare-const var3472!2 String)
(assert (= var3472!2 (str.++ var3472!1 "Skipping fileset for directory ")))
(assert true)
(define-const var1793 String (append/-1031950772 var3923 (cast-from-var1122-to-var2811 var836))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var3923!1 String)
(assert (str.prefixof var3923 var3923!1))
(assert true)
(define-const var2434 String (append/672562846 var1793 ". It is ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ") 
(declare-const var1793!1 String)
(assert (= var1793!1 (str.++ var1793 ". It is ")))
 ; Statement: if $i2 <= 0 goto $r12 = "empty." 
(assert (<= var662 0)) ; Cond: $i2 <= 0 
(define-const var1279 String "empty.") ; Statement: $r12 = "empty." 
(assert true) ; Non Conditional
(assert true)
(define-const var3012 String (append/672562846 var2434 var1279)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2434!1 String)
(assert (= var2434!1 (str.++ var2434 var1279)))
(assert true)
(define-const var1489 String (toString/-2075883882 var3012)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1462 Bool (verbose/-497078696 var2447)) ; Statement: $z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose> 
 ; Statement: if $z2 == 0 goto $b3 = 3 
(assert (not (= (ite var1462 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2015 Int 2) ; Statement: $b3 = 2 
 ; Statement: goto [?= virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var49-to-var958 var2447) var1489 var2015)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3) 

(declare-const var2447!1 var49)
(declare-const var1489!1 String)
(declare-const var2015!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1122-to-var2811=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var49-to-var958=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var49=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var2447=r3, var3250=r0, var2528=null_type, var2618=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var2726=r8, var1122=java.io.File, var836=r4, var1519=$r1, var2742=$z0, var235=$i0, var2038=$r2, var1659=$z1, var807=$i1, var662=$i2, var3472=$r9, var3923=$r10, var2811=java.lang.Object, var1793=$r11, var2434=$r5, var1279=$r12, var3012=$r6, var1489=$r7, var1462=$z2, var2015=$b3, var958=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var49, r3=var2447, r0=var3250, null_type=var2528, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var2618, r8=var2726, java.io.File=var1122, r4=var836, $r1=var1519, $z0=var2742, $i0=var235, $r2=var2038, $z1=var1659, $i1=var807, $i2=var662, $r9=var3472, $r10=var3923, java.lang.Object=var2811, $r11=var1793, $r5=var2434, $r12=var1279, $r6=var3012, $r7=var1489, $z2=var1462, $b3=var2015, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var958}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r4 := @parameter2: java.io.File;	$r1 = "dir";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $i0 = 0;	$i0 = 0;	$r2 = "file";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto $i1 = 0;	$i1 = 0;	$i2 = $i0 + $i1;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ");	if $i2 <= 0 goto $r12 = "empty.";	$r12 = "empty.";	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose>;	if $z2 == 0 goto $b3 = 3;	$b3 = 2;	goto [?= virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3)];	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3);	return
;block_num 9
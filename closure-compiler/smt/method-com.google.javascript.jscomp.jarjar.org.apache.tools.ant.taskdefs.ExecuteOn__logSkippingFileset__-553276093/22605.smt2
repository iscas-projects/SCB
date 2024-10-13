(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var935 0)
(declare-sort var2624 0)
(declare-sort var1533 0)
(declare-sort var798 0)
(declare-sort var3160 0)
(declare-sort var2562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3160) String)
(declare-fun cast-from-var798-to-var3160 (var798) var3160)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-497078696 (var935) Bool)
(declare-fun log/456963423 (var2562 String Int) void)
(declare-fun cast-from-var935-to-var2562 (var935) var2562)
(declare-const null-var935 var935)
(declare-const null-String String)
(declare-const null-var1533 var1533)
(declare-const null-var798 var798)
(declare-const var1646 var935) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var1646 null-var935)))
(declare-const var1648 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1648 null-String)))
(declare-const var766 var1533) ; Statement: r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var766 null-var1533)))
(declare-const var2627 var798) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var2627 null-var798)))
(define-const var508 String "dir") ; Statement: $r1 = "dir" 
(assert true)
(define-const var3990 Bool (= var508 var1648)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $i0 = 0 
(assert (not (= (ite var3990 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2405 Int 0) ; Statement: $i0 = 0 
(assert true) ; Non Conditional
(define-const var1295 String "file") ; Statement: $r2 = "file" 
(assert true)
(define-const var3139 Bool (= var1295 var1648)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $i1 = 0 
(assert (not (= (ite var3139 1 0) 0))) ; Cond: $z1 != 0 
(define-const var309 Int 0) ; Statement: $i1 = 0 
(assert true) ; Non Conditional
(define-const var1761 Int (+ var2405 var309)) ; Statement: $i2 = $i0 + $i1 
(define-const var905 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var905)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var905!1 String)
(assert (= var905!1 ""))
(assert true)
(define-const var2698 String (append/672562846 var905!1 "Skipping fileset for directory ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ") 
(declare-const var905!2 String)
(assert (= var905!2 (str.++ var905!1 "Skipping fileset for directory ")))
(assert true)
(define-const var2763 String (append/-1031950772 var2698 (cast-from-var798-to-var3160 var2627))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var2698!1 String)
(assert (str.prefixof var2698 var2698!1))
(assert true)
(define-const var2016 String (append/672562846 var2763 ". It is ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ") 
(declare-const var2763!1 String)
(assert (= var2763!1 (str.++ var2763 ". It is ")))
 ; Statement: if $i2 <= 0 goto $r12 = "empty." 
(assert (not (<= var1761 0))) ; Negate: Cond: $i2 <= 0  
(define-const var2136 String "up to date.") ; Statement: $r12 = "up to date." 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3786 String (append/672562846 var2016 var2136)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2016!1 String)
(assert (= var2016!1 (str.++ var2016 var2136)))
(assert true)
(define-const var3560 String (toString/-2075883882 var3786)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1006 Bool (verbose/-497078696 var1646)) ; Statement: $z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose> 
 ; Statement: if $z2 == 0 goto $b3 = 3 
(assert (= (ite var1006 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2150 Int 3) ; Statement: $b3 = 3 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var935-to-var2562 var1646) var3560 var2150)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3) 

(declare-const var1646!1 var935)
(declare-const var3560!1 String)
(declare-const var2150!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var798-to-var3160=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var935-to-var2562=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var935=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var1646=r3, var1648=r0, var2624=null_type, var1533=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var766=r8, var798=java.io.File, var2627=r4, var508=$r1, var3990=$z0, var2405=$i0, var1295=$r2, var3139=$z1, var309=$i1, var1761=$i2, var905=$r9, var2698=$r10, var3160=java.lang.Object, var2763=$r11, var2016=$r5, var2136=$r12, var3786=$r6, var3560=$r7, var1006=$z2, var2150=$b3, var2562=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var935, r3=var1646, r0=var1648, null_type=var2624, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var1533, r8=var766, java.io.File=var798, r4=var2627, $r1=var508, $z0=var3990, $i0=var2405, $r2=var1295, $z1=var3139, $i1=var309, $i2=var1761, $r9=var905, $r10=var2698, java.lang.Object=var3160, $r11=var2763, $r5=var2016, $r12=var2136, $r6=var3786, $r7=var3560, $z2=var1006, $b3=var2150, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2562}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r4 := @parameter2: java.io.File;	$r1 = "dir";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $i0 = 0;	$i0 = 0;	$r2 = "file";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto $i1 = 0;	$i1 = 0;	$i2 = $i0 + $i1;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping fileset for directory ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is ");	if $i2 <= 0 goto $r12 = "empty.";	$r12 = "up to date.";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: boolean verbose>;	if $z2 == 0 goto $b3 = 3;	$b3 = 3;	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: void log(java.lang.String,int)>($r7, $b3);	return
;block_num 9
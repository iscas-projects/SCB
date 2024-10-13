(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3990 0)
(declare-sort var1498 0)
(declare-sort var676 0)
(declare-sort var2411 0)
(declare-sort var2265 0)
(declare-sort var49 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun myCopy/-951607817 (var3990) var676)
(declare-fun getToDir/2002891665 (var676) var2411)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun append/-1031950772 (String var2265) String)
(declare-fun cast-from-var2411-to-var2265 (var2411) var2265)
(declare-fun log/456963423 (var49 String Int) void)
(declare-fun cast-from-var3990-to-var49 (var3990) var49)
(declare-const null-var3990 var3990)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3566 var3990) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync 
(assert (not (= var3566 null-var3990)))
(declare-const var1717 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1717 null-Int)))
(declare-const var2753 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2753 null-String)))
(declare-const var1660 String) ; Statement: r22 := @parameter2: java.lang.String 
(assert (not (= var1660 null-String)))
(declare-const var157 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var157 null-String)))
(define-const var117 var676 (myCopy/-951607817 var3566)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy> 
(assert true)
(define-const var1907 var2411 (getToDir/2002891665 var117)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>() 
 ; Statement: if r3 != null goto $r24 = r3 
(assert (not (= var2753 null-String))) ; Cond: r3 != null 
(define-const var560 String var2753) ; Statement: $r24 = r3 
(assert true) ; Non Conditional
(define-const var1542 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1542)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1542!1 String)
(assert (= var1542!1 ""))
(assert true)
(define-const var3860 String (append/672562846 var1542!1 var560)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1542!2 String)
(assert (= var1542!2 (str.++ var1542!1 var560)))
 ; Statement: if i0 >= 2 goto $r25 = r5 
(assert (>= var1717 2)) ; Cond: i0 >= 2 
(define-const var1767 String var157) ; Statement: $r25 = r5 
(assert true) ; Non Conditional
(assert true)
(define-const var954 String (append/672562846 var3860 var1767)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var3860!1 String)
(assert (= var3860!1 (str.++ var3860 var1767)))
(assert true)
(define-const var1076 String (toString/-2075883882 var954)) ; Statement: $r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if i0 <= 0 goto $r8 = new java.lang.StringBuilder 
(assert (<= var1717 0)) ; Cond: i0 <= 0 
(define-const var3443 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3443)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3443!1 String)
(assert (= var3443!1 ""))
(assert true)
(define-const var2951 String (append/672562846 var3443!1 "NO ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NO ") 
(declare-const var3443!2 String)
(assert (= var3443!2 (str.++ var3443!1 "NO ")))
(assert true)
(define-const var1069 String (append/672562846 var2951 var1076)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2951!1 String)
(assert (= var2951!1 (str.++ var2951 var1076)))
(assert true)
(define-const var1021 String (append/672562846 var1069 " to remove from ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to remove from ") 
(declare-const var1069!1 String)
(assert (= var1069!1 (str.++ var1069 " to remove from ")))
(assert true)
(define-const var2872 String (append/-1031950772 var1021 (cast-from-var2411-to-var2265 var1907))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1021!1 String)
(assert (str.prefixof var1021 var1021!1))
(assert true)
(define-const var2794 String (toString/-2075883882 var2872)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3990-to-var49 var3566) var2794 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r13, 3) 

(declare-const var3566!1 var3990)
(declare-const var2794!1 String)
(declare-const var271 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {myCopy/-951607817=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy), getToDir/2002891665=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2411-to-var2265=([java.io.File], java.lang.Object), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3990-to-var49=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var3990=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync, var3566=r0, var1717=i0, var2753=r3, var1498=null_type, var1660=r22, var157=r5, var676=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy, var117=$r1, var2411=java.io.File, var1907=r2, var560=$r24, var1542=$r4, var3860=$r6, var1767=$r25, var954=$r7, var1076=$r23, var3443=$r8, var2951=$r9, var1069=$r10, var1021=$r11, var2265=java.lang.Object, var2872=$r12, var2794=$r13, var49=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var271=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync=var3990, r0=var3566, i0=var1717, r3=var2753, null_type=var1498, r22=var1660, r5=var157, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy=var676, $r1=var117, java.io.File=var2411, r2=var1907, $r24=var560, $r4=var1542, $r6=var3860, $r25=var1767, $r7=var954, $r23=var1076, $r8=var3443, $r9=var2951, $r10=var1069, $r11=var1021, java.lang.Object=var2265, $r12=var2872, $r13=var2794, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var49, 3=var271}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync;	i0 := @parameter0: int;	r3 := @parameter1: java.lang.String;	r22 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>();	if r3 != null goto $r24 = r3;	$r24 = r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	if i0 >= 2 goto $r25 = r5;	$r25 = r5;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	if i0 <= 0 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NO ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to remove from ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r13, 3);	return
;block_num 7
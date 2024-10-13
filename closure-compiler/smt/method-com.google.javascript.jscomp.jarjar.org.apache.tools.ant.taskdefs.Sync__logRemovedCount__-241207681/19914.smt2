(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3791 0)
(declare-sort var1540 0)
(declare-sort var1378 0)
(declare-sort var2054 0)
(declare-sort var794 0)
(declare-sort var2374 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun myCopy/-951607817 (var3791) var1378)
(declare-fun getToDir/2002891665 (var1378) var2054)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun append/-1031950772 (String var794) String)
(declare-fun cast-from-var2054-to-var794 (var2054) var794)
(declare-fun log/456963423 (var2374 String Int) void)
(declare-fun cast-from-var3791-to-var2374 (var3791) var2374)
(declare-const null-var3791 var3791)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2806 var3791) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync 
(assert (not (= var2806 null-var3791)))
(declare-const var2502 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2502 null-Int)))
(declare-const var491 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var491 null-String)))
(declare-const var478 String) ; Statement: r22 := @parameter2: java.lang.String 
(assert (not (= var478 null-String)))
(declare-const var2906 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var2906 null-String)))
(define-const var1245 var1378 (myCopy/-951607817 var2806)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy> 
(assert true)
(define-const var3540 var2054 (getToDir/2002891665 var1245)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>() 
 ; Statement: if r3 != null goto $r24 = r3 
(assert (not (not (= var491 null-String)))) ; Negate: Cond: r3 != null  
(define-const var465 String "") ; Statement: $r24 = "" 
 ; Statement: goto [?= $r4 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2322 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2322)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2322!1 String)
(assert (= var2322!1 ""))
(assert true)
(define-const var3605 String (append/672562846 var2322!1 var465)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2322!2 String)
(assert (= var2322!2 (str.++ var2322!1 var465)))
 ; Statement: if i0 >= 2 goto $r25 = r5 
(assert (not (>= var2502 2))) ; Negate: Cond: i0 >= 2  
(define-const var3081 String var478) ; Statement: $r25 = r22 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2670 String (append/672562846 var3605 var3081)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var3605!1 String)
(assert (= var3605!1 (str.++ var3605 var3081)))
(assert true)
(define-const var106 String (toString/-2075883882 var2670)) ; Statement: $r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if i0 <= 0 goto $r8 = new java.lang.StringBuilder 
(assert (<= var2502 0)) ; Cond: i0 <= 0 
(define-const var2498 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2498)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2498!1 String)
(assert (= var2498!1 ""))
(assert true)
(define-const var2874 String (append/672562846 var2498!1 "NO ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NO ") 
(declare-const var2498!2 String)
(assert (= var2498!2 (str.++ var2498!1 "NO ")))
(assert true)
(define-const var1655 String (append/672562846 var2874 var106)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2874!1 String)
(assert (= var2874!1 (str.++ var2874 var106)))
(assert true)
(define-const var1112 String (append/672562846 var1655 " to remove from ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to remove from ") 
(declare-const var1655!1 String)
(assert (= var1655!1 (str.++ var1655 " to remove from ")))
(assert true)
(define-const var2370 String (append/-1031950772 var1112 (cast-from-var2054-to-var794 var3540))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1112!1 String)
(assert (str.prefixof var1112 var1112!1))
(assert true)
(define-const var2385 String (toString/-2075883882 var2370)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3791-to-var2374 var2806) var2385 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r13, 3) 

(declare-const var2806!1 var3791)
(declare-const var2385!1 String)
(declare-const var2176 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {myCopy/-951607817=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy), getToDir/2002891665=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2054-to-var794=([java.io.File], java.lang.Object), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3791-to-var2374=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var3791=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync, var2806=r0, var2502=i0, var491=r3, var1540=null_type, var478=r22, var2906=r5, var1378=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy, var1245=$r1, var2054=java.io.File, var3540=r2, var465=$r24, var2322=$r4, var3605=$r6, var3081=$r25, var2670=$r7, var106=$r23, var2498=$r8, var2874=$r9, var1655=$r10, var1112=$r11, var794=java.lang.Object, var2370=$r12, var2385=$r13, var2374=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2176=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync=var3791, r0=var2806, i0=var2502, r3=var491, null_type=var1540, r22=var478, r5=var2906, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy=var1378, $r1=var1245, java.io.File=var2054, r2=var3540, $r24=var465, $r4=var2322, $r6=var3605, $r25=var3081, $r7=var2670, $r23=var106, $r8=var2498, $r9=var2874, $r10=var1655, $r11=var1112, java.lang.Object=var794, $r12=var2370, $r13=var2385, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2374, 3=var2176}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync;	i0 := @parameter0: int;	r3 := @parameter1: java.lang.String;	r22 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>();	if r3 != null goto $r24 = r3;	$r24 = "";	goto [?= $r4 = new java.lang.StringBuilder];	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	if i0 >= 2 goto $r25 = r5;	$r25 = r22;	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	if i0 <= 0 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NO ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to remove from ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r13, 3);	return
;block_num 7
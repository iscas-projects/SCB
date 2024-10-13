(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var930 0)
(declare-sort var1968 0)
(declare-sort var1658 0)
(declare-sort var2118 0)
(declare-sort var1311 0)
(declare-sort var2811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun myCopy/-951607817 (var930) var1658)
(declare-fun getToDir/2002891665 (var1658) var2118)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1311) String)
(declare-fun cast-from-var2118-to-var1311 (var2118) var1311)
(declare-fun log/456963423 (var2811 String Int) void)
(declare-fun cast-from-var930-to-var2811 (var930) var2811)
(declare-const null-var930 var930)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2178 var930) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync 
(assert (not (= var2178 null-var930)))
(declare-const var1136 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1136 null-Int)))
(declare-const var3609 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3609 null-String)))
(declare-const var3467 String) ; Statement: r22 := @parameter2: java.lang.String 
(assert (not (= var3467 null-String)))
(declare-const var2307 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var2307 null-String)))
(define-const var2439 var1658 (myCopy/-951607817 var2178)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy> 
(assert true)
(define-const var1386 var2118 (getToDir/2002891665 var2439)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>() 
 ; Statement: if r3 != null goto $r24 = r3 
(assert (not (= var3609 null-String))) ; Cond: r3 != null 
(define-const var2247 String var3609) ; Statement: $r24 = r3 
(assert true) ; Non Conditional
(define-const var410 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var410)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var410!1 String)
(assert (= var410!1 ""))
(assert true)
(define-const var985 String (append/672562846 var410!1 var2247)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var410!2 String)
(assert (= var410!2 (str.++ var410!1 var2247)))
 ; Statement: if i0 >= 2 goto $r25 = r5 
(assert (not (>= var1136 2))) ; Negate: Cond: i0 >= 2  
(define-const var2619 String var3467) ; Statement: $r25 = r22 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2066 String (append/672562846 var985 var2619)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var985!1 String)
(assert (= var985!1 (str.++ var985 var2619)))
(assert true)
(define-const var237 String (toString/-2075883882 var2066)) ; Statement: $r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if i0 <= 0 goto $r8 = new java.lang.StringBuilder 
(assert (not (<= var1136 0))) ; Negate: Cond: i0 <= 0  
(define-const var2279 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2279)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2279!1 String)
(assert (= var2279!1 ""))
(assert true)
(define-const var2748 String (append/672562846 var2279!1 "Removed ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Removed ") 
(declare-const var2279!2 String)
(assert (= var2279!2 (str.++ var2279!1 "Removed ")))
(assert true)
(define-const var1050 String (append/-1001720160 var2748 var1136)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2748!1 String)
(assert (str.prefixof var2748 var2748!1))
(assert true)
(define-const var2197 String (append/672562846 var1050 " ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1050!1 String)
(assert (= var1050!1 (str.++ var1050 " ")))
(assert true)
(define-const var306 String (append/672562846 var2197 var237)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2197!1 String)
(assert (= var2197!1 (str.++ var2197 var237)))
(assert true)
(define-const var1096 String (append/672562846 var306 " from ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var306!1 String)
(assert (= var306!1 (str.++ var306 " from ")))
(assert true)
(define-const var1202 String (append/-1031950772 var1096 (cast-from-var2118-to-var1311 var1386))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1096!1 String)
(assert (str.prefixof var1096 var1096!1))
(assert true)
(define-const var2127 String (toString/-2075883882 var1202)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var930-to-var2811 var2178) var2127 2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r21, 2) 

(declare-const var2178!1 var930)
(declare-const var2127!1 String)
(declare-const var1647 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {myCopy/-951607817=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy), getToDir/2002891665=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2118-to-var1311=([java.io.File], java.lang.Object), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var930-to-var2811=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var930=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync, var2178=r0, var1136=i0, var3609=r3, var1968=null_type, var3467=r22, var2307=r5, var1658=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy, var2439=$r1, var2118=java.io.File, var1386=r2, var2247=$r24, var410=$r4, var985=$r6, var2619=$r25, var2066=$r7, var237=$r23, var2279=$r14, var2748=$r15, var1050=$r16, var2197=$r17, var306=$r18, var1096=$r19, var1311=java.lang.Object, var1202=$r20, var2127=$r21, var2811=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1647=2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync=var930, r0=var2178, i0=var1136, r3=var3609, null_type=var1968, r22=var3467, r5=var2307, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy=var1658, $r1=var2439, java.io.File=var2118, r2=var1386, $r24=var2247, $r4=var410, $r6=var985, $r25=var2619, $r7=var2066, $r23=var237, $r14=var2279, $r15=var2748, $r16=var1050, $r17=var2197, $r18=var306, $r19=var1096, java.lang.Object=var1311, $r20=var1202, $r21=var2127, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2811, 2=var1647}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync;	i0 := @parameter0: int;	r3 := @parameter1: java.lang.String;	r22 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>();	if r3 != null goto $r24 = r3;	$r24 = r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	if i0 >= 2 goto $r25 = r5;	$r25 = r22;	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	if i0 <= 0 goto $r8 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Removed ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r21, 2);	goto [?= return];	return
;block_num 7
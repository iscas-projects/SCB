(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3685 0)
(declare-sort var2426 0)
(declare-sort var2955 0)
(declare-sort var1359 0)
(declare-sort var686 0)
(declare-sort var3656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun myCopy/-951607817 (var3685) var2955)
(declare-fun getToDir/2002891665 (var2955) var1359)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun append/-1031950772 (String var686) String)
(declare-fun cast-from-var1359-to-var686 (var1359) var686)
(declare-fun log/456963423 (var3656 String Int) void)
(declare-fun cast-from-var3685-to-var3656 (var3685) var3656)
(declare-const null-var3685 var3685)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2931 var3685) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync 
(assert (not (= var2931 null-var3685)))
(declare-const var3397 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3397 null-Int)))
(declare-const var1165 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1165 null-String)))
(declare-const var223 String) ; Statement: r22 := @parameter2: java.lang.String 
(assert (not (= var223 null-String)))
(declare-const var2962 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var2962 null-String)))
(define-const var3856 var2955 (myCopy/-951607817 var2931)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy> 
(assert true)
(define-const var883 var1359 (getToDir/2002891665 var3856)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>() 
 ; Statement: if r3 != null goto $r24 = r3 
(assert (not (= var1165 null-String))) ; Cond: r3 != null 
(define-const var1256 String var1165) ; Statement: $r24 = r3 
(assert true) ; Non Conditional
(define-const var1297 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1297)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1297!1 String)
(assert (= var1297!1 ""))
(assert true)
(define-const var2550 String (append/672562846 var1297!1 var1256)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1297!2 String)
(assert (= var1297!2 (str.++ var1297!1 var1256)))
 ; Statement: if i0 >= 2 goto $r25 = r5 
(assert (not (>= var3397 2))) ; Negate: Cond: i0 >= 2  
(define-const var2115 String var223) ; Statement: $r25 = r22 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3163 String (append/672562846 var2550 var2115)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var2550!1 String)
(assert (= var2550!1 (str.++ var2550 var2115)))
(assert true)
(define-const var2628 String (toString/-2075883882 var3163)) ; Statement: $r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if i0 <= 0 goto $r8 = new java.lang.StringBuilder 
(assert (<= var3397 0)) ; Cond: i0 <= 0 
(define-const var2129 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2129)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2129!1 String)
(assert (= var2129!1 ""))
(assert true)
(define-const var940 String (append/672562846 var2129!1 "NO ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NO ") 
(declare-const var2129!2 String)
(assert (= var2129!2 (str.++ var2129!1 "NO ")))
(assert true)
(define-const var2709 String (append/672562846 var940 var2628)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var940!1 String)
(assert (= var940!1 (str.++ var940 var2628)))
(assert true)
(define-const var33 String (append/672562846 var2709 " to remove from ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to remove from ") 
(declare-const var2709!1 String)
(assert (= var2709!1 (str.++ var2709 " to remove from ")))
(assert true)
(define-const var3003 String (append/-1031950772 var33 (cast-from-var1359-to-var686 var883))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var33!1 String)
(assert (str.prefixof var33 var33!1))
(assert true)
(define-const var751 String (toString/-2075883882 var3003)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3685-to-var3656 var2931) var751 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r13, 3) 

(declare-const var2931!1 var3685)
(declare-const var751!1 String)
(declare-const var2795 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {myCopy/-951607817=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy), getToDir/2002891665=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1359-to-var686=([java.io.File], java.lang.Object), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3685-to-var3656=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var3685=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync, var2931=r0, var3397=i0, var1165=r3, var2426=null_type, var223=r22, var2962=r5, var2955=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy, var3856=$r1, var1359=java.io.File, var883=r2, var1256=$r24, var1297=$r4, var2550=$r6, var2115=$r25, var3163=$r7, var2628=$r23, var2129=$r8, var940=$r9, var2709=$r10, var33=$r11, var686=java.lang.Object, var3003=$r12, var751=$r13, var3656=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2795=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync=var3685, r0=var2931, i0=var3397, r3=var1165, null_type=var2426, r22=var223, r5=var2962, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy=var2955, $r1=var3856, java.io.File=var1359, r2=var883, $r24=var1256, $r4=var1297, $r6=var2550, $r25=var2115, $r7=var3163, $r23=var2628, $r8=var2129, $r9=var940, $r10=var2709, $r11=var33, java.lang.Object=var686, $r12=var3003, $r13=var751, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3656, 3=var2795}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync;	i0 := @parameter0: int;	r3 := @parameter1: java.lang.String;	r22 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>();	if r3 != null goto $r24 = r3;	$r24 = r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	if i0 >= 2 goto $r25 = r5;	$r25 = r22;	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	if i0 <= 0 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NO ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to remove from ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r13, 3);	return
;block_num 7
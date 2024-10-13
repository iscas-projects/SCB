(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3384 0)
(declare-sort var958 0)
(declare-sort var3427 0)
(declare-sort var2021 0)
(declare-sort var2454 0)
(declare-sort var1816 0)
(declare-sort var197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun myCopy/-951607817 (var3384) var958)
(declare-fun getToDir/2002891665 (var958) var3427)
(declare-fun var958_access$000/-1277419263 (var958) var2021)
(declare-fun exists/1072868559 (var3427) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2454) String)
(declare-fun cast-from-var3427-to-var2454 (var3427) var2454)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1816 String Int) void)
(declare-fun cast-from-var3384-to-var1816 (var3384) var1816)
(declare-fun execute/205554561 (var197) void)
(declare-fun cast-from-var958-to-var197 (var958) var197)
(declare-const null-var3384 var3384)
(declare-const var2871 var3384) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync 
(assert (not (= var2871 null-var3384)))
(define-const var1456 var958 (myCopy/-951607817 var2871)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy> 
(assert true)
(define-const var3203 var3427 (getToDir/2002891665 var1456)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>() 
(define-const var2077 var958 (myCopy/-951607817 var2871)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy> 
(define-const var1054 var2021 (var958_access$000/-1277419263 var2077)) ; Statement: r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.util.Set access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy)>($r3) 
(assert true)
(define-const var3696 Bool (exists/1072868559 var3203)) ; Statement: $z0 = virtualinvoke r2.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto $z3 = 1 
(assert (= (ite var3696 1 0) 0)) ; Cond: $z0 == 0 
(define-const var262 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= $r5 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2849 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2849)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2849!1 String)
(assert (= var2849!1 ""))
(assert true)
(define-const var2998 String (append/672562846 var2849!1 "PASS#1: Copying files to ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PASS#1: Copying files to ") 
(declare-const var2849!2 String)
(assert (= var2849!2 (str.++ var2849!1 "PASS#1: Copying files to ")))
(assert true)
(define-const var1245 String (append/-1031950772 var2998 (cast-from-var3427-to-var2454 var3203))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2998!1 String)
(assert (str.prefixof var2998 var2998!1))
(assert true)
(define-const var224 String (toString/-2075883882 var1245)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3384-to-var1816 var2871) var224 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r8, 4) 

(declare-const var2871!1 var3384)
(declare-const var224!1 String)
(declare-const var2214 Int)
(define-const var3196 var958 (myCopy/-951607817 var2871!1)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy> 
(assert true)
;(assert (execute/205554561 (cast-from-var958-to-var197 var3196))) ; Statement: virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: void execute()>() 

(declare-const var3196!1 var958)
 ; Statement: if $z3 == 0 goto $r10 = new java.util.LinkedHashSet 
(assert (not (= (ite var262 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var2488 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2488)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2488!1 String)
(assert (= var2488!1 ""))
(assert true)
(define-const var3048 String (append/672562846 var2488!1 "NO removing necessary in ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NO removing necessary in ") 
(declare-const var2488!2 String)
(assert (= var2488!2 (str.++ var2488!1 "NO removing necessary in ")))
(assert true)
(define-const var2590 String (append/-1031950772 var3048 (cast-from-var3427-to-var2454 var3203))) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3048!1 String)
(assert (str.prefixof var3048 var3048!1))
(assert true)
(define-const var3486 String (toString/-2075883882 var2590)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3384-to-var1816 var2871!1) var3486 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r27, 4) 

(declare-const var2871!2 var3384)
(declare-const var3486!1 String)
(declare-const var2214!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {myCopy/-951607817=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy), getToDir/2002891665=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy], java.io.File), var958_access$000/-1277419263=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy], java.util.Set), exists/1072868559=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3427-to-var2454=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3384-to-var1816=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), execute/205554561=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy], void), cast-from-var958-to-var197=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy)}
; {var3384=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync, var2871=r0, var958=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy, var1456=$r1, var3427=java.io.File, var3203=r2, var2077=$r3, var2021=java.util.Set, var1054=r4, var3696=$z0, var262=$z3, var2849=$r5, var2998=$r6, var2454=java.lang.Object, var1245=$r7, var224=$r8, var1816=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2214=4, var3196=$r9, var197=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy, var2488=$r24, var3048=$r25, var2590=$r26, var3486=$r27}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync=var3384, r0=var2871, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy=var958, $r1=var1456, java.io.File=var3427, r2=var3203, $r3=var2077, java.util.Set=var2021, r4=var1054, $z0=var3696, $z3=var262, $r5=var2849, $r6=var2998, java.lang.Object=var2454, $r7=var1245, $r8=var224, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1816, 4=var2214, $r9=var3196, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy=var197, $r24=var2488, $r25=var3048, $r26=var2590, $r27=var3486}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy>;	r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.util.Set access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy)>($r3);	$z0 = virtualinvoke r2.<java.io.File: boolean exists()>();	if $z0 == 0 goto $z3 = 1;	$z3 = 1;	goto [?= $r5 = new java.lang.StringBuilder];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PASS#1: Copying files to ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r8, 4);	$r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy>;	virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: void execute()>();	if $z3 == 0 goto $r10 = new java.util.LinkedHashSet;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NO removing necessary in ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r27, 4);	return
;block_num 4
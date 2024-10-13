(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var177 0)
(declare-sort var1791 0)
(declare-sort var782 0)
(declare-sort var3274 0)
(declare-sort var3402 0)
(declare-sort var2037 0)
(declare-sort var1401 0)
(declare-sort var2602 0)
(declare-sort var3952 0)
(declare-sort var3633 0)
(declare-sort var1646 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1258177498 (var177) var1791)
(declare-fun <init>/-279557996 (var3274) void)
(declare-fun cast-from-var177-to-var3274 (var177) var3274)
(declare-fun var1791_access$000/115150639 (var1791) var3402)
(declare-fun getJavafiles/801337728 (var3402) Bool)
(declare-fun state/1258177498 (var177) Int)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun eolStr/1258177498 (var177) String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun eofStr/1258177498 (var177) String)
(declare-fun line/1258177498 (var177) String)
(declare-fun reachedEof/1258177498 (var177) Bool)
(declare-fun srcFile/1258177498 (var177) var782)
(declare-fun var2037-init () var2037)
(declare-fun var2602-init () var2602)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var3274) String)
(declare-fun cast-from-var782-to-var3274 (var782) var3274)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3952) String)
(declare-fun cast-from-var1401-to-var3952 (var1401) var3952)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var1646) var3633)
(declare-fun cast-from-var1791-to-var1646 (var1791) var1646)
(declare-fun <init>/1933136886 (var2602 String var3952 var3633) void)
(declare-const null-var177 var177)
(declare-const null-var1791 var1791)
(declare-const null-var782 var782)
(declare-const null-var1401 var1401)
(declare-const var1652 var177) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner 
(assert (not (= var1652 null-var177)))
(declare-const var298 var1791) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF 
(assert (not (= var298 null-var1791)))
(declare-const var346 var782) ; Statement: r7 := @parameter1: java.io.File 
(assert (not (= var346 null-var782)))
(declare-const var1652!1 var177)
(assert (not (= var1652!1 null-var177)))
(assert (= (this$0/1258177498 var1652!1) var298)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var177-to-var3274 var1652!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1652!2 var177)
(define-const var2722 var1791 (this$0/1258177498 var1652!2)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF this$0> 
(define-const var2054 var3402 (var1791_access$000/115150639 var2722)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF)>($r2) 
(assert true)
(define-const var1543 Bool (getJavafiles/801337728 var2054)) ; Statement: $z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: boolean getJavafiles()>() 
 ; Statement: if $z0 == 0 goto $b0 = 0 
(assert (= (ite var1543 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3877 Int 0) ; Statement: $b0 = 0 
(assert true) ; Non Conditional
(declare-const var1652!3 var177)
(assert (not (= var1652!3 null-var177)))
(assert (= (state/1258177498 var1652!3) var3877)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: int state> = $b0 
(define-const var2404 String String-init) ; Statement: $r24 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var2404 200)) ; Statement: specialinvoke $r24.<java.lang.StringBuffer: void <init>(int)>(200) 

(declare-const var2404!1 String)
(declare-const var3482 Int)
(declare-const var1652!4 var177)
(assert (not (= var1652!4 null-var177)))
(assert (= (eolStr/1258177498 var1652!4) var2404!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer eolStr> = $r24 
(define-const var1581 String String-init) ; Statement: $r25 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1581)) ; Statement: specialinvoke $r25.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1581!1 String)
(declare-const var1652!5 var177)
(assert (not (= var1652!5 null-var177)))
(assert (= (eofStr/1258177498 var1652!5) var1581!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer eofStr> = $r25 
(define-const var3960 String String-init) ; Statement: $r26 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3960)) ; Statement: specialinvoke $r26.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3960!1 String)
(declare-const var1652!6 var177)
(assert (not (= var1652!6 null-var177)))
(assert (= (line/1258177498 var1652!6) var3960!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer line> = $r26 
(declare-const var1652!7 var177)
(assert (not (= var1652!7 null-var177)))
(assert (= (reachedEof/1258177498 var1652!7) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: boolean reachedEof> = 0 
(declare-const var1652!8 var177)
(assert (not (= var1652!8 null-var177)))
(assert (= (srcFile/1258177498 var1652!8) var346)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.io.File srcFile> = r7 
(define-const var2628 var2037 var2037-init) ; Statement: $r29 = new java.io.BufferedReader 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var334 var1401) ; Statement: $r14 := @caughtexception 
(assert (not (= var334 null-var1401)))
(define-const var1089 var2602 var2602-init) ; Statement: $r31 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2992 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2992)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2992!1 String)
(assert (= var2992!1 ""))
(assert true)
(define-const var337 String (append/-1031950772 var2992!1 (cast-from-var782-to-var3274 var346))) ; Statement: $r17 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var2992!2 String)
(assert (str.prefixof var2992!1 var2992!2))
(assert true)
(define-const var366 String (append/672562846 var337 ": ")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var337!1 String)
(assert (= var337!1 (str.++ var337 ": ")))
(assert true)
(define-const var3264 String (getMessage/849299655 (cast-from-var1401-to-var3952 var334))) ; Statement: $r18 = virtualinvoke $r14.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var2208 String (append/672562846 var366 var3264)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var366!1 String)
(assert (= var366!1 (str.++ var366 var3264)))
(assert true)
(define-const var1233 String (toString/-2075883882 var2208)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1332 var3633 (getLocation/851674571 (cast-from-var1791-to-var1646 var298))) ; Statement: $r21 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var1089 var1233 (cast-from-var1401-to-var3952 var334) var1332)) ; Statement: specialinvoke $r31.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r22, $r14, $r21) 

(declare-const var1089!1 var2602)
(declare-const var1233!1 String)
(declare-const var334!1 var1401)
(declare-const var1332!1 var3633)
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF), <init>/-279557996=([java.lang.Object], void), cast-from-var177-to-var3274=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.lang.Object), var1791_access$000/115150639=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter), getJavafiles/801337728=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], boolean), state/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], int), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), eolStr/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), eofStr/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.lang.StringBuffer), line/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.lang.StringBuffer), reachedEof/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], boolean), srcFile/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.io.File), var2037-init=([], java.io.BufferedReader), var2602-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var782-to-var3274=([java.io.File], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1401-to-var3952=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1791-to-var1646=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var177=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner, var1652=r0, var1791=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF, var298=r1, var782=java.io.File, var346=r7, var3274=java.lang.Object, var2722=$r2, var3402=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter, var2054=$r3, var1543=$z0, var3877=$b0, var2404=$r24, var3482=200, var1581=$r25, var3960=$r26, var2037=java.io.BufferedReader, var2628=$r29, var1401=java.io.IOException, var334=$r14, var2602=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1089=$r31, var2992=$r30, var337=$r17, var366=$r19, var3952=java.lang.Throwable, var3264=$r18, var2208=$r20, var1233=$r22, var3633=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1646=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1332=$r21}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner=var177, r0=var1652, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF=var1791, r1=var298, java.io.File=var782, r7=var346, java.lang.Object=var3274, $r2=var2722, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter=var3402, $r3=var2054, $z0=var1543, $b0=var3877, $r24=var2404, 200=var3482, $r25=var1581, $r26=var3960, java.io.BufferedReader=var2037, $r29=var2628, java.io.IOException=var1401, $r14=var334, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2602, $r31=var1089, $r30=var2992, $r17=var337, $r19=var366, java.lang.Throwable=var3952, $r18=var3264, $r20=var2208, $r22=var1233, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3633, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1646, $r21=var1332}
;seq <java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF;	r7 := @parameter1: java.io.File;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF this$0>;	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF)>($r2);	$z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: boolean getJavafiles()>();	if $z0 == 0 goto $b0 = 0;	$b0 = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: int state> = $b0;	$r24 = new java.lang.StringBuffer;	specialinvoke $r24.<java.lang.StringBuffer: void <init>(int)>(200);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer eolStr> = $r24;	$r25 = new java.lang.StringBuffer;	specialinvoke $r25.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer eofStr> = $r25;	$r26 = new java.lang.StringBuffer;	specialinvoke $r26.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer line> = $r26;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: boolean reachedEof> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.io.File srcFile> = r7;	$r29 = new java.io.BufferedReader;	$r14 := @caughtexception;	$r31 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r18 = virtualinvoke $r14.<java.io.IOException: java.lang.String getMessage()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r31.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r22, $r14, $r21);	throw $r31
;block_num 4
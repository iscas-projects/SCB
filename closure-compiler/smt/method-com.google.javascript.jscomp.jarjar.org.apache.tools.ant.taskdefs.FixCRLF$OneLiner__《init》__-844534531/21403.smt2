(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2744 0)
(declare-sort var965 0)
(declare-sort var1622 0)
(declare-sort var2552 0)
(declare-sort var3385 0)
(declare-sort var2933 0)
(declare-sort var77 0)
(declare-sort var2694 0)
(declare-sort var3920 0)
(declare-sort var1692 0)
(declare-sort var228 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1258177498 (var2744) var965)
(declare-fun <init>/-279557996 (var2552) void)
(declare-fun cast-from-var2744-to-var2552 (var2744) var2552)
(declare-fun var965_access$000/115150639 (var965) var3385)
(declare-fun getJavafiles/801337728 (var3385) Bool)
(declare-fun state/1258177498 (var2744) Int)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun eolStr/1258177498 (var2744) String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun eofStr/1258177498 (var2744) String)
(declare-fun line/1258177498 (var2744) String)
(declare-fun reachedEof/1258177498 (var2744) Bool)
(declare-fun srcFile/1258177498 (var2744) var1622)
(declare-fun var2933-init () var2933)
(declare-fun var2694-init () var2694)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var2552) String)
(declare-fun cast-from-var1622-to-var2552 (var1622) var2552)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3920) String)
(declare-fun cast-from-var77-to-var3920 (var77) var3920)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var228) var1692)
(declare-fun cast-from-var965-to-var228 (var965) var228)
(declare-fun <init>/1933136886 (var2694 String var3920 var1692) void)
(declare-const null-var2744 var2744)
(declare-const null-var965 var965)
(declare-const null-var1622 var1622)
(declare-const null-var77 var77)
(declare-const var141 var2744) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner 
(assert (not (= var141 null-var2744)))
(declare-const var785 var965) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF 
(assert (not (= var785 null-var965)))
(declare-const var380 var1622) ; Statement: r7 := @parameter1: java.io.File 
(assert (not (= var380 null-var1622)))
(declare-const var141!1 var2744)
(assert (not (= var141!1 null-var2744)))
(assert (= (this$0/1258177498 var141!1) var785)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var2744-to-var2552 var141!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var141!2 var2744)
(define-const var2060 var965 (this$0/1258177498 var141!2)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF this$0> 
(define-const var2679 var3385 (var965_access$000/115150639 var2060)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF)>($r2) 
(assert true)
(define-const var3615 Bool (getJavafiles/801337728 var2679)) ; Statement: $z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: boolean getJavafiles()>() 
 ; Statement: if $z0 == 0 goto $b0 = 0 
(assert (not (= (ite var3615 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3699 Int 1) ; Statement: $b0 = 1 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: int state> = $b0] 
(assert true) ; Non Conditional
(declare-const var141!3 var2744)
(assert (not (= var141!3 null-var2744)))
(assert (= (state/1258177498 var141!3) var3699)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: int state> = $b0 
(define-const var2821 String String-init) ; Statement: $r24 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var2821 200)) ; Statement: specialinvoke $r24.<java.lang.StringBuffer: void <init>(int)>(200) 

(declare-const var2821!1 String)
(declare-const var2332 Int)
(declare-const var141!4 var2744)
(assert (not (= var141!4 null-var2744)))
(assert (= (eolStr/1258177498 var141!4) var2821!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer eolStr> = $r24 
(define-const var3693 String String-init) ; Statement: $r25 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3693)) ; Statement: specialinvoke $r25.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3693!1 String)
(declare-const var141!5 var2744)
(assert (not (= var141!5 null-var2744)))
(assert (= (eofStr/1258177498 var141!5) var3693!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer eofStr> = $r25 
(define-const var384 String String-init) ; Statement: $r26 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var384)) ; Statement: specialinvoke $r26.<java.lang.StringBuffer: void <init>()>() 

(declare-const var384!1 String)
(declare-const var141!6 var2744)
(assert (not (= var141!6 null-var2744)))
(assert (= (line/1258177498 var141!6) var384!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer line> = $r26 
(declare-const var141!7 var2744)
(assert (not (= var141!7 null-var2744)))
(assert (= (reachedEof/1258177498 var141!7) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: boolean reachedEof> = 0 
(declare-const var141!8 var2744)
(assert (not (= var141!8 null-var2744)))
(assert (= (srcFile/1258177498 var141!8) var380)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.io.File srcFile> = r7 
(define-const var1968 var2933 var2933-init) ; Statement: $r29 = new java.io.BufferedReader 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var649 var77) ; Statement: $r14 := @caughtexception 
(assert (not (= var649 null-var77)))
(define-const var600 var2694 var2694-init) ; Statement: $r31 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3429 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3429)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3429!1 String)
(assert (= var3429!1 ""))
(assert true)
(define-const var2261 String (append/-1031950772 var3429!1 (cast-from-var1622-to-var2552 var380))) ; Statement: $r17 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var3429!2 String)
(assert (str.prefixof var3429!1 var3429!2))
(assert true)
(define-const var1863 String (append/672562846 var2261 ": ")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2261!1 String)
(assert (= var2261!1 (str.++ var2261 ": ")))
(assert true)
(define-const var2436 String (getMessage/849299655 (cast-from-var77-to-var3920 var649))) ; Statement: $r18 = virtualinvoke $r14.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var1985 String (append/672562846 var1863 var2436)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1863!1 String)
(assert (= var1863!1 (str.++ var1863 var2436)))
(assert true)
(define-const var3797 String (toString/-2075883882 var1985)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var151 var1692 (getLocation/851674571 (cast-from-var965-to-var228 var785))) ; Statement: $r21 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var600 var3797 (cast-from-var77-to-var3920 var649) var151)) ; Statement: specialinvoke $r31.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r22, $r14, $r21) 

(declare-const var600!1 var2694)
(declare-const var3797!1 String)
(declare-const var649!1 var77)
(declare-const var151!1 var1692)
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF), <init>/-279557996=([java.lang.Object], void), cast-from-var2744-to-var2552=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.lang.Object), var965_access$000/115150639=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter), getJavafiles/801337728=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], boolean), state/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], int), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), eolStr/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), eofStr/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.lang.StringBuffer), line/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.lang.StringBuffer), reachedEof/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], boolean), srcFile/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.io.File), var2933-init=([], java.io.BufferedReader), var2694-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1622-to-var2552=([java.io.File], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var77-to-var3920=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var965-to-var228=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2744=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner, var141=r0, var965=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF, var785=r1, var1622=java.io.File, var380=r7, var2552=java.lang.Object, var2060=$r2, var3385=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter, var2679=$r3, var3615=$z0, var3699=$b0, var2821=$r24, var2332=200, var3693=$r25, var384=$r26, var2933=java.io.BufferedReader, var1968=$r29, var77=java.io.IOException, var649=$r14, var2694=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var600=$r31, var3429=$r30, var2261=$r17, var1863=$r19, var3920=java.lang.Throwable, var2436=$r18, var1985=$r20, var3797=$r22, var1692=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var228=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var151=$r21}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner=var2744, r0=var141, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF=var965, r1=var785, java.io.File=var1622, r7=var380, java.lang.Object=var2552, $r2=var2060, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter=var3385, $r3=var2679, $z0=var3615, $b0=var3699, $r24=var2821, 200=var2332, $r25=var3693, $r26=var384, java.io.BufferedReader=var2933, $r29=var1968, java.io.IOException=var77, $r14=var649, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2694, $r31=var600, $r30=var3429, $r17=var2261, $r19=var1863, java.lang.Throwable=var3920, $r18=var2436, $r20=var1985, $r22=var3797, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1692, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var228, $r21=var151}
;seq <java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF;	r7 := @parameter1: java.io.File;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF this$0>;	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF)>($r2);	$z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: boolean getJavafiles()>();	if $z0 == 0 goto $b0 = 0;	$b0 = 1;	goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: int state> = $b0];	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: int state> = $b0;	$r24 = new java.lang.StringBuffer;	specialinvoke $r24.<java.lang.StringBuffer: void <init>(int)>(200);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer eolStr> = $r24;	$r25 = new java.lang.StringBuffer;	specialinvoke $r25.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer eofStr> = $r25;	$r26 = new java.lang.StringBuffer;	specialinvoke $r26.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer line> = $r26;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: boolean reachedEof> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.io.File srcFile> = r7;	$r29 = new java.io.BufferedReader;	$r14 := @caughtexception;	$r31 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r18 = virtualinvoke $r14.<java.io.IOException: java.lang.String getMessage()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r31.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r22, $r14, $r21);	throw $r31
;block_num 4
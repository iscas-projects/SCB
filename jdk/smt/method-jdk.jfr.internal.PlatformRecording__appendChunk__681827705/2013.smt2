(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2845 0)
(declare-sort var1511 0)
(declare-sort var2512 0)
(declare-sort var1895 0)
(declare-sort var3753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isFinished/72282784 (var1511) Bool)
(declare-fun var2512-init () var2512)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getStartTime/490057959 (var1511) var1895)
(declare-fun append/-1031950772 (String var3753) String)
(declare-fun cast-from-var1895-to-var3753 (var1895) var3753)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1101485922 (var2512 String) void)
(declare-const null-var2845 var2845)
(declare-const null-var1511 var1511)
(declare-const var565 var2845) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var565 null-var2845)))
(declare-const var792 var1511) ; Statement: r0 := @parameter0: jdk.jfr.internal.RepositoryChunk 
(assert (not (= var792 null-var1511)))
(assert true)
(define-const var2899 Bool (isFinished/72282784 var792)) ; Statement: $z0 = virtualinvoke r0.<jdk.jfr.internal.RepositoryChunk: boolean isFinished()>() 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.PlatformRecorder recorder> 
(assert (not (not (= (ite var2899 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2200 var2512 var2512-init) ; Statement: $r8 = new java.lang.Error 
(define-const var1177 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1177)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1177!1 String)
(assert (= var1177!1 ""))
(assert true)
(define-const var2489 String (append/672562846 var1177!1 "not finished chunk ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not finished chunk ") 
(declare-const var1177!2 String)
(assert (= var1177!2 (str.++ var1177!1 "not finished chunk ")))
(assert true)
(define-const var1266 var1895 (getStartTime/490057959 var792)) ; Statement: $r10 = virtualinvoke r0.<jdk.jfr.internal.RepositoryChunk: java.time.Instant getStartTime()>() 
(assert true)
(define-const var1870 String (append/-1031950772 var2489 (cast-from-var1895-to-var3753 var1266))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var2489!1 String)
(assert (str.prefixof var2489 var2489!1))
(assert true)
(define-const var1249 String (toString/-2075883882 var1870)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1101485922 var2200 var1249)) ; Statement: specialinvoke $r8.<java.lang.Error: void <init>(java.lang.String)>($r13) 

(declare-const var2200!1 var2512)
(declare-const var1249!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {isFinished/72282784=([jdk.jfr.internal.RepositoryChunk], boolean), var2512-init=([], java.lang.Error), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getStartTime/490057959=([jdk.jfr.internal.RepositoryChunk], java.time.Instant), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1895-to-var3753=([java.time.Instant], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1101485922=([java.lang.Error, java.lang.String], void)}
; {var2845=jdk.jfr.internal.PlatformRecording, var565=r1, var1511=jdk.jfr.internal.RepositoryChunk, var792=r0, var2899=$z0, var2512=java.lang.Error, var2200=$r8, var1177=$r9, var2489=$r11, var1895=java.time.Instant, var1266=$r10, var3753=java.lang.Object, var1870=$r12, var1249=$r13}
; {jdk.jfr.internal.PlatformRecording=var2845, r1=var565, jdk.jfr.internal.RepositoryChunk=var1511, r0=var792, $z0=var2899, java.lang.Error=var2512, $r8=var2200, $r9=var1177, $r11=var2489, java.time.Instant=var1895, $r10=var1266, java.lang.Object=var3753, $r12=var1870, $r13=var1249}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	r0 := @parameter0: jdk.jfr.internal.RepositoryChunk;	$z0 = virtualinvoke r0.<jdk.jfr.internal.RepositoryChunk: boolean isFinished()>();	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.PlatformRecorder recorder>;	$r8 = new java.lang.Error;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not finished chunk ");	$r10 = virtualinvoke r0.<jdk.jfr.internal.RepositoryChunk: java.time.Instant getStartTime()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.Error: void <init>(java.lang.String)>($r13);	throw $r8
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var872 0)
(declare-sort var1694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1031466238 (var872) String)
(declare-fun id/-1031466238 (var872) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun toString/-1525464609 (var1694) String)
(declare-fun size/-1031466238 (var872) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var872 var872)
(declare-const null-var1694 var1694)
(declare-const var2768 var872) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var2768 null-var872)))
(declare-const var1997 var1694) ; Statement: r7 := @parameter0: jdk.jfr.internal.RepositoryChunk 
(assert (not (= var1997 null-var1694)))
(define-const var2086 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2086)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2086!1 String)
(assert (= var2086!1 ""))
(assert true)
(define-const var1799 String (append/672562846 var2086!1 "Recording \u0022")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Recording \"") 
(declare-const var2086!2 String)
(assert (= var2086!2 (str.++ var2086!1 "Recording \u0022")))
(define-const var454 String (name/-1031466238 var2768)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.lang.String name> 
(assert true)
(define-const var3598 String (append/672562846 var1799 var454)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1799!1 String)
(assert (= var1799!1 (str.++ var1799 var454)))
(assert true)
(define-const var161 String (append/672562846 var3598 "\u0022 (")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var3598!1 String)
(assert (= var3598!1 (str.++ var3598 "\u0022 (")))
(define-const var2659 Int (id/-1031466238 var2768)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long id> 
(assert true)
(define-const var597 String (append/-901862667 var161 var2659)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var161!1 String)
(assert (str.prefixof var161 var161!1))
(assert true)
(define-const var1669 String (append/672562846 var597 ") removed chunk ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") removed chunk ") 
(declare-const var597!1 String)
(assert (= var597!1 (str.++ var597 ") removed chunk ")))
(assert true)
(define-const var1726 String (toString/-1525464609 var1997)) ; Statement: $r8 = virtualinvoke r7.<jdk.jfr.internal.RepositoryChunk: java.lang.String toString()>() 
(assert true)
(define-const var2832 String (append/672562846 var1669 var1726)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1669!1 String)
(assert (= var1669!1 (str.++ var1669 var1726)))
(assert true)
(define-const var1360 String (append/672562846 var2832 ", current size=")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", current size=") 
(declare-const var2832!1 String)
(assert (= var2832!1 (str.++ var2832 ", current size=")))
(define-const var3374 Int (size/-1031466238 var2768)) ; Statement: $l1 = r1.<jdk.jfr.internal.PlatformRecording: long size> 
(assert true)
(define-const var2793 String (append/-901862667 var1360 var3374)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var1360!1 String)
(assert (str.prefixof var1360 var1360!1))
(assert true)
(define-const var1750 String (toString/-2075883882 var2793)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1031466238=([jdk.jfr.internal.PlatformRecording], java.lang.String), id/-1031466238=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-1525464609=([jdk.jfr.internal.RepositoryChunk], java.lang.String), size/-1031466238=([jdk.jfr.internal.PlatformRecording], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var872=jdk.jfr.internal.PlatformRecording, var2768=r1, var1694=jdk.jfr.internal.RepositoryChunk, var1997=r7, var2086=$r0, var1799=$r3, var454=$r2, var3598=$r4, var161=$r5, var2659=$l0, var597=$r6, var1669=$r9, var1726=$r8, var2832=$r10, var1360=$r11, var3374=$l1, var2793=$r12, var1750=$r13}
; {jdk.jfr.internal.PlatformRecording=var872, r1=var2768, jdk.jfr.internal.RepositoryChunk=var1694, r7=var1997, $r0=var2086, $r3=var1799, $r2=var454, $r4=var3598, $r5=var161, $l0=var2659, $r6=var597, $r9=var1669, $r8=var1726, $r10=var2832, $r11=var1360, $l1=var3374, $r12=var2793, $r13=var1750}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.jfr.internal.RepositoryChunk: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	r7 := @parameter0: jdk.jfr.internal.RepositoryChunk;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Recording \"");	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long id>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") removed chunk ");	$r8 = virtualinvoke r7.<jdk.jfr.internal.RepositoryChunk: java.lang.String toString()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", current size=");	$l1 = r1.<jdk.jfr.internal.PlatformRecording: long size>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 1
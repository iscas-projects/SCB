(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2423 0)
(declare-sort var879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1031466238 (var2423) String)
(declare-fun id/-1031466238 (var2423) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun toString/-1525464609 (var879) String)
(declare-fun size/-1031466238 (var2423) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2423 var2423)
(declare-const null-var879 var879)
(declare-const var1300 var2423) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var1300 null-var2423)))
(declare-const var1265 var879) ; Statement: r7 := @parameter0: jdk.jfr.internal.RepositoryChunk 
(assert (not (= var1265 null-var879)))
(define-const var1824 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1824)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1824!1 String)
(assert (= var1824!1 ""))
(assert true)
(define-const var1275 String (append/672562846 var1824!1 "Recording \u0022")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Recording \"") 
(declare-const var1824!2 String)
(assert (= var1824!2 (str.++ var1824!1 "Recording \u0022")))
(define-const var626 String (name/-1031466238 var1300)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.lang.String name> 
(assert true)
(define-const var520 String (append/672562846 var1275 var626)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1275!1 String)
(assert (= var1275!1 (str.++ var1275 var626)))
(assert true)
(define-const var1358 String (append/672562846 var520 "\u0022 (")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var520!1 String)
(assert (= var520!1 (str.++ var520 "\u0022 (")))
(define-const var1359 Int (id/-1031466238 var1300)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long id> 
(assert true)
(define-const var3833 String (append/-901862667 var1358 var1359)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1358!1 String)
(assert (str.prefixof var1358 var1358!1))
(assert true)
(define-const var1901 String (append/672562846 var3833 ") added chunk ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") added chunk ") 
(declare-const var3833!1 String)
(assert (= var3833!1 (str.++ var3833 ") added chunk ")))
(assert true)
(define-const var1673 String (toString/-1525464609 var1265)) ; Statement: $r8 = virtualinvoke r7.<jdk.jfr.internal.RepositoryChunk: java.lang.String toString()>() 
(assert true)
(define-const var2966 String (append/672562846 var1901 var1673)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1901!1 String)
(assert (= var1901!1 (str.++ var1901 var1673)))
(assert true)
(define-const var2509 String (append/672562846 var2966 ", current size=")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", current size=") 
(declare-const var2966!1 String)
(assert (= var2966!1 (str.++ var2966 ", current size=")))
(define-const var1601 Int (size/-1031466238 var1300)) ; Statement: $l1 = r1.<jdk.jfr.internal.PlatformRecording: long size> 
(assert true)
(define-const var3621 String (append/-901862667 var2509 var1601)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var2509!1 String)
(assert (str.prefixof var2509 var2509!1))
(assert true)
(define-const var1016 String (toString/-2075883882 var3621)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1031466238=([jdk.jfr.internal.PlatformRecording], java.lang.String), id/-1031466238=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-1525464609=([jdk.jfr.internal.RepositoryChunk], java.lang.String), size/-1031466238=([jdk.jfr.internal.PlatformRecording], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2423=jdk.jfr.internal.PlatformRecording, var1300=r1, var879=jdk.jfr.internal.RepositoryChunk, var1265=r7, var1824=$r0, var1275=$r3, var626=$r2, var520=$r4, var1358=$r5, var1359=$l0, var3833=$r6, var1901=$r9, var1673=$r8, var2966=$r10, var2509=$r11, var1601=$l1, var3621=$r12, var1016=$r13}
; {jdk.jfr.internal.PlatformRecording=var2423, r1=var1300, jdk.jfr.internal.RepositoryChunk=var879, r7=var1265, $r0=var1824, $r3=var1275, $r2=var626, $r4=var520, $r5=var1358, $l0=var1359, $r6=var3833, $r9=var1901, $r8=var1673, $r10=var2966, $r11=var2509, $l1=var1601, $r12=var3621, $r13=var1016}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.jfr.internal.RepositoryChunk: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	r7 := @parameter0: jdk.jfr.internal.RepositoryChunk;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Recording \"");	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long id>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") added chunk ");	$r8 = virtualinvoke r7.<jdk.jfr.internal.RepositoryChunk: java.lang.String toString()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", current size=");	$l1 = r1.<jdk.jfr.internal.PlatformRecording: long size>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 1
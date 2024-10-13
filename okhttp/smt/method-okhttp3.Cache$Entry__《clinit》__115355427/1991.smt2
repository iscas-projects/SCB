(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2649 0)
(declare-sort var3551 0)
(declare-sort var327 0)
(declare-sort var37 0)
(declare-sort var638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2649-init () var2649)
(declare-fun <init>/-1791445236 (var2649 var3551) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun get/-1167454587 (var37) var638)
(declare-fun getPrefix/249389394 (var638) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-NullType var327)
(declare-const null-var3551 var3551)
(declare-const var638-Companion var37)
(define-const var2963 var2649 var2649-init) ; Statement: $r0 = new okhttp3.Cache$Entry$Companion 
(assert true)
;(assert (<init>/-1791445236 var2963 null-var3551)) ; Statement: specialinvoke $r0.<okhttp3.Cache$Entry$Companion: void <init>(kotlin.jvm.internal.DefaultConstructorMarker)>(null) 

(declare-const var2963!1 var2649)
(declare-const var17 var327)
(define-const var3659 var2649 var2963!1) ; Statement: <okhttp3.Cache$Entry: okhttp3.Cache$Entry$Companion Companion> = $r0 
(define-const var3731 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3731)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3731!1 String)
(assert (= var3731!1 ""))
(define-const var1617 var37 var638-Companion) ; Statement: $r2 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion> 
(assert true)
(define-const var2249 var638 (get/-1167454587 var1617)) ; Statement: $r3 = virtualinvoke $r2.<okhttp3.internal.platform.Platform$Companion: okhttp3.internal.platform.Platform get()>() 
(assert true)
(define-const var3250 String (getPrefix/249389394 var2249)) ; Statement: $r4 = virtualinvoke $r3.<okhttp3.internal.platform.Platform: java.lang.String getPrefix()>() 
(assert true)
(define-const var791 String (append/672562846 var3731!1 var3250)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3731!2 String)
(assert (= var3731!2 (str.++ var3731!1 var3250)))
(assert true)
(define-const var370 String (append/672562846 var791 "-Sent-Millis")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-Sent-Millis") 
(declare-const var791!1 String)
(assert (= var791!1 (str.++ var791 "-Sent-Millis")))
(assert true)
(define-const var3642 String (toString/-2075883882 var370)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1929 String var3642) ; Statement: <okhttp3.Cache$Entry: java.lang.String SENT_MILLIS> = $r7 
(define-const var1456 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1456)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1456!1 String)
(assert (= var1456!1 ""))
(define-const var41 var37 var638-Companion) ; Statement: $r9 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion> 
(assert true)
(define-const var709 var638 (get/-1167454587 var41)) ; Statement: $r10 = virtualinvoke $r9.<okhttp3.internal.platform.Platform$Companion: okhttp3.internal.platform.Platform get()>() 
(assert true)
(define-const var153 String (getPrefix/249389394 var709)) ; Statement: $r11 = virtualinvoke $r10.<okhttp3.internal.platform.Platform: java.lang.String getPrefix()>() 
(assert true)
(define-const var3028 String (append/672562846 var1456!1 var153)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1456!2 String)
(assert (= var1456!2 (str.++ var1456!1 var153)))
(assert true)
(define-const var271 String (append/672562846 var3028 "-Received-Millis")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-Received-Millis") 
(declare-const var3028!1 String)
(assert (= var3028!1 (str.++ var3028 "-Received-Millis")))
(assert true)
(define-const var1322 String (toString/-2075883882 var271)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var91 String var1322) ; Statement: <okhttp3.Cache$Entry: java.lang.String RECEIVED_MILLIS> = $r14 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2649-init=([], okhttp3.Cache$Entry$Companion), <init>/-1791445236=([okhttp3.Cache$Entry$Companion, kotlin.jvm.internal.DefaultConstructorMarker], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), get/-1167454587=([okhttp3.internal.platform.Platform$Companion], okhttp3.internal.platform.Platform), getPrefix/249389394=([okhttp3.internal.platform.Platform], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2649=okhttp3.Cache$Entry$Companion, var2963=$r0, var3551=kotlin.jvm.internal.DefaultConstructorMarker, var17=null, var327=null_type, var3659=<okhttp3.Cache$Entry: okhttp3.Cache$Entry$Companion Companion>, var3731=$r1, var37=okhttp3.internal.platform.Platform$Companion, var638=okhttp3.internal.platform.Platform, var1617=$r2, var2249=$r3, var3250=$r4, var791=$r5, var370=$r6, var3642=$r7, var1929=<okhttp3.Cache$Entry: java.lang.String SENT_MILLIS>, var1456=$r8, var41=$r9, var709=$r10, var153=$r11, var3028=$r12, var271=$r13, var1322=$r14, var91=<okhttp3.Cache$Entry: java.lang.String RECEIVED_MILLIS>}
; {okhttp3.Cache$Entry$Companion=var2649, $r0=var2963, kotlin.jvm.internal.DefaultConstructorMarker=var3551, null=var17, null_type=var327, <okhttp3.Cache$Entry: okhttp3.Cache$Entry$Companion Companion>=var3659, $r1=var3731, okhttp3.internal.platform.Platform$Companion=var37, okhttp3.internal.platform.Platform=var638, $r2=var1617, $r3=var2249, $r4=var3250, $r5=var791, $r6=var370, $r7=var3642, <okhttp3.Cache$Entry: java.lang.String SENT_MILLIS>=var1929, $r8=var1456, $r9=var41, $r10=var709, $r11=var153, $r12=var3028, $r13=var271, $r14=var1322, <okhttp3.Cache$Entry: java.lang.String RECEIVED_MILLIS>=var91}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts $r0 = new okhttp3.Cache$Entry$Companion;	specialinvoke $r0.<okhttp3.Cache$Entry$Companion: void <init>(kotlin.jvm.internal.DefaultConstructorMarker)>(null);	<okhttp3.Cache$Entry: okhttp3.Cache$Entry$Companion Companion> = $r0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion>;	$r3 = virtualinvoke $r2.<okhttp3.internal.platform.Platform$Companion: okhttp3.internal.platform.Platform get()>();	$r4 = virtualinvoke $r3.<okhttp3.internal.platform.Platform: java.lang.String getPrefix()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-Sent-Millis");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	<okhttp3.Cache$Entry: java.lang.String SENT_MILLIS> = $r7;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion>;	$r10 = virtualinvoke $r9.<okhttp3.internal.platform.Platform$Companion: okhttp3.internal.platform.Platform get()>();	$r11 = virtualinvoke $r10.<okhttp3.internal.platform.Platform: java.lang.String getPrefix()>();	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-Received-Millis");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	<okhttp3.Cache$Entry: java.lang.String RECEIVED_MILLIS> = $r14;	return
;block_num 1
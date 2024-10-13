(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var80 0)
(declare-sort var2081 0)
(declare-sort var3089 0)
(declare-sort var2490 0)
(declare-sort var3254 0)
(declare-sort var2159 0)
(declare-sort var3230 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3089_checkNotNullParameter/-2060636419 (var2490 String) void)
(declare-fun cast-from-String-to-var2490 (String) var2490)
(declare-fun var2159-init () var2159)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1550685016 (var2159 String) void)
(declare-fun cast-from-var3254-to-var3230 (var3254) var3230)
(declare-fun initCause/2003336360 (var3230 var3230) var3230)
(declare-fun cast-from-var2159-to-var3230 (var2159) var3230)
(declare-const null-var80 var80)
(declare-const null-String String)
(declare-const null-var3254 var3254)
(declare-const var3382 var80) ; Statement: r12 := @this: okhttp3.Dns$Companion$DnsSystem 
(assert (not (= var3382 null-var80)))
(declare-const var2131 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2131 null-String)))
;(assert (var3089_checkNotNullParameter/-2060636419 (cast-from-String-to-var2490 var2131) "hostname")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "hostname") 

(declare-const var2131!1 String)
(declare-const var3857 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3047 var3254) ; Statement: $r4 := @caughtexception 
(assert (not (= var3047 null-var3254)))
(define-const var3476 var2159 var2159-init) ; Statement: $r5 = new java.net.UnknownHostException 
(define-const var3577 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3577)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3577!1 String)
(assert (= var3577!1 ""))
(assert true)
(define-const var1564 String (append/672562846 var3577!1 "Broken system behaviour for dns lookup of ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Broken system behaviour for dns lookup of ") 
(declare-const var3577!2 String)
(assert (= var3577!2 (str.++ var3577!1 "Broken system behaviour for dns lookup of ")))
(assert true)
(define-const var1405 String (append/672562846 var1564 var2131!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1564!1 String)
(assert (= var1564!1 (str.++ var1564 var2131!1)))
(assert true)
(define-const var1592 String (toString/-2075883882 var1405)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1550685016 var3476 var1592)) ; Statement: specialinvoke $r5.<java.net.UnknownHostException: void <init>(java.lang.String)>($r9) 

(declare-const var3476!1 var2159)
(declare-const var1592!1 String)
(define-const var2148 var3230 (cast-from-var3254-to-var3230 var3047)) ; Statement: $r10 = (java.lang.Throwable) $r4 
(assert true)
;(assert (initCause/2003336360 (cast-from-var2159-to-var3230 var3476!1) var2148)) ; Statement: virtualinvoke $r5.<java.net.UnknownHostException: java.lang.Throwable initCause(java.lang.Throwable)>($r10) 

(declare-const var3476!2 var2159)
(declare-const var2148!1 var3230)
(define-const var1697 var3230 (cast-from-var2159-to-var3230 var3476!2)) ; Statement: $r11 = (java.lang.Throwable) $r5 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3089_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2490=([java.lang.String], java.lang.Object), var2159-init=([], java.net.UnknownHostException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1550685016=([java.net.UnknownHostException, java.lang.String], void), cast-from-var3254-to-var3230=([java.lang.NullPointerException], java.lang.Throwable), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var2159-to-var3230=([java.net.UnknownHostException], java.lang.Throwable)}
; {var80=okhttp3.Dns$Companion$DnsSystem, var3382=r12, var2131=r0, var2081=null_type, var3089=kotlin.jvm.internal.Intrinsics, var2490=java.lang.Object, var3857="hostname", var3254=java.lang.NullPointerException, var3047=$r4, var2159=java.net.UnknownHostException, var3476=$r5, var3577=$r6, var1564=$r7, var1405=$r8, var1592=$r9, var3230=java.lang.Throwable, var2148=$r10, var1697=$r11}
; {okhttp3.Dns$Companion$DnsSystem=var80, r12=var3382, r0=var2131, null_type=var2081, kotlin.jvm.internal.Intrinsics=var3089, java.lang.Object=var2490, "hostname"=var3857, java.lang.NullPointerException=var3254, $r4=var3047, java.net.UnknownHostException=var2159, $r5=var3476, $r6=var3577, $r7=var1564, $r8=var1405, $r9=var1592, java.lang.Throwable=var3230, $r10=var2148, $r11=var1697}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: okhttp3.Dns$Companion$DnsSystem;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "hostname");	$r4 := @caughtexception;	$r5 = new java.net.UnknownHostException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Broken system behaviour for dns lookup of ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.net.UnknownHostException: void <init>(java.lang.String)>($r9);	$r10 = (java.lang.Throwable) $r4;	virtualinvoke $r5.<java.net.UnknownHostException: java.lang.Throwable initCause(java.lang.Throwable)>($r10);	$r11 = (java.lang.Throwable) $r5;	throw $r11
;block_num 2
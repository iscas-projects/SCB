(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2364 0)
(declare-sort var100 0)
(declare-sort var247 0)
(declare-sort var1892 0)
(declare-sort var3623 0)
(declare-sort var1676 0)
(declare-sort var467 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var247_nanoTime/-1409780067 () Int)
(declare-fun rawSocket/-1511555494 (var2364) var1892)
(declare-fun var3623_checkNotNull/185761657 (var1676) void)
(declare-fun cast-from-var1892-to-var1676 (var1892) var1676)
(declare-fun socket/-1511555494 (var2364) var1892)
(declare-fun source/-1511555494 (var2364) var467)
(declare-fun cast-from-var467-to-var1676 (var467) var1676)
(declare-fun isClosed/-456702091 (var1892) Bool)
(declare-const null-var2364 var2364)
(declare-const null-Bool Bool)
(declare-const var100-assertionsEnabled Bool)
(declare-const var1372 var2364) ; Statement: r0 := @this: okhttp3.internal.connection.RealConnection 
(assert (not (= var1372 null-var2364)))
(declare-const var3574 Bool) ; Statement: z5 := @parameter0: boolean 
(assert (not (= var3574 null-Bool)))
(define-const var3882 Bool var100-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $l2 = staticinvoke <java.lang.System: long nanoTime()>() 
(assert (= (ite var3882 1 0) 0)) ; Cond: $z0 == 0 
(define-const var931 Int var247_nanoTime/-1409780067) ; Statement: $l2 = staticinvoke <java.lang.System: long nanoTime()>() 
(define-const var1269 var1892 (rawSocket/-1511555494 var1372)) ; Statement: $r1 = r0.<okhttp3.internal.connection.RealConnection: java.net.Socket rawSocket> 
;(assert (var3623_checkNotNull/185761657 (cast-from-var1892-to-var1676 var1269))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r1) 

(declare-const var1269!1 var1892)
(define-const var33 var1892 (socket/-1511555494 var1372)) ; Statement: $r2 = r0.<okhttp3.internal.connection.RealConnection: java.net.Socket socket> 
;(assert (var3623_checkNotNull/185761657 (cast-from-var1892-to-var1676 var33))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r2) 

(declare-const var33!1 var1892)
(define-const var589 var467 (source/-1511555494 var1372)) ; Statement: $r3 = r0.<okhttp3.internal.connection.RealConnection: okio.BufferedSource source> 
;(assert (var3623_checkNotNull/185761657 (cast-from-var467-to-var1676 var589))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r3) 

(declare-const var589!1 var467)
(assert true)
(define-const var596 Bool (isClosed/-456702091 var1269!1)) ; Statement: $z1 = virtualinvoke $r1.<java.net.Socket: boolean isClosed()>() 
 ; Statement: if $z1 != 0 goto return 0 
(assert (not (= (ite var596 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var247_nanoTime/-1409780067=([], long), rawSocket/-1511555494=([okhttp3.internal.connection.RealConnection], java.net.Socket), var3623_checkNotNull/185761657=([java.lang.Object], void), cast-from-var1892-to-var1676=([java.net.Socket], java.lang.Object), socket/-1511555494=([okhttp3.internal.connection.RealConnection], java.net.Socket), source/-1511555494=([okhttp3.internal.connection.RealConnection], okio.BufferedSource), cast-from-var467-to-var1676=([okio.BufferedSource], java.lang.Object), isClosed/-456702091=([java.net.Socket], boolean)}
; {var2364=okhttp3.internal.connection.RealConnection, var1372=r0, var3574=z5, var100=okhttp3.internal.Util, var3882=$z0, var247=java.lang.System, var931=$l2, var1892=java.net.Socket, var1269=$r1, var3623=kotlin.jvm.internal.Intrinsics, var1676=java.lang.Object, var33=$r2, var467=okio.BufferedSource, var589=$r3, var596=$z1}
; {okhttp3.internal.connection.RealConnection=var2364, r0=var1372, z5=var3574, okhttp3.internal.Util=var100, $z0=var3882, java.lang.System=var247, $l2=var931, java.net.Socket=var1892, $r1=var1269, kotlin.jvm.internal.Intrinsics=var3623, java.lang.Object=var1676, $r2=var33, okio.BufferedSource=var467, $r3=var589, $z1=var596}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.connection.RealConnection;	z5 := @parameter0: boolean;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $l2 = staticinvoke <java.lang.System: long nanoTime()>();	$l2 = staticinvoke <java.lang.System: long nanoTime()>();	$r1 = r0.<okhttp3.internal.connection.RealConnection: java.net.Socket rawSocket>;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r1);	$r2 = r0.<okhttp3.internal.connection.RealConnection: java.net.Socket socket>;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r2);	$r3 = r0.<okhttp3.internal.connection.RealConnection: okio.BufferedSource source>;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r3);	$z1 = virtualinvoke $r1.<java.net.Socket: boolean isClosed()>();	if $z1 != 0 goto return 0;	return 0
;block_num 3
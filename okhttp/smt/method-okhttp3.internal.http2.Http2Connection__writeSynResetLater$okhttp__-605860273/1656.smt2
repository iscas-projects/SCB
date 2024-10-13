(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var748 0)
(declare-sort var2622 0)
(declare-sort var570 0)
(declare-sort var320 0)
(declare-sort var2315 0)
(declare-sort var2953 0)
(declare-sort var2944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var570_checkNotNullParameter/-2060636419 (var320 String) void)
(declare-fun cast-from-var2622-to-var320 (var2622) var320)
(declare-fun writerQueue/879952594 (var748) var2315)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun connectionName/879952594 (var748) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2953-init () var2953)
(declare-fun <init>/-1375548870 (var2953 String Bool var748 Int var2622) void)
(declare-fun cast-from-var2953-to-var2944 (var2953) var2944)
(declare-fun schedule/410635229 (var2315 var2944 Int) void)
(declare-const null-var748 var748)
(declare-const null-Int Int)
(declare-const null-var2622 var2622)
(declare-const var301 var748) ; Statement: r1 := @this: okhttp3.internal.http2.Http2Connection 
(assert (not (= var301 null-var748)))
(declare-const var3851 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3851 null-Int)))
(declare-const var2124 var2622) ; Statement: r0 := @parameter1: okhttp3.internal.http2.ErrorCode 
(assert (not (= var2124 null-var2622)))
;(assert (var570_checkNotNullParameter/-2060636419 (cast-from-var2622-to-var320 var2124) "errorCode")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "errorCode") 

(declare-const var2124!1 var2622)
(declare-const var1645 String)
(define-const var228 var2315 (writerQueue/879952594 var301)) ; Statement: $r2 = r1.<okhttp3.internal.http2.Http2Connection: okhttp3.internal.concurrent.TaskQueue writerQueue> 
(define-const var3748 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3748)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3748!1 String)
(assert (= var3748!1 ""))
(define-const var3326 String (connectionName/879952594 var301)) ; Statement: $r4 = r1.<okhttp3.internal.http2.Http2Connection: java.lang.String connectionName> 
(assert true)
(define-const var573 String (append/672562846 var3748!1 var3326)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3748!2 String)
(assert (= var3748!2 (str.++ var3748!1 var3326)))
(assert true)
(define-const var2204 String (append/-1166366385 var573 91)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var573!1 String)
(assert (str.prefixof var573 var573!1))
(assert true)
(define-const var403 String (append/-1001720160 var2204 var3851)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2204!1 String)
(assert (str.prefixof var2204 var2204!1))
(assert true)
(define-const var3396 String (append/672562846 var403 "] writeSynReset")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] writeSynReset") 
(declare-const var403!1 String)
(assert (= var403!1 (str.++ var403 "] writeSynReset")))
(assert true)
(define-const var2256 String (toString/-2075883882 var3396)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3523 var2953 var2953-init) ; Statement: $r10 = new okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$default$1 
(assert true)
;(assert (<init>/-1375548870 var3523 var2256 (ite (= 1 1) true false) var301 var3851 var2124!1)) ; Statement: specialinvoke $r10.<okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$default$1: void <init>(java.lang.String,boolean,okhttp3.internal.http2.Http2Connection,int,okhttp3.internal.http2.ErrorCode)>(r9, 1, r1, i0, r0) 

(declare-const var3523!1 var2953)
(declare-const var2256!1 String)
(declare-const var2916 Int)
(declare-const var301!1 var748)
(declare-const var3851!1 Int)
(declare-const var2124!2 var2622)
(define-const var1032 var2944 (cast-from-var2953-to-var2944 var3523!1)) ; Statement: $r11 = (okhttp3.internal.concurrent.Task) $r10 
(assert true)
;(assert (schedule/410635229 var228 var1032 0)) ; Statement: virtualinvoke $r2.<okhttp3.internal.concurrent.TaskQueue: void schedule(okhttp3.internal.concurrent.Task,long)>($r11, 0L) 

(declare-const var228!1 var2315)
(declare-const var1032!1 var2944)
(declare-const var3254 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var570_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2622-to-var320=([okhttp3.internal.http2.ErrorCode], java.lang.Object), writerQueue/879952594=([okhttp3.internal.http2.Http2Connection], okhttp3.internal.concurrent.TaskQueue), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), connectionName/879952594=([okhttp3.internal.http2.Http2Connection], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2953-init=([], okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$default$1), <init>/-1375548870=([okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$default$1, java.lang.String, boolean, okhttp3.internal.http2.Http2Connection, int, okhttp3.internal.http2.ErrorCode], void), cast-from-var2953-to-var2944=([okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$default$1], okhttp3.internal.concurrent.Task), schedule/410635229=([okhttp3.internal.concurrent.TaskQueue, okhttp3.internal.concurrent.Task, long], void)}
; {var748=okhttp3.internal.http2.Http2Connection, var301=r1, var3851=i0, var2622=okhttp3.internal.http2.ErrorCode, var2124=r0, var570=kotlin.jvm.internal.Intrinsics, var320=java.lang.Object, var1645="errorCode", var2315=okhttp3.internal.concurrent.TaskQueue, var228=$r2, var3748=$r3, var3326=$r4, var573=$r5, var2204=$r6, var403=$r7, var3396=$r8, var2256=r9, var2953=okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$default$1, var3523=$r10, var2916=1, var2944=okhttp3.internal.concurrent.Task, var1032=$r11, var3254=0L}
; {okhttp3.internal.http2.Http2Connection=var748, r1=var301, i0=var3851, okhttp3.internal.http2.ErrorCode=var2622, r0=var2124, kotlin.jvm.internal.Intrinsics=var570, java.lang.Object=var320, "errorCode"=var1645, okhttp3.internal.concurrent.TaskQueue=var2315, $r2=var228, $r3=var3748, $r4=var3326, $r5=var573, $r6=var2204, $r7=var403, $r8=var3396, r9=var2256, okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$default$1=var2953, $r10=var3523, 1=var2916, okhttp3.internal.concurrent.Task=var2944, $r11=var1032, 0L=var3254}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http2.Http2Connection;	i0 := @parameter0: int;	r0 := @parameter1: okhttp3.internal.http2.ErrorCode;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "errorCode");	$r2 = r1.<okhttp3.internal.http2.Http2Connection: okhttp3.internal.concurrent.TaskQueue writerQueue>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = r1.<okhttp3.internal.http2.Http2Connection: java.lang.String connectionName>;	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] writeSynReset");	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$default$1;	specialinvoke $r10.<okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$default$1: void <init>(java.lang.String,boolean,okhttp3.internal.http2.Http2Connection,int,okhttp3.internal.http2.ErrorCode)>(r9, 1, r1, i0, r0);	$r11 = (okhttp3.internal.concurrent.Task) $r10;	virtualinvoke $r2.<okhttp3.internal.concurrent.TaskQueue: void schedule(okhttp3.internal.concurrent.Task,long)>($r11, 0L);	return
;block_num 1
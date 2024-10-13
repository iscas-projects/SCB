(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1469 0)
(declare-sort var3849 0)
(declare-sort var2278 0)
(declare-sort var2193 0)
(declare-sort var831 0)
(declare-sort var3329 0)
(declare-sort var3033 0)
(declare-sort var2352 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2278_checkNotNullParameter/-2060636419 (var2193 String) void)
(declare-fun cast-from-var3849-to-var2193 (var3849) var2193)
(declare-fun this$0/-360015566 (var1469) var831)
(declare-fun var831_access$getWriterQueue$p/613676168 (var831) var3329)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getConnectionName$okhttp/-1643514355 (var831) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3033-init () var3033)
(declare-fun <init>/1652018986 (var3033 String Bool var1469 Bool var3849) void)
(declare-fun cast-from-var3033-to-var2352 (var3033) var2352)
(declare-fun schedule/410635229 (var3329 var2352 Int) void)
(declare-const null-var1469 var1469)
(declare-const null-Bool Bool)
(declare-const null-var3849 var3849)
(declare-const var2250 var1469) ; Statement: r1 := @this: okhttp3.internal.http2.Http2Connection$ReaderRunnable 
(assert (not (= var2250 null-var1469)))
(declare-const var3140 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3140 null-Bool)))
(declare-const var967 var3849) ; Statement: r0 := @parameter1: okhttp3.internal.http2.Settings 
(assert (not (= var967 null-var3849)))
;(assert (var2278_checkNotNullParameter/-2060636419 (cast-from-var3849-to-var2193 var967) "settings")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "settings") 

(declare-const var967!1 var3849)
(declare-const var1545 String)
(define-const var318 var831 (this$0/-360015566 var2250)) ; Statement: $r2 = r1.<okhttp3.internal.http2.Http2Connection$ReaderRunnable: okhttp3.internal.http2.Http2Connection this$0> 
(define-const var320 var3329 (var831_access$getWriterQueue$p/613676168 var318)) ; Statement: $r3 = staticinvoke <okhttp3.internal.http2.Http2Connection: okhttp3.internal.concurrent.TaskQueue access$getWriterQueue$p(okhttp3.internal.http2.Http2Connection)>($r2) 
(define-const var2722 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2722)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2722!1 String)
(assert (= var2722!1 ""))
(define-const var3094 var831 (this$0/-360015566 var2250)) ; Statement: $r5 = r1.<okhttp3.internal.http2.Http2Connection$ReaderRunnable: okhttp3.internal.http2.Http2Connection this$0> 
(assert true)
(define-const var137 String (getConnectionName$okhttp/-1643514355 var3094)) ; Statement: $r6 = virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection: java.lang.String getConnectionName$okhttp()>() 
(assert true)
(define-const var1725 String (append/672562846 var2722!1 var137)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2722!2 String)
(assert (= var2722!2 (str.++ var2722!1 var137)))
(assert true)
(define-const var2734 String (append/672562846 var1725 " applyAndAckSettings")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" applyAndAckSettings") 
(declare-const var1725!1 String)
(assert (= var1725!1 (str.++ var1725 " applyAndAckSettings")))
(assert true)
(define-const var1769 String (toString/-2075883882 var2734)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var163 var3033 var3033-init) ; Statement: $r10 = new okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1 
(assert true)
;(assert (<init>/1652018986 var163 var1769 (ite (= 1 1) true false) var2250 var3140 var967!1)) ; Statement: specialinvoke $r10.<okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1: void <init>(java.lang.String,boolean,okhttp3.internal.http2.Http2Connection$ReaderRunnable,boolean,okhttp3.internal.http2.Settings)>(r9, 1, r1, z0, r0) 

(declare-const var163!1 var3033)
(declare-const var1769!1 String)
(declare-const var2991 Int)
(declare-const var2250!1 var1469)
(declare-const var3140!1 Bool)
(declare-const var967!2 var3849)
(define-const var200 var2352 (cast-from-var3033-to-var2352 var163!1)) ; Statement: $r11 = (okhttp3.internal.concurrent.Task) $r10 
(assert true)
;(assert (schedule/410635229 var320 var200 0)) ; Statement: virtualinvoke $r3.<okhttp3.internal.concurrent.TaskQueue: void schedule(okhttp3.internal.concurrent.Task,long)>($r11, 0L) 

(declare-const var320!1 var3329)
(declare-const var200!1 var2352)
(declare-const var2585 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2278_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3849-to-var2193=([okhttp3.internal.http2.Settings], java.lang.Object), this$0/-360015566=([okhttp3.internal.http2.Http2Connection$ReaderRunnable], okhttp3.internal.http2.Http2Connection), var831_access$getWriterQueue$p/613676168=([okhttp3.internal.http2.Http2Connection], okhttp3.internal.concurrent.TaskQueue), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getConnectionName$okhttp/-1643514355=([okhttp3.internal.http2.Http2Connection], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3033-init=([], okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1), <init>/1652018986=([okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1, java.lang.String, boolean, okhttp3.internal.http2.Http2Connection$ReaderRunnable, boolean, okhttp3.internal.http2.Settings], void), cast-from-var3033-to-var2352=([okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1], okhttp3.internal.concurrent.Task), schedule/410635229=([okhttp3.internal.concurrent.TaskQueue, okhttp3.internal.concurrent.Task, long], void)}
; {var1469=okhttp3.internal.http2.Http2Connection$ReaderRunnable, var2250=r1, var3140=z0, var3849=okhttp3.internal.http2.Settings, var967=r0, var2278=kotlin.jvm.internal.Intrinsics, var2193=java.lang.Object, var1545="settings", var831=okhttp3.internal.http2.Http2Connection, var318=$r2, var3329=okhttp3.internal.concurrent.TaskQueue, var320=$r3, var2722=$r4, var3094=$r5, var137=$r6, var1725=$r7, var2734=$r8, var1769=r9, var3033=okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1, var163=$r10, var2991=1, var2352=okhttp3.internal.concurrent.Task, var200=$r11, var2585=0L}
; {okhttp3.internal.http2.Http2Connection$ReaderRunnable=var1469, r1=var2250, z0=var3140, okhttp3.internal.http2.Settings=var3849, r0=var967, kotlin.jvm.internal.Intrinsics=var2278, java.lang.Object=var2193, "settings"=var1545, okhttp3.internal.http2.Http2Connection=var831, $r2=var318, okhttp3.internal.concurrent.TaskQueue=var3329, $r3=var320, $r4=var2722, $r5=var3094, $r6=var137, $r7=var1725, $r8=var2734, r9=var1769, okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1=var3033, $r10=var163, 1=var2991, okhttp3.internal.concurrent.Task=var2352, $r11=var200, 0L=var2585}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http2.Http2Connection$ReaderRunnable;	z0 := @parameter0: boolean;	r0 := @parameter1: okhttp3.internal.http2.Settings;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "settings");	$r2 = r1.<okhttp3.internal.http2.Http2Connection$ReaderRunnable: okhttp3.internal.http2.Http2Connection this$0>;	$r3 = staticinvoke <okhttp3.internal.http2.Http2Connection: okhttp3.internal.concurrent.TaskQueue access$getWriterQueue$p(okhttp3.internal.http2.Http2Connection)>($r2);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = r1.<okhttp3.internal.http2.Http2Connection$ReaderRunnable: okhttp3.internal.http2.Http2Connection this$0>;	$r6 = virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection: java.lang.String getConnectionName$okhttp()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" applyAndAckSettings");	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1;	specialinvoke $r10.<okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1: void <init>(java.lang.String,boolean,okhttp3.internal.http2.Http2Connection$ReaderRunnable,boolean,okhttp3.internal.http2.Settings)>(r9, 1, r1, z0, r0);	$r11 = (okhttp3.internal.concurrent.Task) $r10;	virtualinvoke $r3.<okhttp3.internal.concurrent.TaskQueue: void schedule(okhttp3.internal.concurrent.Task,long)>($r11, 0L);	return
;block_num 1
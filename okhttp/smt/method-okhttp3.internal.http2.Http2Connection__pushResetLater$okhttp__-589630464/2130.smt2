(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3079 0)
(declare-sort var507 0)
(declare-sort var3026 0)
(declare-sort var2220 0)
(declare-sort var2650 0)
(declare-sort var741 0)
(declare-sort var3560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3026_checkNotNullParameter/-2060636419 (var2220 String) void)
(declare-fun cast-from-var507-to-var2220 (var507) var2220)
(declare-fun pushQueue/879952594 (var3079) var2650)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun connectionName/879952594 (var3079) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var741-init () var741)
(declare-fun <init>/-1064331351 (var741 String Bool var3079 Int var507) void)
(declare-fun cast-from-var741-to-var3560 (var741) var3560)
(declare-fun schedule/410635229 (var2650 var3560 Int) void)
(declare-const null-var3079 var3079)
(declare-const null-Int Int)
(declare-const null-var507 var507)
(declare-const var2973 var3079) ; Statement: r1 := @this: okhttp3.internal.http2.Http2Connection 
(assert (not (= var2973 null-var3079)))
(declare-const var3758 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3758 null-Int)))
(declare-const var1761 var507) ; Statement: r0 := @parameter1: okhttp3.internal.http2.ErrorCode 
(assert (not (= var1761 null-var507)))
;(assert (var3026_checkNotNullParameter/-2060636419 (cast-from-var507-to-var2220 var1761) "errorCode")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "errorCode") 

(declare-const var1761!1 var507)
(declare-const var3780 String)
(define-const var609 var2650 (pushQueue/879952594 var2973)) ; Statement: $r2 = r1.<okhttp3.internal.http2.Http2Connection: okhttp3.internal.concurrent.TaskQueue pushQueue> 
(define-const var1847 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1847)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1847!1 String)
(assert (= var1847!1 ""))
(define-const var3920 String (connectionName/879952594 var2973)) ; Statement: $r4 = r1.<okhttp3.internal.http2.Http2Connection: java.lang.String connectionName> 
(assert true)
(define-const var2031 String (append/672562846 var1847!1 var3920)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1847!2 String)
(assert (= var1847!2 (str.++ var1847!1 var3920)))
(assert true)
(define-const var3791 String (append/-1166366385 var2031 91)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2031!1 String)
(assert (str.prefixof var2031 var2031!1))
(assert true)
(define-const var726 String (append/-1001720160 var3791 var3758)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3791!1 String)
(assert (str.prefixof var3791 var3791!1))
(assert true)
(define-const var3784 String (append/672562846 var726 "] onReset")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] onReset") 
(declare-const var726!1 String)
(assert (= var726!1 (str.++ var726 "] onReset")))
(assert true)
(define-const var666 String (toString/-2075883882 var3784)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var994 var741 var741-init) ; Statement: $r10 = new okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$default$1 
(assert true)
;(assert (<init>/-1064331351 var994 var666 (ite (= 1 1) true false) var2973 var3758 var1761!1)) ; Statement: specialinvoke $r10.<okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$default$1: void <init>(java.lang.String,boolean,okhttp3.internal.http2.Http2Connection,int,okhttp3.internal.http2.ErrorCode)>(r9, 1, r1, i0, r0) 

(declare-const var994!1 var741)
(declare-const var666!1 String)
(declare-const var1329 Int)
(declare-const var2973!1 var3079)
(declare-const var3758!1 Int)
(declare-const var1761!2 var507)
(define-const var1488 var3560 (cast-from-var741-to-var3560 var994!1)) ; Statement: $r11 = (okhttp3.internal.concurrent.Task) $r10 
(assert true)
;(assert (schedule/410635229 var609 var1488 0)) ; Statement: virtualinvoke $r2.<okhttp3.internal.concurrent.TaskQueue: void schedule(okhttp3.internal.concurrent.Task,long)>($r11, 0L) 

(declare-const var609!1 var2650)
(declare-const var1488!1 var3560)
(declare-const var2058 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3026_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var507-to-var2220=([okhttp3.internal.http2.ErrorCode], java.lang.Object), pushQueue/879952594=([okhttp3.internal.http2.Http2Connection], okhttp3.internal.concurrent.TaskQueue), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), connectionName/879952594=([okhttp3.internal.http2.Http2Connection], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var741-init=([], okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$default$1), <init>/-1064331351=([okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$default$1, java.lang.String, boolean, okhttp3.internal.http2.Http2Connection, int, okhttp3.internal.http2.ErrorCode], void), cast-from-var741-to-var3560=([okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$default$1], okhttp3.internal.concurrent.Task), schedule/410635229=([okhttp3.internal.concurrent.TaskQueue, okhttp3.internal.concurrent.Task, long], void)}
; {var3079=okhttp3.internal.http2.Http2Connection, var2973=r1, var3758=i0, var507=okhttp3.internal.http2.ErrorCode, var1761=r0, var3026=kotlin.jvm.internal.Intrinsics, var2220=java.lang.Object, var3780="errorCode", var2650=okhttp3.internal.concurrent.TaskQueue, var609=$r2, var1847=$r3, var3920=$r4, var2031=$r5, var3791=$r6, var726=$r7, var3784=$r8, var666=r9, var741=okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$default$1, var994=$r10, var1329=1, var3560=okhttp3.internal.concurrent.Task, var1488=$r11, var2058=0L}
; {okhttp3.internal.http2.Http2Connection=var3079, r1=var2973, i0=var3758, okhttp3.internal.http2.ErrorCode=var507, r0=var1761, kotlin.jvm.internal.Intrinsics=var3026, java.lang.Object=var2220, "errorCode"=var3780, okhttp3.internal.concurrent.TaskQueue=var2650, $r2=var609, $r3=var1847, $r4=var3920, $r5=var2031, $r6=var3791, $r7=var726, $r8=var3784, r9=var666, okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$default$1=var741, $r10=var994, 1=var1329, okhttp3.internal.concurrent.Task=var3560, $r11=var1488, 0L=var2058}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http2.Http2Connection;	i0 := @parameter0: int;	r0 := @parameter1: okhttp3.internal.http2.ErrorCode;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "errorCode");	$r2 = r1.<okhttp3.internal.http2.Http2Connection: okhttp3.internal.concurrent.TaskQueue pushQueue>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = r1.<okhttp3.internal.http2.Http2Connection: java.lang.String connectionName>;	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] onReset");	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$default$1;	specialinvoke $r10.<okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$default$1: void <init>(java.lang.String,boolean,okhttp3.internal.http2.Http2Connection,int,okhttp3.internal.http2.ErrorCode)>(r9, 1, r1, i0, r0);	$r11 = (okhttp3.internal.concurrent.Task) $r10;	virtualinvoke $r2.<okhttp3.internal.concurrent.TaskQueue: void schedule(okhttp3.internal.concurrent.Task,long)>($r11, 0L);	return
;block_num 1
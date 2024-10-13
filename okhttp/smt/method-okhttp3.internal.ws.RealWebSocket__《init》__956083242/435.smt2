(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var866 0)
(declare-sort var3002 0)
(declare-sort var3292 0)
(declare-sort var1160 0)
(declare-sort var621 0)
(declare-sort var2302 0)
(declare-sort var3785 0)
(declare-sort var3914 0)
(declare-sort var1803 0)
(declare-sort var109 0)
(declare-sort var1294 0)
(declare-sort var3607 0)
(declare-sort var3386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3785_checkNotNullParameter/-2060636419 (var3914 String) void)
(declare-fun cast-from-var3002-to-var3914 (var3002) var3914)
(declare-fun cast-from-var3292-to-var3914 (var3292) var3914)
(declare-fun cast-from-var1160-to-var3914 (var1160) var3914)
(declare-fun cast-from-var621-to-var3914 (var621) var3914)
(declare-fun <init>/-279557996 (var3914) void)
(declare-fun cast-from-var866-to-var3914 (var866) var3914)
(declare-fun originalRequest/-1234160023 (var866) var3292)
(declare-fun listener/-1234160023 (var866) var1160)
(declare-fun random/-1234160023 (var866) var621)
(declare-fun pingIntervalMillis/-1234160023 (var866) Int)
(declare-fun extensions/-1234160023 (var866) var2302)
(declare-fun minimumDeflateSize/-1234160023 (var866) Int)
(declare-fun newQueue/-1490586697 (var3002) var1803)
(declare-fun taskQueue/-1234160023 (var866) var1803)
(declare-fun var109-init () var109)
(declare-fun <init>/-1300283768 (var109) void)
(declare-fun pongQueue/-1234160023 (var866) var109)
(declare-fun messageAndCloseQueue/-1234160023 (var866) var109)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun receivedCloseCode/-1234160023 (var866) Int)
(declare-fun method/995635355 (var3292) String)
(declare-fun var3785_areEqual/-886455880 (var3914 var3914) Bool)
(declare-fun cast-from-String-to-var3914 (String) var3914)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun nextBytes/-1967845034 (var621 (Array Int Int)) void)
(declare-fun var1294_of$default/-1557417280 (var1294 (Array Int Int) Int Int Int var3914) var3607)
(declare-fun base64/-54072094 (var3607) String)
(declare-fun key/-1234160023 (var866) String)
(declare-const null-var866 var866)
(declare-const null-var3002 var3002)
(declare-const null-var3292 var3292)
(declare-const null-var1160 var1160)
(declare-const null-var621 var621)
(declare-const null-Int Int)
(declare-const null-var2302 var2302)
(declare-const var3607-Companion var1294)
(declare-const var3386-INSTANCE var3386)
(declare-const null-var3914 var3914)
(declare-const var3050 var866) ; Statement: r4 := @this: okhttp3.internal.ws.RealWebSocket 
(assert (not (= var3050 null-var866)))
(declare-const var2212 var3002) ; Statement: r0 := @parameter0: okhttp3.internal.concurrent.TaskRunner 
(assert (not (= var2212 null-var3002)))
(declare-const var1681 var3292) ; Statement: r1 := @parameter1: okhttp3.Request 
(assert (not (= var1681 null-var3292)))
(declare-const var1652 var1160) ; Statement: r2 := @parameter2: okhttp3.WebSocketListener 
(assert (not (= var1652 null-var1160)))
(declare-const var1916 var621) ; Statement: r3 := @parameter3: java.util.Random 
(assert (not (= var1916 null-var621)))
(declare-const var1214 Int) ; Statement: l0 := @parameter4: long 
(assert (not (= var1214 null-Int)))
(declare-const var1299 var2302) ; Statement: r5 := @parameter5: okhttp3.internal.ws.WebSocketExtensions 
(assert (not (= var1299 null-var2302)))
(declare-const var2462 Int) ; Statement: l1 := @parameter6: long 
(assert (not (= var2462 null-Int)))
;(assert (var3785_checkNotNullParameter/-2060636419 (cast-from-var3002-to-var3914 var2212) "taskRunner")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "taskRunner") 

(declare-const var2212!1 var3002)
(declare-const var3387 String)
;(assert (var3785_checkNotNullParameter/-2060636419 (cast-from-var3292-to-var3914 var1681) "originalRequest")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "originalRequest") 

(declare-const var1681!1 var3292)
(declare-const var94 String)
;(assert (var3785_checkNotNullParameter/-2060636419 (cast-from-var1160-to-var3914 var1652) "listener")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "listener") 

(declare-const var1652!1 var1160)
(declare-const var1663 String)
;(assert (var3785_checkNotNullParameter/-2060636419 (cast-from-var621-to-var3914 var1916) "random")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r3, "random") 

(declare-const var1916!1 var621)
(declare-const var1708 String)
(assert true)
;(assert (<init>/-279557996 (cast-from-var866-to-var3914 var3050))) ; Statement: specialinvoke r4.<java.lang.Object: void <init>()>() 

(declare-const var3050!1 var866)
(declare-const var3050!2 var866)
(assert (not (= var3050!2 null-var866)))
(assert (= (originalRequest/-1234160023 var3050!2) var1681!1)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.Request originalRequest> = r1 
(declare-const var3050!3 var866)
(assert (not (= var3050!3 null-var866)))
(assert (= (listener/-1234160023 var3050!3) var1652!1)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.WebSocketListener listener> = r2 
(declare-const var3050!4 var866)
(assert (not (= var3050!4 null-var866)))
(assert (= (random/-1234160023 var3050!4) var1916!1)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: java.util.Random random> = r3 
(declare-const var3050!5 var866)
(assert (not (= var3050!5 null-var866)))
(assert (= (pingIntervalMillis/-1234160023 var3050!5) var1214)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: long pingIntervalMillis> = l0 
(declare-const var3050!6 var866)
(assert (not (= var3050!6 null-var866)))
(assert (= (extensions/-1234160023 var3050!6) var1299)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.ws.WebSocketExtensions extensions> = r5 
(declare-const var3050!7 var866)
(assert (not (= var3050!7 null-var866)))
(assert (= (minimumDeflateSize/-1234160023 var3050!7) var2462)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: long minimumDeflateSize> = l1 
(assert true)
(define-const var2490 var1803 (newQueue/-1490586697 var2212!1)) ; Statement: $r6 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>() 
(declare-const var3050!8 var866)
(assert (not (= var3050!8 null-var866)))
(assert (= (taskQueue/-1234160023 var3050!8) var2490)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.concurrent.TaskQueue taskQueue> = $r6 
(define-const var491 var109 var109-init) ; Statement: $r25 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var491)) ; Statement: specialinvoke $r25.<java.util.ArrayDeque: void <init>()>() 

(declare-const var491!1 var109)
(declare-const var3050!9 var866)
(assert (not (= var3050!9 null-var866)))
(assert (= (pongQueue/-1234160023 var3050!9) var491!1)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: java.util.ArrayDeque pongQueue> = $r25 
(define-const var987 var109 var109-init) ; Statement: $r26 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var987)) ; Statement: specialinvoke $r26.<java.util.ArrayDeque: void <init>()>() 

(declare-const var987!1 var109)
(declare-const var3050!10 var866)
(assert (not (= var3050!10 null-var866)))
(assert (= (messageAndCloseQueue/-1234160023 var3050!10) var987!1)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: java.util.ArrayDeque messageAndCloseQueue> = $r26 
(define-const var3946 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
(declare-const var3050!11 var866)
(assert (not (= var3050!11 null-var866)))
(assert (= (receivedCloseCode/-1234160023 var3050!11) var3946)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: int receivedCloseCode> = $i3 
(define-const var855 var3292 (originalRequest/-1234160023 var3050!11)) ; Statement: $r9 = r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.Request originalRequest> 
(assert true)
(define-const var700 String (method/995635355 var855)) ; Statement: $r10 = virtualinvoke $r9.<okhttp3.Request: java.lang.String method()>() 
(define-const var429 Bool (var3785_areEqual/-886455880 (cast-from-String-to-var3914 "GET") (cast-from-String-to-var3914 var700))) ; Statement: $z0 = staticinvoke <kotlin.jvm.internal.Intrinsics: boolean areEqual(java.lang.Object,java.lang.Object)>("GET", $r10) 
 ; Statement: if $z0 != 0 goto r11 = newarray (byte)[16] 
(assert (not (= (ite var429 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1801 (Array Int Int) arr-Int-init) ; Statement: r11 = newarray (byte)[16] 
(define-const var1422 var1294 var3607-Companion) ; Statement: r12 = <okio.ByteString: okio.ByteString$Companion Companion> 
(define-const var268 var621 (random/-1234160023 var3050!11)) ; Statement: $r13 = r4.<okhttp3.internal.ws.RealWebSocket: java.util.Random random> 
(assert true)
;(assert (nextBytes/-1967845034 var268 var1801)) ; Statement: virtualinvoke $r13.<java.util.Random: void nextBytes(byte[])>(r11) 

(declare-const var268!1 var621)
(declare-const var1801!1 (Array Int Int))
(define-const var339 var3386 var3386-INSTANCE) ; Statement: r14 = <kotlin.Unit: kotlin.Unit INSTANCE> 
(define-const var1477 var3607 (var1294_of$default/-1557417280 var1422 var1801!1 0 0 3 null-var3914)) ; Statement: $r15 = staticinvoke <okio.ByteString$Companion: okio.ByteString of$default(okio.ByteString$Companion,byte[],int,int,int,java.lang.Object)>(r12, r11, 0, 0, 3, null) 
(assert true)
(define-const var3326 String (base64/-54072094 var1477)) ; Statement: $r16 = virtualinvoke $r15.<okio.ByteString: java.lang.String base64()>() 
(declare-const var3050!12 var866)
(assert (not (= var3050!12 null-var866)))
(assert (= (key/-1234160023 var3050!12) var3326)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: java.lang.String key> = $r16 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3785_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3002-to-var3914=([okhttp3.internal.concurrent.TaskRunner], java.lang.Object), cast-from-var3292-to-var3914=([okhttp3.Request], java.lang.Object), cast-from-var1160-to-var3914=([okhttp3.WebSocketListener], java.lang.Object), cast-from-var621-to-var3914=([java.util.Random], java.lang.Object), <init>/-279557996=([java.lang.Object], void), cast-from-var866-to-var3914=([okhttp3.internal.ws.RealWebSocket], java.lang.Object), originalRequest/-1234160023=([okhttp3.internal.ws.RealWebSocket], okhttp3.Request), listener/-1234160023=([okhttp3.internal.ws.RealWebSocket], okhttp3.WebSocketListener), random/-1234160023=([okhttp3.internal.ws.RealWebSocket], java.util.Random), pingIntervalMillis/-1234160023=([okhttp3.internal.ws.RealWebSocket], long), extensions/-1234160023=([okhttp3.internal.ws.RealWebSocket], okhttp3.internal.ws.WebSocketExtensions), minimumDeflateSize/-1234160023=([okhttp3.internal.ws.RealWebSocket], long), newQueue/-1490586697=([okhttp3.internal.concurrent.TaskRunner], okhttp3.internal.concurrent.TaskQueue), taskQueue/-1234160023=([okhttp3.internal.ws.RealWebSocket], okhttp3.internal.concurrent.TaskQueue), var109-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), pongQueue/-1234160023=([okhttp3.internal.ws.RealWebSocket], java.util.ArrayDeque), messageAndCloseQueue/-1234160023=([okhttp3.internal.ws.RealWebSocket], java.util.ArrayDeque), cast-from-Int-to-Int=([int], int), receivedCloseCode/-1234160023=([okhttp3.internal.ws.RealWebSocket], int), method/995635355=([okhttp3.Request], java.lang.String), var3785_areEqual/-886455880=([java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var3914=([java.lang.String], java.lang.Object), arr-Int-init=([], byte[]), nextBytes/-1967845034=([java.util.Random, byte[]], void), var1294_of$default/-1557417280=([okio.ByteString$Companion, byte[], int, int, int, java.lang.Object], okio.ByteString), base64/-54072094=([okio.ByteString], java.lang.String), key/-1234160023=([okhttp3.internal.ws.RealWebSocket], java.lang.String)}
; {var866=okhttp3.internal.ws.RealWebSocket, var3050=r4, var3002=okhttp3.internal.concurrent.TaskRunner, var2212=r0, var3292=okhttp3.Request, var1681=r1, var1160=okhttp3.WebSocketListener, var1652=r2, var621=java.util.Random, var1916=r3, var1214=l0, var2302=okhttp3.internal.ws.WebSocketExtensions, var1299=r5, var2462=l1, var3785=kotlin.jvm.internal.Intrinsics, var3914=java.lang.Object, var3387="taskRunner", var94="originalRequest", var1663="listener", var1708="random", var1803=okhttp3.internal.concurrent.TaskQueue, var2490=$r6, var109=java.util.ArrayDeque, var491=$r25, var987=$r26, var3946=$i3, var855=$r9, var700=$r10, var429=$z0, var1801=r11, var1294=okio.ByteString$Companion, var3607=okio.ByteString, var1422=r12, var268=$r13, var3386=kotlin.Unit, var339=r14, var1477=$r15, var3326=$r16}
; {okhttp3.internal.ws.RealWebSocket=var866, r4=var3050, okhttp3.internal.concurrent.TaskRunner=var3002, r0=var2212, okhttp3.Request=var3292, r1=var1681, okhttp3.WebSocketListener=var1160, r2=var1652, java.util.Random=var621, r3=var1916, l0=var1214, okhttp3.internal.ws.WebSocketExtensions=var2302, r5=var1299, l1=var2462, kotlin.jvm.internal.Intrinsics=var3785, java.lang.Object=var3914, "taskRunner"=var3387, "originalRequest"=var94, "listener"=var1663, "random"=var1708, okhttp3.internal.concurrent.TaskQueue=var1803, $r6=var2490, java.util.ArrayDeque=var109, $r25=var491, $r26=var987, $i3=var3946, $r9=var855, $r10=var700, $z0=var429, r11=var1801, okio.ByteString$Companion=var1294, okio.ByteString=var3607, r12=var1422, $r13=var268, kotlin.Unit=var3386, r14=var339, $r15=var1477, $r16=var3326}
;seq 
;cnt {}
;stmts r4 := @this: okhttp3.internal.ws.RealWebSocket;	r0 := @parameter0: okhttp3.internal.concurrent.TaskRunner;	r1 := @parameter1: okhttp3.Request;	r2 := @parameter2: okhttp3.WebSocketListener;	r3 := @parameter3: java.util.Random;	l0 := @parameter4: long;	r5 := @parameter5: okhttp3.internal.ws.WebSocketExtensions;	l1 := @parameter6: long;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "taskRunner");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "originalRequest");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "listener");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r3, "random");	specialinvoke r4.<java.lang.Object: void <init>()>();	r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.Request originalRequest> = r1;	r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.WebSocketListener listener> = r2;	r4.<okhttp3.internal.ws.RealWebSocket: java.util.Random random> = r3;	r4.<okhttp3.internal.ws.RealWebSocket: long pingIntervalMillis> = l0;	r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.ws.WebSocketExtensions extensions> = r5;	r4.<okhttp3.internal.ws.RealWebSocket: long minimumDeflateSize> = l1;	$r6 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>();	r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.concurrent.TaskQueue taskQueue> = $r6;	$r25 = new java.util.ArrayDeque;	specialinvoke $r25.<java.util.ArrayDeque: void <init>()>();	r4.<okhttp3.internal.ws.RealWebSocket: java.util.ArrayDeque pongQueue> = $r25;	$r26 = new java.util.ArrayDeque;	specialinvoke $r26.<java.util.ArrayDeque: void <init>()>();	r4.<okhttp3.internal.ws.RealWebSocket: java.util.ArrayDeque messageAndCloseQueue> = $r26;	$i3 = (int) -1;	r4.<okhttp3.internal.ws.RealWebSocket: int receivedCloseCode> = $i3;	$r9 = r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.Request originalRequest>;	$r10 = virtualinvoke $r9.<okhttp3.Request: java.lang.String method()>();	$z0 = staticinvoke <kotlin.jvm.internal.Intrinsics: boolean areEqual(java.lang.Object,java.lang.Object)>("GET", $r10);	if $z0 != 0 goto r11 = newarray (byte)[16];	r11 = newarray (byte)[16];	r12 = <okio.ByteString: okio.ByteString$Companion Companion>;	$r13 = r4.<okhttp3.internal.ws.RealWebSocket: java.util.Random random>;	virtualinvoke $r13.<java.util.Random: void nextBytes(byte[])>(r11);	r14 = <kotlin.Unit: kotlin.Unit INSTANCE>;	$r15 = staticinvoke <okio.ByteString$Companion: okio.ByteString of$default(okio.ByteString$Companion,byte[],int,int,int,java.lang.Object)>(r12, r11, 0, 0, 3, null);	$r16 = virtualinvoke $r15.<okio.ByteString: java.lang.String base64()>();	r4.<okhttp3.internal.ws.RealWebSocket: java.lang.String key> = $r16;	return
;block_num 2
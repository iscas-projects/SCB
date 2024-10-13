(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var369 0)
(declare-sort var3440 0)
(declare-sort var1902 0)
(declare-sort var2019 0)
(declare-sort var2778 0)
(declare-sort var2840 0)
(declare-sort var825 0)
(declare-sort var2396 0)
(declare-sort var1840 0)
(declare-sort var2361 0)
(declare-sort var2743 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var825_checkNotNullParameter/-2060636419 (var2396 String) void)
(declare-fun cast-from-var3440-to-var2396 (var3440) var2396)
(declare-fun cast-from-var1902-to-var2396 (var1902) var2396)
(declare-fun cast-from-var2019-to-var2396 (var2019) var2396)
(declare-fun cast-from-var2778-to-var2396 (var2778) var2396)
(declare-fun <init>/-279557996 (var2396) void)
(declare-fun cast-from-var369-to-var2396 (var369) var2396)
(declare-fun originalRequest/-1234160023 (var369) var1902)
(declare-fun listener/-1234160023 (var369) var2019)
(declare-fun random/-1234160023 (var369) var2778)
(declare-fun pingIntervalMillis/-1234160023 (var369) Int)
(declare-fun extensions/-1234160023 (var369) var2840)
(declare-fun minimumDeflateSize/-1234160023 (var369) Int)
(declare-fun newQueue/-1490586697 (var3440) var1840)
(declare-fun taskQueue/-1234160023 (var369) var1840)
(declare-fun var2361-init () var2361)
(declare-fun <init>/-1300283768 (var2361) void)
(declare-fun pongQueue/-1234160023 (var369) var2361)
(declare-fun messageAndCloseQueue/-1234160023 (var369) var2361)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun receivedCloseCode/-1234160023 (var369) Int)
(declare-fun method/995635355 (var1902) String)
(declare-fun var825_areEqual/-886455880 (var2396 var2396) Bool)
(declare-fun cast-from-String-to-var2396 (String) var2396)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2743-init () var2743)
(declare-fun toString/-522406933 (var2396) String)
(declare-fun <init>/875830710 (var2743 String) void)
(declare-const null-var369 var369)
(declare-const null-var3440 var3440)
(declare-const null-var1902 var1902)
(declare-const null-var2019 var2019)
(declare-const null-var2778 var2778)
(declare-const null-Int Int)
(declare-const null-var2840 var2840)
(declare-const var3826 var369) ; Statement: r4 := @this: okhttp3.internal.ws.RealWebSocket 
(assert (not (= var3826 null-var369)))
(declare-const var3421 var3440) ; Statement: r0 := @parameter0: okhttp3.internal.concurrent.TaskRunner 
(assert (not (= var3421 null-var3440)))
(declare-const var130 var1902) ; Statement: r1 := @parameter1: okhttp3.Request 
(assert (not (= var130 null-var1902)))
(declare-const var2213 var2019) ; Statement: r2 := @parameter2: okhttp3.WebSocketListener 
(assert (not (= var2213 null-var2019)))
(declare-const var1637 var2778) ; Statement: r3 := @parameter3: java.util.Random 
(assert (not (= var1637 null-var2778)))
(declare-const var2142 Int) ; Statement: l0 := @parameter4: long 
(assert (not (= var2142 null-Int)))
(declare-const var3381 var2840) ; Statement: r5 := @parameter5: okhttp3.internal.ws.WebSocketExtensions 
(assert (not (= var3381 null-var2840)))
(declare-const var2560 Int) ; Statement: l1 := @parameter6: long 
(assert (not (= var2560 null-Int)))
;(assert (var825_checkNotNullParameter/-2060636419 (cast-from-var3440-to-var2396 var3421) "taskRunner")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "taskRunner") 

(declare-const var3421!1 var3440)
(declare-const var857 String)
;(assert (var825_checkNotNullParameter/-2060636419 (cast-from-var1902-to-var2396 var130) "originalRequest")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "originalRequest") 

(declare-const var130!1 var1902)
(declare-const var2080 String)
;(assert (var825_checkNotNullParameter/-2060636419 (cast-from-var2019-to-var2396 var2213) "listener")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "listener") 

(declare-const var2213!1 var2019)
(declare-const var2229 String)
;(assert (var825_checkNotNullParameter/-2060636419 (cast-from-var2778-to-var2396 var1637) "random")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r3, "random") 

(declare-const var1637!1 var2778)
(declare-const var3062 String)
(assert true)
;(assert (<init>/-279557996 (cast-from-var369-to-var2396 var3826))) ; Statement: specialinvoke r4.<java.lang.Object: void <init>()>() 

(declare-const var3826!1 var369)
(declare-const var3826!2 var369)
(assert (not (= var3826!2 null-var369)))
(assert (= (originalRequest/-1234160023 var3826!2) var130!1)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.Request originalRequest> = r1 
(declare-const var3826!3 var369)
(assert (not (= var3826!3 null-var369)))
(assert (= (listener/-1234160023 var3826!3) var2213!1)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.WebSocketListener listener> = r2 
(declare-const var3826!4 var369)
(assert (not (= var3826!4 null-var369)))
(assert (= (random/-1234160023 var3826!4) var1637!1)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: java.util.Random random> = r3 
(declare-const var3826!5 var369)
(assert (not (= var3826!5 null-var369)))
(assert (= (pingIntervalMillis/-1234160023 var3826!5) var2142)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: long pingIntervalMillis> = l0 
(declare-const var3826!6 var369)
(assert (not (= var3826!6 null-var369)))
(assert (= (extensions/-1234160023 var3826!6) var3381)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.ws.WebSocketExtensions extensions> = r5 
(declare-const var3826!7 var369)
(assert (not (= var3826!7 null-var369)))
(assert (= (minimumDeflateSize/-1234160023 var3826!7) var2560)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: long minimumDeflateSize> = l1 
(assert true)
(define-const var726 var1840 (newQueue/-1490586697 var3421!1)) ; Statement: $r6 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>() 
(declare-const var3826!8 var369)
(assert (not (= var3826!8 null-var369)))
(assert (= (taskQueue/-1234160023 var3826!8) var726)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.concurrent.TaskQueue taskQueue> = $r6 
(define-const var2598 var2361 var2361-init) ; Statement: $r25 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var2598)) ; Statement: specialinvoke $r25.<java.util.ArrayDeque: void <init>()>() 

(declare-const var2598!1 var2361)
(declare-const var3826!9 var369)
(assert (not (= var3826!9 null-var369)))
(assert (= (pongQueue/-1234160023 var3826!9) var2598!1)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: java.util.ArrayDeque pongQueue> = $r25 
(define-const var395 var2361 var2361-init) ; Statement: $r26 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var395)) ; Statement: specialinvoke $r26.<java.util.ArrayDeque: void <init>()>() 

(declare-const var395!1 var2361)
(declare-const var3826!10 var369)
(assert (not (= var3826!10 null-var369)))
(assert (= (messageAndCloseQueue/-1234160023 var3826!10) var395!1)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: java.util.ArrayDeque messageAndCloseQueue> = $r26 
(define-const var2307 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
(declare-const var3826!11 var369)
(assert (not (= var3826!11 null-var369)))
(assert (= (receivedCloseCode/-1234160023 var3826!11) var2307)) ; Statement: r4.<okhttp3.internal.ws.RealWebSocket: int receivedCloseCode> = $i3 
(define-const var2902 var1902 (originalRequest/-1234160023 var3826!11)) ; Statement: $r9 = r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.Request originalRequest> 
(assert true)
(define-const var1063 String (method/995635355 var2902)) ; Statement: $r10 = virtualinvoke $r9.<okhttp3.Request: java.lang.String method()>() 
(define-const var1377 Bool (var825_areEqual/-886455880 (cast-from-String-to-var2396 "GET") (cast-from-String-to-var2396 var1063))) ; Statement: $z0 = staticinvoke <kotlin.jvm.internal.Intrinsics: boolean areEqual(java.lang.Object,java.lang.Object)>("GET", $r10) 
 ; Statement: if $z0 != 0 goto r11 = newarray (byte)[16] 
(assert (not (not (= (ite var1377 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2235 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2235)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2235!1 String)
(assert (= var2235!1 ""))
(assert true)
(define-const var2473 String (append/672562846 var2235!1 "Request must be GET: ")) ; Statement: $r20 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request must be GET: ") 
(declare-const var2235!2 String)
(assert (= var2235!2 (str.++ var2235!1 "Request must be GET: ")))
(define-const var3616 var1902 (originalRequest/-1234160023 var3826!11)) ; Statement: $r18 = r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.Request originalRequest> 
(assert true)
(define-const var2613 String (method/995635355 var3616)) ; Statement: $r19 = virtualinvoke $r18.<okhttp3.Request: java.lang.String method()>() 
(assert true)
(define-const var1439 String (append/672562846 var2473 var2613)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2473!1 String)
(assert (= var2473!1 (str.++ var2473 var2613)))
(assert true)
(define-const var1399 String (toString/-2075883882 var1439)) ; Statement: $r24 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var689 var2743 var2743-init) ; Statement: $r28 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2602 String (toString/-522406933 (cast-from-String-to-var2396 var1399))) ; Statement: $r23 = virtualinvoke $r24.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var689 var2602)) ; Statement: specialinvoke $r28.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r23) 

(declare-const var689!1 var2743)
(declare-const var2602!1 String)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {var825_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3440-to-var2396=([okhttp3.internal.concurrent.TaskRunner], java.lang.Object), cast-from-var1902-to-var2396=([okhttp3.Request], java.lang.Object), cast-from-var2019-to-var2396=([okhttp3.WebSocketListener], java.lang.Object), cast-from-var2778-to-var2396=([java.util.Random], java.lang.Object), <init>/-279557996=([java.lang.Object], void), cast-from-var369-to-var2396=([okhttp3.internal.ws.RealWebSocket], java.lang.Object), originalRequest/-1234160023=([okhttp3.internal.ws.RealWebSocket], okhttp3.Request), listener/-1234160023=([okhttp3.internal.ws.RealWebSocket], okhttp3.WebSocketListener), random/-1234160023=([okhttp3.internal.ws.RealWebSocket], java.util.Random), pingIntervalMillis/-1234160023=([okhttp3.internal.ws.RealWebSocket], long), extensions/-1234160023=([okhttp3.internal.ws.RealWebSocket], okhttp3.internal.ws.WebSocketExtensions), minimumDeflateSize/-1234160023=([okhttp3.internal.ws.RealWebSocket], long), newQueue/-1490586697=([okhttp3.internal.concurrent.TaskRunner], okhttp3.internal.concurrent.TaskQueue), taskQueue/-1234160023=([okhttp3.internal.ws.RealWebSocket], okhttp3.internal.concurrent.TaskQueue), var2361-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), pongQueue/-1234160023=([okhttp3.internal.ws.RealWebSocket], java.util.ArrayDeque), messageAndCloseQueue/-1234160023=([okhttp3.internal.ws.RealWebSocket], java.util.ArrayDeque), cast-from-Int-to-Int=([int], int), receivedCloseCode/-1234160023=([okhttp3.internal.ws.RealWebSocket], int), method/995635355=([okhttp3.Request], java.lang.String), var825_areEqual/-886455880=([java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var2396=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2743-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var369=okhttp3.internal.ws.RealWebSocket, var3826=r4, var3440=okhttp3.internal.concurrent.TaskRunner, var3421=r0, var1902=okhttp3.Request, var130=r1, var2019=okhttp3.WebSocketListener, var2213=r2, var2778=java.util.Random, var1637=r3, var2142=l0, var2840=okhttp3.internal.ws.WebSocketExtensions, var3381=r5, var2560=l1, var825=kotlin.jvm.internal.Intrinsics, var2396=java.lang.Object, var857="taskRunner", var2080="originalRequest", var2229="listener", var3062="random", var1840=okhttp3.internal.concurrent.TaskQueue, var726=$r6, var2361=java.util.ArrayDeque, var2598=$r25, var395=$r26, var2307=$i3, var2902=$r9, var1063=$r10, var1377=$z0, var2235=$r27, var2473=$r20, var3616=$r18, var2613=$r19, var1439=$r21, var1399=$r24, var2743=java.lang.IllegalArgumentException, var689=$r28, var2602=$r23}
; {okhttp3.internal.ws.RealWebSocket=var369, r4=var3826, okhttp3.internal.concurrent.TaskRunner=var3440, r0=var3421, okhttp3.Request=var1902, r1=var130, okhttp3.WebSocketListener=var2019, r2=var2213, java.util.Random=var2778, r3=var1637, l0=var2142, okhttp3.internal.ws.WebSocketExtensions=var2840, r5=var3381, l1=var2560, kotlin.jvm.internal.Intrinsics=var825, java.lang.Object=var2396, "taskRunner"=var857, "originalRequest"=var2080, "listener"=var2229, "random"=var3062, okhttp3.internal.concurrent.TaskQueue=var1840, $r6=var726, java.util.ArrayDeque=var2361, $r25=var2598, $r26=var395, $i3=var2307, $r9=var2902, $r10=var1063, $z0=var1377, $r27=var2235, $r20=var2473, $r18=var3616, $r19=var2613, $r21=var1439, $r24=var1399, java.lang.IllegalArgumentException=var2743, $r28=var689, $r23=var2602}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: okhttp3.internal.ws.RealWebSocket;	r0 := @parameter0: okhttp3.internal.concurrent.TaskRunner;	r1 := @parameter1: okhttp3.Request;	r2 := @parameter2: okhttp3.WebSocketListener;	r3 := @parameter3: java.util.Random;	l0 := @parameter4: long;	r5 := @parameter5: okhttp3.internal.ws.WebSocketExtensions;	l1 := @parameter6: long;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "taskRunner");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "originalRequest");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "listener");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r3, "random");	specialinvoke r4.<java.lang.Object: void <init>()>();	r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.Request originalRequest> = r1;	r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.WebSocketListener listener> = r2;	r4.<okhttp3.internal.ws.RealWebSocket: java.util.Random random> = r3;	r4.<okhttp3.internal.ws.RealWebSocket: long pingIntervalMillis> = l0;	r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.ws.WebSocketExtensions extensions> = r5;	r4.<okhttp3.internal.ws.RealWebSocket: long minimumDeflateSize> = l1;	$r6 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>();	r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.concurrent.TaskQueue taskQueue> = $r6;	$r25 = new java.util.ArrayDeque;	specialinvoke $r25.<java.util.ArrayDeque: void <init>()>();	r4.<okhttp3.internal.ws.RealWebSocket: java.util.ArrayDeque pongQueue> = $r25;	$r26 = new java.util.ArrayDeque;	specialinvoke $r26.<java.util.ArrayDeque: void <init>()>();	r4.<okhttp3.internal.ws.RealWebSocket: java.util.ArrayDeque messageAndCloseQueue> = $r26;	$i3 = (int) -1;	r4.<okhttp3.internal.ws.RealWebSocket: int receivedCloseCode> = $i3;	$r9 = r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.Request originalRequest>;	$r10 = virtualinvoke $r9.<okhttp3.Request: java.lang.String method()>();	$z0 = staticinvoke <kotlin.jvm.internal.Intrinsics: boolean areEqual(java.lang.Object,java.lang.Object)>("GET", $r10);	if $z0 != 0 goto r11 = newarray (byte)[16];	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request must be GET: ");	$r18 = r4.<okhttp3.internal.ws.RealWebSocket: okhttp3.Request originalRequest>;	$r19 = virtualinvoke $r18.<okhttp3.Request: java.lang.String method()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r24 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = new java.lang.IllegalArgumentException;	$r23 = virtualinvoke $r24.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r28.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r23);	throw $r28
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1688 0)
(declare-sort var2495 0)
(declare-sort var1924 0)
(declare-sort var3426 0)
(declare-sort var3317 0)
(declare-sort var234 0)
(declare-sort var477 0)
(declare-sort var353 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-654547487 (var1688) var2495)
(declare-fun get/-1167454587 (var3426) var3317)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getConnectionName$okhttp/-1643514355 (var2495) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-var1924-to-var234 (var1924) var234)
(declare-fun log/575625135 (var3317 String Int var234) void)
(declare-fun $newStream$inlined/-654547487 (var1688) var477)
(declare-const null-var1688 var1688)
(declare-const null-var1924 var1924)
(declare-const var3317-Companion var3426)
(declare-const var353-PROTOCOL_ERROR var353)
(declare-const var2987 var1688) ; Statement: r0 := @this: okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1 
(assert (not (= var2987 null-var1688)))
(define-const var1589 var2495 (this$0/-654547487 var2987)) ; Statement: $r1 = r0.<okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1: okhttp3.internal.http2.Http2Connection this$0> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3060 var1924) ; Statement: $r4 := @caughtexception 
(assert (not (= var3060 null-var1924)))
(define-const var3454 var3426 var3317-Companion) ; Statement: $r5 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion> 
(assert true)
(define-const var1229 var3317 (get/-1167454587 var3454)) ; Statement: $r13 = virtualinvoke $r5.<okhttp3.internal.platform.Platform$Companion: okhttp3.internal.platform.Platform get()>() 
(define-const var634 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var634)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var634!1 String)
(assert (= var634!1 ""))
(assert true)
(define-const var1870 String (append/672562846 var634!1 "Http2Connection.Listener failure for ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Http2Connection.Listener failure for ") 
(declare-const var634!2 String)
(assert (= var634!2 (str.++ var634!1 "Http2Connection.Listener failure for ")))
(define-const var2174 var2495 (this$0/-654547487 var2987)) ; Statement: $r7 = r0.<okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1: okhttp3.internal.http2.Http2Connection this$0> 
(assert true)
(define-const var2797 String (getConnectionName$okhttp/-1643514355 var2174)) ; Statement: $r8 = virtualinvoke $r7.<okhttp3.internal.http2.Http2Connection: java.lang.String getConnectionName$okhttp()>() 
(assert true)
(define-const var3089 String (append/672562846 var1870 var2797)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1870!1 String)
(assert (= var1870!1 (str.++ var1870 var2797)))
(assert true)
(define-const var2582 String (toString/-2075883882 var3089)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var705 var234 (cast-from-var1924-to-var234 var3060)) ; Statement: $r11 = (java.lang.Throwable) $r4 
(assert true)
;(assert (log/575625135 var1229 var2582 4 var705)) ; Statement: virtualinvoke $r13.<okhttp3.internal.platform.Platform: void log(java.lang.String,int,java.lang.Throwable)>($r12, 4, $r11) 

(declare-const var1229!1 var3317)
(declare-const var2582!1 String)
(declare-const var1992 Int)
(declare-const var705!1 var234)
(define-const var3098 var477 ($newStream$inlined/-654547487 var2987)) ; Statement: $r15 = r0.<okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1: okhttp3.internal.http2.Http2Stream $newStream$inlined> 
(define-const var159 var353 var353-PROTOCOL_ERROR) ; Statement: $r14 = <okhttp3.internal.http2.ErrorCode: okhttp3.internal.http2.ErrorCode PROTOCOL_ERROR> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3209 var1924) ; Statement: $r16 := @caughtexception 
(assert (not (= var3209 null-var1924)))
(assert true) ; Non Conditional
 ; Statement: return -1L 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-654547487=([okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1], okhttp3.internal.http2.Http2Connection), get/-1167454587=([okhttp3.internal.platform.Platform$Companion], okhttp3.internal.platform.Platform), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getConnectionName$okhttp/-1643514355=([okhttp3.internal.http2.Http2Connection], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-var1924-to-var234=([java.io.IOException], java.lang.Throwable), log/575625135=([okhttp3.internal.platform.Platform, java.lang.String, int, java.lang.Throwable], void), $newStream$inlined/-654547487=([okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1], okhttp3.internal.http2.Http2Stream)}
; {var1688=okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1, var2987=r0, var2495=okhttp3.internal.http2.Http2Connection, var1589=$r1, var1924=java.io.IOException, var3060=$r4, var3426=okhttp3.internal.platform.Platform$Companion, var3317=okhttp3.internal.platform.Platform, var3454=$r5, var1229=$r13, var634=$r6, var1870=$r9, var2174=$r7, var2797=$r8, var3089=$r10, var2582=$r12, var234=java.lang.Throwable, var705=$r11, var1992=4, var477=okhttp3.internal.http2.Http2Stream, var3098=$r15, var353=okhttp3.internal.http2.ErrorCode, var159=$r14, var3209=$r16}
; {okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1=var1688, r0=var2987, okhttp3.internal.http2.Http2Connection=var2495, $r1=var1589, java.io.IOException=var1924, $r4=var3060, okhttp3.internal.platform.Platform$Companion=var3426, okhttp3.internal.platform.Platform=var3317, $r5=var3454, $r13=var1229, $r6=var634, $r9=var1870, $r7=var2174, $r8=var2797, $r10=var3089, $r12=var2582, java.lang.Throwable=var234, $r11=var705, 4=var1992, okhttp3.internal.http2.Http2Stream=var477, $r15=var3098, okhttp3.internal.http2.ErrorCode=var353, $r14=var159, $r16=var3209}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1;	$r1 = r0.<okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1: okhttp3.internal.http2.Http2Connection this$0>;	$r4 := @caughtexception;	$r5 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion>;	$r13 = virtualinvoke $r5.<okhttp3.internal.platform.Platform$Companion: okhttp3.internal.platform.Platform get()>();	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Http2Connection.Listener failure for ");	$r7 = r0.<okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1: okhttp3.internal.http2.Http2Connection this$0>;	$r8 = virtualinvoke $r7.<okhttp3.internal.http2.Http2Connection: java.lang.String getConnectionName$okhttp()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = (java.lang.Throwable) $r4;	virtualinvoke $r13.<okhttp3.internal.platform.Platform: void log(java.lang.String,int,java.lang.Throwable)>($r12, 4, $r11);	$r15 = r0.<okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1: okhttp3.internal.http2.Http2Stream $newStream$inlined>;	$r14 = <okhttp3.internal.http2.ErrorCode: okhttp3.internal.http2.ErrorCode PROTOCOL_ERROR>;	$r16 := @caughtexception;	return -1L
;block_num 4
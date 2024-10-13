(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var551 0)
(declare-sort var2473 0)
(declare-sort var3191 0)
(declare-sort var3641 0)
(declare-sort var311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-360015566 (var551) var2473)
(declare-fun var2473_access$getWriterQueue$p/613676168 (var2473) var3191)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getConnectionName$okhttp/-1643514355 (var2473) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3641-init () var3641)
(declare-fun <init>/-1994958878 (var3641 String Bool var2473 Int Int) void)
(declare-fun cast-from-var3641-to-var311 (var3641) var311)
(declare-fun schedule/410635229 (var3191 var311 Int) void)
(declare-const null-var551 var551)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const var1761 var551) ; Statement: r0 := @this: okhttp3.internal.http2.Http2Connection$ReaderRunnable 
(assert (not (= var1761 null-var551)))
(declare-const var2232 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2232 null-Bool)))
(declare-const var2199 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2199 null-Int)))
(declare-const var405 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var405 null-Int)))
 ; Statement: if z0 == 0 goto $r1 = r0.<okhttp3.internal.http2.Http2Connection$ReaderRunnable: okhttp3.internal.http2.Http2Connection this$0> 
(assert (= (ite var2232 1 0) 0)) ; Cond: z0 == 0 
(define-const var1193 var2473 (this$0/-360015566 var1761)) ; Statement: $r1 = r0.<okhttp3.internal.http2.Http2Connection$ReaderRunnable: okhttp3.internal.http2.Http2Connection this$0> 
(define-const var2353 var3191 (var2473_access$getWriterQueue$p/613676168 var1193)) ; Statement: $r15 = staticinvoke <okhttp3.internal.http2.Http2Connection: okhttp3.internal.concurrent.TaskQueue access$getWriterQueue$p(okhttp3.internal.http2.Http2Connection)>($r1) 
(define-const var3842 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3842)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3842!1 String)
(assert (= var3842!1 ""))
(define-const var3041 var2473 (this$0/-360015566 var1761)) ; Statement: $r3 = r0.<okhttp3.internal.http2.Http2Connection$ReaderRunnable: okhttp3.internal.http2.Http2Connection this$0> 
(assert true)
(define-const var2643 String (getConnectionName$okhttp/-1643514355 var3041)) ; Statement: $r4 = virtualinvoke $r3.<okhttp3.internal.http2.Http2Connection: java.lang.String getConnectionName$okhttp()>() 
(assert true)
(define-const var601 String (append/672562846 var3842!1 var2643)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3842!2 String)
(assert (= var3842!2 (str.++ var3842!1 var2643)))
(assert true)
(define-const var1891 String (append/672562846 var601 " ping")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ping") 
(declare-const var601!1 String)
(assert (= var601!1 (str.++ var601 " ping")))
(assert true)
(define-const var1571 String (toString/-2075883882 var1891)) ; Statement: r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var761 var2473 (this$0/-360015566 var1761)) ; Statement: r7 = r0.<okhttp3.internal.http2.Http2Connection$ReaderRunnable: okhttp3.internal.http2.Http2Connection this$0> 
(define-const var3791 var3641 var3641-init) ; Statement: $r8 = new okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1 
(assert true)
;(assert (<init>/-1994958878 var3791 var1571 (ite (= 1 1) true false) var761 var2199 var405)) ; Statement: specialinvoke $r8.<okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1: void <init>(java.lang.String,boolean,okhttp3.internal.http2.Http2Connection,int,int)>(r16, 1, r7, i0, i1) 

(declare-const var3791!1 var3641)
(declare-const var1571!1 String)
(declare-const var1185 Int)
(declare-const var761!1 var2473)
(declare-const var2199!1 Int)
(declare-const var405!1 Int)
(define-const var3007 var311 (cast-from-var3641-to-var311 var3791!1)) ; Statement: $r9 = (okhttp3.internal.concurrent.Task) $r8 
(assert true)
;(assert (schedule/410635229 var2353 var3007 0)) ; Statement: virtualinvoke $r15.<okhttp3.internal.concurrent.TaskQueue: void schedule(okhttp3.internal.concurrent.Task,long)>($r9, 0L) 

(declare-const var2353!1 var3191)
(declare-const var3007!1 var311)
(declare-const var3291 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-360015566=([okhttp3.internal.http2.Http2Connection$ReaderRunnable], okhttp3.internal.http2.Http2Connection), var2473_access$getWriterQueue$p/613676168=([okhttp3.internal.http2.Http2Connection], okhttp3.internal.concurrent.TaskQueue), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getConnectionName$okhttp/-1643514355=([okhttp3.internal.http2.Http2Connection], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3641-init=([], okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1), <init>/-1994958878=([okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1, java.lang.String, boolean, okhttp3.internal.http2.Http2Connection, int, int], void), cast-from-var3641-to-var311=([okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1], okhttp3.internal.concurrent.Task), schedule/410635229=([okhttp3.internal.concurrent.TaskQueue, okhttp3.internal.concurrent.Task, long], void)}
; {var551=okhttp3.internal.http2.Http2Connection$ReaderRunnable, var1761=r0, var2232=z0, var2199=i0, var405=i1, var2473=okhttp3.internal.http2.Http2Connection, var1193=$r1, var3191=okhttp3.internal.concurrent.TaskQueue, var2353=$r15, var3842=$r2, var3041=$r3, var2643=$r4, var601=$r5, var1891=$r6, var1571=r16, var761=r7, var3641=okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1, var3791=$r8, var1185=1, var311=okhttp3.internal.concurrent.Task, var3007=$r9, var3291=0L}
; {okhttp3.internal.http2.Http2Connection$ReaderRunnable=var551, r0=var1761, z0=var2232, i0=var2199, i1=var405, okhttp3.internal.http2.Http2Connection=var2473, $r1=var1193, okhttp3.internal.concurrent.TaskQueue=var3191, $r15=var2353, $r2=var3842, $r3=var3041, $r4=var2643, $r5=var601, $r6=var1891, r16=var1571, r7=var761, okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1=var3641, $r8=var3791, 1=var1185, okhttp3.internal.concurrent.Task=var311, $r9=var3007, 0L=var3291}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http2.Http2Connection$ReaderRunnable;	z0 := @parameter0: boolean;	i0 := @parameter1: int;	i1 := @parameter2: int;	if z0 == 0 goto $r1 = r0.<okhttp3.internal.http2.Http2Connection$ReaderRunnable: okhttp3.internal.http2.Http2Connection this$0>;	$r1 = r0.<okhttp3.internal.http2.Http2Connection$ReaderRunnable: okhttp3.internal.http2.Http2Connection this$0>;	$r15 = staticinvoke <okhttp3.internal.http2.Http2Connection: okhttp3.internal.concurrent.TaskQueue access$getWriterQueue$p(okhttp3.internal.http2.Http2Connection)>($r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<okhttp3.internal.http2.Http2Connection$ReaderRunnable: okhttp3.internal.http2.Http2Connection this$0>;	$r4 = virtualinvoke $r3.<okhttp3.internal.http2.Http2Connection: java.lang.String getConnectionName$okhttp()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ping");	r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r7 = r0.<okhttp3.internal.http2.Http2Connection$ReaderRunnable: okhttp3.internal.http2.Http2Connection this$0>;	$r8 = new okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;	specialinvoke $r8.<okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1: void <init>(java.lang.String,boolean,okhttp3.internal.http2.Http2Connection,int,int)>(r16, 1, r7, i0, i1);	$r9 = (okhttp3.internal.concurrent.Task) $r8;	virtualinvoke $r15.<okhttp3.internal.concurrent.TaskQueue: void schedule(okhttp3.internal.concurrent.Task,long)>($r9, 0L);	return
;block_num 3
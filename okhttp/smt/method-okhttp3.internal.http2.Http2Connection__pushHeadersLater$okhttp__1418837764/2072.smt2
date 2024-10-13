(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var895 0)
(declare-sort var1462 0)
(declare-sort var713 0)
(declare-sort var1602 0)
(declare-sort var3917 0)
(declare-sort var1002 0)
(declare-sort var2281 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var713_checkNotNullParameter/-2060636419 (var1602 String) void)
(declare-fun cast-from-var1462-to-var1602 (var1462) var1602)
(declare-fun pushQueue/879952594 (var895) var3917)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun connectionName/879952594 (var895) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1002-init () var1002)
(declare-fun <init>/-1365474245 (var1002 String Bool var895 Int var1462 Bool) void)
(declare-fun cast-from-var1002-to-var2281 (var1002) var2281)
(declare-fun schedule/410635229 (var3917 var2281 Int) void)
(declare-const null-var895 var895)
(declare-const null-Int Int)
(declare-const null-var1462 var1462)
(declare-const null-Bool Bool)
(declare-const var1887 var895) ; Statement: r1 := @this: okhttp3.internal.http2.Http2Connection 
(assert (not (= var1887 null-var895)))
(declare-const var470 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var470 null-Int)))
(declare-const var1581 var1462) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var1581 null-var1462)))
(declare-const var3931 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3931 null-Bool)))
;(assert (var713_checkNotNullParameter/-2060636419 (cast-from-var1462-to-var1602 var1581) "requestHeaders")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "requestHeaders") 

(declare-const var1581!1 var1462)
(declare-const var2025 String)
(define-const var3055 var3917 (pushQueue/879952594 var1887)) ; Statement: $r2 = r1.<okhttp3.internal.http2.Http2Connection: okhttp3.internal.concurrent.TaskQueue pushQueue> 
(define-const var874 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var874)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var874!1 String)
(assert (= var874!1 ""))
(define-const var3147 String (connectionName/879952594 var1887)) ; Statement: $r4 = r1.<okhttp3.internal.http2.Http2Connection: java.lang.String connectionName> 
(assert true)
(define-const var2572 String (append/672562846 var874!1 var3147)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var874!2 String)
(assert (= var874!2 (str.++ var874!1 var3147)))
(assert true)
(define-const var3447 String (append/-1166366385 var2572 91)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2572!1 String)
(assert (str.prefixof var2572 var2572!1))
(assert true)
(define-const var856 String (append/-1001720160 var3447 var470)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3447!1 String)
(assert (str.prefixof var3447 var3447!1))
(assert true)
(define-const var2415 String (append/672562846 var856 "] onHeaders")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] onHeaders") 
(declare-const var856!1 String)
(assert (= var856!1 (str.++ var856 "] onHeaders")))
(assert true)
(define-const var2005 String (toString/-2075883882 var2415)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2830 var1002 var1002-init) ; Statement: $r10 = new okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$default$1 
(assert true)
;(assert (<init>/-1365474245 var2830 var2005 (ite (= 1 1) true false) var1887 var470 var1581!1 var3931)) ; Statement: specialinvoke $r10.<okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$default$1: void <init>(java.lang.String,boolean,okhttp3.internal.http2.Http2Connection,int,java.util.List,boolean)>(r9, 1, r1, i0, r0, z0) 

(declare-const var2830!1 var1002)
(declare-const var2005!1 String)
(declare-const var2236 Int)
(declare-const var1887!1 var895)
(declare-const var470!1 Int)
(declare-const var1581!2 var1462)
(declare-const var3931!1 Bool)
(define-const var3575 var2281 (cast-from-var1002-to-var2281 var2830!1)) ; Statement: $r11 = (okhttp3.internal.concurrent.Task) $r10 
(assert true)
;(assert (schedule/410635229 var3055 var3575 0)) ; Statement: virtualinvoke $r2.<okhttp3.internal.concurrent.TaskQueue: void schedule(okhttp3.internal.concurrent.Task,long)>($r11, 0L) 

(declare-const var3055!1 var3917)
(declare-const var3575!1 var2281)
(declare-const var613 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var713_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1462-to-var1602=([java.util.List], java.lang.Object), pushQueue/879952594=([okhttp3.internal.http2.Http2Connection], okhttp3.internal.concurrent.TaskQueue), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), connectionName/879952594=([okhttp3.internal.http2.Http2Connection], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1002-init=([], okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$default$1), <init>/-1365474245=([okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$default$1, java.lang.String, boolean, okhttp3.internal.http2.Http2Connection, int, java.util.List, boolean], void), cast-from-var1002-to-var2281=([okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$default$1], okhttp3.internal.concurrent.Task), schedule/410635229=([okhttp3.internal.concurrent.TaskQueue, okhttp3.internal.concurrent.Task, long], void)}
; {var895=okhttp3.internal.http2.Http2Connection, var1887=r1, var470=i0, var1462=java.util.List, var1581=r0, var3931=z0, var713=kotlin.jvm.internal.Intrinsics, var1602=java.lang.Object, var2025="requestHeaders", var3917=okhttp3.internal.concurrent.TaskQueue, var3055=$r2, var874=$r3, var3147=$r4, var2572=$r5, var3447=$r6, var856=$r7, var2415=$r8, var2005=r9, var1002=okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$default$1, var2830=$r10, var2236=1, var2281=okhttp3.internal.concurrent.Task, var3575=$r11, var613=0L}
; {okhttp3.internal.http2.Http2Connection=var895, r1=var1887, i0=var470, java.util.List=var1462, r0=var1581, z0=var3931, kotlin.jvm.internal.Intrinsics=var713, java.lang.Object=var1602, "requestHeaders"=var2025, okhttp3.internal.concurrent.TaskQueue=var3917, $r2=var3055, $r3=var874, $r4=var3147, $r5=var2572, $r6=var3447, $r7=var856, $r8=var2415, r9=var2005, okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$default$1=var1002, $r10=var2830, 1=var2236, okhttp3.internal.concurrent.Task=var2281, $r11=var3575, 0L=var613}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http2.Http2Connection;	i0 := @parameter0: int;	r0 := @parameter1: java.util.List;	z0 := @parameter2: boolean;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "requestHeaders");	$r2 = r1.<okhttp3.internal.http2.Http2Connection: okhttp3.internal.concurrent.TaskQueue pushQueue>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = r1.<okhttp3.internal.http2.Http2Connection: java.lang.String connectionName>;	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] onHeaders");	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$default$1;	specialinvoke $r10.<okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$default$1: void <init>(java.lang.String,boolean,okhttp3.internal.http2.Http2Connection,int,java.util.List,boolean)>(r9, 1, r1, i0, r0, z0);	$r11 = (okhttp3.internal.concurrent.Task) $r10;	virtualinvoke $r2.<okhttp3.internal.concurrent.TaskQueue: void schedule(okhttp3.internal.concurrent.Task,long)>($r11, 0L);	return
;block_num 1
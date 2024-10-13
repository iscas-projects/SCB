(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var181 0)
(declare-sort var2760 0)
(declare-sort var973 0)
(declare-sort var2061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun writerQueue/879952594 (var181) var2760)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun connectionName/879952594 (var181) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var973-init () var973)
(declare-fun <init>/-584438231 (var973 String Bool var181 Int Int) void)
(declare-fun cast-from-var973-to-var2061 (var973) var2061)
(declare-fun schedule/410635229 (var2760 var2061 Int) void)
(declare-const null-var181 var181)
(declare-const null-Int Int)
(declare-const var3308 var181) ; Statement: r0 := @this: okhttp3.internal.http2.Http2Connection 
(assert (not (= var3308 null-var181)))
(declare-const var1180 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1180 null-Int)))
(declare-const var3796 Int) ; Statement: l1 := @parameter1: long 
(assert (not (= var3796 null-Int)))
(define-const var2843 var2760 (writerQueue/879952594 var3308)) ; Statement: $r1 = r0.<okhttp3.internal.http2.Http2Connection: okhttp3.internal.concurrent.TaskQueue writerQueue> 
(define-const var2544 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2544)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2544!1 String)
(assert (= var2544!1 ""))
(define-const var2895 String (connectionName/879952594 var3308)) ; Statement: $r3 = r0.<okhttp3.internal.http2.Http2Connection: java.lang.String connectionName> 
(assert true)
(define-const var3437 String (append/672562846 var2544!1 var2895)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2544!2 String)
(assert (= var2544!2 (str.++ var2544!1 var2895)))
(assert true)
(define-const var1155 String (append/-1166366385 var3437 91)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3437!1 String)
(assert (str.prefixof var3437 var3437!1))
(assert true)
(define-const var1519 String (append/-1001720160 var1155 var1180)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1155!1 String)
(assert (str.prefixof var1155 var1155!1))
(assert true)
(define-const var3859 String (append/672562846 var1519 "] windowUpdate")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] windowUpdate") 
(declare-const var1519!1 String)
(assert (= var1519!1 (str.++ var1519 "] windowUpdate")))
(assert true)
(define-const var484 String (toString/-2075883882 var3859)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1480 var973 var973-init) ; Statement: $r9 = new okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1 
(assert true)
;(assert (<init>/-584438231 var1480 var484 (ite (= 1 1) true false) var3308 var1180 var3796)) ; Statement: specialinvoke $r9.<okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1: void <init>(java.lang.String,boolean,okhttp3.internal.http2.Http2Connection,int,long)>(r8, 1, r0, i0, l1) 

(declare-const var1480!1 var973)
(declare-const var484!1 String)
(declare-const var982 Int)
(declare-const var3308!1 var181)
(declare-const var1180!1 Int)
(declare-const var3796!1 Int)
(define-const var3557 var2061 (cast-from-var973-to-var2061 var1480!1)) ; Statement: $r10 = (okhttp3.internal.concurrent.Task) $r9 
(assert true)
;(assert (schedule/410635229 var2843 var3557 0)) ; Statement: virtualinvoke $r1.<okhttp3.internal.concurrent.TaskQueue: void schedule(okhttp3.internal.concurrent.Task,long)>($r10, 0L) 

(declare-const var2843!1 var2760)
(declare-const var3557!1 var2061)
(declare-const var2588 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {writerQueue/879952594=([okhttp3.internal.http2.Http2Connection], okhttp3.internal.concurrent.TaskQueue), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), connectionName/879952594=([okhttp3.internal.http2.Http2Connection], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var973-init=([], okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1), <init>/-584438231=([okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1, java.lang.String, boolean, okhttp3.internal.http2.Http2Connection, int, long], void), cast-from-var973-to-var2061=([okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1], okhttp3.internal.concurrent.Task), schedule/410635229=([okhttp3.internal.concurrent.TaskQueue, okhttp3.internal.concurrent.Task, long], void)}
; {var181=okhttp3.internal.http2.Http2Connection, var3308=r0, var1180=i0, var3796=l1, var2760=okhttp3.internal.concurrent.TaskQueue, var2843=$r1, var2544=$r2, var2895=$r3, var3437=$r4, var1155=$r5, var1519=$r6, var3859=$r7, var484=r8, var973=okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1, var1480=$r9, var982=1, var2061=okhttp3.internal.concurrent.Task, var3557=$r10, var2588=0L}
; {okhttp3.internal.http2.Http2Connection=var181, r0=var3308, i0=var1180, l1=var3796, okhttp3.internal.concurrent.TaskQueue=var2760, $r1=var2843, $r2=var2544, $r3=var2895, $r4=var3437, $r5=var1155, $r6=var1519, $r7=var3859, r8=var484, okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1=var973, $r9=var1480, 1=var982, okhttp3.internal.concurrent.Task=var2061, $r10=var3557, 0L=var2588}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http2.Http2Connection;	i0 := @parameter0: int;	l1 := @parameter1: long;	$r1 = r0.<okhttp3.internal.http2.Http2Connection: okhttp3.internal.concurrent.TaskQueue writerQueue>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<okhttp3.internal.http2.Http2Connection: java.lang.String connectionName>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] windowUpdate");	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = new okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1;	specialinvoke $r9.<okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1: void <init>(java.lang.String,boolean,okhttp3.internal.http2.Http2Connection,int,long)>(r8, 1, r0, i0, l1);	$r10 = (okhttp3.internal.concurrent.Task) $r9;	virtualinvoke $r1.<okhttp3.internal.concurrent.TaskQueue: void schedule(okhttp3.internal.concurrent.Task,long)>($r10, 0L);	return
;block_num 1
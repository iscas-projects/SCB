(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var452 0)
(declare-sort var3134 0)
(declare-sort var1027 0)
(declare-sort var3829 0)
(declare-sort var2355 0)
(declare-sort var3097 0)
(declare-sort var573 0)
(declare-sort var325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1027_checkNotNullParameter/-2060636419 (var3829 String) void)
(declare-fun cast-from-var3134-to-var3829 (var3134) var3829)
(declare-fun var2355-init () var2355)
(declare-fun <init>/-1875389739 (var2355) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3134_require/1036942224 (var3134 Int) void)
(declare-fun var3134_read/568168975 (var3134 var2355 Int) Int)
(declare-fun pushQueue/879952594 (var452) var3097)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun connectionName/879952594 (var452) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var573-init () var573)
(declare-fun <init>/869560848 (var573 String Bool var452 Int var2355 Int Bool) void)
(declare-fun cast-from-var573-to-var325 (var573) var325)
(declare-fun schedule/410635229 (var3097 var325 Int) void)
(declare-const null-var452 var452)
(declare-const null-Int Int)
(declare-const null-var3134 var3134)
(declare-const null-Bool Bool)
(declare-const var3251 var452) ; Statement: r2 := @this: okhttp3.internal.http2.Http2Connection 
(assert (not (= var3251 null-var452)))
(declare-const var1677 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var1677 null-Int)))
(declare-const var3126 var3134) ; Statement: r0 := @parameter1: okio.BufferedSource 
(assert (not (= var3126 null-var3134)))
(declare-const var3121 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3121 null-Int)))
(declare-const var3063 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var3063 null-Bool)))
;(assert (var1027_checkNotNullParameter/-2060636419 (cast-from-var3134-to-var3829 var3126) "source")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "source") 

(declare-const var3126!1 var3134)
(declare-const var3761 String)
(define-const var3896 var2355 var2355-init) ; Statement: $r1 = new okio.Buffer 
(assert true)
;(assert (<init>/-1875389739 var3896)) ; Statement: specialinvoke $r1.<okio.Buffer: void <init>()>() 

(declare-const var3896!1 var2355)
(define-const var192 Int (cast-from-Int-to-Int var3121)) ; Statement: $l1 = (long) i0 
;(assert (var3134_require/1036942224 var3126!1 var192)) ; Statement: interfaceinvoke r0.<okio.BufferedSource: void require(long)>($l1) 

(declare-const var3126!2 var3134)
(declare-const var192!1 Int)
(define-const var2991 Int (cast-from-Int-to-Int var3121)) ; Statement: $l2 = (long) i0 
;(assert (var3134_read/568168975 var3126!2 var3896!1 var2991)) ; Statement: interfaceinvoke r0.<okio.BufferedSource: long read(okio.Buffer,long)>($r1, $l2) 

(declare-const var3126!3 var3134)
(declare-const var3896!2 var2355)
(declare-const var2991!1 Int)
(define-const var627 var3097 (pushQueue/879952594 var3251)) ; Statement: $r3 = r2.<okhttp3.internal.http2.Http2Connection: okhttp3.internal.concurrent.TaskQueue pushQueue> 
(define-const var3088 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3088)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3088!1 String)
(assert (= var3088!1 ""))
(define-const var2209 String (connectionName/879952594 var3251)) ; Statement: $r5 = r2.<okhttp3.internal.http2.Http2Connection: java.lang.String connectionName> 
(assert true)
(define-const var2474 String (append/672562846 var3088!1 var2209)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3088!2 String)
(assert (= var3088!2 (str.++ var3088!1 var2209)))
(assert true)
(define-const var2268 String (append/-1166366385 var2474 91)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2474!1 String)
(assert (str.prefixof var2474 var2474!1))
(assert true)
(define-const var894 String (append/-1001720160 var2268 var1677)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var2268!1 String)
(assert (str.prefixof var2268 var2268!1))
(assert true)
(define-const var3830 String (append/672562846 var894 "] onData")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] onData") 
(declare-const var894!1 String)
(assert (= var894!1 (str.++ var894 "] onData")))
(assert true)
(define-const var2958 String (toString/-2075883882 var3830)) ; Statement: r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2041 var573 var573-init) ; Statement: $r11 = new okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$default$1 
(assert true)
;(assert (<init>/869560848 var2041 var2958 (ite (= 1 1) true false) var3251 var1677 var3896!2 var3121 var3063)) ; Statement: specialinvoke $r11.<okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$default$1: void <init>(java.lang.String,boolean,okhttp3.internal.http2.Http2Connection,int,okio.Buffer,int,boolean)>(r10, 1, r2, i3, $r1, i0, z0) 

(declare-const var2041!1 var573)
(declare-const var2958!1 String)
(declare-const var3500 Int)
(declare-const var3251!1 var452)
(declare-const var1677!1 Int)
(declare-const var3896!3 var2355)
(declare-const var3121!1 Int)
(declare-const var3063!1 Bool)
(define-const var2078 var325 (cast-from-var573-to-var325 var2041!1)) ; Statement: $r12 = (okhttp3.internal.concurrent.Task) $r11 
(assert true)
;(assert (schedule/410635229 var627 var2078 0)) ; Statement: virtualinvoke $r3.<okhttp3.internal.concurrent.TaskQueue: void schedule(okhttp3.internal.concurrent.Task,long)>($r12, 0L) 

(declare-const var627!1 var3097)
(declare-const var2078!1 var325)
(declare-const var1812 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1027_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3134-to-var3829=([okio.BufferedSource], java.lang.Object), var2355-init=([], okio.Buffer), <init>/-1875389739=([okio.Buffer], void), cast-from-Int-to-Int=([int], long), var3134_require/1036942224=([okio.BufferedSource, long], void), var3134_read/568168975=([okio.BufferedSource, okio.Buffer, long], long), pushQueue/879952594=([okhttp3.internal.http2.Http2Connection], okhttp3.internal.concurrent.TaskQueue), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), connectionName/879952594=([okhttp3.internal.http2.Http2Connection], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var573-init=([], okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$default$1), <init>/869560848=([okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$default$1, java.lang.String, boolean, okhttp3.internal.http2.Http2Connection, int, okio.Buffer, int, boolean], void), cast-from-var573-to-var325=([okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$default$1], okhttp3.internal.concurrent.Task), schedule/410635229=([okhttp3.internal.concurrent.TaskQueue, okhttp3.internal.concurrent.Task, long], void)}
; {var452=okhttp3.internal.http2.Http2Connection, var3251=r2, var1677=i3, var3134=okio.BufferedSource, var3126=r0, var3121=i0, var3063=z0, var1027=kotlin.jvm.internal.Intrinsics, var3829=java.lang.Object, var3761="source", var2355=okio.Buffer, var3896=$r1, var192=$l1, var2991=$l2, var3097=okhttp3.internal.concurrent.TaskQueue, var627=$r3, var3088=$r4, var2209=$r5, var2474=$r6, var2268=$r7, var894=$r8, var3830=$r9, var2958=r10, var573=okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$default$1, var2041=$r11, var3500=1, var325=okhttp3.internal.concurrent.Task, var2078=$r12, var1812=0L}
; {okhttp3.internal.http2.Http2Connection=var452, r2=var3251, i3=var1677, okio.BufferedSource=var3134, r0=var3126, i0=var3121, z0=var3063, kotlin.jvm.internal.Intrinsics=var1027, java.lang.Object=var3829, "source"=var3761, okio.Buffer=var2355, $r1=var3896, $l1=var192, $l2=var2991, okhttp3.internal.concurrent.TaskQueue=var3097, $r3=var627, $r4=var3088, $r5=var2209, $r6=var2474, $r7=var2268, $r8=var894, $r9=var3830, r10=var2958, okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$default$1=var573, $r11=var2041, 1=var3500, okhttp3.internal.concurrent.Task=var325, $r12=var2078, 0L=var1812}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: okhttp3.internal.http2.Http2Connection;	i3 := @parameter0: int;	r0 := @parameter1: okio.BufferedSource;	i0 := @parameter2: int;	z0 := @parameter3: boolean;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "source");	$r1 = new okio.Buffer;	specialinvoke $r1.<okio.Buffer: void <init>()>();	$l1 = (long) i0;	interfaceinvoke r0.<okio.BufferedSource: void require(long)>($l1);	$l2 = (long) i0;	interfaceinvoke r0.<okio.BufferedSource: long read(okio.Buffer,long)>($r1, $l2);	$r3 = r2.<okhttp3.internal.http2.Http2Connection: okhttp3.internal.concurrent.TaskQueue pushQueue>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = r2.<okhttp3.internal.http2.Http2Connection: java.lang.String connectionName>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] onData");	r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = new okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$default$1;	specialinvoke $r11.<okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$default$1: void <init>(java.lang.String,boolean,okhttp3.internal.http2.Http2Connection,int,okio.Buffer,int,boolean)>(r10, 1, r2, i3, $r1, i0, z0);	$r12 = (okhttp3.internal.concurrent.Task) $r11;	virtualinvoke $r3.<okhttp3.internal.concurrent.TaskQueue: void schedule(okhttp3.internal.concurrent.Task,long)>($r12, 0L);	return
;block_num 1
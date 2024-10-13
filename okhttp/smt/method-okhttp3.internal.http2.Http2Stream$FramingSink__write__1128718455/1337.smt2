(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var407 0)
(declare-sort var529 0)
(declare-sort var3766 0)
(declare-sort var3706 0)
(declare-sort var2228 0)
(declare-sort var1972 0)
(declare-sort var2104 0)
(declare-sort var3921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3766_checkNotNullParameter/-2060636419 (var3706 String) void)
(declare-fun cast-from-var529-to-var3706 (var529) var3706)
(declare-fun this$0/2139895117 (var407) var2228)
(declare-fun var2104_holdsLock/-145342167 (var3706) Bool)
(declare-fun cast-from-var2228-to-var3706 (var2228) var3706)
(declare-fun var3921-init () var3921)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2104_currentThread/-1037784612 () var2104)
(declare-fun getName/-942182377 (var2104) String)
(declare-fun append/-1031950772 (String var3706) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3921 var3706) void)
(declare-fun cast-from-String-to-var3706 (String) var3706)
(declare-const null-var407 var407)
(declare-const null-var529 var529)
(declare-const null-Int Int)
(declare-const var1972-assertionsEnabled Bool)
(declare-const var2885 var407) ; Statement: r1 := @this: okhttp3.internal.http2.Http2Stream$FramingSink 
(assert (not (= var2885 null-var407)))
(declare-const var1082 var529) ; Statement: r0 := @parameter0: okio.Buffer 
(assert (not (= var1082 null-var529)))
(declare-const var3657 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var3657 null-Int)))
;(assert (var3766_checkNotNullParameter/-2060636419 (cast-from-var529-to-var3706 var1082) "source")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "source") 

(declare-const var1082!1 var529)
(declare-const var3024 String)
(define-const var3307 var2228 (this$0/2139895117 var2885)) ; Statement: $r2 = r1.<okhttp3.internal.http2.Http2Stream$FramingSink: okhttp3.internal.http2.Http2Stream this$0> 
(define-const var2971 Bool var1972-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r3 = r1.<okhttp3.internal.http2.Http2Stream$FramingSink: okio.Buffer sendBuffer> 
(assert (not (= (ite var2971 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2670 Bool (var2104_holdsLock/-145342167 (cast-from-var2228-to-var3706 var3307))) ; Statement: $z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r2) 
 ; Statement: if $z1 == 0 goto $r3 = r1.<okhttp3.internal.http2.Http2Stream$FramingSink: okio.Buffer sendBuffer> 
(assert (not (= (ite var2670 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3883 var3921 var3921-init) ; Statement: $r15 = new java.lang.AssertionError 
(define-const var3138 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3138)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3138!1 String)
(assert (= var3138!1 ""))
(assert true)
(define-const var730 String (append/672562846 var3138!1 "Thread ")) ; Statement: $r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var3138!2 String)
(assert (= var3138!2 (str.++ var3138!1 "Thread ")))
(define-const var2943 var2104 var2104_currentThread/-1037784612) ; Statement: $r6 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var2970 String (getName/-942182377 var2943)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var3037 String (append/672562846 var730 var2970)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var730!1 String)
(assert (= var730!1 (str.++ var730 var2970)))
(assert true)
(define-const var1113 String (append/672562846 var3037 " MUST NOT hold lock on ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var3037!1 String)
(assert (= var3037!1 (str.++ var3037 " MUST NOT hold lock on ")))
(assert true)
(define-const var2310 String (append/-1031950772 var1113 (cast-from-var2228-to-var3706 var3307))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1113!1 String)
(assert (str.prefixof var1113 var1113!1))
(assert true)
(define-const var3807 String (toString/-2075883882 var2310)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var3883 (cast-from-String-to-var3706 var3807))) ; Statement: specialinvoke $r15.<java.lang.AssertionError: void <init>(java.lang.Object)>($r12) 

(declare-const var3883!1 var3921)
(declare-const var3807!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3766_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var529-to-var3706=([okio.Buffer], java.lang.Object), this$0/2139895117=([okhttp3.internal.http2.Http2Stream$FramingSink], okhttp3.internal.http2.Http2Stream), var2104_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var2228-to-var3706=([okhttp3.internal.http2.Http2Stream], java.lang.Object), var3921-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2104_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3706=([java.lang.String], java.lang.Object)}
; {var407=okhttp3.internal.http2.Http2Stream$FramingSink, var2885=r1, var529=okio.Buffer, var1082=r0, var3657=l0, var3766=kotlin.jvm.internal.Intrinsics, var3706=java.lang.Object, var3024="source", var2228=okhttp3.internal.http2.Http2Stream, var3307=$r2, var1972=okhttp3.internal.Util, var2971=$z0, var2104=java.lang.Thread, var2670=$z1, var3921=java.lang.AssertionError, var3883=$r15, var3138=$r14, var730=$r8, var2943=$r6, var2970=$r7, var3037=$r9, var1113=$r10, var2310=$r11, var3807=$r12}
; {okhttp3.internal.http2.Http2Stream$FramingSink=var407, r1=var2885, okio.Buffer=var529, r0=var1082, l0=var3657, kotlin.jvm.internal.Intrinsics=var3766, java.lang.Object=var3706, "source"=var3024, okhttp3.internal.http2.Http2Stream=var2228, $r2=var3307, okhttp3.internal.Util=var1972, $z0=var2971, java.lang.Thread=var2104, $z1=var2670, java.lang.AssertionError=var3921, $r15=var3883, $r14=var3138, $r8=var730, $r6=var2943, $r7=var2970, $r9=var3037, $r10=var1113, $r11=var2310, $r12=var3807}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http2.Http2Stream$FramingSink;	r0 := @parameter0: okio.Buffer;	l0 := @parameter1: long;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "source");	$r2 = r1.<okhttp3.internal.http2.Http2Stream$FramingSink: okhttp3.internal.http2.Http2Stream this$0>;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r3 = r1.<okhttp3.internal.http2.Http2Stream$FramingSink: okio.Buffer sendBuffer>;	$z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r2);	if $z1 == 0 goto $r3 = r1.<okhttp3.internal.http2.Http2Stream$FramingSink: okio.Buffer sendBuffer>;	$r15 = new java.lang.AssertionError;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r6 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r7 = virtualinvoke $r6.<java.lang.Thread: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.AssertionError: void <init>(java.lang.Object)>($r12);	throw $r15
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2948 0)
(declare-sort var2488 0)
(declare-sort var2326 0)
(declare-sort var1608 0)
(declare-sort var3513 0)
(declare-sort var3407 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1608_checkNotNullParameter/-2060636419 (var3513 String) void)
(declare-fun cast-from-var2488-to-var3513 (var2488) var3513)
(declare-fun code/-1887255971 (var2488) Int)
(declare-fun var3407-init () var3407)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun message/1151570383 (var2488) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2134048064 (var3407 String) void)
(declare-const null-var2948 var2948)
(declare-const null-var2488 var2488)
(declare-const null-var2326 var2326)
(declare-const var773 var2948) ; Statement: r6 := @this: okhttp3.internal.ws.RealWebSocket 
(assert (not (= var773 null-var2948)))
(declare-const var2989 var2488) ; Statement: r0 := @parameter0: okhttp3.Response 
(assert (not (= var2989 null-var2488)))
(declare-const var3098 var2326) ; Statement: r14 := @parameter1: okhttp3.internal.connection.Exchange 
(assert (not (= var3098 null-var2326)))
;(assert (var1608_checkNotNullParameter/-2060636419 (cast-from-var2488-to-var3513 var2989) "response")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "response") 

(declare-const var2989!1 var2488)
(declare-const var3232 String)
(assert true)
(define-const var2769 Int (code/-1887255971 var2989!1)) ; Statement: $i0 = virtualinvoke r0.<okhttp3.Response: int code()>() 
 ; Statement: if $i0 == 101 goto r1 = staticinvoke <okhttp3.Response: java.lang.String header$default(okhttp3.Response,java.lang.String,java.lang.String,int,java.lang.Object)>(r0, "Connection", null, 2, null) 
(assert (not (= var2769 101))) ; Negate: Cond: $i0 == 101  
(define-const var2886 var3407 var3407-init) ; Statement: $r36 = new java.net.ProtocolException 
(define-const var3663 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3663)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3663!1 String)
(assert (= var3663!1 ""))
(assert true)
(define-const var3789 String (append/672562846 var3663!1 "Expected HTTP 101 response but was \u0027")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected HTTP 101 response but was \'") 
(declare-const var3663!2 String)
(assert (= var3663!2 (str.++ var3663!1 "Expected HTTP 101 response but was \u0027")))
(assert true)
(define-const var2142 Int (code/-1887255971 var2989!1)) ; Statement: $i1 = virtualinvoke r0.<okhttp3.Response: int code()>() 
(assert true)
(define-const var803 String (append/-1001720160 var3789 var2142)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3789!1 String)
(assert (str.prefixof var3789 var3789!1))
(assert true)
(define-const var2680 String (append/-1166366385 var803 32)) ; Statement: $r41 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var803!1 String)
(assert (str.prefixof var803 var803!1))
(assert true)
(define-const var176 String (message/1151570383 var2989!1)) ; Statement: $r40 = virtualinvoke r0.<okhttp3.Response: java.lang.String message()>() 
(assert true)
(define-const var3566 String (append/672562846 var2680 var176)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var2680!1 String)
(assert (= var2680!1 (str.++ var2680 var176)))
(assert true)
(define-const var3625 String (append/-1166366385 var3566 39)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var3566!1 String)
(assert (str.prefixof var3566 var3566!1))
(assert true)
(define-const var2998 String (toString/-2075883882 var3625)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2134048064 var2886 var2998)) ; Statement: specialinvoke $r36.<java.net.ProtocolException: void <init>(java.lang.String)>($r44) 

(declare-const var2886!1 var3407)
(declare-const var2998!1 String)
 ; Statement: throw $r36 
(check-sat)
(get-model)
(get-unsat-core)
; {var1608_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2488-to-var3513=([okhttp3.Response], java.lang.Object), code/-1887255971=([okhttp3.Response], int), var3407-init=([], java.net.ProtocolException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), message/1151570383=([okhttp3.Response], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2134048064=([java.net.ProtocolException, java.lang.String], void)}
; {var2948=okhttp3.internal.ws.RealWebSocket, var773=r6, var2488=okhttp3.Response, var2989=r0, var2326=okhttp3.internal.connection.Exchange, var3098=r14, var1608=kotlin.jvm.internal.Intrinsics, var3513=java.lang.Object, var3232="response", var2769=$i0, var3407=java.net.ProtocolException, var2886=$r36, var3663=$r37, var3789=$r38, var2142=$i1, var803=$r39, var2680=$r41, var176=$r40, var3566=$r42, var3625=$r43, var2998=$r44}
; {okhttp3.internal.ws.RealWebSocket=var2948, r6=var773, okhttp3.Response=var2488, r0=var2989, okhttp3.internal.connection.Exchange=var2326, r14=var3098, kotlin.jvm.internal.Intrinsics=var1608, java.lang.Object=var3513, "response"=var3232, $i0=var2769, java.net.ProtocolException=var3407, $r36=var2886, $r37=var3663, $r38=var3789, $i1=var2142, $r39=var803, $r41=var2680, $r40=var176, $r42=var3566, $r43=var3625, $r44=var2998}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: okhttp3.internal.ws.RealWebSocket;	r0 := @parameter0: okhttp3.Response;	r14 := @parameter1: okhttp3.internal.connection.Exchange;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "response");	$i0 = virtualinvoke r0.<okhttp3.Response: int code()>();	if $i0 == 101 goto r1 = staticinvoke <okhttp3.Response: java.lang.String header$default(okhttp3.Response,java.lang.String,java.lang.String,int,java.lang.Object)>(r0, "Connection", null, 2, null);	$r36 = new java.net.ProtocolException;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected HTTP 101 response but was \'");	$i1 = virtualinvoke r0.<okhttp3.Response: int code()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r41 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r40 = virtualinvoke r0.<okhttp3.Response: java.lang.String message()>();	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r36.<java.net.ProtocolException: void <init>(java.lang.String)>($r44);	throw $r36
;block_num 2
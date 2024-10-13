(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1827 0)
(declare-sort var2402 0)
(declare-sort var176 0)
(declare-sort var1946 0)
(declare-sort var2169 0)
(declare-sort var3910 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var176_checkNotNullParameter/-2060636419 (var1946 String) void)
(declare-fun cast-from-String-to-var1946 (String) var1946)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun encodeUtf8/572982729 (var2169 String) var3910)
(declare-fun sha1/-1656043250 (var3910) var3910)
(declare-fun base64/-54072094 (var3910) String)
(declare-const null-var1827 var1827)
(declare-const null-String String)
(declare-const var3910-Companion var2169)
(declare-const var2311 var1827) ; Statement: r9 := @this: okhttp3.internal.ws.WebSocketProtocol 
(assert (not (= var2311 null-var1827)))
(declare-const var260 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var260 null-String)))
;(assert (var176_checkNotNullParameter/-2060636419 (cast-from-String-to-var1946 var260) "key")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "key") 

(declare-const var260!1 String)
(declare-const var2916 String)
(define-const var2460 var2169 var3910-Companion) ; Statement: $r2 = <okio.ByteString: okio.ByteString$Companion Companion> 
(define-const var1722 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1722)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1722!1 String)
(assert (= var1722!1 ""))
(assert true)
(define-const var2162 String (append/672562846 var1722!1 var260!1)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1722!2 String)
(assert (= var1722!2 (str.++ var1722!1 var260!1)))
(assert true)
(define-const var902 String (append/672562846 var2162 "258EAFA5-E914-47DA-95CA-C5AB0DC85B11")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("258EAFA5-E914-47DA-95CA-C5AB0DC85B11") 
(declare-const var2162!1 String)
(assert (= var2162!1 (str.++ var2162 "258EAFA5-E914-47DA-95CA-C5AB0DC85B11")))
(assert true)
(define-const var3714 String (toString/-2075883882 var902)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2630 var3910 (encodeUtf8/572982729 var2460 var3714)) ; Statement: $r6 = virtualinvoke $r2.<okio.ByteString$Companion: okio.ByteString encodeUtf8(java.lang.String)>($r5) 
(assert true)
(define-const var885 var3910 (sha1/-1656043250 var2630)) ; Statement: $r7 = virtualinvoke $r6.<okio.ByteString: okio.ByteString sha1()>() 
(assert true)
(define-const var3515 String (base64/-54072094 var885)) ; Statement: $r8 = virtualinvoke $r7.<okio.ByteString: java.lang.String base64()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var176_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1946=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), encodeUtf8/572982729=([okio.ByteString$Companion, java.lang.String], okio.ByteString), sha1/-1656043250=([okio.ByteString], okio.ByteString), base64/-54072094=([okio.ByteString], java.lang.String)}
; {var1827=okhttp3.internal.ws.WebSocketProtocol, var2311=r9, var260=r0, var2402=null_type, var176=kotlin.jvm.internal.Intrinsics, var1946=java.lang.Object, var2916="key", var2169=okio.ByteString$Companion, var3910=okio.ByteString, var2460=$r2, var1722=$r1, var2162=$r3, var902=$r4, var3714=$r5, var2630=$r6, var885=$r7, var3515=$r8}
; {okhttp3.internal.ws.WebSocketProtocol=var1827, r9=var2311, r0=var260, null_type=var2402, kotlin.jvm.internal.Intrinsics=var176, java.lang.Object=var1946, "key"=var2916, okio.ByteString$Companion=var2169, okio.ByteString=var3910, $r2=var2460, $r1=var1722, $r3=var2162, $r4=var902, $r5=var3714, $r6=var2630, $r7=var885, $r8=var3515}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: okhttp3.internal.ws.WebSocketProtocol;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "key");	$r2 = <okio.ByteString: okio.ByteString$Companion Companion>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("258EAFA5-E914-47DA-95CA-C5AB0DC85B11");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r2.<okio.ByteString$Companion: okio.ByteString encodeUtf8(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<okio.ByteString: okio.ByteString sha1()>();	$r8 = virtualinvoke $r7.<okio.ByteString: java.lang.String base64()>();	return $r8
;block_num 1
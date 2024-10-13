(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var620 0)
(declare-sort var81 0)
(declare-sort var2677 0)
(declare-sort var2467 0)
(declare-sort var646 0)
(declare-sort var74 0)
(declare-sort var277 0)
(declare-sort var3067 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun streamId/-963377057 (var620) Int)
(declare-fun source/-963377057 (var620) var81)
(declare-fun var2677_readMedium/1237175085 (var81) Int)
(declare-fun left/-963377057 (var620) Int)
(declare-fun length/-963377057 (var620) Int)
(declare-fun var81_readByte/-184264681 (var81) Int)
(declare-fun var2677_and/-1124288 (Int Int) Int)
(declare-fun flags/-963377057 (var620) Int)
(declare-fun getLogger/-267931753 (var2467) var74)
(declare-fun isLoggable/-616065502 (var74 var277) Bool)
(declare-fun var81_readInt/1706757989 (var81) Int)
(declare-fun var3067-init () var3067)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3067 String) void)
(declare-const null-var620 var620)
(declare-const var646-Companion var2467)
(declare-const var277-FINE var277)
(declare-const var3554 var620) ; Statement: r0 := @this: okhttp3.internal.http2.Http2Reader$ContinuationSource 
(assert (not (= var3554 null-var620)))
(define-const var1234 Int (streamId/-963377057 var3554)) ; Statement: i0 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: int streamId> 
(define-const var3410 var81 (source/-963377057 var3554)) ; Statement: $r1 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: okio.BufferedSource source> 
(define-const var882 Int (var2677_readMedium/1237175085 var3410)) ; Statement: $i1 = staticinvoke <okhttp3.internal.Util: int readMedium(okio.BufferedSource)>($r1) 
(declare-const var3554!1 var620)
(assert (not (= var3554!1 null-var620)))
(assert (= (left/-963377057 var3554!1) var882)) ; Statement: r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: int left> = $i1 
(define-const var1838 Int (left/-963377057 var3554!1)) ; Statement: $i2 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: int left> 
(declare-const var3554!2 var620)
(assert (not (= var3554!2 null-var620)))
(assert (= (length/-963377057 var3554!2) var1838)) ; Statement: r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: int length> = $i2 
(define-const var3136 var81 (source/-963377057 var3554!2)) ; Statement: $r2 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: okio.BufferedSource source> 
(define-const var2172 Int (var81_readByte/-184264681 var3136)) ; Statement: $b3 = interfaceinvoke $r2.<okio.BufferedSource: byte readByte()>() 
(define-const var114 Int (var2677_and/-1124288 var2172 255)) ; Statement: i4 = staticinvoke <okhttp3.internal.Util: int and(byte,int)>($b3, 255) 
(define-const var2007 var81 (source/-963377057 var3554!2)) ; Statement: $r3 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: okio.BufferedSource source> 
(define-const var2960 Int (var81_readByte/-184264681 var2007)) ; Statement: $b5 = interfaceinvoke $r3.<okio.BufferedSource: byte readByte()>() 
(define-const var3799 Int (var2677_and/-1124288 var2960 255)) ; Statement: $i6 = staticinvoke <okhttp3.internal.Util: int and(byte,int)>($b5, 255) 
(declare-const var3554!3 var620)
(assert (not (= var3554!3 null-var620)))
(assert (= (flags/-963377057 var3554!3) var3799)) ; Statement: r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: int flags> = $i6 
(define-const var1185 var2467 var646-Companion) ; Statement: $r4 = <okhttp3.internal.http2.Http2Reader: okhttp3.internal.http2.Http2Reader$Companion Companion> 
(assert true)
(define-const var980 var74 (getLogger/-267931753 var1185)) ; Statement: $r6 = virtualinvoke $r4.<okhttp3.internal.http2.Http2Reader$Companion: java.util.logging.Logger getLogger()>() 
(define-const var2797 var277 var277-FINE) ; Statement: $r5 = <java.util.logging.Level: java.util.logging.Level FINE> 
(assert true)
(define-const var914 Bool (isLoggable/-616065502 var980 var2797)) ; Statement: $z0 = virtualinvoke $r6.<java.util.logging.Logger: boolean isLoggable(java.util.logging.Level)>($r5) 
 ; Statement: if $z0 == 0 goto $r7 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: okio.BufferedSource source> 
(assert (= (ite var914 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1754 var81 (source/-963377057 var3554!3)) ; Statement: $r7 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: okio.BufferedSource source> 
(define-const var779 Int (var81_readInt/1706757989 var1754)) ; Statement: $i7 = interfaceinvoke $r7.<okio.BufferedSource: int readInt()>() 
(define-const var3058 Int (bv2nat (bvand ((_ int2bv 64) var779) ((_ int2bv 64) 2147483647)))) ; Statement: $i8 = $i7 & 2147483647 
(declare-const var3554!4 var620)
(assert (not (= var3554!4 null-var620)))
(assert (= (streamId/-963377057 var3554!4) var3058)) ; Statement: r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: int streamId> = $i8 
 ; Statement: if i4 == 9 goto $i9 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: int streamId> 
(assert (not (= var114 9))) ; Negate: Cond: i4 == 9  
(define-const var2171 var3067 var3067-init) ; Statement: $r9 = new java.io.IOException 
(define-const var35 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var35)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var35!1 String)
(assert (= var35!1 ""))
(assert true)
(define-const var1721 String (append/-1001720160 var35!1 var114)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var35!2 String)
(assert (str.prefixof var35!1 var35!2))
(assert true)
(define-const var1413 String (append/672562846 var1721 " != TYPE_CONTINUATION")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" != TYPE_CONTINUATION") 
(declare-const var1721!1 String)
(assert (= var1721!1 (str.++ var1721 " != TYPE_CONTINUATION")))
(assert true)
(define-const var2887 String (toString/-2075883882 var1413)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var2171 var2887)) ; Statement: specialinvoke $r9.<java.io.IOException: void <init>(java.lang.String)>($r13) 

(declare-const var2171!1 var3067)
(declare-const var2887!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {streamId/-963377057=([okhttp3.internal.http2.Http2Reader$ContinuationSource], int), source/-963377057=([okhttp3.internal.http2.Http2Reader$ContinuationSource], okio.BufferedSource), var2677_readMedium/1237175085=([okio.BufferedSource], int), left/-963377057=([okhttp3.internal.http2.Http2Reader$ContinuationSource], int), length/-963377057=([okhttp3.internal.http2.Http2Reader$ContinuationSource], int), var81_readByte/-184264681=([okio.BufferedSource], byte), var2677_and/-1124288=([byte, int], int), flags/-963377057=([okhttp3.internal.http2.Http2Reader$ContinuationSource], int), getLogger/-267931753=([okhttp3.internal.http2.Http2Reader$Companion], java.util.logging.Logger), isLoggable/-616065502=([java.util.logging.Logger, java.util.logging.Level], boolean), var81_readInt/1706757989=([okio.BufferedSource], int), var3067-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var620=okhttp3.internal.http2.Http2Reader$ContinuationSource, var3554=r0, var1234=i0, var81=okio.BufferedSource, var3410=$r1, var2677=okhttp3.internal.Util, var882=$i1, var1838=$i2, var3136=$r2, var2172=$b3, var114=i4, var2007=$r3, var2960=$b5, var3799=$i6, var2467=okhttp3.internal.http2.Http2Reader$Companion, var646=okhttp3.internal.http2.Http2Reader, var1185=$r4, var74=java.util.logging.Logger, var980=$r6, var277=java.util.logging.Level, var2797=$r5, var914=$z0, var1754=$r7, var779=$i7, var3058=$i8, var3067=java.io.IOException, var2171=$r9, var35=$r10, var1721=$r11, var1413=$r12, var2887=$r13}
; {okhttp3.internal.http2.Http2Reader$ContinuationSource=var620, r0=var3554, i0=var1234, okio.BufferedSource=var81, $r1=var3410, okhttp3.internal.Util=var2677, $i1=var882, $i2=var1838, $r2=var3136, $b3=var2172, i4=var114, $r3=var2007, $b5=var2960, $i6=var3799, okhttp3.internal.http2.Http2Reader$Companion=var2467, okhttp3.internal.http2.Http2Reader=var646, $r4=var1185, java.util.logging.Logger=var74, $r6=var980, java.util.logging.Level=var277, $r5=var2797, $z0=var914, $r7=var1754, $i7=var779, $i8=var3058, java.io.IOException=var3067, $r9=var2171, $r10=var35, $r11=var1721, $r12=var1413, $r13=var2887}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http2.Http2Reader$ContinuationSource;	i0 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: int streamId>;	$r1 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: okio.BufferedSource source>;	$i1 = staticinvoke <okhttp3.internal.Util: int readMedium(okio.BufferedSource)>($r1);	r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: int left> = $i1;	$i2 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: int left>;	r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: int length> = $i2;	$r2 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: okio.BufferedSource source>;	$b3 = interfaceinvoke $r2.<okio.BufferedSource: byte readByte()>();	i4 = staticinvoke <okhttp3.internal.Util: int and(byte,int)>($b3, 255);	$r3 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: okio.BufferedSource source>;	$b5 = interfaceinvoke $r3.<okio.BufferedSource: byte readByte()>();	$i6 = staticinvoke <okhttp3.internal.Util: int and(byte,int)>($b5, 255);	r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: int flags> = $i6;	$r4 = <okhttp3.internal.http2.Http2Reader: okhttp3.internal.http2.Http2Reader$Companion Companion>;	$r6 = virtualinvoke $r4.<okhttp3.internal.http2.Http2Reader$Companion: java.util.logging.Logger getLogger()>();	$r5 = <java.util.logging.Level: java.util.logging.Level FINE>;	$z0 = virtualinvoke $r6.<java.util.logging.Logger: boolean isLoggable(java.util.logging.Level)>($r5);	if $z0 == 0 goto $r7 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: okio.BufferedSource source>;	$r7 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: okio.BufferedSource source>;	$i7 = interfaceinvoke $r7.<okio.BufferedSource: int readInt()>();	$i8 = $i7 & 2147483647;	r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: int streamId> = $i8;	if i4 == 9 goto $i9 = r0.<okhttp3.internal.http2.Http2Reader$ContinuationSource: int streamId>;	$r9 = new java.io.IOException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" != TYPE_CONTINUATION");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.IOException: void <init>(java.lang.String)>($r13);	throw $r9
;block_num 3
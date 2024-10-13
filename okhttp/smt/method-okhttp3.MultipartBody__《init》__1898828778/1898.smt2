(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2828 0)
(declare-sort var1505 0)
(declare-sort var557 0)
(declare-sort var1891 0)
(declare-sort var1650 0)
(declare-sort var451 0)
(declare-sort var2041 0)
(declare-sort var1175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1650_checkNotNullParameter/-2060636419 (var451 String) void)
(declare-fun cast-from-var1505-to-var451 (var1505) var451)
(declare-fun cast-from-var557-to-var451 (var557) var451)
(declare-fun cast-from-var1891-to-var451 (var1891) var451)
(declare-fun <init>/-645301093 (var2041) void)
(declare-fun cast-from-var2828-to-var2041 (var2828) var2041)
(declare-fun boundaryByteString/2044454127 (var2828) var1505)
(declare-fun type/2044454127 (var2828) var557)
(declare-fun parts/2044454127 (var2828) var1891)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var451) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun boundary/-1526024495 (var2828) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun get/-1656704802 (var1175 String) var557)
(declare-fun contentType/2044454127 (var2828) var557)
(declare-fun contentLength/2044454127 (var2828) Int)
(declare-const null-var2828 var2828)
(declare-const null-var1505 var1505)
(declare-const null-var557 var557)
(declare-const null-var1891 var1891)
(declare-const var557-Companion var1175)
(declare-const var3041 var2828) ; Statement: r3 := @this: okhttp3.MultipartBody 
(assert (not (= var3041 null-var2828)))
(declare-const var3 var1505) ; Statement: r0 := @parameter0: okio.ByteString 
(assert (not (= var3 null-var1505)))
(declare-const var2291 var557) ; Statement: r1 := @parameter1: okhttp3.MediaType 
(assert (not (= var2291 null-var557)))
(declare-const var548 var1891) ; Statement: r2 := @parameter2: java.util.List 
(assert (not (= var548 null-var1891)))
;(assert (var1650_checkNotNullParameter/-2060636419 (cast-from-var1505-to-var451 var3) "boundaryByteString")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "boundaryByteString") 

(declare-const var3!1 var1505)
(declare-const var294 String)
;(assert (var1650_checkNotNullParameter/-2060636419 (cast-from-var557-to-var451 var2291) "type")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "type") 

(declare-const var2291!1 var557)
(declare-const var2994 String)
;(assert (var1650_checkNotNullParameter/-2060636419 (cast-from-var1891-to-var451 var548) "parts")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "parts") 

(declare-const var548!1 var1891)
(declare-const var43 String)
(assert true)
;(assert (<init>/-645301093 (cast-from-var2828-to-var2041 var3041))) ; Statement: specialinvoke r3.<okhttp3.RequestBody: void <init>()>() 

(declare-const var3041!1 var2828)
(declare-const var3041!2 var2828)
(assert (not (= var3041!2 null-var2828)))
(assert (= (boundaryByteString/2044454127 var3041!2) var3!1)) ; Statement: r3.<okhttp3.MultipartBody: okio.ByteString boundaryByteString> = r0 
(declare-const var3041!3 var2828)
(assert (not (= var3041!3 null-var2828)))
(assert (= (type/2044454127 var3041!3) var2291!1)) ; Statement: r3.<okhttp3.MultipartBody: okhttp3.MediaType type> = r1 
(declare-const var3041!4 var2828)
(assert (not (= var3041!4 null-var2828)))
(assert (= (parts/2044454127 var3041!4) var548!1)) ; Statement: r3.<okhttp3.MultipartBody: java.util.List parts> = r2 
(define-const var3031 var1175 var557-Companion) ; Statement: $r5 = <okhttp3.MediaType: okhttp3.MediaType$Companion Companion> 
(define-const var1398 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1398)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1398!1 String)
(assert (= var1398!1 ""))
(define-const var1260 var557 (type/2044454127 var3041!4)) ; Statement: $r6 = r3.<okhttp3.MultipartBody: okhttp3.MediaType type> 
(assert true)
(define-const var1095 String (append/-1031950772 var1398!1 (cast-from-var557-to-var451 var1260))) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var1398!2 String)
(assert (str.prefixof var1398!1 var1398!2))
(assert true)
(define-const var2480 String (append/672562846 var1095 "; boundary=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; boundary=") 
(declare-const var1095!1 String)
(assert (= var1095!1 (str.++ var1095 "; boundary=")))
(assert true)
(define-const var377 String (boundary/-1526024495 var3041!4)) ; Statement: $r8 = virtualinvoke r3.<okhttp3.MultipartBody: java.lang.String boundary()>() 
(assert true)
(define-const var1826 String (append/672562846 var2480 var377)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2480!1 String)
(assert (= var2480!1 (str.++ var2480 var377)))
(assert true)
(define-const var58 String (toString/-2075883882 var1826)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1634 var557 (get/-1656704802 var3031 var58)) ; Statement: $r12 = virtualinvoke $r5.<okhttp3.MediaType$Companion: okhttp3.MediaType get(java.lang.String)>($r11) 
(declare-const var3041!5 var2828)
(assert (not (= var3041!5 null-var2828)))
(assert (= (contentType/2044454127 var3041!5) var1634)) ; Statement: r3.<okhttp3.MultipartBody: okhttp3.MediaType contentType> = $r12 
(declare-const var3041!6 var2828)
(assert (not (= var3041!6 null-var2828)))
(assert (= (contentLength/2044454127 var3041!6) (- 1))) ; Statement: r3.<okhttp3.MultipartBody: long contentLength> = -1L 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1650_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1505-to-var451=([okio.ByteString], java.lang.Object), cast-from-var557-to-var451=([okhttp3.MediaType], java.lang.Object), cast-from-var1891-to-var451=([java.util.List], java.lang.Object), <init>/-645301093=([okhttp3.RequestBody], void), cast-from-var2828-to-var2041=([okhttp3.MultipartBody], okhttp3.RequestBody), boundaryByteString/2044454127=([okhttp3.MultipartBody], okio.ByteString), type/2044454127=([okhttp3.MultipartBody], okhttp3.MediaType), parts/2044454127=([okhttp3.MultipartBody], java.util.List), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), boundary/-1526024495=([okhttp3.MultipartBody], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), get/-1656704802=([okhttp3.MediaType$Companion, java.lang.String], okhttp3.MediaType), contentType/2044454127=([okhttp3.MultipartBody], okhttp3.MediaType), contentLength/2044454127=([okhttp3.MultipartBody], long)}
; {var2828=okhttp3.MultipartBody, var3041=r3, var1505=okio.ByteString, var3=r0, var557=okhttp3.MediaType, var2291=r1, var1891=java.util.List, var548=r2, var1650=kotlin.jvm.internal.Intrinsics, var451=java.lang.Object, var294="boundaryByteString", var2994="type", var43="parts", var2041=okhttp3.RequestBody, var1175=okhttp3.MediaType$Companion, var3031=$r5, var1398=$r4, var1260=$r6, var1095=$r7, var2480=$r9, var377=$r8, var1826=$r10, var58=$r11, var1634=$r12}
; {okhttp3.MultipartBody=var2828, r3=var3041, okio.ByteString=var1505, r0=var3, okhttp3.MediaType=var557, r1=var2291, java.util.List=var1891, r2=var548, kotlin.jvm.internal.Intrinsics=var1650, java.lang.Object=var451, "boundaryByteString"=var294, "type"=var2994, "parts"=var43, okhttp3.RequestBody=var2041, okhttp3.MediaType$Companion=var1175, $r5=var3031, $r4=var1398, $r6=var1260, $r7=var1095, $r9=var2480, $r8=var377, $r10=var1826, $r11=var58, $r12=var1634}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: okhttp3.MultipartBody;	r0 := @parameter0: okio.ByteString;	r1 := @parameter1: okhttp3.MediaType;	r2 := @parameter2: java.util.List;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "boundaryByteString");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "type");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "parts");	specialinvoke r3.<okhttp3.RequestBody: void <init>()>();	r3.<okhttp3.MultipartBody: okio.ByteString boundaryByteString> = r0;	r3.<okhttp3.MultipartBody: okhttp3.MediaType type> = r1;	r3.<okhttp3.MultipartBody: java.util.List parts> = r2;	$r5 = <okhttp3.MediaType: okhttp3.MediaType$Companion Companion>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = r3.<okhttp3.MultipartBody: okhttp3.MediaType type>;	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; boundary=");	$r8 = virtualinvoke r3.<okhttp3.MultipartBody: java.lang.String boundary()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke $r5.<okhttp3.MediaType$Companion: okhttp3.MediaType get(java.lang.String)>($r11);	r3.<okhttp3.MultipartBody: okhttp3.MediaType contentType> = $r12;	r3.<okhttp3.MultipartBody: long contentLength> = -1L;	return
;block_num 1
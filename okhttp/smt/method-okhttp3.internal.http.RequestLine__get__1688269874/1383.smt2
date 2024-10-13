(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3472 0)
(declare-sort var740 0)
(declare-sort var902 0)
(declare-sort var1126 0)
(declare-sort var27 0)
(declare-sort var1894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1126_checkNotNullParameter/-2060636419 (var27 String) void)
(declare-fun cast-from-var740-to-var27 (var740) var27)
(declare-fun cast-from-var902-to-var27 (var902) var27)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun method/995635355 (var740) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun includeAuthorityInRequestLine/1944185552 (var3472 var740 var902) Bool)
(declare-fun url/-1276526496 (var740) var1894)
(declare-fun requestPath/-572849753 (var3472 var1894) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1126_checkNotNullExpressionValue/47304269 (var27 String) void)
(declare-fun cast-from-String-to-var27 (String) var27)
(declare-const null-var3472 var3472)
(declare-const null-var740 var740)
(declare-const null-var902 var902)
(declare-const var3472-INSTANCE var3472)
(declare-const var3330 var3472) ; Statement: r10 := @this: okhttp3.internal.http.RequestLine 
(assert (not (= var3330 null-var3472)))
(declare-const var1764 var740) ; Statement: r0 := @parameter0: okhttp3.Request 
(assert (not (= var1764 null-var740)))
(declare-const var647 var902) ; Statement: r1 := @parameter1: java.net.Proxy$Type 
(assert (not (= var647 null-var902)))
;(assert (var1126_checkNotNullParameter/-2060636419 (cast-from-var740-to-var27 var1764) "request")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "request") 

(declare-const var1764!1 var740)
(declare-const var48 String)
;(assert (var1126_checkNotNullParameter/-2060636419 (cast-from-var902-to-var27 var647) "proxyType")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "proxyType") 

(declare-const var647!1 var902)
(declare-const var1668 String)
(define-const var2462 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2462)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2462!1 String)
(assert (= var2462!1 ""))
(assert true)
(define-const var74 String (method/995635355 var1764!1)) ; Statement: $r3 = virtualinvoke r0.<okhttp3.Request: java.lang.String method()>() 
(assert true)
;(assert (append/672562846 var2462!1 var74)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2462!2 String)
(assert (= var2462!2 (str.++ var2462!1 var74)))
(assert true)
;(assert (append/-1166366385 var2462!2 32)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2462!3 String)
(assert (str.prefixof var2462!2 var2462!3))
(define-const var3855 var3472 var3472-INSTANCE) ; Statement: $r4 = <okhttp3.internal.http.RequestLine: okhttp3.internal.http.RequestLine INSTANCE> 
(assert true)
(define-const var421 Bool (includeAuthorityInRequestLine/1944185552 var3855 var1764!1 var647!1)) ; Statement: $z0 = specialinvoke $r4.<okhttp3.internal.http.RequestLine: boolean includeAuthorityInRequestLine(okhttp3.Request,java.net.Proxy$Type)>(r0, r1) 
 ; Statement: if $z0 == 0 goto $r5 = <okhttp3.internal.http.RequestLine: okhttp3.internal.http.RequestLine INSTANCE> 
(assert (= (ite var421 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3833 var3472 var3472-INSTANCE) ; Statement: $r5 = <okhttp3.internal.http.RequestLine: okhttp3.internal.http.RequestLine INSTANCE> 
(assert true)
(define-const var2987 var1894 (url/-1276526496 var1764!1)) ; Statement: $r6 = virtualinvoke r0.<okhttp3.Request: okhttp3.HttpUrl url()>() 
(assert true)
(define-const var3179 String (requestPath/-572849753 var3833 var2987)) ; Statement: $r7 = virtualinvoke $r5.<okhttp3.internal.http.RequestLine: java.lang.String requestPath(okhttp3.HttpUrl)>($r6) 
(assert true)
;(assert (append/672562846 var2462!3 var3179)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2462!4 String)
(assert (= var2462!4 (str.++ var2462!3 var3179)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2462!4 " HTTP/1.1")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" HTTP/1.1") 
(declare-const var2462!5 String)
(assert (= var2462!5 (str.++ var2462!4 " HTTP/1.1")))
(assert true)
(define-const var3980 String (toString/-2075883882 var2462!5)) ; Statement: $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1126_checkNotNullExpressionValue/47304269 (cast-from-String-to-var27 var3980) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r8, "StringBuilder().apply(builderAction).toString()") 

(declare-const var3980!1 String)
(declare-const var3282 String)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1126_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var740-to-var27=([okhttp3.Request], java.lang.Object), cast-from-var902-to-var27=([java.net.Proxy$Type], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), method/995635355=([okhttp3.Request], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), includeAuthorityInRequestLine/1944185552=([okhttp3.internal.http.RequestLine, okhttp3.Request, java.net.Proxy$Type], boolean), url/-1276526496=([okhttp3.Request], okhttp3.HttpUrl), requestPath/-572849753=([okhttp3.internal.http.RequestLine, okhttp3.HttpUrl], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1126_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var27=([java.lang.String], java.lang.Object)}
; {var3472=okhttp3.internal.http.RequestLine, var3330=r10, var740=okhttp3.Request, var1764=r0, var902=java.net.Proxy$Type, var647=r1, var1126=kotlin.jvm.internal.Intrinsics, var27=java.lang.Object, var48="request", var1668="proxyType", var2462=$r2, var74=$r3, var3855=$r4, var421=$z0, var3833=$r5, var1894=okhttp3.HttpUrl, var2987=$r6, var3179=$r7, var3980=$r8, var3282="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.internal.http.RequestLine=var3472, r10=var3330, okhttp3.Request=var740, r0=var1764, java.net.Proxy$Type=var902, r1=var647, kotlin.jvm.internal.Intrinsics=var1126, java.lang.Object=var27, "request"=var48, "proxyType"=var1668, $r2=var2462, $r3=var74, $r4=var3855, $z0=var421, $r5=var3833, okhttp3.HttpUrl=var1894, $r6=var2987, $r7=var3179, $r8=var3980, "StringBuilder().apply(builderAction).toString()"=var3282}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: okhttp3.internal.http.RequestLine;	r0 := @parameter0: okhttp3.Request;	r1 := @parameter1: java.net.Proxy$Type;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "request");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "proxyType");	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<okhttp3.Request: java.lang.String method()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r4 = <okhttp3.internal.http.RequestLine: okhttp3.internal.http.RequestLine INSTANCE>;	$z0 = specialinvoke $r4.<okhttp3.internal.http.RequestLine: boolean includeAuthorityInRequestLine(okhttp3.Request,java.net.Proxy$Type)>(r0, r1);	if $z0 == 0 goto $r5 = <okhttp3.internal.http.RequestLine: okhttp3.internal.http.RequestLine INSTANCE>;	$r5 = <okhttp3.internal.http.RequestLine: okhttp3.internal.http.RequestLine INSTANCE>;	$r6 = virtualinvoke r0.<okhttp3.Request: okhttp3.HttpUrl url()>();	$r7 = virtualinvoke $r5.<okhttp3.internal.http.RequestLine: java.lang.String requestPath(okhttp3.HttpUrl)>($r6);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" HTTP/1.1");	$r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r8, "StringBuilder().apply(builderAction).toString()");	return $r8
;block_num 3
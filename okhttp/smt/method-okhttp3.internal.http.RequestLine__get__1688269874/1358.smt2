(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3737 0)
(declare-sort var3196 0)
(declare-sort var728 0)
(declare-sort var51 0)
(declare-sort var1837 0)
(declare-sort var2879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var51_checkNotNullParameter/-2060636419 (var1837 String) void)
(declare-fun cast-from-var3196-to-var1837 (var3196) var1837)
(declare-fun cast-from-var728-to-var1837 (var728) var1837)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun method/995635355 (var3196) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun includeAuthorityInRequestLine/1944185552 (var3737 var3196 var728) Bool)
(declare-fun url/-1276526496 (var3196) var2879)
(declare-fun append/-1031950772 (String var1837) String)
(declare-fun cast-from-var2879-to-var1837 (var2879) var1837)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var51_checkNotNullExpressionValue/47304269 (var1837 String) void)
(declare-fun cast-from-String-to-var1837 (String) var1837)
(declare-const null-var3737 var3737)
(declare-const null-var3196 var3196)
(declare-const null-var728 var728)
(declare-const var3737-INSTANCE var3737)
(declare-const var3057 var3737) ; Statement: r10 := @this: okhttp3.internal.http.RequestLine 
(assert (not (= var3057 null-var3737)))
(declare-const var1560 var3196) ; Statement: r0 := @parameter0: okhttp3.Request 
(assert (not (= var1560 null-var3196)))
(declare-const var504 var728) ; Statement: r1 := @parameter1: java.net.Proxy$Type 
(assert (not (= var504 null-var728)))
;(assert (var51_checkNotNullParameter/-2060636419 (cast-from-var3196-to-var1837 var1560) "request")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "request") 

(declare-const var1560!1 var3196)
(declare-const var2101 String)
;(assert (var51_checkNotNullParameter/-2060636419 (cast-from-var728-to-var1837 var504) "proxyType")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "proxyType") 

(declare-const var504!1 var728)
(declare-const var1584 String)
(define-const var774 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var774)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var774!1 String)
(assert (= var774!1 ""))
(assert true)
(define-const var972 String (method/995635355 var1560!1)) ; Statement: $r3 = virtualinvoke r0.<okhttp3.Request: java.lang.String method()>() 
(assert true)
;(assert (append/672562846 var774!1 var972)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var774!2 String)
(assert (= var774!2 (str.++ var774!1 var972)))
(assert true)
;(assert (append/-1166366385 var774!2 32)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var774!3 String)
(assert (str.prefixof var774!2 var774!3))
(define-const var2801 var3737 var3737-INSTANCE) ; Statement: $r4 = <okhttp3.internal.http.RequestLine: okhttp3.internal.http.RequestLine INSTANCE> 
(assert true)
(define-const var3082 Bool (includeAuthorityInRequestLine/1944185552 var2801 var1560!1 var504!1)) ; Statement: $z0 = specialinvoke $r4.<okhttp3.internal.http.RequestLine: boolean includeAuthorityInRequestLine(okhttp3.Request,java.net.Proxy$Type)>(r0, r1) 
 ; Statement: if $z0 == 0 goto $r5 = <okhttp3.internal.http.RequestLine: okhttp3.internal.http.RequestLine INSTANCE> 
(assert (not (= (ite var3082 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1909 var2879 (url/-1276526496 var1560!1)) ; Statement: $r9 = virtualinvoke r0.<okhttp3.Request: okhttp3.HttpUrl url()>() 
(assert true)
;(assert (append/-1031950772 var774!3 (cast-from-var2879-to-var1837 var1909))) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var774!4 String)
(assert (str.prefixof var774!3 var774!4))
 ; Statement: goto [?= virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" HTTP/1.1")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var774!4 " HTTP/1.1")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" HTTP/1.1") 
(declare-const var774!5 String)
(assert (= var774!5 (str.++ var774!4 " HTTP/1.1")))
(assert true)
(define-const var502 String (toString/-2075883882 var774!5)) ; Statement: $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var51_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1837 var502) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r8, "StringBuilder().apply(builderAction).toString()") 

(declare-const var502!1 String)
(declare-const var646 String)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var51_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3196-to-var1837=([okhttp3.Request], java.lang.Object), cast-from-var728-to-var1837=([java.net.Proxy$Type], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), method/995635355=([okhttp3.Request], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), includeAuthorityInRequestLine/1944185552=([okhttp3.internal.http.RequestLine, okhttp3.Request, java.net.Proxy$Type], boolean), url/-1276526496=([okhttp3.Request], okhttp3.HttpUrl), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2879-to-var1837=([okhttp3.HttpUrl], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var51_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1837=([java.lang.String], java.lang.Object)}
; {var3737=okhttp3.internal.http.RequestLine, var3057=r10, var3196=okhttp3.Request, var1560=r0, var728=java.net.Proxy$Type, var504=r1, var51=kotlin.jvm.internal.Intrinsics, var1837=java.lang.Object, var2101="request", var1584="proxyType", var774=$r2, var972=$r3, var2801=$r4, var3082=$z0, var2879=okhttp3.HttpUrl, var1909=$r9, var502=$r8, var646="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.internal.http.RequestLine=var3737, r10=var3057, okhttp3.Request=var3196, r0=var1560, java.net.Proxy$Type=var728, r1=var504, kotlin.jvm.internal.Intrinsics=var51, java.lang.Object=var1837, "request"=var2101, "proxyType"=var1584, $r2=var774, $r3=var972, $r4=var2801, $z0=var3082, okhttp3.HttpUrl=var2879, $r9=var1909, $r8=var502, "StringBuilder().apply(builderAction).toString()"=var646}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: okhttp3.internal.http.RequestLine;	r0 := @parameter0: okhttp3.Request;	r1 := @parameter1: java.net.Proxy$Type;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "request");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "proxyType");	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<okhttp3.Request: java.lang.String method()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r4 = <okhttp3.internal.http.RequestLine: okhttp3.internal.http.RequestLine INSTANCE>;	$z0 = specialinvoke $r4.<okhttp3.internal.http.RequestLine: boolean includeAuthorityInRequestLine(okhttp3.Request,java.net.Proxy$Type)>(r0, r1);	if $z0 == 0 goto $r5 = <okhttp3.internal.http.RequestLine: okhttp3.internal.http.RequestLine INSTANCE>;	$r9 = virtualinvoke r0.<okhttp3.Request: okhttp3.HttpUrl url()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	goto [?= virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" HTTP/1.1")];	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" HTTP/1.1");	$r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r8, "StringBuilder().apply(builderAction).toString()");	return $r8
;block_num 3
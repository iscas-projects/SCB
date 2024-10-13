(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var416 0)
(declare-sort var235 0)
(declare-sort var3639 0)
(declare-sort var3265 0)
(declare-sort var669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3639_checkNotNullParameter/-2060636419 (var3265 String) void)
(declare-fun cast-from-var235-to-var3265 (var235) var3265)
(declare-fun encodedPath/1022522259 (var235) String)
(declare-fun encodedQuery/-766324102 (var235) String)
(declare-const null-var416 var416)
(declare-const null-var235 var235)
(declare-const null-String String)
(declare-const var3788 var416) ; Statement: r7 := @this: okhttp3.internal.http.RequestLine 
(assert (not (= var3788 null-var416)))
(declare-const var2924 var235) ; Statement: r0 := @parameter0: okhttp3.HttpUrl 
(assert (not (= var2924 null-var235)))
;(assert (var3639_checkNotNullParameter/-2060636419 (cast-from-var235-to-var3265 var2924) "url")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "url") 

(declare-const var2924!1 var235)
(declare-const var1546 String)
(assert true)
(define-const var207 String (encodedPath/1022522259 var2924!1)) ; Statement: r1 = virtualinvoke r0.<okhttp3.HttpUrl: java.lang.String encodedPath()>() 
(assert true)
(define-const var3656 String (encodedQuery/-766324102 var2924!1)) ; Statement: r2 = virtualinvoke r0.<okhttp3.HttpUrl: java.lang.String encodedQuery()>() 
 ; Statement: if r2 == null goto $r8 = r1 
(assert (= var3656 null-String)) ; Cond: r2 == null 
(define-const var857 String var207) ; Statement: $r8 = r1 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3639_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var235-to-var3265=([okhttp3.HttpUrl], java.lang.Object), encodedPath/1022522259=([okhttp3.HttpUrl], java.lang.String), encodedQuery/-766324102=([okhttp3.HttpUrl], java.lang.String)}
; {var416=okhttp3.internal.http.RequestLine, var3788=r7, var235=okhttp3.HttpUrl, var2924=r0, var3639=kotlin.jvm.internal.Intrinsics, var3265=java.lang.Object, var1546="url", var207=r1, var3656=r2, var669=null_type, var857=$r8}
; {okhttp3.internal.http.RequestLine=var416, r7=var3788, okhttp3.HttpUrl=var235, r0=var2924, kotlin.jvm.internal.Intrinsics=var3639, java.lang.Object=var3265, "url"=var1546, r1=var207, r2=var3656, null_type=var669, $r8=var857}
;seq 
;cnt {}
;stmts r7 := @this: okhttp3.internal.http.RequestLine;	r0 := @parameter0: okhttp3.HttpUrl;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "url");	r1 = virtualinvoke r0.<okhttp3.HttpUrl: java.lang.String encodedPath()>();	r2 = virtualinvoke r0.<okhttp3.HttpUrl: java.lang.String encodedQuery()>();	if r2 == null goto $r8 = r1;	$r8 = r1;	return $r8
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1065 0)
(declare-sort var2678 0)
(declare-sort var1953 0)
(declare-sort var1325 0)
(declare-sort var1625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1953_checkNotNullParameter/-2060636419 (var1325 String) void)
(declare-fun cast-from-var2678-to-var1325 (var2678) var1325)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1325) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1625 String) void)
(declare-fun cast-from-var1065-to-var1625 (var1065) var1625)
(declare-fun errorCode/1195124214 (var1065) var2678)
(declare-const null-var1065 var1065)
(declare-const null-var2678 var2678)
(declare-const var2717 var1065) ; Statement: r1 := @this: okhttp3.internal.http2.StreamResetException 
(assert (not (= var2717 null-var1065)))
(declare-const var1923 var2678) ; Statement: r0 := @parameter0: okhttp3.internal.http2.ErrorCode 
(assert (not (= var1923 null-var2678)))
;(assert (var1953_checkNotNullParameter/-2060636419 (cast-from-var2678-to-var1325 var1923) "errorCode")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "errorCode") 

(declare-const var1923!1 var2678)
(declare-const var2934 String)
(define-const var988 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var988)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var988!1 String)
(assert (= var988!1 ""))
(assert true)
(define-const var1100 String (append/672562846 var988!1 "stream was reset: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("stream was reset: ") 
(declare-const var988!2 String)
(assert (= var988!2 (str.++ var988!1 "stream was reset: ")))
(assert true)
(define-const var2148 String (append/-1031950772 var1100 (cast-from-var2678-to-var1325 var1923!1))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1100!1 String)
(assert (str.prefixof var1100 var1100!1))
(assert true)
(define-const var2752 String (toString/-2075883882 var2148)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 (cast-from-var1065-to-var1625 var2717) var2752)) ; Statement: specialinvoke r1.<java.io.IOException: void <init>(java.lang.String)>($r5) 

(declare-const var2717!1 var1065)
(declare-const var2752!1 String)
(declare-const var2717!2 var1065)
(assert (not (= var2717!2 null-var1065)))
(assert (= (errorCode/1195124214 var2717!2) var1923!1)) ; Statement: r1.<okhttp3.internal.http2.StreamResetException: okhttp3.internal.http2.ErrorCode errorCode> = r0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1953_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2678-to-var1325=([okhttp3.internal.http2.ErrorCode], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void), cast-from-var1065-to-var1625=([okhttp3.internal.http2.StreamResetException], java.io.IOException), errorCode/1195124214=([okhttp3.internal.http2.StreamResetException], okhttp3.internal.http2.ErrorCode)}
; {var1065=okhttp3.internal.http2.StreamResetException, var2717=r1, var2678=okhttp3.internal.http2.ErrorCode, var1923=r0, var1953=kotlin.jvm.internal.Intrinsics, var1325=java.lang.Object, var2934="errorCode", var988=$r2, var1100=$r3, var2148=$r4, var2752=$r5, var1625=java.io.IOException}
; {okhttp3.internal.http2.StreamResetException=var1065, r1=var2717, okhttp3.internal.http2.ErrorCode=var2678, r0=var1923, kotlin.jvm.internal.Intrinsics=var1953, java.lang.Object=var1325, "errorCode"=var2934, $r2=var988, $r3=var1100, $r4=var2148, $r5=var2752, java.io.IOException=var1625}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http2.StreamResetException;	r0 := @parameter0: okhttp3.internal.http2.ErrorCode;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "errorCode");	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("stream was reset: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<java.io.IOException: void <init>(java.lang.String)>($r5);	r1.<okhttp3.internal.http2.StreamResetException: okhttp3.internal.http2.ErrorCode errorCode> = r0;	return
;block_num 1
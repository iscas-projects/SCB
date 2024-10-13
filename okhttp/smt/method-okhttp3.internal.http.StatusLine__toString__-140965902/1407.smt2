(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2193 0)
(declare-sort var3243 0)
(declare-sort var3586 0)
(declare-sort var1245 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun protocol/1718860762 (var2193) var3243)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun code/1718860762 (var2193) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun message/1718860762 (var2193) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3586_checkNotNullExpressionValue/47304269 (var1245 String) void)
(declare-fun cast-from-String-to-var1245 (String) var1245)
(declare-const null-var2193 var2193)
(declare-const var3243-HTTP_1_0 var3243)
(declare-const var3378 var2193) ; Statement: r1 := @this: okhttp3.internal.http.StatusLine 
(assert (not (= var3378 null-var2193)))
(define-const var225 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var225)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var225!1 String)
(assert (= var225!1 ""))
(define-const var2618 var3243 (protocol/1718860762 var3378)) ; Statement: $r3 = r1.<okhttp3.internal.http.StatusLine: okhttp3.Protocol protocol> 
(define-const var1176 var3243 var3243-HTTP_1_0) ; Statement: $r2 = <okhttp3.Protocol: okhttp3.Protocol HTTP_1_0> 
 ; Statement: if $r3 != $r2 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HTTP/1.1") 
(assert (not (not (= var2618 var1176)))) ; Negate: Cond: $r3 != $r2  
(assert true)
;(assert (append/672562846 var225!1 "HTTP/1.0")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HTTP/1.0") 
(declare-const var225!2 String)
(assert (= var225!2 (str.++ var225!1 "HTTP/1.0")))
 ; Statement: goto [?= $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2663 String (append/-1166366385 var225!2 32)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var225!3 String)
(assert (str.prefixof var225!2 var225!3))
(define-const var2539 Int (code/1718860762 var3378)) ; Statement: $i0 = r1.<okhttp3.internal.http.StatusLine: int code> 
(assert true)
;(assert (append/-1001720160 var2663 var2539)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2663!1 String)
(assert (str.prefixof var2663 var2663!1))
(assert true)
(define-const var220 String (append/-1166366385 var225!3 32)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var225!4 String)
(assert (str.prefixof var225!3 var225!4))
(define-const var1737 String (message/1718860762 var3378)) ; Statement: $r5 = r1.<okhttp3.internal.http.StatusLine: java.lang.String message> 
(assert true)
;(assert (append/672562846 var220 var1737)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var220!1 String)
(assert (= var220!1 (str.++ var220 var1737)))
(assert true)
(define-const var1530 String (toString/-2075883882 var225!4)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3586_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1245 var1530) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "StringBuilder().apply(builderAction).toString()") 

(declare-const var1530!1 String)
(declare-const var2450 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), protocol/1718860762=([okhttp3.internal.http.StatusLine], okhttp3.Protocol), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), code/1718860762=([okhttp3.internal.http.StatusLine], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), message/1718860762=([okhttp3.internal.http.StatusLine], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3586_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1245=([java.lang.String], java.lang.Object)}
; {var2193=okhttp3.internal.http.StatusLine, var3378=r1, var225=$r0, var3243=okhttp3.Protocol, var2618=$r3, var1176=$r2, var2663=$r4, var2539=$i0, var220=$r6, var1737=$r5, var1530=$r7, var3586=kotlin.jvm.internal.Intrinsics, var1245=java.lang.Object, var2450="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.internal.http.StatusLine=var2193, r1=var3378, $r0=var225, okhttp3.Protocol=var3243, $r3=var2618, $r2=var1176, $r4=var2663, $i0=var2539, $r6=var220, $r5=var1737, $r7=var1530, kotlin.jvm.internal.Intrinsics=var3586, java.lang.Object=var1245, "StringBuilder().apply(builderAction).toString()"=var2450}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http.StatusLine;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<okhttp3.internal.http.StatusLine: okhttp3.Protocol protocol>;	$r2 = <okhttp3.Protocol: okhttp3.Protocol HTTP_1_0>;	if $r3 != $r2 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HTTP/1.1");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HTTP/1.0");	goto [?= $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32)];	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$i0 = r1.<okhttp3.internal.http.StatusLine: int code>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r5 = r1.<okhttp3.internal.http.StatusLine: java.lang.String message>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "StringBuilder().apply(builderAction).toString()");	return $r7
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var433 0)
(declare-sort var637 0)
(declare-sort var2217 0)
(declare-sort var1389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun protocol/1718860762 (var433) var637)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun code/1718860762 (var433) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun message/1718860762 (var433) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2217_checkNotNullExpressionValue/47304269 (var1389 String) void)
(declare-fun cast-from-String-to-var1389 (String) var1389)
(declare-const null-var433 var433)
(declare-const var637-HTTP_1_0 var637)
(declare-const var3066 var433) ; Statement: r1 := @this: okhttp3.internal.http.StatusLine 
(assert (not (= var3066 null-var433)))
(define-const var2547 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2547)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2547!1 String)
(assert (= var2547!1 ""))
(define-const var1570 var637 (protocol/1718860762 var3066)) ; Statement: $r3 = r1.<okhttp3.internal.http.StatusLine: okhttp3.Protocol protocol> 
(define-const var339 var637 var637-HTTP_1_0) ; Statement: $r2 = <okhttp3.Protocol: okhttp3.Protocol HTTP_1_0> 
 ; Statement: if $r3 != $r2 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HTTP/1.1") 
(assert (not (= var1570 var339))) ; Cond: $r3 != $r2 
(assert true)
;(assert (append/672562846 var2547!1 "HTTP/1.1")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HTTP/1.1") 
(declare-const var2547!2 String)
(assert (= var2547!2 (str.++ var2547!1 "HTTP/1.1")))
(assert true) ; Non Conditional
(assert true)
(define-const var92 String (append/-1166366385 var2547!2 32)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2547!3 String)
(assert (str.prefixof var2547!2 var2547!3))
(define-const var1228 Int (code/1718860762 var3066)) ; Statement: $i0 = r1.<okhttp3.internal.http.StatusLine: int code> 
(assert true)
;(assert (append/-1001720160 var92 var1228)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var92!1 String)
(assert (str.prefixof var92 var92!1))
(assert true)
(define-const var3778 String (append/-1166366385 var2547!3 32)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2547!4 String)
(assert (str.prefixof var2547!3 var2547!4))
(define-const var2017 String (message/1718860762 var3066)) ; Statement: $r5 = r1.<okhttp3.internal.http.StatusLine: java.lang.String message> 
(assert true)
;(assert (append/672562846 var3778 var2017)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3778!1 String)
(assert (= var3778!1 (str.++ var3778 var2017)))
(assert true)
(define-const var1987 String (toString/-2075883882 var2547!4)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2217_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1389 var1987) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "StringBuilder().apply(builderAction).toString()") 

(declare-const var1987!1 String)
(declare-const var3481 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), protocol/1718860762=([okhttp3.internal.http.StatusLine], okhttp3.Protocol), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), code/1718860762=([okhttp3.internal.http.StatusLine], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), message/1718860762=([okhttp3.internal.http.StatusLine], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2217_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1389=([java.lang.String], java.lang.Object)}
; {var433=okhttp3.internal.http.StatusLine, var3066=r1, var2547=$r0, var637=okhttp3.Protocol, var1570=$r3, var339=$r2, var92=$r4, var1228=$i0, var3778=$r6, var2017=$r5, var1987=$r7, var2217=kotlin.jvm.internal.Intrinsics, var1389=java.lang.Object, var3481="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.internal.http.StatusLine=var433, r1=var3066, $r0=var2547, okhttp3.Protocol=var637, $r3=var1570, $r2=var339, $r4=var92, $i0=var1228, $r6=var3778, $r5=var2017, $r7=var1987, kotlin.jvm.internal.Intrinsics=var2217, java.lang.Object=var1389, "StringBuilder().apply(builderAction).toString()"=var3481}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http.StatusLine;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<okhttp3.internal.http.StatusLine: okhttp3.Protocol protocol>;	$r2 = <okhttp3.Protocol: okhttp3.Protocol HTTP_1_0>;	if $r3 != $r2 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HTTP/1.1");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HTTP/1.1");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$i0 = r1.<okhttp3.internal.http.StatusLine: int code>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r5 = r1.<okhttp3.internal.http.StatusLine: java.lang.String message>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "StringBuilder().apply(builderAction).toString()");	return $r7
;block_num 3
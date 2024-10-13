(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3199 0)
(declare-sort var3079 0)
(declare-sort var923 0)
(declare-sort var2472 0)
(declare-sort var3390 0)
(declare-sort var3367 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun method/-269344816 (var3199) String)
(declare-fun url/-269344816 (var3199) var3079)
(declare-fun append/-1031950772 (String var923) String)
(declare-fun cast-from-var3079-to-var923 (var3079) var923)
(declare-fun headers/-269344816 (var3199) var2472)
(declare-fun size/-585410950 (var2472) Int)
(declare-fun tags/-269344816 (var3199) var3390)
(declare-fun var3390_isEmpty/-1655013448 (var3390) Bool)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3367_checkNotNullExpressionValue/47304269 (var923 String) void)
(declare-fun cast-from-String-to-var923 (String) var923)
(declare-const null-var3199 var3199)
(declare-const var2168 var3199) ; Statement: r1 := @this: okhttp3.Request 
(assert (not (= var2168 null-var3199)))
(define-const var3101 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3101)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3101!1 String)
(assert (= var3101!1 ""))
(assert true)
;(assert (append/672562846 var3101!1 "Request{method=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request{method=") 
(declare-const var3101!2 String)
(assert (= var3101!2 (str.++ var3101!1 "Request{method=")))
(define-const var2094 String (method/-269344816 var2168)) ; Statement: $r2 = r1.<okhttp3.Request: java.lang.String method> 
(assert true)
;(assert (append/672562846 var3101!2 var2094)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3101!3 String)
(assert (= var3101!3 (str.++ var3101!2 var2094)))
(assert true)
;(assert (append/672562846 var3101!3 ", url=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", url=") 
(declare-const var3101!4 String)
(assert (= var3101!4 (str.++ var3101!3 ", url=")))
(define-const var319 var3079 (url/-269344816 var2168)) ; Statement: $r3 = r1.<okhttp3.Request: okhttp3.HttpUrl url> 
(assert true)
;(assert (append/-1031950772 var3101!4 (cast-from-var3079-to-var923 var319))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3101!5 String)
(assert (str.prefixof var3101!4 var3101!5))
(define-const var2861 var2472 (headers/-269344816 var2168)) ; Statement: $r4 = r1.<okhttp3.Request: okhttp3.Headers headers> 
(assert true)
(define-const var3262 Int (size/-585410950 var2861)) ; Statement: $i0 = virtualinvoke $r4.<okhttp3.Headers: int size()>() 
 ; Statement: if $i0 == 0 goto $r5 = r1.<okhttp3.Request: java.util.Map tags> 
(assert (= var3262 0)) ; Cond: $i0 == 0 
(define-const var3133 var3390 (tags/-269344816 var2168)) ; Statement: $r5 = r1.<okhttp3.Request: java.util.Map tags> 
(define-const var86 Bool (var3390_isEmpty/-1655013448 var3133)) ; Statement: $z0 = interfaceinvoke $r5.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var86 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var598 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (= (ite var598 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (append/-1166366385 var3101!5 125)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var3101!6 String)
(assert (str.prefixof var3101!5 var3101!6))
(assert true)
(define-const var1269 String (toString/-2075883882 var3101!6)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3367_checkNotNullExpressionValue/47304269 (cast-from-String-to-var923 var1269) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r6, "StringBuilder().apply(builderAction).toString()") 

(declare-const var1269!1 String)
(declare-const var3269 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), method/-269344816=([okhttp3.Request], java.lang.String), url/-269344816=([okhttp3.Request], okhttp3.HttpUrl), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3079-to-var923=([okhttp3.HttpUrl], java.lang.Object), headers/-269344816=([okhttp3.Request], okhttp3.Headers), size/-585410950=([okhttp3.Headers], int), tags/-269344816=([okhttp3.Request], java.util.Map), var3390_isEmpty/-1655013448=([java.util.Map], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3367_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var923=([java.lang.String], java.lang.Object)}
; {var3199=okhttp3.Request, var2168=r1, var3101=$r0, var2094=$r2, var3079=okhttp3.HttpUrl, var319=$r3, var923=java.lang.Object, var2472=okhttp3.Headers, var2861=$r4, var3262=$i0, var3390=java.util.Map, var3133=$r5, var86=$z0, var598=$z2, var1269=$r6, var3367=kotlin.jvm.internal.Intrinsics, var3269="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.Request=var3199, r1=var2168, $r0=var3101, $r2=var2094, okhttp3.HttpUrl=var3079, $r3=var319, java.lang.Object=var923, okhttp3.Headers=var2472, $r4=var2861, $i0=var3262, java.util.Map=var3390, $r5=var3133, $z0=var86, $z2=var598, $r6=var1269, kotlin.jvm.internal.Intrinsics=var3367, "StringBuilder().apply(builderAction).toString()"=var3269}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.Request;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request{method=");	$r2 = r1.<okhttp3.Request: java.lang.String method>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", url=");	$r3 = r1.<okhttp3.Request: okhttp3.HttpUrl url>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r4 = r1.<okhttp3.Request: okhttp3.Headers headers>;	$i0 = virtualinvoke $r4.<okhttp3.Headers: int size()>();	if $i0 == 0 goto $r5 = r1.<okhttp3.Request: java.util.Map tags>;	$r5 = r1.<okhttp3.Request: java.util.Map tags>;	$z0 = interfaceinvoke $r5.<java.util.Map: boolean isEmpty()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= (branch)];	if $z2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r6, "StringBuilder().apply(builderAction).toString()");	return $r6
;block_num 5
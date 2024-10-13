(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var42 0)
(declare-sort var2269 0)
(declare-sort var2995 0)
(declare-sort var2250 0)
(declare-sort var3653 0)
(declare-sort var693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun method/-269344816 (var42) String)
(declare-fun url/-269344816 (var42) var2269)
(declare-fun append/-1031950772 (String var2995) String)
(declare-fun cast-from-var2269-to-var2995 (var2269) var2995)
(declare-fun headers/-269344816 (var42) var2250)
(declare-fun size/-585410950 (var2250) Int)
(declare-fun tags/-269344816 (var42) var3653)
(declare-fun var3653_isEmpty/-1655013448 (var3653) Bool)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var693_checkNotNullExpressionValue/47304269 (var2995 String) void)
(declare-fun cast-from-String-to-var2995 (String) var2995)
(declare-const null-var42 var42)
(declare-const var238 var42) ; Statement: r1 := @this: okhttp3.Request 
(assert (not (= var238 null-var42)))
(define-const var1419 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1419)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1419!1 String)
(assert (= var1419!1 ""))
(assert true)
;(assert (append/672562846 var1419!1 "Request{method=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request{method=") 
(declare-const var1419!2 String)
(assert (= var1419!2 (str.++ var1419!1 "Request{method=")))
(define-const var1200 String (method/-269344816 var238)) ; Statement: $r2 = r1.<okhttp3.Request: java.lang.String method> 
(assert true)
;(assert (append/672562846 var1419!2 var1200)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1419!3 String)
(assert (= var1419!3 (str.++ var1419!2 var1200)))
(assert true)
;(assert (append/672562846 var1419!3 ", url=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", url=") 
(declare-const var1419!4 String)
(assert (= var1419!4 (str.++ var1419!3 ", url=")))
(define-const var1807 var2269 (url/-269344816 var238)) ; Statement: $r3 = r1.<okhttp3.Request: okhttp3.HttpUrl url> 
(assert true)
;(assert (append/-1031950772 var1419!4 (cast-from-var2269-to-var2995 var1807))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1419!5 String)
(assert (str.prefixof var1419!4 var1419!5))
(define-const var89 var2250 (headers/-269344816 var238)) ; Statement: $r4 = r1.<okhttp3.Request: okhttp3.Headers headers> 
(assert true)
(define-const var563 Int (size/-585410950 var89)) ; Statement: $i0 = virtualinvoke $r4.<okhttp3.Headers: int size()>() 
 ; Statement: if $i0 == 0 goto $r5 = r1.<okhttp3.Request: java.util.Map tags> 
(assert (= var563 0)) ; Cond: $i0 == 0 
(define-const var3618 var3653 (tags/-269344816 var238)) ; Statement: $r5 = r1.<okhttp3.Request: java.util.Map tags> 
(define-const var1217 Bool (var3653_isEmpty/-1655013448 var3618)) ; Statement: $z0 = interfaceinvoke $r5.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var1217 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2680 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (= (ite var2680 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (append/-1166366385 var1419!5 125)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var1419!6 String)
(assert (str.prefixof var1419!5 var1419!6))
(assert true)
(define-const var729 String (toString/-2075883882 var1419!6)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var693_checkNotNullExpressionValue/47304269 (cast-from-String-to-var2995 var729) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r6, "StringBuilder().apply(builderAction).toString()") 

(declare-const var729!1 String)
(declare-const var3495 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), method/-269344816=([okhttp3.Request], java.lang.String), url/-269344816=([okhttp3.Request], okhttp3.HttpUrl), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2269-to-var2995=([okhttp3.HttpUrl], java.lang.Object), headers/-269344816=([okhttp3.Request], okhttp3.Headers), size/-585410950=([okhttp3.Headers], int), tags/-269344816=([okhttp3.Request], java.util.Map), var3653_isEmpty/-1655013448=([java.util.Map], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var693_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2995=([java.lang.String], java.lang.Object)}
; {var42=okhttp3.Request, var238=r1, var1419=$r0, var1200=$r2, var2269=okhttp3.HttpUrl, var1807=$r3, var2995=java.lang.Object, var2250=okhttp3.Headers, var89=$r4, var563=$i0, var3653=java.util.Map, var3618=$r5, var1217=$z0, var2680=$z2, var729=$r6, var693=kotlin.jvm.internal.Intrinsics, var3495="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.Request=var42, r1=var238, $r0=var1419, $r2=var1200, okhttp3.HttpUrl=var2269, $r3=var1807, java.lang.Object=var2995, okhttp3.Headers=var2250, $r4=var89, $i0=var563, java.util.Map=var3653, $r5=var3618, $z0=var1217, $z2=var2680, $r6=var729, kotlin.jvm.internal.Intrinsics=var693, "StringBuilder().apply(builderAction).toString()"=var3495}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.Request;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request{method=");	$r2 = r1.<okhttp3.Request: java.lang.String method>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", url=");	$r3 = r1.<okhttp3.Request: okhttp3.HttpUrl url>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r4 = r1.<okhttp3.Request: okhttp3.Headers headers>;	$i0 = virtualinvoke $r4.<okhttp3.Headers: int size()>();	if $i0 == 0 goto $r5 = r1.<okhttp3.Request: java.util.Map tags>;	$r5 = r1.<okhttp3.Request: java.util.Map tags>;	$z0 = interfaceinvoke $r5.<java.util.Map: boolean isEmpty()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	if $z2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r6, "StringBuilder().apply(builderAction).toString()");	return $r6
;block_num 5
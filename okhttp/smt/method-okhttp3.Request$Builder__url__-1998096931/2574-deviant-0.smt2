(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2825 0)
(declare-sort var337 0)
(declare-sort var2476 0)
(declare-sort var1994 0)
(declare-sort var3709 0)
(declare-sort var1653 0)
(declare-sort var2080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2476_checkNotNullParameter/-2060636419 (var1994 String) void)
(declare-fun cast-from-String-to-var1994 (String) var1994)
(declare-fun var3709_startsWith/401446629 (String String Bool) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var2476_checkNotNullExpressionValue/47304269 (var1994 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun get/90547134 (var1653 String) var2080)
(declare-fun url/-1513984934 (var2825 var2080) var2825)
(declare-const null-var2825 var2825)
(declare-const null-String String)
(declare-const var2080-Companion var1653)
(declare-const var92 var2825) ; Statement: r1 := @this: okhttp3.Request$Builder 
(assert (not (= var92 null-var2825)))
(declare-const var3193 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3193 null-String)))
;(assert (var2476_checkNotNullParameter/-2060636419 (cast-from-String-to-var1994 var3193) "url")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "url") 

(declare-const var3193!1 String)
(declare-const var2274 String)
(define-const var2686 Bool (var3709_startsWith/401446629 var3193!1 "ws:" (ite (= 1 1) true false))) ; Statement: $z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith(java.lang.String,java.lang.String,boolean)>(r0, "ws:", 1) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith(java.lang.String,java.lang.String,boolean)>(r0, "wss:", 1) 
(assert (not (= (ite var2686 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var996 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var996)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var996!1 String)
(assert (= var996!1 ""))
(assert true)
(define-const var1224 String (append/672562846 var996!1 "http:")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("http:") 
(declare-const var996!2 String)
(assert (= var996!2 (str.++ var996!1 "http:")))
(assert (not (and true (and (>= 3 0) (>= (str.len var3193!1) 3)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var2476_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1994=([java.lang.String], java.lang.Object), var3709_startsWith/401446629=([java.lang.String, java.lang.String, boolean], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), var2476_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), get/90547134=([okhttp3.HttpUrl$Companion, java.lang.String], okhttp3.HttpUrl), url/-1513984934=([okhttp3.Request$Builder, okhttp3.HttpUrl], okhttp3.Request$Builder)}
; {var2825=okhttp3.Request$Builder, var92=r1, var3193=r0, var337=null_type, var2476=kotlin.jvm.internal.Intrinsics, var1994=java.lang.Object, var2274="url", var3709=kotlin.text.StringsKt, var2686=$z0, var996=$r6, var1224=$r8, var310=$r7, var672="this as java.lang.String).substring(startIndex)", var3240=$r9, var565=$r10, var1653=okhttp3.HttpUrl$Companion, var2080=okhttp3.HttpUrl, var595=$r11, var229=$r12, var2075=$r13}
; {okhttp3.Request$Builder=var2825, r1=var92, r0=var3193, null_type=var337, kotlin.jvm.internal.Intrinsics=var2476, java.lang.Object=var1994, "url"=var2274, kotlin.text.StringsKt=var3709, $z0=var2686, $r6=var996, $r8=var1224, $r7=var310, "this as java.lang.String).substring(startIndex)"=var672, $r9=var3240, $r10=var565, okhttp3.HttpUrl$Companion=var1653, okhttp3.HttpUrl=var2080, $r11=var595, $r12=var229, $r13=var2075}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.Request$Builder;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "url");	$z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith(java.lang.String,java.lang.String,boolean)>(r0, "ws:", 1);	if $z0 == 0 goto $z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith(java.lang.String,java.lang.String,boolean)>(r0, "wss:", 1);	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("http:");	$r7 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(3);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "this as java.lang.String).substring(startIndex)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r11 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>];	$r11 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r12 = virtualinvoke $r11.<okhttp3.HttpUrl$Companion: okhttp3.HttpUrl get(java.lang.String)>($r10);	$r13 = virtualinvoke r1.<okhttp3.Request$Builder: okhttp3.Request$Builder url(okhttp3.HttpUrl)>($r12);	return $r13
;block_num 3
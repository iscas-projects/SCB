(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1815 0)
(declare-sort var3758 0)
(declare-sort var2025 0)
(declare-sort var3442 0)
(declare-sort var2241 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun url/-122403576 (var1815) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun scheme/-122403576 (var1815) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3758_indexOf$default/-213079313 (String Int Int Bool Int var2025) Int)
(declare-fun var3442_delimiterOffset/1183305642 (String String Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var2241_checkNotNullExpressionValue/47304269 (var2025 String) void)
(declare-fun cast-from-String-to-var2025 (String) var2025)
(declare-const null-var1815 var1815)
(declare-const null-var2025 var2025)
(declare-const var3724 var1815) ; Statement: r0 := @this: okhttp3.HttpUrl 
(assert (not (= var3724 null-var1815)))
(define-const var135 String (url/-122403576 var3724)) ; Statement: $r1 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(define-const var3915 String (cast-from-String-to-String var135)) ; Statement: $r3 = (java.lang.CharSequence) $r1 
(define-const var961 String (scheme/-122403576 var3724)) ; Statement: $r2 = r0.<okhttp3.HttpUrl: java.lang.String scheme> 
(assert true)
(define-const var2833 Int (length/-134980193 var961)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var1647 Int (+ var2833 3)) ; Statement: $i1 = $i0 + 3 
(define-const var1568 Int (var3758_indexOf$default/-213079313 var3915 47 var1647 (ite (= 1 0) true false) 4 null-var2025)) ; Statement: i2 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 47, $i1, 0, 4, null) 
(define-const var485 String (url/-122403576 var3724)) ; Statement: $r5 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(define-const var1044 String (url/-122403576 var3724)) ; Statement: $r4 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert true)
(define-const var2659 Int (length/-134980193 var1044)) ; Statement: $i3 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var357 Int (var3442_delimiterOffset/1183305642 var485 "?#" var1568 var2659)) ; Statement: i4 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>($r5, "?#", i2, $i3) 
(define-const var1411 String (url/-122403576 var3724)) ; Statement: $r6 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert (and true (and (>= var1568 0) (>= (str.len var1411) var357) (>= var357 var1568))))
(define-const var3230 String (substring/-1240304868 var1411 var1568 var357)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String substring(int,int)>(i2, i4) 
;(assert (var2241_checkNotNullExpressionValue/47304269 (cast-from-String-to-var2025 var3230) "this as java.lang.String\u2026ing(startIndex, endIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "this as java.lang.String\u2026ing(startIndex, endIndex)") 

(declare-const var3230!1 String)
(declare-const var3977 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {url/-122403576=([okhttp3.HttpUrl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), scheme/-122403576=([okhttp3.HttpUrl], java.lang.String), length/-134980193=([java.lang.String], int), var3758_indexOf$default/-213079313=([java.lang.CharSequence, char, int, boolean, int, java.lang.Object], int), var3442_delimiterOffset/1183305642=([java.lang.String, java.lang.String, int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var2241_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2025=([java.lang.String], java.lang.Object)}
; {var1815=okhttp3.HttpUrl, var3724=r0, var135=$r1, var3915=$r3, var961=$r2, var2833=$i0, var1647=$i1, var3758=kotlin.text.StringsKt, var2025=java.lang.Object, var1568=i2, var485=$r5, var1044=$r4, var2659=$i3, var3442=okhttp3.internal.Util, var357=i4, var1411=$r6, var3230=$r7, var2241=kotlin.jvm.internal.Intrinsics, var3977="this as java.lang.String\u2026ing(startIndex, endIndex)"}
; {okhttp3.HttpUrl=var1815, r0=var3724, $r1=var135, $r3=var3915, $r2=var961, $i0=var2833, $i1=var1647, kotlin.text.StringsKt=var3758, java.lang.Object=var2025, i2=var1568, $r5=var485, $r4=var1044, $i3=var2659, okhttp3.internal.Util=var3442, i4=var357, $r6=var1411, $r7=var3230, kotlin.jvm.internal.Intrinsics=var2241, "this as java.lang.String\u2026ing(startIndex, endIndex)"=var3977}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: okhttp3.HttpUrl;	$r1 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r3 = (java.lang.CharSequence) $r1;	$r2 = r0.<okhttp3.HttpUrl: java.lang.String scheme>;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	$i1 = $i0 + 3;	i2 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 47, $i1, 0, 4, null);	$r5 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r4 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$i3 = virtualinvoke $r4.<java.lang.String: int length()>();	i4 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>($r5, "?#", i2, $i3);	$r6 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String substring(int,int)>(i2, i4);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "this as java.lang.String\u2026ing(startIndex, endIndex)");	return $r7
;block_num 1
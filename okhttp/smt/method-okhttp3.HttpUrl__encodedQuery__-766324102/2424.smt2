(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3219 0)
(declare-sort var1958 0)
(declare-sort var3133 0)
(declare-sort var329 0)
(declare-sort var1655 0)
(declare-sort var3322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun queryNamesAndValues/-122403576 (var3219) var1958)
(declare-fun url/-122403576 (var3219) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3133_indexOf$default/-213079313 (String Int Int Bool Int var329) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1655_delimiterOffset/1225052763 (String Int Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var3322_checkNotNullExpressionValue/47304269 (var329 String) void)
(declare-fun cast-from-String-to-var329 (String) var329)
(declare-const null-var3219 var3219)
(declare-const null-var1958 var1958)
(declare-const null-var329 var329)
(declare-const var1625 var3219) ; Statement: r0 := @this: okhttp3.HttpUrl 
(assert (not (= var1625 null-var3219)))
(define-const var3248 var1958 (queryNamesAndValues/-122403576 var1625)) ; Statement: $r1 = r0.<okhttp3.HttpUrl: java.util.List queryNamesAndValues> 
 ; Statement: if $r1 != null goto $r2 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert (not (= var3248 null-var1958))) ; Cond: $r1 != null 
(define-const var3316 String (url/-122403576 var1625)) ; Statement: $r2 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(define-const var3079 String (cast-from-String-to-String var3316)) ; Statement: $r3 = (java.lang.CharSequence) $r2 
(define-const var3684 Int (var3133_indexOf$default/-213079313 var3079 63 0 (ite (= 1 0) true false) 6 null-var329)) ; Statement: $i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 63, 0, 0, 6, null) 
(define-const var2995 Int (+ var3684 1)) ; Statement: i1 = $i0 + 1 
(define-const var3649 String (url/-122403576 var1625)) ; Statement: $r5 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(define-const var1704 String (url/-122403576 var1625)) ; Statement: $r4 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert true)
(define-const var109 Int (length/-134980193 var1704)) ; Statement: $i2 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var458 Int (var1655_delimiterOffset/1225052763 var3649 35 var2995 var109)) ; Statement: i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,char,int,int)>($r5, 35, i1, $i2) 
(define-const var2145 String (url/-122403576 var1625)) ; Statement: $r6 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert (and true (and (>= var2995 0) (>= (str.len var2145) var458) (>= var458 var2995))))
(define-const var2362 String (substring/-1240304868 var2145 var2995 var458)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String substring(int,int)>(i1, i3) 
;(assert (var3322_checkNotNullExpressionValue/47304269 (cast-from-String-to-var329 var2362) "this as java.lang.String\u2026ing(startIndex, endIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "this as java.lang.String\u2026ing(startIndex, endIndex)") 

(declare-const var2362!1 String)
(declare-const var1665 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {queryNamesAndValues/-122403576=([okhttp3.HttpUrl], java.util.List), url/-122403576=([okhttp3.HttpUrl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3133_indexOf$default/-213079313=([java.lang.CharSequence, char, int, boolean, int, java.lang.Object], int), length/-134980193=([java.lang.String], int), var1655_delimiterOffset/1225052763=([java.lang.String, char, int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var3322_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var329=([java.lang.String], java.lang.Object)}
; {var3219=okhttp3.HttpUrl, var1625=r0, var1958=java.util.List, var3248=$r1, var3316=$r2, var3079=$r3, var3133=kotlin.text.StringsKt, var329=java.lang.Object, var3684=$i0, var2995=i1, var3649=$r5, var1704=$r4, var109=$i2, var1655=okhttp3.internal.Util, var458=i3, var2145=$r6, var2362=$r7, var3322=kotlin.jvm.internal.Intrinsics, var1665="this as java.lang.String\u2026ing(startIndex, endIndex)"}
; {okhttp3.HttpUrl=var3219, r0=var1625, java.util.List=var1958, $r1=var3248, $r2=var3316, $r3=var3079, kotlin.text.StringsKt=var3133, java.lang.Object=var329, $i0=var3684, i1=var2995, $r5=var3649, $r4=var1704, $i2=var109, okhttp3.internal.Util=var1655, i3=var458, $r6=var2145, $r7=var2362, kotlin.jvm.internal.Intrinsics=var3322, "this as java.lang.String\u2026ing(startIndex, endIndex)"=var1665}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: okhttp3.HttpUrl;	$r1 = r0.<okhttp3.HttpUrl: java.util.List queryNamesAndValues>;	if $r1 != null goto $r2 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r2 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r3 = (java.lang.CharSequence) $r2;	$i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 63, 0, 0, 6, null);	i1 = $i0 + 1;	$r5 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r4 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$i2 = virtualinvoke $r4.<java.lang.String: int length()>();	i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,char,int,int)>($r5, 35, i1, $i2);	$r6 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String substring(int,int)>(i1, i3);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "this as java.lang.String\u2026ing(startIndex, endIndex)");	return $r7
;block_num 2
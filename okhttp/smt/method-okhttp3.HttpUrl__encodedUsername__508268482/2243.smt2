(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3081 0)
(declare-sort var1533 0)
(declare-sort var699 0)
(declare-sort var1223 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun username/-122403576 (var3081) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun scheme/-122403576 (var3081) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun url/-122403576 (var3081) String)
(declare-fun var1533_delimiterOffset/1183305642 (String String Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var699_checkNotNullExpressionValue/47304269 (var1223 String) void)
(declare-fun cast-from-String-to-var1223 (String) var1223)
(declare-const null-var3081 var3081)
(declare-const var3137 var3081) ; Statement: r0 := @this: okhttp3.HttpUrl 
(assert (not (= var3137 null-var3081)))
(define-const var3108 String (username/-122403576 var3137)) ; Statement: $r1 = r0.<okhttp3.HttpUrl: java.lang.String username> 
(define-const var3362 String (cast-from-String-to-String var3108)) ; Statement: $r2 = (java.lang.CharSequence) $r1 
(define-const var2240 Int (String_length/-667254855 var3362)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (= var2240 0))) ; Cond: $i0 != 0 
(define-const var1164 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String scheme> 
(assert (= (ite var1164 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1699 String (scheme/-122403576 var3137)) ; Statement: $r3 = r0.<okhttp3.HttpUrl: java.lang.String scheme> 
(assert true)
(define-const var2191 Int (length/-134980193 var1699)) ; Statement: $i1 = virtualinvoke $r3.<java.lang.String: int length()>() 
(define-const var2682 Int (+ var2191 3)) ; Statement: i2 = $i1 + 3 
(define-const var1003 String (url/-122403576 var3137)) ; Statement: $r5 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(define-const var2160 String (url/-122403576 var3137)) ; Statement: $r4 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert true)
(define-const var2282 Int (length/-134980193 var2160)) ; Statement: $i3 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var290 Int (var1533_delimiterOffset/1183305642 var1003 ":@" var2682 var2282)) ; Statement: i4 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>($r5, ":@", i2, $i3) 
(define-const var2865 String (url/-122403576 var3137)) ; Statement: $r6 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert (and true (and (>= var2682 0) (>= (str.len var2865) var290) (>= var290 var2682))))
(define-const var2551 String (substring/-1240304868 var2865 var2682 var290)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String substring(int,int)>(i2, i4) 
;(assert (var699_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1223 var2551) "this as java.lang.String\u2026ing(startIndex, endIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "this as java.lang.String\u2026ing(startIndex, endIndex)") 

(declare-const var2551!1 String)
(declare-const var705 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {username/-122403576=([okhttp3.HttpUrl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), scheme/-122403576=([okhttp3.HttpUrl], java.lang.String), length/-134980193=([java.lang.String], int), url/-122403576=([okhttp3.HttpUrl], java.lang.String), var1533_delimiterOffset/1183305642=([java.lang.String, java.lang.String, int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var699_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1223=([java.lang.String], java.lang.Object)}
; {var3081=okhttp3.HttpUrl, var3137=r0, var3108=$r1, var3362=$r2, var2240=$i0, var1164=$z0, var1699=$r3, var2191=$i1, var2682=i2, var1003=$r5, var2160=$r4, var2282=$i3, var1533=okhttp3.internal.Util, var290=i4, var2865=$r6, var2551=$r7, var699=kotlin.jvm.internal.Intrinsics, var1223=java.lang.Object, var705="this as java.lang.String\u2026ing(startIndex, endIndex)"}
; {okhttp3.HttpUrl=var3081, r0=var3137, $r1=var3108, $r2=var3362, $i0=var2240, $z0=var1164, $r3=var1699, $i1=var2191, i2=var2682, $r5=var1003, $r4=var2160, $i3=var2282, okhttp3.internal.Util=var1533, i4=var290, $r6=var2865, $r7=var2551, kotlin.jvm.internal.Intrinsics=var699, java.lang.Object=var1223, "this as java.lang.String\u2026ing(startIndex, endIndex)"=var705}
;seq <java.lang.CharSequence: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: okhttp3.HttpUrl;	$r1 = r0.<okhttp3.HttpUrl: java.lang.String username>;	$r2 = (java.lang.CharSequence) $r1;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 0;	if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String scheme>;	$r3 = r0.<okhttp3.HttpUrl: java.lang.String scheme>;	$i1 = virtualinvoke $r3.<java.lang.String: int length()>();	i2 = $i1 + 3;	$r5 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r4 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$i3 = virtualinvoke $r4.<java.lang.String: int length()>();	i4 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>($r5, ":@", i2, $i3);	$r6 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String substring(int,int)>(i2, i4);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "this as java.lang.String\u2026ing(startIndex, endIndex)");	return $r7
;block_num 4
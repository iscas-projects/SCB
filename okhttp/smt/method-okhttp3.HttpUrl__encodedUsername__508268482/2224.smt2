(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1856 0)
(declare-sort var3660 0)
(declare-sort var1791 0)
(declare-sort var20 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun username/-122403576 (var1856) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun scheme/-122403576 (var1856) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun url/-122403576 (var1856) String)
(declare-fun var3660_delimiterOffset/1183305642 (String String Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var1791_checkNotNullExpressionValue/47304269 (var20 String) void)
(declare-fun cast-from-String-to-var20 (String) var20)
(declare-const null-var1856 var1856)
(declare-const var1911 var1856) ; Statement: r0 := @this: okhttp3.HttpUrl 
(assert (not (= var1911 null-var1856)))
(define-const var3369 String (username/-122403576 var1911)) ; Statement: $r1 = r0.<okhttp3.HttpUrl: java.lang.String username> 
(define-const var3339 String (cast-from-String-to-String var3369)) ; Statement: $r2 = (java.lang.CharSequence) $r1 
(define-const var672 Int (String_length/-667254855 var3339)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (not (= var672 0)))) ; Negate: Cond: $i0 != 0  
(define-const var3874 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String scheme> 
(assert (= (ite var3874 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1847 String (scheme/-122403576 var1911)) ; Statement: $r3 = r0.<okhttp3.HttpUrl: java.lang.String scheme> 
(assert true)
(define-const var683 Int (length/-134980193 var1847)) ; Statement: $i1 = virtualinvoke $r3.<java.lang.String: int length()>() 
(define-const var624 Int (+ var683 3)) ; Statement: i2 = $i1 + 3 
(define-const var1972 String (url/-122403576 var1911)) ; Statement: $r5 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(define-const var3286 String (url/-122403576 var1911)) ; Statement: $r4 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert true)
(define-const var1376 Int (length/-134980193 var3286)) ; Statement: $i3 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var2719 Int (var3660_delimiterOffset/1183305642 var1972 ":@" var624 var1376)) ; Statement: i4 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>($r5, ":@", i2, $i3) 
(define-const var3069 String (url/-122403576 var1911)) ; Statement: $r6 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert (and true (and (>= var624 0) (>= (str.len var3069) var2719) (>= var2719 var624))))
(define-const var732 String (substring/-1240304868 var3069 var624 var2719)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String substring(int,int)>(i2, i4) 
;(assert (var1791_checkNotNullExpressionValue/47304269 (cast-from-String-to-var20 var732) "this as java.lang.String\u2026ing(startIndex, endIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "this as java.lang.String\u2026ing(startIndex, endIndex)") 

(declare-const var732!1 String)
(declare-const var1561 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {username/-122403576=([okhttp3.HttpUrl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), scheme/-122403576=([okhttp3.HttpUrl], java.lang.String), length/-134980193=([java.lang.String], int), url/-122403576=([okhttp3.HttpUrl], java.lang.String), var3660_delimiterOffset/1183305642=([java.lang.String, java.lang.String, int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var1791_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var20=([java.lang.String], java.lang.Object)}
; {var1856=okhttp3.HttpUrl, var1911=r0, var3369=$r1, var3339=$r2, var672=$i0, var3874=$z0, var1847=$r3, var683=$i1, var624=i2, var1972=$r5, var3286=$r4, var1376=$i3, var3660=okhttp3.internal.Util, var2719=i4, var3069=$r6, var732=$r7, var1791=kotlin.jvm.internal.Intrinsics, var20=java.lang.Object, var1561="this as java.lang.String\u2026ing(startIndex, endIndex)"}
; {okhttp3.HttpUrl=var1856, r0=var1911, $r1=var3369, $r2=var3339, $i0=var672, $z0=var3874, $r3=var1847, $i1=var683, i2=var624, $r5=var1972, $r4=var3286, $i3=var1376, okhttp3.internal.Util=var3660, i4=var2719, $r6=var3069, $r7=var732, kotlin.jvm.internal.Intrinsics=var1791, java.lang.Object=var20, "this as java.lang.String\u2026ing(startIndex, endIndex)"=var1561}
;seq <java.lang.CharSequence: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: okhttp3.HttpUrl;	$r1 = r0.<okhttp3.HttpUrl: java.lang.String username>;	$r2 = (java.lang.CharSequence) $r1;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String scheme>;	$r3 = r0.<okhttp3.HttpUrl: java.lang.String scheme>;	$i1 = virtualinvoke $r3.<java.lang.String: int length()>();	i2 = $i1 + 3;	$r5 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r4 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$i3 = virtualinvoke $r4.<java.lang.String: int length()>();	i4 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>($r5, ":@", i2, $i3);	$r6 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String substring(int,int)>(i2, i4);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "this as java.lang.String\u2026ing(startIndex, endIndex)");	return $r7
;block_num 4
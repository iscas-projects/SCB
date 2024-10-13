(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var176 0)
(declare-sort var3362 0)
(declare-sort var2452 0)
(declare-sort var382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun password/-122403576 (var176) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun url/-122403576 (var176) String)
(declare-fun scheme/-122403576 (var176) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3362_indexOf$default/-213079313 (String Int Int Bool Int var2452) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var382_checkNotNullExpressionValue/47304269 (var2452 String) void)
(declare-fun cast-from-String-to-var2452 (String) var2452)
(declare-const null-var176 var176)
(declare-const null-var2452 var2452)
(declare-const var1735 var176) ; Statement: r0 := @this: okhttp3.HttpUrl 
(assert (not (= var1735 null-var176)))
(define-const var2250 String (password/-122403576 var1735)) ; Statement: $r1 = r0.<okhttp3.HttpUrl: java.lang.String password> 
(define-const var1558 String (cast-from-String-to-String var2250)) ; Statement: $r2 = (java.lang.CharSequence) $r1 
(define-const var413 Int (String_length/-667254855 var1558)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (= var413 0))) ; Cond: $i0 != 0 
(define-const var1352 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert (= (ite var1352 1 0) 0)) ; Cond: $z0 == 0 
(define-const var583 String (url/-122403576 var1735)) ; Statement: $r3 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(define-const var2205 String (cast-from-String-to-String var583)) ; Statement: $r5 = (java.lang.CharSequence) $r3 
(define-const var496 String (scheme/-122403576 var1735)) ; Statement: $r4 = r0.<okhttp3.HttpUrl: java.lang.String scheme> 
(assert true)
(define-const var772 Int (length/-134980193 var496)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var1322 Int (+ var772 3)) ; Statement: $i2 = $i1 + 3 
(define-const var1144 Int (var3362_indexOf$default/-213079313 var2205 58 var1322 (ite (= 1 0) true false) 4 null-var2452)) ; Statement: $i3 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r5, 58, $i2, 0, 4, null) 
(define-const var1479 Int (+ var1144 1)) ; Statement: i4 = $i3 + 1 
(define-const var2525 String (url/-122403576 var1735)) ; Statement: $r6 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(define-const var3321 String (cast-from-String-to-String var2525)) ; Statement: $r7 = (java.lang.CharSequence) $r6 
(define-const var876 Int (var3362_indexOf$default/-213079313 var3321 64 0 (ite (= 1 0) true false) 6 null-var2452)) ; Statement: i5 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r7, 64, 0, 0, 6, null) 
(define-const var1102 String (url/-122403576 var1735)) ; Statement: $r8 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert (not (and true (and (>= var1479 0) (>= (str.len var1102) var876) (>= var876 var1479)))))
(check-sat)
(get-model)
(get-unsat-core)
; {password/-122403576=([okhttp3.HttpUrl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), url/-122403576=([okhttp3.HttpUrl], java.lang.String), scheme/-122403576=([okhttp3.HttpUrl], java.lang.String), length/-134980193=([java.lang.String], int), var3362_indexOf$default/-213079313=([java.lang.CharSequence, char, int, boolean, int, java.lang.Object], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var382_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2452=([java.lang.String], java.lang.Object)}
; {var176=okhttp3.HttpUrl, var1735=r0, var2250=$r1, var1558=$r2, var413=$i0, var1352=$z0, var583=$r3, var2205=$r5, var496=$r4, var772=$i1, var1322=$i2, var3362=kotlin.text.StringsKt, var2452=java.lang.Object, var1144=$i3, var1479=i4, var2525=$r6, var3321=$r7, var876=i5, var1102=$r8, var2990=$r9, var382=kotlin.jvm.internal.Intrinsics, var617="this as java.lang.String\u2026ing(startIndex, endIndex)"}
; {okhttp3.HttpUrl=var176, r0=var1735, $r1=var2250, $r2=var1558, $i0=var413, $z0=var1352, $r3=var583, $r5=var2205, $r4=var496, $i1=var772, $i2=var1322, kotlin.text.StringsKt=var3362, java.lang.Object=var2452, $i3=var1144, i4=var1479, $r6=var2525, $r7=var3321, i5=var876, $r8=var1102, $r9=var2990, kotlin.jvm.internal.Intrinsics=var382, "this as java.lang.String\u2026ing(startIndex, endIndex)"=var617}
;seq <java.lang.CharSequence: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: okhttp3.HttpUrl;	$r1 = r0.<okhttp3.HttpUrl: java.lang.String password>;	$r2 = (java.lang.CharSequence) $r1;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 0;	if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r3 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r5 = (java.lang.CharSequence) $r3;	$r4 = r0.<okhttp3.HttpUrl: java.lang.String scheme>;	$i1 = virtualinvoke $r4.<java.lang.String: int length()>();	$i2 = $i1 + 3;	$i3 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r5, 58, $i2, 0, 4, null);	i4 = $i3 + 1;	$r6 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r7 = (java.lang.CharSequence) $r6;	i5 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r7, 64, 0, 0, 6, null);	$r8 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(i4, i5);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r9, "this as java.lang.String\u2026ing(startIndex, endIndex)");	return $r9
;block_num 4
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var444 0)
(declare-sort var1707 0)
(declare-sort var2746 0)
(declare-sort var1714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun password/-122403576 (var444) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun url/-122403576 (var444) String)
(declare-fun scheme/-122403576 (var444) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1707_indexOf$default/-213079313 (String Int Int Bool Int var2746) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var1714_checkNotNullExpressionValue/47304269 (var2746 String) void)
(declare-fun cast-from-String-to-var2746 (String) var2746)
(declare-const null-var444 var444)
(declare-const null-var2746 var2746)
(declare-const var1894 var444) ; Statement: r0 := @this: okhttp3.HttpUrl 
(assert (not (= var1894 null-var444)))
(define-const var1812 String (password/-122403576 var1894)) ; Statement: $r1 = r0.<okhttp3.HttpUrl: java.lang.String password> 
(define-const var2874 String (cast-from-String-to-String var1812)) ; Statement: $r2 = (java.lang.CharSequence) $r1 
(define-const var272 Int (String_length/-667254855 var2874)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (not (= var272 0)))) ; Negate: Cond: $i0 != 0  
(define-const var3530 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert (= (ite var3530 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1554 String (url/-122403576 var1894)) ; Statement: $r3 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(define-const var1095 String (cast-from-String-to-String var1554)) ; Statement: $r5 = (java.lang.CharSequence) $r3 
(define-const var1461 String (scheme/-122403576 var1894)) ; Statement: $r4 = r0.<okhttp3.HttpUrl: java.lang.String scheme> 
(assert true)
(define-const var649 Int (length/-134980193 var1461)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var3928 Int (+ var649 3)) ; Statement: $i2 = $i1 + 3 
(define-const var1732 Int (var1707_indexOf$default/-213079313 var1095 58 var3928 (ite (= 1 0) true false) 4 null-var2746)) ; Statement: $i3 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r5, 58, $i2, 0, 4, null) 
(define-const var754 Int (+ var1732 1)) ; Statement: i4 = $i3 + 1 
(define-const var2727 String (url/-122403576 var1894)) ; Statement: $r6 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(define-const var2592 String (cast-from-String-to-String var2727)) ; Statement: $r7 = (java.lang.CharSequence) $r6 
(define-const var1118 Int (var1707_indexOf$default/-213079313 var2592 64 0 (ite (= 1 0) true false) 6 null-var2746)) ; Statement: i5 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r7, 64, 0, 0, 6, null) 
(define-const var2677 String (url/-122403576 var1894)) ; Statement: $r8 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert (not (and true (and (>= var754 0) (>= (str.len var2677) var1118) (>= var1118 var754)))))
(check-sat)
(get-model)
(get-unsat-core)
; {password/-122403576=([okhttp3.HttpUrl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), url/-122403576=([okhttp3.HttpUrl], java.lang.String), scheme/-122403576=([okhttp3.HttpUrl], java.lang.String), length/-134980193=([java.lang.String], int), var1707_indexOf$default/-213079313=([java.lang.CharSequence, char, int, boolean, int, java.lang.Object], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var1714_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2746=([java.lang.String], java.lang.Object)}
; {var444=okhttp3.HttpUrl, var1894=r0, var1812=$r1, var2874=$r2, var272=$i0, var3530=$z0, var1554=$r3, var1095=$r5, var1461=$r4, var649=$i1, var3928=$i2, var1707=kotlin.text.StringsKt, var2746=java.lang.Object, var1732=$i3, var754=i4, var2727=$r6, var2592=$r7, var1118=i5, var2677=$r8, var2621=$r9, var1714=kotlin.jvm.internal.Intrinsics, var1133="this as java.lang.String\u2026ing(startIndex, endIndex)"}
; {okhttp3.HttpUrl=var444, r0=var1894, $r1=var1812, $r2=var2874, $i0=var272, $z0=var3530, $r3=var1554, $r5=var1095, $r4=var1461, $i1=var649, $i2=var3928, kotlin.text.StringsKt=var1707, java.lang.Object=var2746, $i3=var1732, i4=var754, $r6=var2727, $r7=var2592, i5=var1118, $r8=var2677, $r9=var2621, kotlin.jvm.internal.Intrinsics=var1714, "this as java.lang.String\u2026ing(startIndex, endIndex)"=var1133}
;seq <java.lang.CharSequence: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: okhttp3.HttpUrl;	$r1 = r0.<okhttp3.HttpUrl: java.lang.String password>;	$r2 = (java.lang.CharSequence) $r1;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r3 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r5 = (java.lang.CharSequence) $r3;	$r4 = r0.<okhttp3.HttpUrl: java.lang.String scheme>;	$i1 = virtualinvoke $r4.<java.lang.String: int length()>();	$i2 = $i1 + 3;	$i3 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r5, 58, $i2, 0, 4, null);	i4 = $i3 + 1;	$r6 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r7 = (java.lang.CharSequence) $r6;	i5 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r7, 64, 0, 0, 6, null);	$r8 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(i4, i5);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r9, "this as java.lang.String\u2026ing(startIndex, endIndex)");	return $r9
;block_num 4
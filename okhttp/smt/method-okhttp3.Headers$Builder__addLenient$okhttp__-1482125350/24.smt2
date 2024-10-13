(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2622 0)
(declare-sort var215 0)
(declare-sort var1012 0)
(declare-sort var1415 0)
(declare-sort var1929 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1012_checkNotNullParameter/-2060636419 (var1415 String) void)
(declare-fun cast-from-String-to-var1415 (String) var1415)
(define-fun cast-from-var2622-to-var2622 ((arg var2622)) var2622 arg)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1929_indexOf$default/-213079313 (String Int Int Bool Int var1415) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var1012_checkNotNullExpressionValue/47304269 (var1415 String) void)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun addLenient$okhttp/-1122601087 (var2622 String String) var2622)
(declare-const null-var2622 var2622)
(declare-const null-String String)
(declare-const null-var1415 var1415)
(declare-const var1297 var2622) ; Statement: r1 := @this: okhttp3.Headers$Builder 
(assert (not (= var1297 null-var2622)))
(declare-const var2312 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2312 null-String)))
;(assert (var1012_checkNotNullParameter/-2060636419 (cast-from-String-to-var1415 var2312) "line")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "line") 

(declare-const var2312!1 String)
(declare-const var3548 String)
(define-const var1627 var2622 (cast-from-var2622-to-var2622 var1297)) ; Statement: $r2 = (okhttp3.Headers$Builder) r1 
(define-const var1881 String (cast-from-String-to-String var2312!1)) ; Statement: $r3 = (java.lang.CharSequence) r0 
(define-const var1155 Int (var1929_indexOf$default/-213079313 var1881 58 1 (ite (= 1 0) true false) 4 null-var1415)) ; Statement: i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 58, 1, 0, 4, null) 
(define-const var0 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i0 == $i4 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var1155 var0))) ; Negate: Cond: i0 == $i4  
(assert (and true (and (>= 0 0) (>= (str.len var2312!1) var1155) (>= var1155 0))))
(define-const var1696 String (substring/-1240304868 var2312!1 0 var1155)) ; Statement: $r5 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
;(assert (var1012_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1415 var1696) "this as java.lang.String\u2026ing(startIndex, endIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r5, "this as java.lang.String\u2026ing(startIndex, endIndex)") 

(declare-const var1696!1 String)
(declare-const var1191 String)
(define-const var2961 Int (+ var1155 1)) ; Statement: $i2 = i0 + 1 
(assert (and true (and (>= var2961 0) (>= (str.len var2312!1) var2961))))
(define-const var801 String (substring/850833817 var2312!1 var2961)) ; Statement: $r6 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i2) 
;(assert (var1012_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1415 var801) "this as java.lang.String).substring(startIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r6, "this as java.lang.String).substring(startIndex)") 

(declare-const var801!1 String)
(declare-const var3724 String)
(assert true)
;(assert (addLenient$okhttp/-1122601087 var1627 var1696!1 var801!1)) ; Statement: virtualinvoke $r2.<okhttp3.Headers$Builder: okhttp3.Headers$Builder addLenient$okhttp(java.lang.String,java.lang.String)>($r5, $r6) 

(declare-const var1627!1 var2622)
(declare-const var1696!2 String)
(declare-const var801!2 String)
 ; Statement: goto [?= $r7 = (okhttp3.Headers$Builder) r1] 
(assert true) ; Non Conditional
(define-const var3902 var2622 (cast-from-var2622-to-var2622 var1297)) ; Statement: $r7 = (okhttp3.Headers$Builder) r1 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1012_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1415=([java.lang.String], java.lang.Object), cast-from-var2622-to-var2622=([okhttp3.Headers$Builder], okhttp3.Headers$Builder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1929_indexOf$default/-213079313=([java.lang.CharSequence, char, int, boolean, int, java.lang.Object], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var1012_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), substring/850833817=([java.lang.String, int], java.lang.String), addLenient$okhttp/-1122601087=([okhttp3.Headers$Builder, java.lang.String, java.lang.String], okhttp3.Headers$Builder)}
; {var2622=okhttp3.Headers$Builder, var1297=r1, var2312=r0, var215=null_type, var1012=kotlin.jvm.internal.Intrinsics, var1415=java.lang.Object, var3548="line", var1627=$r2, var1881=$r3, var1929=kotlin.text.StringsKt, var1155=i0, var0=$i4, var1696=$r5, var1191="this as java.lang.String\u2026ing(startIndex, endIndex)", var2961=$i2, var801=$r6, var3724="this as java.lang.String).substring(startIndex)", var3902=$r7}
; {okhttp3.Headers$Builder=var2622, r1=var1297, r0=var2312, null_type=var215, kotlin.jvm.internal.Intrinsics=var1012, java.lang.Object=var1415, "line"=var3548, $r2=var1627, $r3=var1881, kotlin.text.StringsKt=var1929, i0=var1155, $i4=var0, $r5=var1696, "this as java.lang.String\u2026ing(startIndex, endIndex)"=var1191, $i2=var2961, $r6=var801, "this as java.lang.String).substring(startIndex)"=var3724, $r7=var3902}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: okhttp3.Headers$Builder;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "line");	$r2 = (okhttp3.Headers$Builder) r1;	$r3 = (java.lang.CharSequence) r0;	i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 58, 1, 0, 4, null);	$i4 = (int) -1;	if i0 == $i4 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$r5 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r5, "this as java.lang.String\u2026ing(startIndex, endIndex)");	$i2 = i0 + 1;	$r6 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i2);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r6, "this as java.lang.String).substring(startIndex)");	virtualinvoke $r2.<okhttp3.Headers$Builder: okhttp3.Headers$Builder addLenient$okhttp(java.lang.String,java.lang.String)>($r5, $r6);	goto [?= $r7 = (okhttp3.Headers$Builder) r1];	$r7 = (okhttp3.Headers$Builder) r1;	return $r7
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1266 0)
(declare-sort var2749 0)
(declare-sort var1783 0)
(declare-sort var1599 0)
(declare-sort var1757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1783_checkNotNullParameter/-2060636419 (var1599 String) void)
(declare-fun cast-from-String-to-var1599 (String) var1599)
(define-fun cast-from-var1266-to-var1266 ((arg var1266)) var1266 arg)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1757_indexOf$default/-213079313 (String Int Int Bool Int var1599) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var1783_checkNotNullExpressionValue/47304269 (var1599 String) void)
(declare-fun var1757_trim/-1104071662 (String) String)
(declare-fun toString/-522406933 (var1599) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun add/1973874160 (var1266 String String) var1266)
(declare-const null-var1266 var1266)
(declare-const null-String String)
(declare-const null-var1599 var1599)
(declare-const var2044 var1266) ; Statement: r1 := @this: okhttp3.Headers$Builder 
(assert (not (= var2044 null-var1266)))
(declare-const var327 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var327 null-String)))
;(assert (var1783_checkNotNullParameter/-2060636419 (cast-from-String-to-var1599 var327) "line")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "line") 

(declare-const var327!1 String)
(declare-const var2684 String)
(define-const var161 var1266 (cast-from-var1266-to-var1266 var2044)) ; Statement: $r2 = (okhttp3.Headers$Builder) r1 
(define-const var2504 String (cast-from-String-to-String var327!1)) ; Statement: $r3 = (java.lang.CharSequence) r0 
(define-const var1772 Int (var1757_indexOf$default/-213079313 var2504 58 0 (ite (= 1 0) true false) 6 null-var1599)) ; Statement: i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 58, 0, 0, 6, null) 
(define-const var795 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 == $i3 goto $z0 = 0 
(assert (= var1772 var795)) ; Cond: i0 == $i3 
(define-const var2822 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= (ite var2822 1 0) 0))) ; Cond: $z0 != 0 
(assert (and true (and (>= 0 0) (>= (str.len var327!1) var1772) (>= var1772 0))))
(define-const var2945 String (substring/-1240304868 var327!1 0 var1772)) ; Statement: $r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
;(assert (var1783_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1599 var2945) "this as java.lang.String\u2026ing(startIndex, endIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r4, "this as java.lang.String\u2026ing(startIndex, endIndex)") 

(declare-const var2945!1 String)
(declare-const var2936 String)
(define-const var825 String (cast-from-String-to-String var2945!1)) ; Statement: $r5 = (java.lang.CharSequence) $r4 
(define-const var2675 String (var1757_trim/-1104071662 var825)) ; Statement: $r6 = staticinvoke <kotlin.text.StringsKt: java.lang.CharSequence trim(java.lang.CharSequence)>($r5) 
(assert true)
(define-const var862 String (toString/-522406933 (cast-from-String-to-var1599 var2675))) ; Statement: $r8 = virtualinvoke $r6.<java.lang.Object: java.lang.String toString()>() 
(define-const var2370 Int (+ var1772 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var2370 0) (>= (str.len var327!1) var2370))))
(define-const var919 String (substring/850833817 var327!1 var2370)) ; Statement: $r7 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
;(assert (var1783_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1599 var919) "this as java.lang.String).substring(startIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "this as java.lang.String).substring(startIndex)") 

(declare-const var919!1 String)
(declare-const var2269 String)
(assert true)
;(assert (add/1973874160 var161 var862 var919!1)) ; Statement: virtualinvoke $r2.<okhttp3.Headers$Builder: okhttp3.Headers$Builder add(java.lang.String,java.lang.String)>($r8, $r7) 

(declare-const var161!1 var1266)
(declare-const var862!1 String)
(declare-const var919!2 String)
(define-const var902 var1266 (cast-from-var1266-to-var1266 var2044)) ; Statement: $r9 = (okhttp3.Headers$Builder) r1 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1783_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1599=([java.lang.String], java.lang.Object), cast-from-var1266-to-var1266=([okhttp3.Headers$Builder], okhttp3.Headers$Builder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1757_indexOf$default/-213079313=([java.lang.CharSequence, char, int, boolean, int, java.lang.Object], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var1783_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), var1757_trim/-1104071662=([java.lang.CharSequence], java.lang.CharSequence), toString/-522406933=([java.lang.Object], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), add/1973874160=([okhttp3.Headers$Builder, java.lang.String, java.lang.String], okhttp3.Headers$Builder)}
; {var1266=okhttp3.Headers$Builder, var2044=r1, var327=r0, var2749=null_type, var1783=kotlin.jvm.internal.Intrinsics, var1599=java.lang.Object, var2684="line", var161=$r2, var2504=$r3, var1757=kotlin.text.StringsKt, var1772=i0, var795=$i3, var2822=$z0, var2945=$r4, var2936="this as java.lang.String\u2026ing(startIndex, endIndex)", var825=$r5, var2675=$r6, var862=$r8, var2370=$i1, var919=$r7, var2269="this as java.lang.String).substring(startIndex)", var902=$r9}
; {okhttp3.Headers$Builder=var1266, r1=var2044, r0=var327, null_type=var2749, kotlin.jvm.internal.Intrinsics=var1783, java.lang.Object=var1599, "line"=var2684, $r2=var161, $r3=var2504, kotlin.text.StringsKt=var1757, i0=var1772, $i3=var795, $z0=var2822, $r4=var2945, "this as java.lang.String\u2026ing(startIndex, endIndex)"=var2936, $r5=var825, $r6=var2675, $r8=var862, $i1=var2370, $r7=var919, "this as java.lang.String).substring(startIndex)"=var2269, $r9=var902}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: okhttp3.Headers$Builder;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "line");	$r2 = (okhttp3.Headers$Builder) r1;	$r3 = (java.lang.CharSequence) r0;	i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 58, 0, 0, 6, null);	$i3 = (int) -1;	if i0 == $i3 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r4, "this as java.lang.String\u2026ing(startIndex, endIndex)");	$r5 = (java.lang.CharSequence) $r4;	$r6 = staticinvoke <kotlin.text.StringsKt: java.lang.CharSequence trim(java.lang.CharSequence)>($r5);	$r8 = virtualinvoke $r6.<java.lang.Object: java.lang.String toString()>();	$i1 = i0 + 1;	$r7 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "this as java.lang.String).substring(startIndex)");	virtualinvoke $r2.<okhttp3.Headers$Builder: okhttp3.Headers$Builder add(java.lang.String,java.lang.String)>($r8, $r7);	$r9 = (okhttp3.Headers$Builder) r1;	return $r9
;block_num 4
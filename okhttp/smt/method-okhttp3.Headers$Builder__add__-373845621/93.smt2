(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3263 0)
(declare-sort var530 0)
(declare-sort var3289 0)
(declare-sort var3399 0)
(declare-sort var700 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3289_checkNotNullParameter/-2060636419 (var3399 String) void)
(declare-fun cast-from-String-to-var3399 (String) var3399)
(define-fun cast-from-var3263-to-var3263 ((arg var3263)) var3263 arg)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var700_indexOf$default/-213079313 (String Int Int Bool Int var3399) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var3289_checkNotNullExpressionValue/47304269 (var3399 String) void)
(declare-fun var700_trim/-1104071662 (String) String)
(declare-fun toString/-522406933 (var3399) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun add/1973874160 (var3263 String String) var3263)
(declare-const null-var3263 var3263)
(declare-const null-String String)
(declare-const null-var3399 var3399)
(declare-const var3837 var3263) ; Statement: r1 := @this: okhttp3.Headers$Builder 
(assert (not (= var3837 null-var3263)))
(declare-const var1239 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1239 null-String)))
;(assert (var3289_checkNotNullParameter/-2060636419 (cast-from-String-to-var3399 var1239) "line")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "line") 

(declare-const var1239!1 String)
(declare-const var2696 String)
(define-const var1336 var3263 (cast-from-var3263-to-var3263 var3837)) ; Statement: $r2 = (okhttp3.Headers$Builder) r1 
(define-const var3134 String (cast-from-String-to-String var1239!1)) ; Statement: $r3 = (java.lang.CharSequence) r0 
(define-const var3609 Int (var700_indexOf$default/-213079313 var3134 58 0 (ite (= 1 0) true false) 6 null-var3399)) ; Statement: i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 58, 0, 0, 6, null) 
(define-const var346 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 == $i3 goto $z0 = 0 
(assert (not (= var3609 var346))) ; Negate: Cond: i0 == $i3  
(define-const var3723 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= (ite var3723 1 0) 0))) ; Cond: $z0 != 0 
(assert (and true (and (>= 0 0) (>= (str.len var1239!1) var3609) (>= var3609 0))))
(define-const var1676 String (substring/-1240304868 var1239!1 0 var3609)) ; Statement: $r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
;(assert (var3289_checkNotNullExpressionValue/47304269 (cast-from-String-to-var3399 var1676) "this as java.lang.String\u2026ing(startIndex, endIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r4, "this as java.lang.String\u2026ing(startIndex, endIndex)") 

(declare-const var1676!1 String)
(declare-const var699 String)
(define-const var1438 String (cast-from-String-to-String var1676!1)) ; Statement: $r5 = (java.lang.CharSequence) $r4 
(define-const var2584 String (var700_trim/-1104071662 var1438)) ; Statement: $r6 = staticinvoke <kotlin.text.StringsKt: java.lang.CharSequence trim(java.lang.CharSequence)>($r5) 
(assert true)
(define-const var3770 String (toString/-522406933 (cast-from-String-to-var3399 var2584))) ; Statement: $r8 = virtualinvoke $r6.<java.lang.Object: java.lang.String toString()>() 
(define-const var1670 Int (+ var3609 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var1670 0) (>= (str.len var1239!1) var1670))))
(define-const var2134 String (substring/850833817 var1239!1 var1670)) ; Statement: $r7 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
;(assert (var3289_checkNotNullExpressionValue/47304269 (cast-from-String-to-var3399 var2134) "this as java.lang.String).substring(startIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "this as java.lang.String).substring(startIndex)") 

(declare-const var2134!1 String)
(declare-const var3953 String)
(assert true)
;(assert (add/1973874160 var1336 var3770 var2134!1)) ; Statement: virtualinvoke $r2.<okhttp3.Headers$Builder: okhttp3.Headers$Builder add(java.lang.String,java.lang.String)>($r8, $r7) 

(declare-const var1336!1 var3263)
(declare-const var3770!1 String)
(declare-const var2134!2 String)
(define-const var3122 var3263 (cast-from-var3263-to-var3263 var3837)) ; Statement: $r9 = (okhttp3.Headers$Builder) r1 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3289_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3399=([java.lang.String], java.lang.Object), cast-from-var3263-to-var3263=([okhttp3.Headers$Builder], okhttp3.Headers$Builder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var700_indexOf$default/-213079313=([java.lang.CharSequence, char, int, boolean, int, java.lang.Object], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var3289_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), var700_trim/-1104071662=([java.lang.CharSequence], java.lang.CharSequence), toString/-522406933=([java.lang.Object], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), add/1973874160=([okhttp3.Headers$Builder, java.lang.String, java.lang.String], okhttp3.Headers$Builder)}
; {var3263=okhttp3.Headers$Builder, var3837=r1, var1239=r0, var530=null_type, var3289=kotlin.jvm.internal.Intrinsics, var3399=java.lang.Object, var2696="line", var1336=$r2, var3134=$r3, var700=kotlin.text.StringsKt, var3609=i0, var346=$i3, var3723=$z0, var1676=$r4, var699="this as java.lang.String\u2026ing(startIndex, endIndex)", var1438=$r5, var2584=$r6, var3770=$r8, var1670=$i1, var2134=$r7, var3953="this as java.lang.String).substring(startIndex)", var3122=$r9}
; {okhttp3.Headers$Builder=var3263, r1=var3837, r0=var1239, null_type=var530, kotlin.jvm.internal.Intrinsics=var3289, java.lang.Object=var3399, "line"=var2696, $r2=var1336, $r3=var3134, kotlin.text.StringsKt=var700, i0=var3609, $i3=var346, $z0=var3723, $r4=var1676, "this as java.lang.String\u2026ing(startIndex, endIndex)"=var699, $r5=var1438, $r6=var2584, $r8=var3770, $i1=var1670, $r7=var2134, "this as java.lang.String).substring(startIndex)"=var3953, $r9=var3122}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: okhttp3.Headers$Builder;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "line");	$r2 = (okhttp3.Headers$Builder) r1;	$r3 = (java.lang.CharSequence) r0;	i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 58, 0, 0, 6, null);	$i3 = (int) -1;	if i0 == $i3 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r4, "this as java.lang.String\u2026ing(startIndex, endIndex)");	$r5 = (java.lang.CharSequence) $r4;	$r6 = staticinvoke <kotlin.text.StringsKt: java.lang.CharSequence trim(java.lang.CharSequence)>($r5);	$r8 = virtualinvoke $r6.<java.lang.Object: java.lang.String toString()>();	$i1 = i0 + 1;	$r7 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "this as java.lang.String).substring(startIndex)");	virtualinvoke $r2.<okhttp3.Headers$Builder: okhttp3.Headers$Builder add(java.lang.String,java.lang.String)>($r8, $r7);	$r9 = (okhttp3.Headers$Builder) r1;	return $r9
;block_num 4
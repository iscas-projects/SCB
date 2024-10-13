(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3743 0)
(declare-sort var3671 0)
(declare-sort var1204 0)
(declare-sort var3481 0)
(declare-sort var3141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fragment/-122403576 (var3743) String)
(declare-fun url/-122403576 (var3743) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1204_indexOf$default/-213079313 (String Int Int Bool Int var3481) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var3141_checkNotNullExpressionValue/47304269 (var3481 String) void)
(declare-fun cast-from-String-to-var3481 (String) var3481)
(declare-const null-var3743 var3743)
(declare-const null-String String)
(declare-const null-var3481 var3481)
(declare-const var3930 var3743) ; Statement: r0 := @this: okhttp3.HttpUrl 
(assert (not (= var3930 null-var3743)))
(define-const var1818 String (fragment/-122403576 var3930)) ; Statement: $r1 = r0.<okhttp3.HttpUrl: java.lang.String fragment> 
 ; Statement: if $r1 != null goto $r2 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert (not (= var1818 null-String))) ; Cond: $r1 != null 
(define-const var1935 String (url/-122403576 var3930)) ; Statement: $r2 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(define-const var3070 String (cast-from-String-to-String var1935)) ; Statement: $r3 = (java.lang.CharSequence) $r2 
(define-const var1170 Int (var1204_indexOf$default/-213079313 var3070 35 0 (ite (= 1 0) true false) 6 null-var3481)) ; Statement: $i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 35, 0, 0, 6, null) 
(define-const var2686 Int (+ var1170 1)) ; Statement: i1 = $i0 + 1 
(define-const var1766 String (url/-122403576 var3930)) ; Statement: $r4 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert (and true (and (>= var2686 0) (>= (str.len var1766) var2686))))
(define-const var923 String (substring/850833817 var1766 var2686)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String substring(int)>(i1) 
;(assert (var3141_checkNotNullExpressionValue/47304269 (cast-from-String-to-var3481 var923) "this as java.lang.String).substring(startIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r5, "this as java.lang.String).substring(startIndex)") 

(declare-const var923!1 String)
(declare-const var1872 String)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {fragment/-122403576=([okhttp3.HttpUrl], java.lang.String), url/-122403576=([okhttp3.HttpUrl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1204_indexOf$default/-213079313=([java.lang.CharSequence, char, int, boolean, int, java.lang.Object], int), substring/850833817=([java.lang.String, int], java.lang.String), var3141_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3481=([java.lang.String], java.lang.Object)}
; {var3743=okhttp3.HttpUrl, var3930=r0, var1818=$r1, var3671=null_type, var1935=$r2, var3070=$r3, var1204=kotlin.text.StringsKt, var3481=java.lang.Object, var1170=$i0, var2686=i1, var1766=$r4, var923=$r5, var3141=kotlin.jvm.internal.Intrinsics, var1872="this as java.lang.String).substring(startIndex)"}
; {okhttp3.HttpUrl=var3743, r0=var3930, $r1=var1818, null_type=var3671, $r2=var1935, $r3=var3070, kotlin.text.StringsKt=var1204, java.lang.Object=var3481, $i0=var1170, i1=var2686, $r4=var1766, $r5=var923, kotlin.jvm.internal.Intrinsics=var3141, "this as java.lang.String).substring(startIndex)"=var1872}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: okhttp3.HttpUrl;	$r1 = r0.<okhttp3.HttpUrl: java.lang.String fragment>;	if $r1 != null goto $r2 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r2 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r3 = (java.lang.CharSequence) $r2;	$i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 35, 0, 0, 6, null);	i1 = $i0 + 1;	$r4 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String substring(int)>(i1);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r5, "this as java.lang.String).substring(startIndex)");	return $r5
;block_num 2
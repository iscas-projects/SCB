(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1083 0)
(declare-sort var1377 0)
(declare-sort var2733 0)
(declare-sort var3948 0)
(declare-sort var1776 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun cast-from-var1377-to-var2733 (var1377) var2733)
(declare-fun var2733_iterator/-693406491 (var2733) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3948_checkNotNullExpressionValue/47304269 (var1776 String) void)
(declare-fun cast-from-String-to-var1776 (String) var1776)
(declare-const null-var1083 var1083)
(declare-const null-var1377 var1377)
(declare-const var3029 var1083) ; Statement: r11 := @this: okhttp3.internal.http.BridgeInterceptor 
(assert (not (= var3029 null-var1083)))
(declare-const var2924 var1377) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var2924 null-var1377)))
(define-const var1244 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1244)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1244!1 String)
(assert (= var1244!1 ""))
(define-const var561 var2733 (cast-from-var1377-to-var2733 var2924)) ; Statement: $r2 = (java.lang.Iterable) r1 
(define-const var1242 Int 0) ; Statement: i1 = 0 
(define-const var1300 Iterator (var2733_iterator/-693406491 var561)) ; Statement: r3 = interfaceinvoke $r2.<java.lang.Iterable: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3602 Bool (Iterator_hasNext/-1669924200 var1300)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3602 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1363 String (toString/-2075883882 var1244!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3948_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1776 var1363) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r4, "StringBuilder().apply(builderAction).toString()") 

(declare-const var1363!1 String)
(declare-const var3615 String)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-var1377-to-var2733=([java.util.List], java.lang.Iterable), var2733_iterator/-693406491=([java.lang.Iterable], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3948_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1776=([java.lang.String], java.lang.Object)}
; {var1083=okhttp3.internal.http.BridgeInterceptor, var3029=r11, var1377=java.util.List, var2924=r1, var1244=$r0, var2733=java.lang.Iterable, var561=$r2, var1242=i1, var1300=r3, var3602=$z0, var1363=$r4, var3948=kotlin.jvm.internal.Intrinsics, var1776=java.lang.Object, var3615="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.internal.http.BridgeInterceptor=var1083, r11=var3029, java.util.List=var1377, r1=var2924, $r0=var1244, java.lang.Iterable=var2733, $r2=var561, i1=var1242, r3=var1300, $z0=var3602, $r4=var1363, kotlin.jvm.internal.Intrinsics=var3948, java.lang.Object=var1776, "StringBuilder().apply(builderAction).toString()"=var3615}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: okhttp3.internal.http.BridgeInterceptor;	r1 := @parameter0: java.util.List;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = (java.lang.Iterable) r1;	i1 = 0;	r3 = interfaceinvoke $r2.<java.lang.Iterable: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r4, "StringBuilder().apply(builderAction).toString()");	return $r4
;block_num 3
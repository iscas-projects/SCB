(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var901 0)
(declare-sort var3568 0)
(declare-sort var1225 0)
(declare-sort var3864 0)
(declare-sort var1196 0)
(declare-sort var652 0)
(declare-sort var3021 0)
(declare-sort var949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3864_checkNotNullParameter/-2060636419 (var1196 String) void)
(declare-fun cast-from-String-to-var1196 (String) var1196)
(declare-fun getBytes/-163691139 (String var652) (Array Int Int))
(declare-fun var3864_checkNotNullExpressionValue/47304269 (var1196 String) void)
(declare-fun cast-from-__Array__Int__Int__-to-var1196 ((Array Int Int)) var1196)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun create/638752722 (var901 (Array Int Int) var1225 Int Int) var949)
(declare-const null-var901 var901)
(declare-const null-String String)
(declare-const null-var1225 var1225)
(declare-const var3021-UTF_8 var652)
(declare-const var95 var901) ; Statement: r2 := @this: okhttp3.RequestBody$Companion 
(assert (not (= var95 null-var901)))
(declare-const var3327 String) ; Statement: $r0 := @parameter0: java.lang.String 
(assert (not (= var3327 null-String)))
(declare-const var634 var1225) ; Statement: r1 := @parameter1: okhttp3.MediaType 
(assert (not (= var634 null-var1225)))
;(assert (var3864_checkNotNullParameter/-2060636419 (cast-from-String-to-var1196 var3327) "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var3327!1 String)
(declare-const var2512 String)
(define-const var1383 var652 var3021-UTF_8) ; Statement: r8 = <kotlin.text.Charsets: java.nio.charset.Charset UTF_8> 
(define-const var665 var1225 var634) ; Statement: r9 = r1 
 ; Statement: if r1 == null goto $r11 = virtualinvoke $r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8) 
(assert (= var634 null-var1225)) ; Cond: r1 == null 
(assert true)
(define-const var3909 (Array Int Int) (getBytes/-163691139 var3327!1 var1383)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8) 
;(assert (var3864_checkNotNullExpressionValue/47304269 (cast-from-__Array__Int__Int__-to-var1196 var3909) "this as java.lang.String).getBytes(charset)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r11, "this as java.lang.String).getBytes(charset)") 

(declare-const var3909!1 (Array Int Int))
(declare-const var3285 String)
(define-const var1656 Int (getLength-Arr-Int-1 var3909!1)) ; Statement: $i0 = lengthof $r11 
(assert true)
(define-const var3514 var949 (create/638752722 var95 var3909!1 var665 0 var1656)) ; Statement: $r12 = virtualinvoke r2.<okhttp3.RequestBody$Companion: okhttp3.RequestBody create(byte[],okhttp3.MediaType,int,int)>($r11, r9, 0, $i0) 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var3864_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1196=([java.lang.String], java.lang.Object), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), var3864_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-__Array__Int__Int__-to-var1196=([byte[]], java.lang.Object), getLength-Arr-Int-1=([byte[]], int), create/638752722=([okhttp3.RequestBody$Companion, byte[], okhttp3.MediaType, int, int], okhttp3.RequestBody)}
; {var901=okhttp3.RequestBody$Companion, var95=r2, var3327=$r0, var3568=null_type, var1225=okhttp3.MediaType, var634=r1, var3864=kotlin.jvm.internal.Intrinsics, var1196=java.lang.Object, var2512="<this>", var652=java.nio.charset.Charset, var3021=kotlin.text.Charsets, var1383=r8, var665=r9, var3909=$r11, var3285="this as java.lang.String).getBytes(charset)", var1656=$i0, var949=okhttp3.RequestBody, var3514=$r12}
; {okhttp3.RequestBody$Companion=var901, r2=var95, $r0=var3327, null_type=var3568, okhttp3.MediaType=var1225, r1=var634, kotlin.jvm.internal.Intrinsics=var3864, java.lang.Object=var1196, "<this>"=var2512, java.nio.charset.Charset=var652, kotlin.text.Charsets=var3021, r8=var1383, r9=var665, $r11=var3909, "this as java.lang.String).getBytes(charset)"=var3285, $i0=var1656, okhttp3.RequestBody=var949, $r12=var3514}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r2 := @this: okhttp3.RequestBody$Companion;	$r0 := @parameter0: java.lang.String;	r1 := @parameter1: okhttp3.MediaType;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	r8 = <kotlin.text.Charsets: java.nio.charset.Charset UTF_8>;	r9 = r1;	if r1 == null goto $r11 = virtualinvoke $r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8);	$r11 = virtualinvoke $r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r11, "this as java.lang.String).getBytes(charset)");	$i0 = lengthof $r11;	$r12 = virtualinvoke r2.<okhttp3.RequestBody$Companion: okhttp3.RequestBody create(byte[],okhttp3.MediaType,int,int)>($r11, r9, 0, $i0);	return $r12
;block_num 2
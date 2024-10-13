(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1046 0)
(declare-sort var3124 0)
(declare-sort var1405 0)
(declare-sort var556 0)
(declare-sort var702 0)
(declare-sort var2654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/-1393943157 (var1046) Int)
(declare-fun var3124_stringSize/-1233370881 (Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var3124_getChars/49549998 (Int Int (Array Int Int)) void)
(declare-fun String-init () String)
(declare-fun <init>/-2015205558 (String (Array Int Int) var702) void)
(declare-const null-var1046 var1046)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var556-STRING_CREATOR_JDK11 var1405)
(declare-const null-var1405 var1405)
(declare-const var2654-ISO_8859_1 var702)
(declare-const var1285 var1046) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONPathSegmentIndex 
(assert (not (= var1285 null-var1046)))
(define-const var2043 Int (index/-1393943157 var1285)) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index> 
 ; Statement: if $i0 >= 0 goto $i1 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index> 
(assert (>= var2043 0)) ; Cond: $i0 >= 0 
(define-const var3044 Int (index/-1393943157 var1285)) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index> 
(define-const var3494 Int (var3124_stringSize/-1233370881 var3044)) ; Statement: $i11 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: int stringSize(int)>($i1) 
(assert true) ; Non Conditional
(define-const var685 Int (+ var3494 2)) ; Statement: $i2 = $i11 + 2 
(define-const var3315 (Array Int Int) arr-Int-init) ; Statement: $r7 = newarray (byte)[$i2] 
(declare-const var3315!1 (Array Int Int))
(assert (not (= var3315!1 null-__Array__Int__Int__)))
(assert (= (select var3315!1 0) 91)) ; Statement: $r7[0] = 91 
(define-const var2010 Int (index/-1393943157 var1285)) ; Statement: $i5 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index> 
(define-const var707 Int (getLength-Arr-Int-1 var3315!1)) ; Statement: $i3 = lengthof $r7 
(define-const var3679 Int (- var707 1)) ; Statement: $i4 = $i3 - 1 
;(assert (var3124_getChars/49549998 var2010 var3679 var3315!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.util.IOUtils: void getChars(int,int,byte[])>($i5, $i4, $r7) 

(declare-const var2010!1 Int)
(declare-const var3679!1 Int)
(declare-const var3315!2 (Array Int Int))
(define-const var70 Int (getLength-Arr-Int-1 var3315!2)) ; Statement: $i6 = lengthof $r7 
(define-const var2108 Int (- var70 1)) ; Statement: $i7 = $i6 - 1 
(declare-const var3315!3 (Array Int Int))
(assert (not (= var3315!3 null-__Array__Int__Int__)))
(assert (= (select var3315!3 var2108) 93)) ; Statement: $r7[$i7] = 93 
(define-const var3175 var1405 var556-STRING_CREATOR_JDK11) ; Statement: $r1 = <com.alibaba.fastjson2.util.JDKUtils: java.util.function.BiFunction STRING_CREATOR_JDK11> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.String 
(assert (= var3175 null-var1405)) ; Cond: $r1 == null 
(define-const var3812 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var688 var702 var2654-ISO_8859_1) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1> 
(assert true)
;(assert (<init>/-2015205558 var3812 var3315!3 var688)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r7, $r3) 

(declare-const var3812!1 String)
(declare-const var3315!4 (Array Int Int))
(declare-const var688!1 var702)
(define-const var1778 String var3812!1) ; Statement: r8 = $r2 
(assert true) ; Non Conditional
 ; Statement: return r8 
(check-sat)
(get-model)
(get-unsat-core)
; {index/-1393943157=([com.alibaba.fastjson2.JSONPathSegmentIndex], int), var3124_stringSize/-1233370881=([int], int), arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int), var3124_getChars/49549998=([int, int, byte[]], void), String-init=([], java.lang.String), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var1046=com.alibaba.fastjson2.JSONPathSegmentIndex, var1285=r0, var2043=$i0, var3044=$i1, var3124=com.alibaba.fastjson2.util.IOUtils, var3494=$i11, var685=$i2, var3315=$r7, var2010=$i5, var707=$i3, var3679=$i4, var70=$i6, var2108=$i7, var1405=java.util.function.BiFunction, var556=com.alibaba.fastjson2.util.JDKUtils, var3175=$r1, var3812=$r2, var702=java.nio.charset.Charset, var2654=java.nio.charset.StandardCharsets, var688=$r3, var1778=r8}
; {com.alibaba.fastjson2.JSONPathSegmentIndex=var1046, r0=var1285, $i0=var2043, $i1=var3044, com.alibaba.fastjson2.util.IOUtils=var3124, $i11=var3494, $i2=var685, $r7=var3315, $i5=var2010, $i3=var707, $i4=var3679, $i6=var70, $i7=var2108, java.util.function.BiFunction=var1405, com.alibaba.fastjson2.util.JDKUtils=var556, $r1=var3175, $r2=var3812, java.nio.charset.Charset=var702, java.nio.charset.StandardCharsets=var2654, $r3=var688, r8=var1778}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONPathSegmentIndex;	$i0 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index>;	if $i0 >= 0 goto $i1 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index>;	$i1 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index>;	$i11 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: int stringSize(int)>($i1);	$i2 = $i11 + 2;	$r7 = newarray (byte)[$i2];	$r7[0] = 91;	$i5 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index>;	$i3 = lengthof $r7;	$i4 = $i3 - 1;	staticinvoke <com.alibaba.fastjson2.util.IOUtils: void getChars(int,int,byte[])>($i5, $i4, $r7);	$i6 = lengthof $r7;	$i7 = $i6 - 1;	$r7[$i7] = 93;	$r1 = <com.alibaba.fastjson2.util.JDKUtils: java.util.function.BiFunction STRING_CREATOR_JDK11>;	if $r1 == null goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1>;	specialinvoke $r2.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r7, $r3);	r8 = $r2;	return r8
;block_num 5
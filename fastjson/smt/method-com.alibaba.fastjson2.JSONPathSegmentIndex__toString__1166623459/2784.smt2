(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1014 0)
(declare-sort var3864 0)
(declare-sort var214 0)
(declare-sort var1054 0)
(declare-sort var3905 0)
(declare-sort var149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/-1393943157 (var1014) Int)
(declare-fun var3864_stringSize/-1233370881 (Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var3864_getChars/49549998 (Int Int (Array Int Int)) void)
(declare-fun String-init () String)
(declare-fun <init>/-2015205558 (String (Array Int Int) var3905) void)
(declare-const null-var1014 var1014)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1054-STRING_CREATOR_JDK11 var214)
(declare-const null-var214 var214)
(declare-const var149-ISO_8859_1 var3905)
(declare-const var1647 var1014) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONPathSegmentIndex 
(assert (not (= var1647 null-var1014)))
(define-const var3680 Int (index/-1393943157 var1647)) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index> 
 ; Statement: if $i0 >= 0 goto $i1 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index> 
(assert (not (>= var3680 0))) ; Negate: Cond: $i0 >= 0  
(define-const var389 Int (index/-1393943157 var1647)) ; Statement: $i8 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index> 
(define-const var1953 Int (- var389)) ; Statement: $i9 = neg $i8 
(define-const var3074 Int (var3864_stringSize/-1233370881 var1953)) ; Statement: $i10 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: int stringSize(int)>($i9) 
(define-const var1104 Int (+ var3074 1)) ; Statement: $i11 = $i10 + 1 
 ; Statement: goto [?= $i2 = $i11 + 2] 
(assert true) ; Non Conditional
(define-const var3564 Int (+ var1104 2)) ; Statement: $i2 = $i11 + 2 
(define-const var1496 (Array Int Int) arr-Int-init) ; Statement: $r7 = newarray (byte)[$i2] 
(declare-const var1496!1 (Array Int Int))
(assert (not (= var1496!1 null-__Array__Int__Int__)))
(assert (= (select var1496!1 0) 91)) ; Statement: $r7[0] = 91 
(define-const var1135 Int (index/-1393943157 var1647)) ; Statement: $i5 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index> 
(define-const var1590 Int (getLength-Arr-Int-1 var1496!1)) ; Statement: $i3 = lengthof $r7 
(define-const var642 Int (- var1590 1)) ; Statement: $i4 = $i3 - 1 
;(assert (var3864_getChars/49549998 var1135 var642 var1496!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.util.IOUtils: void getChars(int,int,byte[])>($i5, $i4, $r7) 

(declare-const var1135!1 Int)
(declare-const var642!1 Int)
(declare-const var1496!2 (Array Int Int))
(define-const var491 Int (getLength-Arr-Int-1 var1496!2)) ; Statement: $i6 = lengthof $r7 
(define-const var3438 Int (- var491 1)) ; Statement: $i7 = $i6 - 1 
(declare-const var1496!3 (Array Int Int))
(assert (not (= var1496!3 null-__Array__Int__Int__)))
(assert (= (select var1496!3 var3438) 93)) ; Statement: $r7[$i7] = 93 
(define-const var3870 var214 var1054-STRING_CREATOR_JDK11) ; Statement: $r1 = <com.alibaba.fastjson2.util.JDKUtils: java.util.function.BiFunction STRING_CREATOR_JDK11> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.String 
(assert (= var3870 null-var214)) ; Cond: $r1 == null 
(define-const var1826 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var2720 var3905 var149-ISO_8859_1) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1> 
(assert true)
;(assert (<init>/-2015205558 var1826 var1496!3 var2720)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r7, $r3) 

(declare-const var1826!1 String)
(declare-const var1496!4 (Array Int Int))
(declare-const var2720!1 var3905)
(define-const var1177 String var1826!1) ; Statement: r8 = $r2 
(assert true) ; Non Conditional
 ; Statement: return r8 
(check-sat)
(get-model)
(get-unsat-core)
; {index/-1393943157=([com.alibaba.fastjson2.JSONPathSegmentIndex], int), var3864_stringSize/-1233370881=([int], int), arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int), var3864_getChars/49549998=([int, int, byte[]], void), String-init=([], java.lang.String), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var1014=com.alibaba.fastjson2.JSONPathSegmentIndex, var1647=r0, var3680=$i0, var389=$i8, var1953=$i9, var3864=com.alibaba.fastjson2.util.IOUtils, var3074=$i10, var1104=$i11, var3564=$i2, var1496=$r7, var1135=$i5, var1590=$i3, var642=$i4, var491=$i6, var3438=$i7, var214=java.util.function.BiFunction, var1054=com.alibaba.fastjson2.util.JDKUtils, var3870=$r1, var1826=$r2, var3905=java.nio.charset.Charset, var149=java.nio.charset.StandardCharsets, var2720=$r3, var1177=r8}
; {com.alibaba.fastjson2.JSONPathSegmentIndex=var1014, r0=var1647, $i0=var3680, $i8=var389, $i9=var1953, com.alibaba.fastjson2.util.IOUtils=var3864, $i10=var3074, $i11=var1104, $i2=var3564, $r7=var1496, $i5=var1135, $i3=var1590, $i4=var642, $i6=var491, $i7=var3438, java.util.function.BiFunction=var214, com.alibaba.fastjson2.util.JDKUtils=var1054, $r1=var3870, $r2=var1826, java.nio.charset.Charset=var3905, java.nio.charset.StandardCharsets=var149, $r3=var2720, r8=var1177}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONPathSegmentIndex;	$i0 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index>;	if $i0 >= 0 goto $i1 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index>;	$i8 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index>;	$i9 = neg $i8;	$i10 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: int stringSize(int)>($i9);	$i11 = $i10 + 1;	goto [?= $i2 = $i11 + 2];	$i2 = $i11 + 2;	$r7 = newarray (byte)[$i2];	$r7[0] = 91;	$i5 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index>;	$i3 = lengthof $r7;	$i4 = $i3 - 1;	staticinvoke <com.alibaba.fastjson2.util.IOUtils: void getChars(int,int,byte[])>($i5, $i4, $r7);	$i6 = lengthof $r7;	$i7 = $i6 - 1;	$r7[$i7] = 93;	$r1 = <com.alibaba.fastjson2.util.JDKUtils: java.util.function.BiFunction STRING_CREATOR_JDK11>;	if $r1 == null goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1>;	specialinvoke $r2.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r7, $r3);	r8 = $r2;	return r8
;block_num 5
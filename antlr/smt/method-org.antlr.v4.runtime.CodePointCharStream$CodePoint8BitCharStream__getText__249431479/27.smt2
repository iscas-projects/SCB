(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2930 0)
(declare-sort var2967 0)
(declare-sort var3964 0)
(declare-sort var3099 0)
(declare-sort var683 0)
(declare-sort var2480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun a/1351597580 (var2967) Int)
(declare-fun size/-539079426 (var3964) Int)
(declare-fun cast-from-var2930-to-var3964 (var2930) var3964)
(declare-fun var3099_min/-1112089438 (Int Int) Int)
(declare-fun b/1351597580 (var2967) Int)
(declare-fun String-init () String)
(declare-fun byteArray/211180200 (var2930) (Array Int Int))
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var683) void)
(declare-const null-var2930 var2930)
(declare-const null-var2967 var2967)
(declare-const var2480-ISO_8859_1 var683)
(declare-const var1330 var2930) ; Statement: r1 := @this: org.antlr.v4.runtime.CodePointCharStream$CodePoint8BitCharStream 
(assert (not (= var1330 null-var2930)))
(declare-const var3410 var2967) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.misc.Interval 
(assert (not (= var3410 null-var2967)))
(define-const var1101 Int (a/1351597580 var3410)) ; Statement: $i1 = r0.<org.antlr.v4.runtime.misc.Interval: int a> 
(define-const var2060 Int (size/-539079426 (cast-from-var2930-to-var3964 var1330))) ; Statement: $i0 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint8BitCharStream: int size> 
(define-const var2997 Int (var3099_min/-1112089438 var1101 var2060)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
(define-const var309 Int (b/1351597580 var3410)) ; Statement: $i4 = r0.<org.antlr.v4.runtime.misc.Interval: int b> 
(define-const var3227 Int (a/1351597580 var3410)) ; Statement: $i3 = r0.<org.antlr.v4.runtime.misc.Interval: int a> 
(define-const var289 Int (- var309 var3227)) ; Statement: $i5 = $i4 - $i3 
(define-const var994 Int (+ var289 1)) ; Statement: $i8 = $i5 + 1 
(define-const var3016 Int (size/-539079426 (cast-from-var2930-to-var3964 var1330))) ; Statement: $i6 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint8BitCharStream: int size> 
(define-const var1295 Int (- var3016 var2997)) ; Statement: $i7 = $i6 - i2 
(define-const var3978 Int (var3099_min/-1112089438 var994 var1295)) ; Statement: i9 = staticinvoke <java.lang.Math: int min(int,int)>($i8, $i7) 
(define-const var276 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var2806 (Array Int Int) (byteArray/211180200 var1330)) ; Statement: $r4 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint8BitCharStream: byte[] byteArray> 
(define-const var3491 var683 var2480-ISO_8859_1) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1> 
(assert true)
;(assert (<init>/-1019213948 var276 var2806 var2997 var3978 var3491)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r4, i2, i9, $r3) 

(declare-const var276!1 String)
(declare-const var2806!1 (Array Int Int))
(declare-const var2997!1 Int)
(declare-const var3978!1 Int)
(declare-const var3491!1 var683)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {a/1351597580=([org.antlr.v4.runtime.misc.Interval], int), size/-539079426=([org.antlr.v4.runtime.CodePointCharStream], int), cast-from-var2930-to-var3964=([org.antlr.v4.runtime.CodePointCharStream$CodePoint8BitCharStream], org.antlr.v4.runtime.CodePointCharStream), var3099_min/-1112089438=([int, int], int), b/1351597580=([org.antlr.v4.runtime.misc.Interval], int), String-init=([], java.lang.String), byteArray/211180200=([org.antlr.v4.runtime.CodePointCharStream$CodePoint8BitCharStream], byte[]), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void)}
; {var2930=org.antlr.v4.runtime.CodePointCharStream$CodePoint8BitCharStream, var1330=r1, var2967=org.antlr.v4.runtime.misc.Interval, var3410=r0, var1101=$i1, var3964=org.antlr.v4.runtime.CodePointCharStream, var2060=$i0, var3099=java.lang.Math, var2997=i2, var309=$i4, var3227=$i3, var289=$i5, var994=$i8, var3016=$i6, var1295=$i7, var3978=i9, var276=$r2, var2806=$r4, var683=java.nio.charset.Charset, var2480=java.nio.charset.StandardCharsets, var3491=$r3}
; {org.antlr.v4.runtime.CodePointCharStream$CodePoint8BitCharStream=var2930, r1=var1330, org.antlr.v4.runtime.misc.Interval=var2967, r0=var3410, $i1=var1101, org.antlr.v4.runtime.CodePointCharStream=var3964, $i0=var2060, java.lang.Math=var3099, i2=var2997, $i4=var309, $i3=var3227, $i5=var289, $i8=var994, $i6=var3016, $i7=var1295, i9=var3978, $r2=var276, $r4=var2806, java.nio.charset.Charset=var683, java.nio.charset.StandardCharsets=var2480, $r3=var3491}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.CodePointCharStream$CodePoint8BitCharStream;	r0 := @parameter0: org.antlr.v4.runtime.misc.Interval;	$i1 = r0.<org.antlr.v4.runtime.misc.Interval: int a>;	$i0 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint8BitCharStream: int size>;	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	$i4 = r0.<org.antlr.v4.runtime.misc.Interval: int b>;	$i3 = r0.<org.antlr.v4.runtime.misc.Interval: int a>;	$i5 = $i4 - $i3;	$i8 = $i5 + 1;	$i6 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint8BitCharStream: int size>;	$i7 = $i6 - i2;	i9 = staticinvoke <java.lang.Math: int min(int,int)>($i8, $i7);	$r2 = new java.lang.String;	$r4 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint8BitCharStream: byte[] byteArray>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1>;	specialinvoke $r2.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r4, i2, i9, $r3);	return $r2
;block_num 1
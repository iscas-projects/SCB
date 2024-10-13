(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2875 0)
(declare-sort var2808 0)
(declare-sort var2474 0)
(declare-sort var1880 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun a/1351597580 (var2808) Int)
(declare-fun size/-539079426 (var2474) Int)
(declare-fun cast-from-var2875-to-var2474 (var2875) var2474)
(declare-fun var1880_min/-1112089438 (Int Int) Int)
(declare-fun b/1351597580 (var2808) Int)
(declare-fun String-init () String)
(declare-fun charArray/1493096513 (var2875) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var2875 var2875)
(declare-const null-var2808 var2808)
(declare-const var3196 var2875) ; Statement: r1 := @this: org.antlr.v4.runtime.CodePointCharStream$CodePoint16BitCharStream 
(assert (not (= var3196 null-var2875)))
(declare-const var2463 var2808) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.misc.Interval 
(assert (not (= var2463 null-var2808)))
(define-const var2043 Int (a/1351597580 var2463)) ; Statement: $i1 = r0.<org.antlr.v4.runtime.misc.Interval: int a> 
(define-const var3926 Int (size/-539079426 (cast-from-var2875-to-var2474 var3196))) ; Statement: $i0 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint16BitCharStream: int size> 
(define-const var820 Int (var1880_min/-1112089438 var2043 var3926)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
(define-const var618 Int (b/1351597580 var2463)) ; Statement: $i4 = r0.<org.antlr.v4.runtime.misc.Interval: int b> 
(define-const var1869 Int (a/1351597580 var2463)) ; Statement: $i3 = r0.<org.antlr.v4.runtime.misc.Interval: int a> 
(define-const var3311 Int (- var618 var1869)) ; Statement: $i5 = $i4 - $i3 
(define-const var689 Int (+ var3311 1)) ; Statement: $i8 = $i5 + 1 
(define-const var1502 Int (size/-539079426 (cast-from-var2875-to-var2474 var3196))) ; Statement: $i6 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint16BitCharStream: int size> 
(define-const var2502 Int (- var1502 var820)) ; Statement: $i7 = $i6 - i2 
(define-const var1852 Int (var1880_min/-1112089438 var689 var2502)) ; Statement: i9 = staticinvoke <java.lang.Math: int min(int,int)>($i8, $i7) 
(define-const var1747 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var239 (Array Int Int) (charArray/1493096513 var3196)) ; Statement: $r3 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint16BitCharStream: char[] charArray> 
(assert true)
;(assert (<init>/-253222812 var1747 var239 var820 var1852)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, i2, i9) 

(declare-const var1747!1 String)
(declare-const var239!1 (Array Int Int))
(declare-const var820!1 Int)
(declare-const var1852!1 Int)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {a/1351597580=([org.antlr.v4.runtime.misc.Interval], int), size/-539079426=([org.antlr.v4.runtime.CodePointCharStream], int), cast-from-var2875-to-var2474=([org.antlr.v4.runtime.CodePointCharStream$CodePoint16BitCharStream], org.antlr.v4.runtime.CodePointCharStream), var1880_min/-1112089438=([int, int], int), b/1351597580=([org.antlr.v4.runtime.misc.Interval], int), String-init=([], java.lang.String), charArray/1493096513=([org.antlr.v4.runtime.CodePointCharStream$CodePoint16BitCharStream], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var2875=org.antlr.v4.runtime.CodePointCharStream$CodePoint16BitCharStream, var3196=r1, var2808=org.antlr.v4.runtime.misc.Interval, var2463=r0, var2043=$i1, var2474=org.antlr.v4.runtime.CodePointCharStream, var3926=$i0, var1880=java.lang.Math, var820=i2, var618=$i4, var1869=$i3, var3311=$i5, var689=$i8, var1502=$i6, var2502=$i7, var1852=i9, var1747=$r2, var239=$r3}
; {org.antlr.v4.runtime.CodePointCharStream$CodePoint16BitCharStream=var2875, r1=var3196, org.antlr.v4.runtime.misc.Interval=var2808, r0=var2463, $i1=var2043, org.antlr.v4.runtime.CodePointCharStream=var2474, $i0=var3926, java.lang.Math=var1880, i2=var820, $i4=var618, $i3=var1869, $i5=var3311, $i8=var689, $i6=var1502, $i7=var2502, i9=var1852, $r2=var1747, $r3=var239}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.CodePointCharStream$CodePoint16BitCharStream;	r0 := @parameter0: org.antlr.v4.runtime.misc.Interval;	$i1 = r0.<org.antlr.v4.runtime.misc.Interval: int a>;	$i0 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint16BitCharStream: int size>;	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	$i4 = r0.<org.antlr.v4.runtime.misc.Interval: int b>;	$i3 = r0.<org.antlr.v4.runtime.misc.Interval: int a>;	$i5 = $i4 - $i3;	$i8 = $i5 + 1;	$i6 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint16BitCharStream: int size>;	$i7 = $i6 - i2;	i9 = staticinvoke <java.lang.Math: int min(int,int)>($i8, $i7);	$r2 = new java.lang.String;	$r3 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint16BitCharStream: char[] charArray>;	specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, i2, i9);	return $r2
;block_num 1
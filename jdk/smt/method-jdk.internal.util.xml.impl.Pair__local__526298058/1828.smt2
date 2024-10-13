(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun chars/2073447641 (var3505) (Array Int Int))
(declare-fun String-init () String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3505 var3505)
(declare-const var1455 var3505) ; Statement: r0 := @this: jdk.internal.util.xml.impl.Pair 
(assert (not (= var1455 null-var3505)))
(define-const var2631 (Array Int Int) (chars/2073447641 var1455)) ; Statement: $r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var890 Int (select var2631 0)) ; Statement: $c0 = $r1[0] 
 ; Statement: if $c0 == 0 goto $r11 = new java.lang.String 
(assert (not (= var890 0))) ; Negate: Cond: $c0 == 0  
(define-const var3394 String String-init) ; Statement: $r10 = new java.lang.String 
(define-const var456 (Array Int Int) (chars/2073447641 var1455)) ; Statement: $r9 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var1788 (Array Int Int) (chars/2073447641 var1455)) ; Statement: $r6 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var3156 Int (select var1788 0)) ; Statement: $c3 = $r6[0] 
(define-const var3328 Int (cast-from-Int-to-Int var3156)) ; Statement: $i9 = (int) $c3 
(define-const var3498 Int (+ var3328 1)) ; Statement: $i8 = $i9 + 1 
(define-const var3570 (Array Int Int) (chars/2073447641 var1455)) ; Statement: $r7 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var2828 Int (getLength-Arr-Int-1 var3570)) ; Statement: $i5 = lengthof $r7 
(define-const var3124 (Array Int Int) (chars/2073447641 var1455)) ; Statement: $r8 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var3568 Int (select var3124 0)) ; Statement: $c4 = $r8[0] 
(define-const var1256 Int (cast-from-Int-to-Int var3568)) ; Statement: $i10 = (int) $c4 
(define-const var1162 Int (- var2828 var1256)) ; Statement: $i6 = $i5 - $i10 
(define-const var3832 Int (- var1162 1)) ; Statement: $i7 = $i6 - 1 
(assert true)
;(assert (<init>/-253222812 var3394 var456 var3498 var3832)) ; Statement: specialinvoke $r10.<java.lang.String: void <init>(char[],int,int)>($r9, $i8, $i7) 

(declare-const var3394!1 String)
(declare-const var456!1 (Array Int Int))
(declare-const var3498!1 Int)
(declare-const var3832!1 Int)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {chars/2073447641=([jdk.internal.util.xml.impl.Pair], char[]), String-init=([], java.lang.String), cast-from-Int-to-Int=([char], int), getLength-Arr-Int-1=([char[]], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3505=jdk.internal.util.xml.impl.Pair, var1455=r0, var2631=$r1, var890=$c0, var3394=$r10, var456=$r9, var1788=$r6, var3156=$c3, var3328=$i9, var3498=$i8, var3570=$r7, var2828=$i5, var3124=$r8, var3568=$c4, var1256=$i10, var1162=$i6, var3832=$i7}
; {jdk.internal.util.xml.impl.Pair=var3505, r0=var1455, $r1=var2631, $c0=var890, $r10=var3394, $r9=var456, $r6=var1788, $c3=var3156, $i9=var3328, $i8=var3498, $r7=var3570, $i5=var2828, $r8=var3124, $c4=var3568, $i10=var1256, $i6=var1162, $i7=var3832}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: jdk.internal.util.xml.impl.Pair;	$r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$c0 = $r1[0];	if $c0 == 0 goto $r11 = new java.lang.String;	$r10 = new java.lang.String;	$r9 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$r6 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$c3 = $r6[0];	$i9 = (int) $c3;	$i8 = $i9 + 1;	$r7 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$i5 = lengthof $r7;	$r8 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$c4 = $r8[0];	$i10 = (int) $c4;	$i6 = $i5 - $i10;	$i7 = $i6 - 1;	specialinvoke $r10.<java.lang.String: void <init>(char[],int,int)>($r9, $i8, $i7);	return $r10
;block_num 2
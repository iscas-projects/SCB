(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun chars/2073447641 (var1736) (Array Int Int))
(declare-fun String-init () String)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1736 var1736)
(declare-const var101 var1736) ; Statement: r0 := @this: jdk.internal.util.xml.impl.Pair 
(assert (not (= var101 null-var1736)))
(define-const var1595 (Array Int Int) (chars/2073447641 var101)) ; Statement: $r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var190 Int (select var1595 0)) ; Statement: $c0 = $r1[0] 
 ; Statement: if $c0 == 0 goto $r11 = new java.lang.String 
(assert (= var190 0)) ; Cond: $c0 == 0 
(define-const var1360 String String-init) ; Statement: $r11 = new java.lang.String 
(define-const var1229 (Array Int Int) (chars/2073447641 var101)) ; Statement: $r4 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var1920 (Array Int Int) (chars/2073447641 var101)) ; Statement: $r3 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var1329 Int (getLength-Arr-Int-1 var1920)) ; Statement: $i1 = lengthof $r3 
(define-const var3274 Int (- var1329 1)) ; Statement: $i2 = $i1 - 1 
(assert true)
;(assert (<init>/-253222812 var1360 var1229 1 var3274)) ; Statement: specialinvoke $r11.<java.lang.String: void <init>(char[],int,int)>($r4, 1, $i2) 

(declare-const var1360!1 String)
(declare-const var1229!1 (Array Int Int))
(declare-const var1113 Int)
(declare-const var3274!1 Int)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {chars/2073447641=([jdk.internal.util.xml.impl.Pair], char[]), String-init=([], java.lang.String), getLength-Arr-Int-1=([char[]], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1736=jdk.internal.util.xml.impl.Pair, var101=r0, var1595=$r1, var190=$c0, var1360=$r11, var1229=$r4, var1920=$r3, var1329=$i1, var3274=$i2, var1113=1}
; {jdk.internal.util.xml.impl.Pair=var1736, r0=var101, $r1=var1595, $c0=var190, $r11=var1360, $r4=var1229, $r3=var1920, $i1=var1329, $i2=var3274, 1=var1113}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: jdk.internal.util.xml.impl.Pair;	$r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$c0 = $r1[0];	if $c0 == 0 goto $r11 = new java.lang.String;	$r11 = new java.lang.String;	$r4 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$r3 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$i1 = lengthof $r3;	$i2 = $i1 - 1;	specialinvoke $r11.<java.lang.String: void <init>(char[],int,int)>($r4, 1, $i2);	return $r11
;block_num 2
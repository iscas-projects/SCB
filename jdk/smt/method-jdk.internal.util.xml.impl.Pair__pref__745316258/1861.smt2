(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var842 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun chars/2073447641 (var842) (Array Int Int))
(declare-fun String-init () String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var842 var842)
(declare-const var600 var842) ; Statement: r0 := @this: jdk.internal.util.xml.impl.Pair 
(assert (not (= var600 null-var842)))
(define-const var3880 (Array Int Int) (chars/2073447641 var600)) ; Statement: $r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var2312 Int (select var3880 0)) ; Statement: $c0 = $r1[0] 
 ; Statement: if $c0 == 0 goto return "" 
(assert (not (= var2312 0))) ; Negate: Cond: $c0 == 0  
(define-const var2544 String String-init) ; Statement: $r5 = new java.lang.String 
(define-const var3342 (Array Int Int) (chars/2073447641 var600)) ; Statement: $r4 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var519 (Array Int Int) (chars/2073447641 var600)) ; Statement: $r3 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var3089 Int (select var519 0)) ; Statement: $c1 = $r3[0] 
(define-const var2450 Int (cast-from-Int-to-Int var3089)) ; Statement: $i3 = (int) $c1 
(define-const var3359 Int (- var2450 1)) ; Statement: $i2 = $i3 - 1 
(assert true)
;(assert (<init>/-253222812 var2544 var3342 1 var3359)) ; Statement: specialinvoke $r5.<java.lang.String: void <init>(char[],int,int)>($r4, 1, $i2) 

(declare-const var2544!1 String)
(declare-const var3342!1 (Array Int Int))
(declare-const var2526 Int)
(declare-const var3359!1 Int)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {chars/2073447641=([jdk.internal.util.xml.impl.Pair], char[]), String-init=([], java.lang.String), cast-from-Int-to-Int=([char], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var842=jdk.internal.util.xml.impl.Pair, var600=r0, var3880=$r1, var2312=$c0, var2544=$r5, var3342=$r4, var519=$r3, var3089=$c1, var2450=$i3, var3359=$i2, var2526=1}
; {jdk.internal.util.xml.impl.Pair=var842, r0=var600, $r1=var3880, $c0=var2312, $r5=var2544, $r4=var3342, $r3=var519, $c1=var3089, $i3=var2450, $i2=var3359, 1=var2526}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: jdk.internal.util.xml.impl.Pair;	$r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$c0 = $r1[0];	if $c0 == 0 goto return "";	$r5 = new java.lang.String;	$r4 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$r3 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$c1 = $r3[0];	$i3 = (int) $c1;	$i2 = $i3 - 1;	specialinvoke $r5.<java.lang.String: void <init>(char[],int,int)>($r4, 1, $i2);	return $r5
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun chars/2073447641 (var149) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var149 var149)
(declare-const var3292 var149) ; Statement: r1 := @this: jdk.internal.util.xml.impl.Pair 
(assert (not (= var3292 null-var149)))
(define-const var2114 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var3679 (Array Int Int) (chars/2073447641 var3292)) ; Statement: $r3 = r1.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var3215 (Array Int Int) (chars/2073447641 var3292)) ; Statement: $r2 = r1.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var3432 Int (getLength-Arr-Int-1 var3215)) ; Statement: $i0 = lengthof $r2 
(define-const var2773 Int (- var3432 1)) ; Statement: $i1 = $i0 - 1 
(assert true)
;(assert (<init>/-253222812 var2114 var3679 1 var2773)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r3, 1, $i1) 

(declare-const var2114!1 String)
(declare-const var3679!1 (Array Int Int))
(declare-const var3899 Int)
(declare-const var2773!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), chars/2073447641=([jdk.internal.util.xml.impl.Pair], char[]), getLength-Arr-Int-1=([char[]], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var149=jdk.internal.util.xml.impl.Pair, var3292=r1, var2114=$r0, var3679=$r3, var3215=$r2, var3432=$i0, var2773=$i1, var3899=1}
; {jdk.internal.util.xml.impl.Pair=var149, r1=var3292, $r0=var2114, $r3=var3679, $r2=var3215, $i0=var3432, $i1=var2773, 1=var3899}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: jdk.internal.util.xml.impl.Pair;	$r0 = new java.lang.String;	$r3 = r1.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$r2 = r1.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$i0 = lengthof $r2;	$i1 = $i0 - 1;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r3, 1, $i1);	return $r0
;block_num 1
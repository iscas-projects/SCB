(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1848 0)
(declare-sort var407 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var407-init () var407)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun <init>/923117832 (var407 Int (Array Int Int) Int Int) void)
(declare-const null-String String)
(declare-const var1550 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1550 null-String)))
(assert true)
(define-const var1751 (Array Int Int) (toCharArray/415275702 var1550)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var1495 var407 var407-init) ; Statement: $r3 = new jdk.internal.org.objectweb.asm.Type 
(define-const var3174 Int (select var1751 0)) ; Statement: $c0 = r1[0] 
(define-const var1045 Int (cast-from-Int-to-Int var3174)) ; Statement: $i3 = (int) $c0 
 ; Statement: if $i3 != 91 goto $b2 = 10 
(assert (not (not (= var1045 91)))) ; Negate: Cond: $i3 != 91  
(define-const var3567 Int 9) ; Statement: $b2 = 9 
 ; Statement: goto [?= $i1 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var3689 Int (getLength-Arr-Int-1 var1751)) ; Statement: $i1 = lengthof r1 
(assert true)
;(assert (<init>/923117832 var1495 var3567 var1751 0 var3689)) ; Statement: specialinvoke $r3.<jdk.internal.org.objectweb.asm.Type: void <init>(int,char[],int,int)>($b2, r1, 0, $i1) 

(declare-const var1495!1 var407)
(declare-const var3567!1 Int)
(declare-const var1751!1 (Array Int Int))
(declare-const var2122 Int)
(declare-const var3689!1 Int)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), var407-init=([], jdk.internal.org.objectweb.asm.Type), cast-from-Int-to-Int=([char], int), getLength-Arr-Int-1=([char[]], int), <init>/923117832=([jdk.internal.org.objectweb.asm.Type, int, char[], int, int], void)}
; {var1550=r0, var1848=null_type, var1751=r1, var407=jdk.internal.org.objectweb.asm.Type, var1495=$r3, var3174=$c0, var1045=$i3, var3567=$b2, var3689=$i1, var2122=0}
; {r0=var1550, null_type=var1848, r1=var1751, jdk.internal.org.objectweb.asm.Type=var407, $r3=var1495, $c0=var3174, $i3=var1045, $b2=var3567, $i1=var3689, 0=var2122}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$r3 = new jdk.internal.org.objectweb.asm.Type;	$c0 = r1[0];	$i3 = (int) $c0;	if $i3 != 91 goto $b2 = 10;	$b2 = 9;	goto [?= $i1 = lengthof r1];	$i1 = lengthof r1;	specialinvoke $r3.<jdk.internal.org.objectweb.asm.Type: void <init>(int,char[],int,int)>($b2, r1, 0, $i1);	return $r3
;block_num 3
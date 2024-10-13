(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2840 0)
(declare-sort var3131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var3131-init () var3131)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun <init>/923117832 (var3131 Int (Array Int Int) Int Int) void)
(declare-const null-String String)
(declare-const var3726 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3726 null-String)))
(assert true)
(define-const var333 (Array Int Int) (toCharArray/415275702 var3726)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var3412 var3131 var3131-init) ; Statement: $r3 = new jdk.internal.org.objectweb.asm.Type 
(define-const var3478 Int (select var333 0)) ; Statement: $c0 = r1[0] 
(define-const var3332 Int (cast-from-Int-to-Int var3478)) ; Statement: $i3 = (int) $c0 
 ; Statement: if $i3 != 91 goto $b2 = 10 
(assert (not (= var3332 91))) ; Cond: $i3 != 91 
(define-const var3758 Int 10) ; Statement: $b2 = 10 
(assert true) ; Non Conditional
(define-const var3319 Int (getLength-Arr-Int-1 var333)) ; Statement: $i1 = lengthof r1 
(assert true)
;(assert (<init>/923117832 var3412 var3758 var333 0 var3319)) ; Statement: specialinvoke $r3.<jdk.internal.org.objectweb.asm.Type: void <init>(int,char[],int,int)>($b2, r1, 0, $i1) 

(declare-const var3412!1 var3131)
(declare-const var3758!1 Int)
(declare-const var333!1 (Array Int Int))
(declare-const var986 Int)
(declare-const var3319!1 Int)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), var3131-init=([], jdk.internal.org.objectweb.asm.Type), cast-from-Int-to-Int=([char], int), getLength-Arr-Int-1=([char[]], int), <init>/923117832=([jdk.internal.org.objectweb.asm.Type, int, char[], int, int], void)}
; {var3726=r0, var2840=null_type, var333=r1, var3131=jdk.internal.org.objectweb.asm.Type, var3412=$r3, var3478=$c0, var3332=$i3, var3758=$b2, var3319=$i1, var986=0}
; {r0=var3726, null_type=var2840, r1=var333, jdk.internal.org.objectweb.asm.Type=var3131, $r3=var3412, $c0=var3478, $i3=var3332, $b2=var3758, $i1=var3319, 0=var986}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$r3 = new jdk.internal.org.objectweb.asm.Type;	$c0 = r1[0];	$i3 = (int) $c0;	if $i3 != 91 goto $b2 = 10;	$b2 = 10;	$i1 = lengthof r1;	specialinvoke $r3.<jdk.internal.org.objectweb.asm.Type: void <init>(int,char[],int,int)>($b2, r1, 0, $i1);	return $r3
;block_num 3
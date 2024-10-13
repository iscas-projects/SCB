(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var879 0)
(declare-sort var3976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3976_checkIdentifier/-1838711444 (String Int) Int)
(declare-fun var3976_checkChar/555729649 (Int String Int) Int)
(declare-fun var3976_getChar/635386524 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3677 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3677 null-String)))
(declare-const var538 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var538 null-Int)))
(define-const var515 Int (var3976_checkIdentifier/-1838711444 var3677 var538)) ; Statement: i4 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkIdentifier(java.lang.String,int)>(r0, i3) 
(define-const var2268 Int (var3976_checkChar/555729649 58 var3677 var515)) ; Statement: i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(58, r0, i4) 
(define-const var3092 String "L[T") ; Statement: $r1 = "L[T" 
(define-const var3140 Int (var3976_getChar/635386524 var3677 var2268)) ; Statement: $c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i5) 
(define-const var3020 Int (cast-from-Int-to-Int var3140)) ; Statement: $i7 = (int) $c0 
(assert true)
(define-const var3653 Int (indexOf/-1037706067 var3092 var3020)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>($i7) 
(define-const var2668 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if $i1 == $i9 goto $c6 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i5) 
(assert (= var3653 var2668)) ; Cond: $i1 == $i9 
(define-const var1424 Int (var3976_getChar/635386524 var3677 var2268)) ; Statement: $c6 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i5) 
(define-const var731 Int (cast-from-Int-to-Int var1424)) ; Statement: $i10 = (int) $c6 
 ; Statement: if $i10 != 58 goto return i5 
(assert (not (= var731 58))) ; Cond: $i10 != 58 
 ; Statement: return i5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3976_checkIdentifier/-1838711444=([java.lang.String, int], int), var3976_checkChar/555729649=([char, java.lang.String, int], int), var3976_getChar/635386524=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int)}
; {var3677=r0, var879=null_type, var538=i3, var3976=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var515=i4, var2268=i5, var3092=$r1, var3140=$c0, var3020=$i7, var3653=$i1, var2668=$i9, var1424=$c6, var731=$i10}
; {r0=var3677, null_type=var879, i3=var538, jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var3976, i4=var515, i5=var2268, $r1=var3092, $c0=var3140, $i7=var3020, $i1=var3653, $i9=var2668, $c6=var1424, $i10=var731}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i3 := @parameter1: int;	i4 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkIdentifier(java.lang.String,int)>(r0, i3);	i5 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkChar(char,java.lang.String,int)>(58, r0, i4);	$r1 = "L[T";	$c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i5);	$i7 = (int) $c0;	$i1 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>($i7);	$i9 = (int) -1;	if $i1 == $i9 goto $c6 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i5);	$c6 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i5);	$i10 = (int) $c6;	if $i10 != 58 goto return i5;	return i5
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2664 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun salt/837148041 (var2664) (Array Int Int))
(declare-fun deriveNewAlphabet/-1037809212 (var2664 (Array Int Int) (Array Int Int) Int) (Array Int Int))
(declare-fun length/-171891354 (String) Int)
(declare-fun translate/-1088715301 (var2664 Int (Array Int Int) String Int) String)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var2664 var2664)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3225 var2664) ; Statement: r0 := @this: cn.hutool.core.codec.Hashids 
(assert (not (= var3225 null-var2664)))
(declare-const var3403 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var3403 null-__Array__Int__Int__)))
(declare-const var3654 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var3654 null-Int)))
(declare-const var2264 String) ; Statement: r3 := @parameter2: java.lang.StringBuilder 
(assert (not (= var2264 null-String)))
(declare-const var2231 (Array Int Int)) ; Statement: r4 := @parameter3: long[] 
(assert (not (= var2231 null-__Array__Int__Int__)))
(declare-const var2145 Int) ; Statement: i2 := @parameter4: int 
(assert (not (= var2145 null-Int)))
(define-const var2866 (Array Int Int) (salt/837148041 var3225)) ; Statement: $r2 = r0.<cn.hutool.core.codec.Hashids: char[] salt> 
(assert true)
;(assert (deriveNewAlphabet/-1037809212 var3225 var3403 var2866 var3654)) ; Statement: specialinvoke r0.<cn.hutool.core.codec.Hashids: char[] deriveNewAlphabet(char[],char[],char)>(r1, $r2, c0) 

(declare-const var3225!1 var2664)
(declare-const var3403!1 (Array Int Int))
(declare-const var2866!1 (Array Int Int))
(declare-const var3654!1 Int)
(assert true)
(define-const var1455 Int (length/-171891354 var2264)) ; Statement: i1 = virtualinvoke r3.<java.lang.StringBuilder: int length()>() 
(define-const var3367 Int (select var2231 var2145)) ; Statement: $l3 = r4[i2] 
(assert true)
;(assert (translate/-1088715301 var3225!1 var3367 var3403!1 var2264 var1455)) ; Statement: specialinvoke r0.<cn.hutool.core.codec.Hashids: java.lang.StringBuilder translate(long,char[],java.lang.StringBuilder,int)>($l3, r1, r3, i1) 

(declare-const var3225!2 var2664)
(declare-const var3367!1 Int)
(declare-const var3403!2 (Array Int Int))
(declare-const var2264!1 String)
(declare-const var1455!1 Int)
 ; Statement: if i2 != 0 goto $i5 = i2 + 1 
(assert (not (= var2145 0))) ; Cond: i2 != 0 
(define-const var3594 Int (+ var2145 1)) ; Statement: $i5 = i2 + 1 
(define-const var1896 Int (getLength-Arr-Int-1 var2231)) ; Statement: $i4 = lengthof r4 
 ; Statement: if $i5 >= $i4 goto return 
(assert (>= var3594 var1896)) ; Cond: $i5 >= $i4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {salt/837148041=([cn.hutool.core.codec.Hashids], char[]), deriveNewAlphabet/-1037809212=([cn.hutool.core.codec.Hashids, char[], char[], char], char[]), length/-171891354=([java.lang.StringBuilder], int), translate/-1088715301=([cn.hutool.core.codec.Hashids, long, char[], java.lang.StringBuilder, int], java.lang.StringBuilder), getLength-Arr-Int-1=([long[]], int)}
; {var2664=cn.hutool.core.codec.Hashids, var3225=r0, var3403=r1, var3654=c0, var2264=r3, var2231=r4, var2145=i2, var2866=$r2, var1455=i1, var3367=$l3, var3594=$i5, var1896=$i4}
; {cn.hutool.core.codec.Hashids=var2664, r0=var3225, r1=var3403, c0=var3654, r3=var2264, r4=var2231, i2=var2145, $r2=var2866, i1=var1455, $l3=var3367, $i5=var3594, $i4=var1896}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: cn.hutool.core.codec.Hashids;	r1 := @parameter0: char[];	c0 := @parameter1: char;	r3 := @parameter2: java.lang.StringBuilder;	r4 := @parameter3: long[];	i2 := @parameter4: int;	$r2 = r0.<cn.hutool.core.codec.Hashids: char[] salt>;	specialinvoke r0.<cn.hutool.core.codec.Hashids: char[] deriveNewAlphabet(char[],char[],char)>(r1, $r2, c0);	i1 = virtualinvoke r3.<java.lang.StringBuilder: int length()>();	$l3 = r4[i2];	specialinvoke r0.<cn.hutool.core.codec.Hashids: java.lang.StringBuilder translate(long,char[],java.lang.StringBuilder,int)>($l3, r1, r3, i1);	if i2 != 0 goto $i5 = i2 + 1;	$i5 = i2 + 1;	$i4 = lengthof r4;	if $i5 >= $i4 goto return;	return
;block_num 3
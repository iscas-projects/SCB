(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var302 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var302 null-String)))
(assert true)
(define-const var3134 Int (length/-134980193 var302)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var618 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (byte)[$i0] 
(define-const var773 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2442 Int (length/-134980193 var302)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i1 goto return r1 
(assert (not (>= var773 var2442))) ; Negate: Cond: i4 >= $i1  
(assert (not (and true (and (> (str.len var302) var773) (<= 0 var773)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), arr-Int-init=([], byte[]), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], byte)}
; {var302=r0, var1166=null_type, var3134=$i0, var618=r1, var773=i4, var2442=$i1, var240=$c2, var3871=$b3}
; {r0=var302, null_type=var1166, $i0=var3134, r1=var618, i4=var773, $i1=var2442, $c2=var240, $b3=var3871}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 4,"<java.lang.String: char charAt(int)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	r1 = newarray (byte)[$i0];	i4 = 0;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i1 goto return r1;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i4);	$b3 = (byte) $c2;	r1[i4] = $b3;	i4 = i4 + 1;	goto [?= $i1 = virtualinvoke r0.<java.lang.String: int length()>()];	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i1 goto return r1;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i4);	$b3 = (byte) $c2;	r1[i4] = $b3;	i4 = i4 + 1;	goto [?= $i1 = virtualinvoke r0.<java.lang.String: int length()>()];	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i1 goto return r1;	return r1
;block_num 7
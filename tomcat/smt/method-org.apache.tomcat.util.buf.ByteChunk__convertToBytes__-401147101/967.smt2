(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var216 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2002 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2002 null-String)))
(assert true)
(define-const var3353 Int (length/-134980193 var2002)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2297 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (byte)[$i0] 
(define-const var2303 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1002 Int (length/-134980193 var2002)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i1 goto return r1 
(assert (not (>= var2303 var1002))) ; Negate: Cond: i4 >= $i1  
(assert (and true (and (> (str.len var2002) var2303) (<= 0 var2303))))
(define-const var2401 Int (charAt/698050440 var2002 var2303)) ; Statement: $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i4) 
(define-const var486 Int (cast-from-Int-to-Int var2401)) ; Statement: $b3 = (byte) $c2 
(declare-const var2297!1 (Array Int Int))
(assert (not (= var2297!1 null-__Array__Int__Int__)))
(assert (= (select var2297!1 var2303) var486)) ; Statement: r1[i4] = $b3 
(define-const var2303!1 Int (+ var2303 1)) ; Statement: i4 = i4 + 1 
 ; Statement: goto [?= $i1 = virtualinvoke r0.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1002!1 Int (length/-134980193 var2002)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i1 goto return r1 
(assert (>= var2303!1 var1002!1)) ; Cond: i4 >= $i1 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), arr-Int-init=([], byte[]), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], byte)}
; {var2002=r0, var216=null_type, var3353=$i0, var2297=r1, var2303=i4, var1002=$i1, var2401=$c2, var486=$b3}
; {r0=var2002, null_type=var216, $i0=var3353, r1=var2297, i4=var2303, $i1=var1002, $c2=var2401, $b3=var486}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 3,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	r1 = newarray (byte)[$i0];	i4 = 0;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i1 goto return r1;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i4);	$b3 = (byte) $c2;	r1[i4] = $b3;	i4 = i4 + 1;	goto [?= $i1 = virtualinvoke r0.<java.lang.String: int length()>()];	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i1 goto return r1;	return r1
;block_num 5
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3633 0)
(declare-sort var765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var765_min/-1112089438 (Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var2719 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2719 null-String)))
(declare-const var888 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var888 null-String)))
(assert true)
(define-const var127 Int (length/-134980193 var2719)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var883 Int (length/-134980193 var888)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1446 Int (var765_min/-1112089438 var127 var883)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>(i0, $i1) 
(define-const var2384 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
(define-const var3828 Int var2384) ; Statement: i6 = $i9 
(define-const var2868 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i2 goto (branch) 
(assert (not (>= var2868 var1446))) ; Negate: Cond: i7 >= i2  
(assert (and true (and (> (str.len var2719) var2868) (<= 0 var2868))))
(define-const var806 Int (charAt/698050440 var2719 var2868)) ; Statement: c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i7) 
(assert (and true (and (> (str.len var888) var2868) (<= 0 var2868))))
(define-const var219 Int (charAt/698050440 var888 var2868)) ; Statement: $c4 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i7) 
(define-const var2425 Int (cast-from-Int-to-Int var806)) ; Statement: $i10 = (int) c3 
(define-const var2589 Int (cast-from-Int-to-Int var219)) ; Statement: $i11 = (int) $c4 
 ; Statement: if $i10 == $i11 goto $z0 = staticinvoke <java.lang.Character: boolean isUpperCase(char)>(c3) 
(assert (not (= var2425 var2589))) ; Negate: Cond: $i10 == $i11  
(define-const var2085 Int (+ var3828 1)) ; Statement: $i5 = i6 + 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var2719) var2085) (>= var2085 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var765_min/-1112089438=([int, int], int), cast-from-Int-to-Int=([int], int), charAt/698050440=([java.lang.String, int], char), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2719=r0, var3633=null_type, var888=r1, var127=i0, var883=$i1, var765=java.lang.Math, var1446=i2, var2384=$i9, var3828=i6, var2868=i7, var806=c3, var219=$c4, var2425=$i10, var2589=$i11, var2085=$i5, var1982=$r2}
; {r0=var2719, null_type=var3633, r1=var888, i0=var127, $i1=var883, java.lang.Math=var765, i2=var1446, $i9=var2384, i6=var3828, i7=var2868, c3=var806, $c4=var219, $i10=var2425, $i11=var2589, $i5=var2085, $r2=var1982}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	i2 = staticinvoke <java.lang.Math: int min(int,int)>(i0, $i1);	$i9 = (int) -1;	i6 = $i9;	i7 = 0;	if i7 >= i2 goto (branch);	c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i7);	$c4 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i7);	$i10 = (int) c3;	$i11 = (int) $c4;	if $i10 == $i11 goto $z0 = staticinvoke <java.lang.Character: boolean isUpperCase(char)>(c3);	$i5 = i6 + 1;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i5);	return $r2
;block_num 4
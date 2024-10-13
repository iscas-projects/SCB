(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3252 0)
(declare-sort var812 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var812_toLowerCase/1461689736 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1291 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1291 null-String)))
(declare-const var2054 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2054 null-Int)))
(declare-const var3098 Int) ; Statement: c5 := @parameter2: char 
(assert (not (= var3098 null-Int)))
(declare-const var1010 Int) ; Statement: c2 := @parameter3: char 
(assert (not (= var1010 null-Int)))
(assert (and true (and (> (str.len var1291) var2054) (<= 0 var2054))))
(define-const var3796 Int (charAt/698050440 var1291 var2054)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(define-const var3819 Int (var812_toLowerCase/1461689736 var3796)) ; Statement: $c3 = staticinvoke <java.lang.Character: char toLowerCase(char)>($c1) 
(define-const var2023 Int (cast-from-Int-to-Int var3819)) ; Statement: $i7 = (int) $c3 
(define-const var2884 Int (cast-from-Int-to-Int var1010)) ; Statement: $i8 = (int) c2 
 ; Statement: if $i7 == $i8 goto $z0 = 0 
(assert (= var2023 var2884)) ; Cond: $i7 == $i8 
(define-const var854 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), var812_toLowerCase/1461689736=([char], char), cast-from-Int-to-Int=([char], int)}
; {var1291=r0, var3252=null_type, var2054=i0, var3098=c5, var1010=c2, var3796=$c1, var812=java.lang.Character, var3819=$c3, var2023=$i7, var2884=$i8, var854=$z0}
; {r0=var1291, null_type=var3252, i0=var2054, c5=var3098, c2=var1010, $c1=var3796, java.lang.Character=var812, $c3=var3819, $i7=var2023, $i8=var2884, $z0=var854}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	c5 := @parameter2: char;	c2 := @parameter3: char;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$c3 = staticinvoke <java.lang.Character: char toLowerCase(char)>($c1);	$i7 = (int) $c3;	$i8 = (int) c2;	if $i7 == $i8 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String_copyValueOf/-754682442 ((Array Int Int)) String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3644 Int) ; Statement: c4 := @parameter0: char 
(assert (not (= var3644 null-Int)))
(define-const var2861 String "0123456789ABCDEF") ; Statement: r0 = "0123456789ABCDEF" 
(define-const var2301 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (char)[6] 
(declare-const var2301!1 (Array Int Int))
(assert (not (= var2301!1 null-__Array__Int__Int__)))
(assert (= (select var2301!1 0) 92)) ; Statement: $r1[0] = 92 
(declare-const var2301!2 (Array Int Int))
(assert (not (= var2301!2 null-__Array__Int__Int__)))
(assert (= (select var2301!2 1) 117)) ; Statement: $r1[1] = 117 
(declare-const var2301!3 (Array Int Int))
(assert (not (= var2301!3 null-__Array__Int__Int__)))
(assert (= (select var2301!3 2) 0)) ; Statement: $r1[2] = 0 
(declare-const var2301!4 (Array Int Int))
(assert (not (= var2301!4 null-__Array__Int__Int__)))
(assert (= (select var2301!4 3) 0)) ; Statement: $r1[3] = 0 
(declare-const var2301!5 (Array Int Int))
(assert (not (= var2301!5 null-__Array__Int__Int__)))
(assert (= (select var2301!5 4) 0)) ; Statement: $r1[4] = 0 
(declare-const var2301!6 (Array Int Int))
(assert (not (= var2301!6 null-__Array__Int__Int__)))
(assert (= (select var2301!6 5) 0)) ; Statement: $r1[5] = 0 
(define-const var1605 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= 4 goto $r2 = staticinvoke <java.lang.String: java.lang.String copyValueOf(char[])>($r1) 
(assert (>= var1605 4)) ; Cond: i5 >= 4 
(define-const var489 String (String_copyValueOf/-754682442 var2301!6)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String copyValueOf(char[])>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], char[]), String_copyValueOf/-754682442=([char[]], java.lang.String)}
; {var3644=c4, var2861=r0, var2301=$r1, var1605=i5, var489=$r2}
; {c4=var3644, r0=var2861, $r1=var2301, i5=var1605, $r2=var489}
;seq <java.lang.String: java.lang.String copyValueOf(char[])>
;cnt {"<java.lang.String: java.lang.String copyValueOf(char[])>": 1}
;stmts c4 := @parameter0: char;	r0 = "0123456789ABCDEF";	$r1 = newarray (char)[6];	$r1[0] = 92;	$r1[1] = 117;	$r1[2] = 0;	$r1[3] = 0;	$r1[4] = 0;	$r1[5] = 0;	i5 = 0;	if i5 >= 4 goto $r2 = staticinvoke <java.lang.String: java.lang.String copyValueOf(char[])>($r1);	$r2 = staticinvoke <java.lang.String: java.lang.String copyValueOf(char[])>($r1);	return $r2
;block_num 3
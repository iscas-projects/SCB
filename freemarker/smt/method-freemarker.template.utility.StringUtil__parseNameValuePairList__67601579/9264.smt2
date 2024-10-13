(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3718 0)
(declare-sort var65 0)
(declare-sort var672 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var65-init () var65)
(declare-fun <init>/-201242697 (var65) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var672_isWhitespace/-755916491 (Int) Bool)
(declare-const null-String String)
(declare-const var999 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var999 null-String)))
(declare-const var1200 String) ; Statement: r35 := @parameter1: java.lang.String 
(assert (not (= var1200 null-String)))
(define-const var2276 var65 var65-init) ; Statement: $r0 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2276)) ; Statement: specialinvoke $r0.<java.util.HashMap: void <init>()>() 

(declare-const var2276!1 var65)
(define-const var1009 Int 32) ; Statement: c3 = 32 
(assert true)
(define-const var2346 Int (length/-134980193 var999)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1392 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (not (>= var1392 var2346))) ; Negate: Cond: i4 >= i0  
(assert (and true (and (> (str.len var999) var1392) (<= 0 var1392))))
(define-const var1009!1 Int (charAt/698050440 var999 var1392)) ; Statement: c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4) 
(define-const var3225 Bool (var672_isWhitespace/-755916491 var1009!1)) ; Statement: $z5 = staticinvoke <java.lang.Character: boolean isWhitespace(char)>(c3) 
 ; Statement: if $z5 != 0 goto i4 = i4 + 1 
(assert (not (not (= (ite var3225 1 0) 0)))) ; Negate: Cond: $z5 != 0  
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i4 != i0 goto i1 = i4 
(assert (not (not (= var1392 var2346)))) ; Negate: Cond: i4 != i0  
 ; Statement: goto [?= return $r0] 
(assert true) ; Non Conditional
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var65-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var672_isWhitespace/-755916491=([char], boolean)}
; {var999=r1, var3718=null_type, var1200=r35, var65=java.util.HashMap, var2276=$r0, var1009=c3, var2346=i0, var1392=i4, var672=java.lang.Character, var3225=$z5}
; {r1=var999, null_type=var3718, r35=var1200, java.util.HashMap=var65, $r0=var2276, c3=var1009, i0=var2346, i4=var1392, java.lang.Character=var672, $z5=var3225}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r35 := @parameter1: java.lang.String;	$r0 = new java.util.HashMap;	specialinvoke $r0.<java.util.HashMap: void <init>()>();	c3 = 32;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i4 = 0;	if i4 >= i0 goto (branch);	c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$z5 = staticinvoke <java.lang.Character: boolean isWhitespace(char)>(c3);	if $z5 != 0 goto i4 = i4 + 1;	goto [?= (branch)];	if i4 != i0 goto i1 = i4;	goto [?= return $r0];	return $r0
;block_num 7
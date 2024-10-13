(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2472 0)
(declare-sort var3169 0)
(declare-sort var1381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3169-init () var3169)
(declare-fun <init>/-201242697 (var3169) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1381_isWhitespace/-755916491 (Int) Bool)
(declare-const null-String String)
(declare-const var1100 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1100 null-String)))
(declare-const var3480 String) ; Statement: r35 := @parameter1: java.lang.String 
(assert (not (= var3480 null-String)))
(define-const var1787 var3169 var3169-init) ; Statement: $r0 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1787)) ; Statement: specialinvoke $r0.<java.util.HashMap: void <init>()>() 

(declare-const var1787!1 var3169)
(define-const var3089 Int 32) ; Statement: c3 = 32 
(assert true)
(define-const var829 Int (length/-134980193 var1100)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1910 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (not (>= var1910 var829))) ; Negate: Cond: i4 >= i0  
(assert (and true (and (> (str.len var1100) var1910) (<= 0 var1910))))
(define-const var3089!1 Int (charAt/698050440 var1100 var1910)) ; Statement: c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4) 
(define-const var2191 Bool (var1381_isWhitespace/-755916491 var3089!1)) ; Statement: $z5 = staticinvoke <java.lang.Character: boolean isWhitespace(char)>(c3) 
 ; Statement: if $z5 != 0 goto i4 = i4 + 1 
(assert (not (= (ite var2191 1 0) 0))) ; Cond: $z5 != 0 
(define-const var1910!1 Int (+ var1910 1)) ; Statement: i4 = i4 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var1910!1 var829)) ; Cond: i4 >= i0 
 ; Statement: if i4 != i0 goto i1 = i4 
(assert (not (not (= var1910!1 var829)))) ; Negate: Cond: i4 != i0  
 ; Statement: goto [?= return $r0] 
(assert true) ; Non Conditional
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3169-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var1381_isWhitespace/-755916491=([char], boolean)}
; {var1100=r1, var2472=null_type, var3480=r35, var3169=java.util.HashMap, var1787=$r0, var3089=c3, var829=i0, var1910=i4, var1381=java.lang.Character, var2191=$z5}
; {r1=var1100, null_type=var2472, r35=var3480, java.util.HashMap=var3169, $r0=var1787, c3=var3089, i0=var829, i4=var1910, java.lang.Character=var1381, $z5=var2191}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r35 := @parameter1: java.lang.String;	$r0 = new java.util.HashMap;	specialinvoke $r0.<java.util.HashMap: void <init>()>();	c3 = 32;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i4 = 0;	if i4 >= i0 goto (branch);	c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$z5 = staticinvoke <java.lang.Character: boolean isWhitespace(char)>(c3);	if $z5 != 0 goto i4 = i4 + 1;	i4 = i4 + 1;	goto [?= (branch)];	if i4 >= i0 goto (branch);	if i4 != i0 goto i1 = i4;	goto [?= return $r0];	return $r0
;block_num 8
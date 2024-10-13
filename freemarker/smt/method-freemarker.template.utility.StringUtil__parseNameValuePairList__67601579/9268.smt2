(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var854 0)
(declare-sort var3879 0)
(declare-sort var2337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3879-init () var3879)
(declare-fun <init>/-201242697 (var3879) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2337_isWhitespace/-755916491 (Int) Bool)
(declare-const null-String String)
(declare-const var2195 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2195 null-String)))
(declare-const var14 String) ; Statement: r35 := @parameter1: java.lang.String 
(assert (not (= var14 null-String)))
(define-const var3578 var3879 var3879-init) ; Statement: $r0 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3578)) ; Statement: specialinvoke $r0.<java.util.HashMap: void <init>()>() 

(declare-const var3578!1 var3879)
(define-const var3837 Int 32) ; Statement: c3 = 32 
(assert true)
(define-const var57 Int (length/-134980193 var2195)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1965 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (not (>= var1965 var57))) ; Negate: Cond: i4 >= i0  
(assert (and true (and (> (str.len var2195) var1965) (<= 0 var1965))))
(define-const var3837!1 Int (charAt/698050440 var2195 var1965)) ; Statement: c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4) 
(define-const var2893 Bool (var2337_isWhitespace/-755916491 var3837!1)) ; Statement: $z5 = staticinvoke <java.lang.Character: boolean isWhitespace(char)>(c3) 
 ; Statement: if $z5 != 0 goto i4 = i4 + 1 
(assert (not (= (ite var2893 1 0) 0))) ; Cond: $z5 != 0 
(define-const var1965!1 Int (+ var1965 1)) ; Statement: i4 = i4 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (not (>= var1965!1 var57))) ; Negate: Cond: i4 >= i0  
(assert (and true (and (> (str.len var2195) var1965!1) (<= 0 var1965!1))))
(define-const var3837!2 Int (charAt/698050440 var2195 var1965!1)) ; Statement: c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4) 
(define-const var2893!1 Bool (var2337_isWhitespace/-755916491 var3837!2)) ; Statement: $z5 = staticinvoke <java.lang.Character: boolean isWhitespace(char)>(c3) 
 ; Statement: if $z5 != 0 goto i4 = i4 + 1 
(assert (not (not (= (ite var2893!1 1 0) 0)))) ; Negate: Cond: $z5 != 0  
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i4 != i0 goto i1 = i4 
(assert (not (not (= var1965!1 var57)))) ; Negate: Cond: i4 != i0  
 ; Statement: goto [?= return $r0] 
(assert true) ; Non Conditional
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3879-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var2337_isWhitespace/-755916491=([char], boolean)}
; {var2195=r1, var854=null_type, var14=r35, var3879=java.util.HashMap, var3578=$r0, var3837=c3, var57=i0, var1965=i4, var2337=java.lang.Character, var2893=$z5}
; {r1=var2195, null_type=var854, r35=var14, java.util.HashMap=var3879, $r0=var3578, c3=var3837, i0=var57, i4=var1965, java.lang.Character=var2337, $z5=var2893}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @parameter0: java.lang.String;	r35 := @parameter1: java.lang.String;	$r0 = new java.util.HashMap;	specialinvoke $r0.<java.util.HashMap: void <init>()>();	c3 = 32;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i4 = 0;	if i4 >= i0 goto (branch);	c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$z5 = staticinvoke <java.lang.Character: boolean isWhitespace(char)>(c3);	if $z5 != 0 goto i4 = i4 + 1;	i4 = i4 + 1;	goto [?= (branch)];	if i4 >= i0 goto (branch);	c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$z5 = staticinvoke <java.lang.Character: boolean isWhitespace(char)>(c3);	if $z5 != 0 goto i4 = i4 + 1;	goto [?= (branch)];	if i4 != i0 goto i1 = i4;	goto [?= return $r0];	return $r0
;block_num 10
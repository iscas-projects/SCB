(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2078 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-1548601273 (var2078) Int)
(declare-fun src/-1548601273 (var2078) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2078 var2078)
(declare-const var1393 var2078) ; Statement: r0 := @this: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var1393 null-var2078)))
(define-const var1282 Int (pos/-1548601273 var1393)) ; Statement: i6 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
(define-const var2460 String (src/-1548601273 var1393)) ; Statement: $r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src> 
(assert true)
(define-const var2895 Int (length/-134980193 var2460)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var3069 Int 0) ; Statement: i7 = 0 
(define-const var583 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var3491 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var3425 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto (branch) 
(assert (>= var1282 var2895)) ; Cond: i6 >= i0 
 ; Statement: if i7 >= 2 goto i9 = i6 
(assert (not (>= var3069 2))) ; Negate: Cond: i7 >= 2  
(define-const var1521 String (src/-1548601273 var1393)) ; Statement: r6 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src> 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> = i6 
(assert (>= var1282 var2895)) ; Cond: i6 >= i0 
(declare-const var1393!1 var2078)
(assert (not (= var1393!1 null-var2078)))
(assert (= (pos/-1548601273 var1393!1) var1282)) ; Statement: r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> = i6 
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], int), src/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2078=freemarker.core.ExtendedDecimalFormatParser, var1393=r0, var1282=i6, var2460=$r1, var2895=i0, var3069=i7, var583=z0, var3491=z2, var3425=z1, var1521=r6}
; {freemarker.core.ExtendedDecimalFormatParser=var2078, r0=var1393, i6=var1282, $r1=var2460, i0=var2895, i7=var3069, z0=var583, z2=var3491, z1=var3425, r6=var1521}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core.ExtendedDecimalFormatParser;	i6 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	$r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src>;	i0 = virtualinvoke $r1.<java.lang.String: int length()>();	i7 = 0;	z0 = 0;	z2 = 0;	z1 = 0;	if i6 >= i0 goto (branch);	if i7 >= 2 goto i9 = i6;	r6 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src>;	goto [?= (branch)];	if i6 >= i0 goto r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> = i6;	r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> = i6;	return r6
;block_num 6
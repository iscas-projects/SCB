(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2924 0)
(declare-sort var3989 0)
(declare-sort var1032 0)
(declare-sort var1989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3989_access$002/541433571 (var3989 var1989) var1989)
(declare-const null-var2924 var2924)
(declare-const null-var3989 var3989)
(declare-const null-String String)
(declare-const var1989-UP var1989)
(declare-const var439 var2924) ; Statement: r3 := @this: freemarker.core.ExtendedDecimalFormatParser$1 
(assert (not (= var439 null-var2924)))
(declare-const var3014 var3989) ; Statement: r2 := @parameter0: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var3014 null-var3989)))
(declare-const var2162 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2162 null-String)))
(assert true)
(define-const var77 Bool (= var2162 "up")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("up") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("down") 
(assert (not (= (ite var77 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var33 var1989 var1989-UP) ; Statement: r4 = <java.math.RoundingMode: java.math.RoundingMode UP> 
 ; Statement: goto [?= staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.math.RoundingMode access$002(freemarker.core.ExtendedDecimalFormatParser,java.math.RoundingMode)>(r2, r4)] 
(assert true) ; Non Conditional
;(assert (var3989_access$002/541433571 var3014 var33)) ; Statement: staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.math.RoundingMode access$002(freemarker.core.ExtendedDecimalFormatParser,java.math.RoundingMode)>(r2, r4) 

(declare-const var3014!1 var3989)
(declare-const var33!1 var1989)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3989_access$002/541433571=([freemarker.core.ExtendedDecimalFormatParser, java.math.RoundingMode], java.math.RoundingMode)}
; {var2924=freemarker.core.ExtendedDecimalFormatParser$1, var439=r3, var3989=freemarker.core.ExtendedDecimalFormatParser, var3014=r2, var2162=r0, var1032=null_type, var77=$z0, var1989=java.math.RoundingMode, var33=r4}
; {freemarker.core.ExtendedDecimalFormatParser$1=var2924, r3=var439, freemarker.core.ExtendedDecimalFormatParser=var3989, r2=var3014, r0=var2162, null_type=var1032, $z0=var77, java.math.RoundingMode=var1989, r4=var33}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: freemarker.core.ExtendedDecimalFormatParser$1;	r2 := @parameter0: freemarker.core.ExtendedDecimalFormatParser;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("up");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("down");	r4 = <java.math.RoundingMode: java.math.RoundingMode UP>;	goto [?= staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.math.RoundingMode access$002(freemarker.core.ExtendedDecimalFormatParser,java.math.RoundingMode)>(r2, r4)];	staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.math.RoundingMode access$002(freemarker.core.ExtendedDecimalFormatParser,java.math.RoundingMode)>(r2, r4);	return
;block_num 3
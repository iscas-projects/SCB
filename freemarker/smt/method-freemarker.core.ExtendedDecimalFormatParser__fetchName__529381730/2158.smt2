(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun src/-1548601273 (var3554) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun pos/-1548601273 (var3554) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3554 var3554)
(declare-const var2937 var3554) ; Statement: r0 := @this: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var2937 null-var3554)))
(define-const var2085 String (src/-1548601273 var2937)) ; Statement: $r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src> 
(assert true)
(define-const var130 Int (length/-134980193 var2085)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var2053 Int (pos/-1548601273 var2937)) ; Statement: i1 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
(define-const var588 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(define-const var138 Bool (ite (= 1 1) true false)) ; Statement: z4 = 1 
(define-const var2570 Bool (ite (= 1 1) true false)) ; Statement: z3 = 1 
(assert true) ; Non Conditional
(define-const var3589 Int (pos/-1548601273 var2937)) ; Statement: $i2 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
 ; Statement: if $i2 >= i0 goto (branch) 
(assert (>= var3589 var130)) ; Cond: $i2 >= i0 
 ; Statement: if z4 != 0 goto $r4 = null 
(assert (not (not (= (ite var138 1 0) 0)))) ; Negate: Cond: z4 != 0  
(define-const var1314 String (src/-1548601273 var2937)) ; Statement: $r2 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src> 
(define-const var573 Int (pos/-1548601273 var2937)) ; Statement: $i3 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
(assert (and true (and (>= var2053 0) (>= (str.len var1314) var573) (>= var573 var2053))))
(define-const var1061 String (substring/-1240304868 var1314 var2053 var573)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(i1, $i3) 
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {src/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], java.lang.String), length/-134980193=([java.lang.String], int), pos/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3554=freemarker.core.ExtendedDecimalFormatParser, var2937=r0, var2085=$r1, var130=i0, var2053=i1, var588=z2, var138=z4, var2570=z3, var3589=$i2, var1314=$r2, var573=$i3, var1061=$r4}
; {freemarker.core.ExtendedDecimalFormatParser=var3554, r0=var2937, $r1=var2085, i0=var130, i1=var2053, z2=var588, z4=var138, z3=var2570, $i2=var3589, $r2=var1314, $i3=var573, $r4=var1061}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: freemarker.core.ExtendedDecimalFormatParser;	$r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src>;	i0 = virtualinvoke $r1.<java.lang.String: int length()>();	i1 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	z2 = 1;	z4 = 1;	z3 = 1;	$i2 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	if $i2 >= i0 goto (branch);	if z4 != 0 goto $r4 = null;	$r2 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src>;	$i3 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	$r4 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(i1, $i3);	goto [?= return $r4];	return $r4
;block_num 5
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var156 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var156 null-Int)))
(declare-const var455 String) ; Statement: r0 := @parameter1: java.lang.StringBuilder 
(assert (not (= var455 null-String)))
(define-const var1518 Int (cast-from-Int-to-Int var156)) ; Statement: $i17 = (int) c0 
 ; Statement: lookupswitch($i17) {     case 0: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\0");     case 9: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\t");     case 10: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\n");     case 12: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\f");     case 13: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\r");     case 92: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\\");     default: goto $i18 = (int) c0; } 
(assert (and (= var1518 92) (and (not (= var1518 13)) (and (not (= var1518 12)) (and (not (= var1518 10)) (and (not (= var1518 9)) (and (not (= var1518 0)) true))))))) ; Intersect: Cond: $i17 == 92  and Intersect: Negate: Cond: $i17 == 13   and Intersect: Negate: Cond: $i17 == 12   and Intersect: Negate: Cond: $i17 == 10   and Intersect: Negate: Cond: $i17 == 9   and Intersect: Negate: Cond: $i17 == 0   and Non Conditional      
(assert true)
;(assert (append/672562846 var455 "\u005c\u005c")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\\") 
(declare-const var455!1 String)
(assert (= var455!1 (str.++ var455 "\u005c\u005c")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var156=c0, var455=r0, var1518=$i17}
; {c0=var156, r0=var455, $i17=var1518}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts c0 := @parameter0: char;	r0 := @parameter1: java.lang.StringBuilder;	$i17 = (int) c0;	lookupswitch($i17) {     case 0: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\0");     case 9: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\t");     case 10: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\n");     case 12: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\f");     case 13: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\r");     case 92: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\\");     default: goto $i18 = (int) c0; };	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\\");	goto [?= return];	return
;block_num 3
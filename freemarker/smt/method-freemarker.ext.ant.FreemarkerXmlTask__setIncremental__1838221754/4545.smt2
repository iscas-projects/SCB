(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2 0)
(declare-sort var3050 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun incremental/-1093249286 (var2) Bool)
(declare-const null-var2 var2)
(declare-const null-String String)
(declare-const var2324 var2) ; Statement: r0 := @this: freemarker.ext.ant.FreemarkerXmlTask 
(assert (not (= var2324 null-var2)))
(declare-const var2251 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2251 null-String)))
(assert true)
(define-const var458 Bool (equalsIgnoreCase/-92311102 var2251 "false")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("false") 
 ; Statement: if $z0 != 0 goto $z3 = 0 
(assert (not (= (ite var458 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1272 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(declare-const var2324!1 var2)
(assert (not (= var2324!1 null-var2)))
(assert (= (incremental/-1093249286 var2324!1) var1272)) ; Statement: r0.<freemarker.ext.ant.FreemarkerXmlTask: boolean incremental> = $z3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), incremental/-1093249286=([freemarker.ext.ant.FreemarkerXmlTask], boolean)}
; {var2=freemarker.ext.ant.FreemarkerXmlTask, var2324=r0, var2251=r1, var3050=null_type, var458=$z0, var1272=$z3}
; {freemarker.ext.ant.FreemarkerXmlTask=var2, r0=var2324, r1=var2251, null_type=var3050, $z0=var458, $z3=var1272}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.ext.ant.FreemarkerXmlTask;	r1 := @parameter0: java.lang.String;	$z0 = virtualinvoke r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("false");	if $z0 != 0 goto $z3 = 0;	$z3 = 0;	r0.<freemarker.ext.ant.FreemarkerXmlTask: boolean incremental> = $z3;	return
;block_num 3
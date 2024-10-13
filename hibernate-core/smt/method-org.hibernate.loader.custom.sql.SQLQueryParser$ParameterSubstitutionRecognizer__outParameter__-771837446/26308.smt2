(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun result/373521991 (var1479) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var1479 var1479)
(declare-const null-Int Int)
(declare-const var1527 var1479) ; Statement: r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer 
(assert (not (= var1527 null-var1479)))
(declare-const var1142 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1142 null-Int)))
(define-const var768 String (result/373521991 var1527)) ; Statement: $r1 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result> 
(assert true)
;(assert (append/-1166366385 var768 63)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(63) 
(declare-const var768!1 String)
(assert (str.prefixof var768 var768!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {result/373521991=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1479=org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer, var1527=r0, var1142=i0, var768=$r1}
; {org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer=var1479, r0=var1527, i0=var1142, $r1=var768}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer;	i0 := @parameter0: int;	$r1 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(63);	return
;block_num 1
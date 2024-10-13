(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1670 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun result/373521991 (var1670) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var1670 var1670)
(declare-const null-Int Int)
(declare-const var894 var1670) ; Statement: r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer 
(assert (not (= var894 null-var1670)))
(declare-const var3561 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3561 null-Int)))
(define-const var196 String (result/373521991 var894)) ; Statement: $r1 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result> 
(assert true)
;(assert (append/-1166366385 var196 var3561)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var196!1 String)
(assert (str.prefixof var196 var196!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {result/373521991=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1670=org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer, var894=r0, var3561=c0, var196=$r1}
; {org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer=var1670, r0=var894, c0=var3561, $r1=var196}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer;	c0 := @parameter0: char;	$r1 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	return
;block_num 1
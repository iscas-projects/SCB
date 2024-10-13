(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var578 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun result/373521991 (var578) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun registerPositionParamBinder/-1879952476 (var578 Int) void)
(declare-const null-var578 var578)
(declare-const null-Int Int)
(declare-const var2205 var578) ; Statement: r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer 
(assert (not (= var2205 null-var578)))
(declare-const var2812 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2812 null-Int)))
(declare-const var374 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var374 null-Int)))
(define-const var576 String (result/373521991 var2205)) ; Statement: $r1 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result> 
(assert true)
;(assert (append/-1166366385 var576 63)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(63) 
(declare-const var576!1 String)
(assert (str.prefixof var576 var576!1))
(assert true)
;(assert (registerPositionParamBinder/-1879952476 var2205 var2812)) ; Statement: specialinvoke r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: void registerPositionParamBinder(int)>(i0) 

(declare-const var2205!1 var578)
(declare-const var2812!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {result/373521991=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), registerPositionParamBinder/-1879952476=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer, int], void)}
; {var578=org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer, var2205=r0, var2812=i0, var374=i1, var576=$r1}
; {org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer=var578, r0=var2205, i0=var2812, i1=var374, $r1=var576}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(63);	specialinvoke r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: void registerPositionParamBinder(int)>(i0);	return
;block_num 1
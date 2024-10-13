(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var385 0)
(declare-sort var744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun result/373521991 (var385) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun registerNamedParamBinder/1905540062 (var385 String) void)
(declare-const null-var385 var385)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var318 var385) ; Statement: r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer 
(assert (not (= var318 null-var385)))
(declare-const var3836 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3836 null-String)))
(declare-const var2391 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2391 null-Int)))
(define-const var2385 String (result/373521991 var318)) ; Statement: $r1 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result> 
(assert true)
;(assert (append/-1166366385 var2385 63)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(63) 
(declare-const var2385!1 String)
(assert (str.prefixof var2385 var2385!1))
(assert true)
;(assert (registerNamedParamBinder/1905540062 var318 var3836)) ; Statement: specialinvoke r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: void registerNamedParamBinder(java.lang.String)>(r2) 

(declare-const var318!1 var385)
(declare-const var3836!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {result/373521991=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), registerNamedParamBinder/1905540062=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer, java.lang.String], void)}
; {var385=org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer, var318=r0, var3836=r2, var744=null_type, var2391=i0, var2385=$r1}
; {org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer=var385, r0=var318, r2=var3836, null_type=var744, i0=var2391, $r1=var2385}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer;	r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r1 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(63);	specialinvoke r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: void registerNamedParamBinder(java.lang.String)>(r2);	return
;block_num 1
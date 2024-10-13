(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun result/373521991 (var585) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun jdbcPositionalParamCount/373521991 (var585) Int)
(declare-fun registerPositionParamBinder/-1879952476 (var585 Int) void)
(declare-const null-var585 var585)
(declare-const null-Int Int)
(declare-const var607 var585) ; Statement: r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer 
(assert (not (= var607 null-var585)))
(declare-const var3576 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var3576 null-Int)))
(define-const var2516 String (result/373521991 var607)) ; Statement: $r1 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result> 
(assert true)
;(assert (append/-1166366385 var2516 63)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(63) 
(declare-const var2516!1 String)
(assert (str.prefixof var2516 var2516!1))
(define-const var2079 Int (jdbcPositionalParamCount/373521991 var607)) ; Statement: $i0 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: int jdbcPositionalParamCount> 
(define-const var3898 Int (+ var2079 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var607!1 var585)
(assert (not (= var607!1 null-var585)))
(assert (= (jdbcPositionalParamCount/373521991 var607!1) var3898)) ; Statement: r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: int jdbcPositionalParamCount> = $i1 
(assert true)
;(assert (registerPositionParamBinder/-1879952476 var607!1 var2079)) ; Statement: specialinvoke r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: void registerPositionParamBinder(int)>($i0) 

(declare-const var607!2 var585)
(declare-const var2079!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {result/373521991=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), jdbcPositionalParamCount/373521991=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer], int), registerPositionParamBinder/-1879952476=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer, int], void)}
; {var585=org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer, var607=r0, var3576=i2, var2516=$r1, var2079=$i0, var3898=$i1}
; {org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer=var585, r0=var607, i2=var3576, $r1=var2516, $i0=var2079, $i1=var3898}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer;	i2 := @parameter0: int;	$r1 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(63);	$i0 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: int jdbcPositionalParamCount>;	$i1 = $i0 + 1;	r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: int jdbcPositionalParamCount> = $i1;	specialinvoke r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: void registerPositionParamBinder(int)>($i0);	return
;block_num 1
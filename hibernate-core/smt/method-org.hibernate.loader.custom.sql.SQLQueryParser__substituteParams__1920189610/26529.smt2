(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2227 0)
(declare-sort var1437 0)
(declare-sort var3402 0)
(declare-sort var2940 0)
(declare-sort var3694 0)
(declare-sort var1895 0)
(declare-sort var129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3402-init () var3402)
(declare-fun factory/262370177 (var2227) var2940)
(declare-fun <init>/1774954226 (var3402 var2940) void)
(declare-fun var3694_parse/-1125067039 (String var1895) void)
(declare-fun cast-from-var3402-to-var1895 (var3402) var1895)
(declare-fun getParameterValueBinders/617760633 (var3402) var129)
(declare-fun paramValueBinders/262370177 (var2227) var129)
(declare-fun result/373521991 (var3402) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2227 var2227)
(declare-const null-String String)
(declare-const var2827 var2227) ; Statement: r1 := @this: org.hibernate.loader.custom.sql.SQLQueryParser 
(assert (not (= var2827 null-var2227)))
(declare-const var1685 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1685 null-String)))
(define-const var2415 var3402 var3402-init) ; Statement: $r0 = new org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer 
(define-const var3049 var2940 (factory/262370177 var2827)) ; Statement: $r2 = r1.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(assert true)
;(assert (<init>/1774954226 var2415 var3049)) ; Statement: specialinvoke $r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>($r2) 

(declare-const var2415!1 var3402)
(declare-const var3049!1 var2940)
;(assert (var3694_parse/-1125067039 var1685 (cast-from-var3402-to-var1895 var2415!1))) ; Statement: staticinvoke <org.hibernate.engine.query.spi.ParameterParser: void parse(java.lang.String,org.hibernate.engine.query.spi.ParameterParser$Recognizer)>(r3, $r0) 

(declare-const var1685!1 String)
(declare-const var2415!2 var3402)
(assert true)
(define-const var2034 var129 (getParameterValueBinders/617760633 var2415!2)) ; Statement: $r4 = virtualinvoke $r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.util.List getParameterValueBinders()>() 
(declare-const var2827!1 var2227)
(assert (not (= var2827!1 null-var2227)))
(assert (= (paramValueBinders/262370177 var2827!1) var2034)) ; Statement: r1.<org.hibernate.loader.custom.sql.SQLQueryParser: java.util.List paramValueBinders> = $r4 
(define-const var1307 String (result/373521991 var2415!2)) ; Statement: $r5 = $r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result> 
(assert true)
(define-const var1598 String (toString/-2075883882 var1307)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3402-init=([], org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer), factory/262370177=([org.hibernate.loader.custom.sql.SQLQueryParser], org.hibernate.engine.spi.SessionFactoryImplementor), <init>/1774954226=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer, org.hibernate.engine.spi.SessionFactoryImplementor], void), var3694_parse/-1125067039=([java.lang.String, org.hibernate.engine.query.spi.ParameterParser$Recognizer], void), cast-from-var3402-to-var1895=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer], org.hibernate.engine.query.spi.ParameterParser$Recognizer), getParameterValueBinders/617760633=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer], java.util.List), paramValueBinders/262370177=([org.hibernate.loader.custom.sql.SQLQueryParser], java.util.List), result/373521991=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2227=org.hibernate.loader.custom.sql.SQLQueryParser, var2827=r1, var1685=r3, var1437=null_type, var3402=org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer, var2415=$r0, var2940=org.hibernate.engine.spi.SessionFactoryImplementor, var3049=$r2, var3694=org.hibernate.engine.query.spi.ParameterParser, var1895=org.hibernate.engine.query.spi.ParameterParser$Recognizer, var129=java.util.List, var2034=$r4, var1307=$r5, var1598=$r6}
; {org.hibernate.loader.custom.sql.SQLQueryParser=var2227, r1=var2827, r3=var1685, null_type=var1437, org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer=var3402, $r0=var2415, org.hibernate.engine.spi.SessionFactoryImplementor=var2940, $r2=var3049, org.hibernate.engine.query.spi.ParameterParser=var3694, org.hibernate.engine.query.spi.ParameterParser$Recognizer=var1895, java.util.List=var129, $r4=var2034, $r5=var1307, $r6=var1598}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.custom.sql.SQLQueryParser;	r3 := @parameter0: java.lang.String;	$r0 = new org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer;	$r2 = r1.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	specialinvoke $r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>($r2);	staticinvoke <org.hibernate.engine.query.spi.ParameterParser: void parse(java.lang.String,org.hibernate.engine.query.spi.ParameterParser$Recognizer)>(r3, $r0);	$r4 = virtualinvoke $r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.util.List getParameterValueBinders()>();	r1.<org.hibernate.loader.custom.sql.SQLQueryParser: java.util.List paramValueBinders> = $r4;	$r5 = $r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
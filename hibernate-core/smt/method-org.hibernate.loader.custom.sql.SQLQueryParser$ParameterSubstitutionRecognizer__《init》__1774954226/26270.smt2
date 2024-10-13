(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1480 0)
(declare-sort var1356 0)
(declare-sort var1 0)
(declare-sort var2008 0)
(declare-sort var3102 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1) void)
(declare-fun cast-from-var1480-to-var1 (var1480) var1)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun result/373521991 (var1480) String)
(declare-fun var3102_getSessionFactoryOptions/-1909602825 (var3102) var2008)
(declare-fun cast-from-var1356-to-var3102 (var1356) var3102)
(declare-fun var2008_jdbcStyleParamsZeroBased/1093443970 (var2008) Bool)
(declare-fun jdbcPositionalParamCount/373521991 (var1480) Int)
(declare-const null-var1480 var1480)
(declare-const null-var1356 var1356)
(declare-const var2398 var1480) ; Statement: r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer 
(assert (not (= var2398 null-var1480)))
(declare-const var2265 var1356) ; Statement: r2 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var2265 null-var1356)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1480-to-var1 var2398))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2398!1 var1480)
(define-const var1523 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1523)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1523!1 String)
(assert (= var1523!1 ""))
(declare-const var2398!2 var1480)
(assert (not (= var2398!2 null-var1480)))
(assert (= (result/373521991 var2398!2) var1523!1)) ; Statement: r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result> = $r1 
(define-const var2706 var2008 (var3102_getSessionFactoryOptions/-1909602825 (cast-from-var1356-to-var3102 var2265))) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>() 
(define-const var2246 Bool (var2008_jdbcStyleParamsZeroBased/1093443970 var2706)) ; Statement: $z0 = interfaceinvoke $r3.<org.hibernate.boot.spi.SessionFactoryOptions: boolean jdbcStyleParamsZeroBased()>() 
 ; Statement: if $z0 == 0 goto $b0 = 1 
(assert (not (= (ite var2246 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2296 Int 0) ; Statement: $b0 = 0 
 ; Statement: goto [?= r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: int jdbcPositionalParamCount> = $b0] 
(assert true) ; Non Conditional
(declare-const var2398!3 var1480)
(assert (not (= var2398!3 null-var1480)))
(assert (= (jdbcPositionalParamCount/373521991 var2398!3) var2296)) ; Statement: r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: int jdbcPositionalParamCount> = $b0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1480-to-var1=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), result/373521991=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer], java.lang.StringBuilder), var3102_getSessionFactoryOptions/-1909602825=([org.hibernate.SessionFactory], org.hibernate.boot.spi.SessionFactoryOptions), cast-from-var1356-to-var3102=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.SessionFactory), var2008_jdbcStyleParamsZeroBased/1093443970=([org.hibernate.boot.spi.SessionFactoryOptions], boolean), jdbcPositionalParamCount/373521991=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer], int)}
; {var1480=org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer, var2398=r0, var1356=org.hibernate.engine.spi.SessionFactoryImplementor, var2265=r2, var1=java.lang.Object, var1523=$r1, var2008=org.hibernate.boot.spi.SessionFactoryOptions, var3102=org.hibernate.SessionFactory, var2706=$r3, var2246=$z0, var2296=$b0}
; {org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer=var1480, r0=var2398, org.hibernate.engine.spi.SessionFactoryImplementor=var1356, r2=var2265, java.lang.Object=var1, $r1=var1523, org.hibernate.boot.spi.SessionFactoryOptions=var2008, org.hibernate.SessionFactory=var3102, $r3=var2706, $z0=var2246, $b0=var2296}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer;	r2 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result> = $r1;	$r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>();	$z0 = interfaceinvoke $r3.<org.hibernate.boot.spi.SessionFactoryOptions: boolean jdbcStyleParamsZeroBased()>();	if $z0 == 0 goto $b0 = 1;	$b0 = 0;	goto [?= r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: int jdbcPositionalParamCount> = $b0];	r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: int jdbcPositionalParamCount> = $b0;	return
;block_num 3
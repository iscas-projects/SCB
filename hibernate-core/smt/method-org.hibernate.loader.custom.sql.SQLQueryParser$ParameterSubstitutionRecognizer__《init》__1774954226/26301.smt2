(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3791 0)
(declare-sort var3886 0)
(declare-sort var132 0)
(declare-sort var2712 0)
(declare-sort var1264 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var132) void)
(declare-fun cast-from-var3791-to-var132 (var3791) var132)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun result/373521991 (var3791) String)
(declare-fun var1264_getSessionFactoryOptions/-1909602825 (var1264) var2712)
(declare-fun cast-from-var3886-to-var1264 (var3886) var1264)
(declare-fun var2712_jdbcStyleParamsZeroBased/1093443970 (var2712) Bool)
(declare-fun jdbcPositionalParamCount/373521991 (var3791) Int)
(declare-const null-var3791 var3791)
(declare-const null-var3886 var3886)
(declare-const var3737 var3791) ; Statement: r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer 
(assert (not (= var3737 null-var3791)))
(declare-const var136 var3886) ; Statement: r2 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var136 null-var3886)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3791-to-var132 var3737))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3737!1 var3791)
(define-const var1304 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1304)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1304!1 String)
(assert (= var1304!1 ""))
(declare-const var3737!2 var3791)
(assert (not (= var3737!2 null-var3791)))
(assert (= (result/373521991 var3737!2) var1304!1)) ; Statement: r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result> = $r1 
(define-const var2421 var2712 (var1264_getSessionFactoryOptions/-1909602825 (cast-from-var3886-to-var1264 var136))) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>() 
(define-const var2111 Bool (var2712_jdbcStyleParamsZeroBased/1093443970 var2421)) ; Statement: $z0 = interfaceinvoke $r3.<org.hibernate.boot.spi.SessionFactoryOptions: boolean jdbcStyleParamsZeroBased()>() 
 ; Statement: if $z0 == 0 goto $b0 = 1 
(assert (= (ite var2111 1 0) 0)) ; Cond: $z0 == 0 
(define-const var971 Int 1) ; Statement: $b0 = 1 
(assert true) ; Non Conditional
(declare-const var3737!3 var3791)
(assert (not (= var3737!3 null-var3791)))
(assert (= (jdbcPositionalParamCount/373521991 var3737!3) var971)) ; Statement: r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: int jdbcPositionalParamCount> = $b0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3791-to-var132=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), result/373521991=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer], java.lang.StringBuilder), var1264_getSessionFactoryOptions/-1909602825=([org.hibernate.SessionFactory], org.hibernate.boot.spi.SessionFactoryOptions), cast-from-var3886-to-var1264=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.SessionFactory), var2712_jdbcStyleParamsZeroBased/1093443970=([org.hibernate.boot.spi.SessionFactoryOptions], boolean), jdbcPositionalParamCount/373521991=([org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer], int)}
; {var3791=org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer, var3737=r0, var3886=org.hibernate.engine.spi.SessionFactoryImplementor, var136=r2, var132=java.lang.Object, var1304=$r1, var2712=org.hibernate.boot.spi.SessionFactoryOptions, var1264=org.hibernate.SessionFactory, var2421=$r3, var2111=$z0, var971=$b0}
; {org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer=var3791, r0=var3737, org.hibernate.engine.spi.SessionFactoryImplementor=var3886, r2=var136, java.lang.Object=var132, $r1=var1304, org.hibernate.boot.spi.SessionFactoryOptions=var2712, org.hibernate.SessionFactory=var1264, $r3=var2421, $z0=var2111, $b0=var971}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer;	r2 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: java.lang.StringBuilder result> = $r1;	$r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>();	$z0 = interfaceinvoke $r3.<org.hibernate.boot.spi.SessionFactoryOptions: boolean jdbcStyleParamsZeroBased()>();	if $z0 == 0 goto $b0 = 1;	$b0 = 1;	r0.<org.hibernate.loader.custom.sql.SQLQueryParser$ParameterSubstitutionRecognizer: int jdbcPositionalParamCount> = $b0;	return
;block_num 3
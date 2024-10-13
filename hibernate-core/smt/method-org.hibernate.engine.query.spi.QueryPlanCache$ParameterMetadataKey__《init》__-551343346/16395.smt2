(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3001 0)
(declare-sort var3994 0)
(declare-sort var406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var406) void)
(declare-fun cast-from-var3001-to-var406 (var3001) var406)
(declare-fun query/1416867180 (var3001) String)
(declare-fun isOrdinalParameterZeroBased/1416867180 (var3001) Bool)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/1416867180 (var3001) Int)
(declare-const null-var3001 var3001)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1152 var3001) ; Statement: r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey 
(assert (not (= var1152 null-var3001)))
(declare-const var2926 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2926 null-String)))
(declare-const var647 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var647 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3001-to-var406 var1152))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1152!1 var3001)
(declare-const var1152!2 var3001)
(assert (not (= var1152!2 null-var3001)))
(assert (= (query/1416867180 var1152!2) var2926)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey: java.lang.String query> = r1 
(declare-const var1152!3 var3001)
(assert (not (= var1152!3 null-var3001)))
(assert (= (isOrdinalParameterZeroBased/1416867180 var1152!3) var647)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey: boolean isOrdinalParameterZeroBased> = z0 
(assert true)
(define-const var2796 Int (hashCode/-467973558 var2926)) ; Statement: i2 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var2773 Int (* 29 var2796)) ; Statement: $i0 = 29 * i2 
 ; Statement: if z0 == 0 goto $z1 = 0 
(assert (= (ite var647 1 0) 0)) ; Cond: z0 == 0 
(define-const var656 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var2057 Int (+ var2773 (ite var656 1 0))) ; Statement: $i1 = $i0 + $z1 
(declare-const var1152!4 var3001)
(assert (not (= var1152!4 null-var3001)))
(assert (= (hashCode/1416867180 var1152!4) var2057)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey: int hashCode> = $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3001-to-var406=([org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey], java.lang.Object), query/1416867180=([org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey], java.lang.String), isOrdinalParameterZeroBased/1416867180=([org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey], boolean), hashCode/-467973558=([java.lang.String], int), hashCode/1416867180=([org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey], int)}
; {var3001=org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey, var1152=r0, var2926=r1, var3994=null_type, var647=z0, var406=java.lang.Object, var2796=i2, var2773=$i0, var656=$z1, var2057=$i1}
; {org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey=var3001, r0=var1152, r1=var2926, null_type=var3994, z0=var647, java.lang.Object=var406, i2=var2796, $i0=var2773, $z1=var656, $i1=var2057}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey: java.lang.String query> = r1;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey: boolean isOrdinalParameterZeroBased> = z0;	i2 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i0 = 29 * i2;	if z0 == 0 goto $z1 = 0;	$z1 = 0;	$i1 = $i0 + $z1;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey: int hashCode> = $i1;	return
;block_num 3
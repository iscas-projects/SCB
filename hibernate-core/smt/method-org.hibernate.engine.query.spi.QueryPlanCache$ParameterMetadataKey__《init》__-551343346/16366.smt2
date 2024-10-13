(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2298 0)
(declare-sort var2621 0)
(declare-sort var2290 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2290) void)
(declare-fun cast-from-var2298-to-var2290 (var2298) var2290)
(declare-fun query/1416867180 (var2298) String)
(declare-fun isOrdinalParameterZeroBased/1416867180 (var2298) Bool)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/1416867180 (var2298) Int)
(declare-const null-var2298 var2298)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3806 var2298) ; Statement: r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey 
(assert (not (= var3806 null-var2298)))
(declare-const var669 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var669 null-String)))
(declare-const var3088 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3088 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2298-to-var2290 var3806))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3806!1 var2298)
(declare-const var3806!2 var2298)
(assert (not (= var3806!2 null-var2298)))
(assert (= (query/1416867180 var3806!2) var669)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey: java.lang.String query> = r1 
(declare-const var3806!3 var2298)
(assert (not (= var3806!3 null-var2298)))
(assert (= (isOrdinalParameterZeroBased/1416867180 var3806!3) var3088)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey: boolean isOrdinalParameterZeroBased> = z0 
(assert true)
(define-const var3379 Int (hashCode/-467973558 var669)) ; Statement: i2 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var699 Int (* 29 var3379)) ; Statement: $i0 = 29 * i2 
 ; Statement: if z0 == 0 goto $z1 = 0 
(assert (not (= (ite var3088 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3132 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= $i1 = $i0 + $z1] 
(assert true) ; Non Conditional
(define-const var1950 Int (+ var699 (ite var3132 1 0))) ; Statement: $i1 = $i0 + $z1 
(declare-const var3806!4 var2298)
(assert (not (= var3806!4 null-var2298)))
(assert (= (hashCode/1416867180 var3806!4) var1950)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey: int hashCode> = $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2298-to-var2290=([org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey], java.lang.Object), query/1416867180=([org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey], java.lang.String), isOrdinalParameterZeroBased/1416867180=([org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey], boolean), hashCode/-467973558=([java.lang.String], int), hashCode/1416867180=([org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey], int)}
; {var2298=org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey, var3806=r0, var669=r1, var2621=null_type, var3088=z0, var2290=java.lang.Object, var3379=i2, var699=$i0, var3132=$z1, var1950=$i1}
; {org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey=var2298, r0=var3806, r1=var669, null_type=var2621, z0=var3088, java.lang.Object=var2290, i2=var3379, $i0=var699, $z1=var3132, $i1=var1950}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey: java.lang.String query> = r1;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey: boolean isOrdinalParameterZeroBased> = z0;	i2 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i0 = 29 * i2;	if z0 == 0 goto $z1 = 0;	$z1 = 1;	goto [?= $i1 = $i0 + $z1];	$i1 = $i0 + $z1;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$ParameterMetadataKey: int hashCode> = $i1;	return
;block_num 3
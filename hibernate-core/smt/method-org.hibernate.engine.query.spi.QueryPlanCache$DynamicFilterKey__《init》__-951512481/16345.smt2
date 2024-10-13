(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var952 0)
(declare-sort var3508 0)
(declare-sort var1448 0)
(declare-sort var500 0)
(declare-sort var1238 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1448) void)
(declare-fun cast-from-var952-to-var1448 (var952) var1448)
(declare-fun getName/-1346592758 (var3508) String)
(declare-fun filterName/2008661229 (var952) String)
(declare-fun getParameters/-553457170 (var3508) var500)
(declare-fun var500_isEmpty/-1655013448 (var500) Bool)
(declare-fun var1238_emptyMap/401053835 () var500)
(declare-fun parameterMetadata/2008661229 (var952) var500)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var500_hashCode/1768810987 (var500) Int)
(declare-fun hashCode/2008661229 (var952) Int)
(declare-const null-var952 var952)
(declare-const null-var3508 var3508)
(declare-const var3564 var952) ; Statement: r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey 
(assert (not (= var3564 null-var952)))
(declare-const var3126 var3508) ; Statement: r1 := @parameter0: org.hibernate.internal.FilterImpl 
(assert (not (= var3126 null-var3508)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var952-to-var1448 var3564))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3564!1 var952)
(assert true)
(define-const var3385 String (getName/-1346592758 var3126)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.internal.FilterImpl: java.lang.String getName()>() 
(declare-const var3564!2 var952)
(assert (not (= var3564!2 null-var952)))
(assert (= (filterName/2008661229 var3564!2) var3385)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey: java.lang.String filterName> = $r2 
(assert true)
(define-const var2217 var500 (getParameters/-553457170 var3126)) ; Statement: r3 = virtualinvoke r1.<org.hibernate.internal.FilterImpl: java.util.Map getParameters()>() 
(define-const var2687 Bool (var500_isEmpty/-1655013448 var2217)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = new java.util.HashMap 
(assert (not (= (ite var2687 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1207 var500 var1238_emptyMap/401053835) ; Statement: $r17 = staticinvoke <java.util.Collections: java.util.Map emptyMap()>() 
(declare-const var3564!3 var952)
(assert (not (= var3564!3 null-var952)))
(assert (= (parameterMetadata/2008661229 var3564!3) var1207)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey: java.util.Map parameterMetadata> = $r17 
 ; Statement: goto [?= $r6 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey: java.lang.String filterName>] 
(assert true) ; Non Conditional
(define-const var2658 String (filterName/2008661229 var3564!3)) ; Statement: $r6 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey: java.lang.String filterName> 
(assert true)
(define-const var1886 Int (hashCode/-467973558 var2658)) ; Statement: $i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
(define-const var1768 Int (* 31 var1886)) ; Statement: $i2 = 31 * $i4 
(define-const var2835 var500 (parameterMetadata/2008661229 var3564!3)) ; Statement: $r7 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey: java.util.Map parameterMetadata> 
(define-const var1197 Int (var500_hashCode/1768810987 var2835)) ; Statement: $i1 = interfaceinvoke $r7.<java.util.Map: int hashCode()>() 
(define-const var1899 Int (+ var1768 var1197)) ; Statement: $i5 = $i2 + $i1 
(declare-const var3564!4 var952)
(assert (not (= var3564!4 null-var952)))
(assert (= (hashCode/2008661229 var3564!4) var1899)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey: int hashCode> = $i5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var952-to-var1448=([org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey], java.lang.Object), getName/-1346592758=([org.hibernate.internal.FilterImpl], java.lang.String), filterName/2008661229=([org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey], java.lang.String), getParameters/-553457170=([org.hibernate.internal.FilterImpl], java.util.Map), var500_isEmpty/-1655013448=([java.util.Map], boolean), var1238_emptyMap/401053835=([], java.util.Map), parameterMetadata/2008661229=([org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey], java.util.Map), hashCode/-467973558=([java.lang.String], int), var500_hashCode/1768810987=([java.util.Map], int), hashCode/2008661229=([org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey], int)}
; {var952=org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey, var3564=r0, var3508=org.hibernate.internal.FilterImpl, var3126=r1, var1448=java.lang.Object, var3385=$r2, var500=java.util.Map, var2217=r3, var2687=$z0, var1238=java.util.Collections, var1207=$r17, var2658=$r6, var1886=$i4, var1768=$i2, var2835=$r7, var1197=$i1, var1899=$i5}
; {org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey=var952, r0=var3564, org.hibernate.internal.FilterImpl=var3508, r1=var3126, java.lang.Object=var1448, $r2=var3385, java.util.Map=var500, r3=var2217, $z0=var2687, java.util.Collections=var1238, $r17=var1207, $r6=var2658, $i4=var1886, $i2=var1768, $r7=var2835, $i1=var1197, $i5=var1899}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey;	r1 := @parameter0: org.hibernate.internal.FilterImpl;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.internal.FilterImpl: java.lang.String getName()>();	r0.<org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey: java.lang.String filterName> = $r2;	r3 = virtualinvoke r1.<org.hibernate.internal.FilterImpl: java.util.Map getParameters()>();	$z0 = interfaceinvoke r3.<java.util.Map: boolean isEmpty()>();	if $z0 == 0 goto $r4 = new java.util.HashMap;	$r17 = staticinvoke <java.util.Collections: java.util.Map emptyMap()>();	r0.<org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey: java.util.Map parameterMetadata> = $r17;	goto [?= $r6 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey: java.lang.String filterName>];	$r6 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey: java.lang.String filterName>;	$i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	$i2 = 31 * $i4;	$r7 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey: java.util.Map parameterMetadata>;	$i1 = interfaceinvoke $r7.<java.util.Map: int hashCode()>();	$i5 = $i2 + $i1;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$DynamicFilterKey: int hashCode> = $i5;	return
;block_num 3
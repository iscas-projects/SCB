(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3767 0)
(declare-sort var2916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun filterName/1722928979 (var3767) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun filterParameters/1722928979 (var3767) var2916)
(declare-fun var2916_hashCode/1768810987 (var2916) Int)
(declare-const null-var3767 var3767)
(declare-const var466 var3767) ; Statement: r0 := @this: org.hibernate.cache.spi.FilterKey 
(assert (not (= var466 null-var3767)))
(define-const var636 String (filterName/1722928979 var466)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.FilterKey: java.lang.String filterName> 
(assert true)
(define-const var609 Int (hashCode/-467973558 var636)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var2799 Int (+ 481 var609)) ; Statement: i3 = 481 + $i0 
(define-const var2242 Int (* 37 var2799)) ; Statement: $i2 = 37 * i3 
(define-const var3710 var2916 (filterParameters/1722928979 var466)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.FilterKey: java.util.Map filterParameters> 
(define-const var3878 Int (var2916_hashCode/1768810987 var3710)) ; Statement: $i1 = interfaceinvoke $r2.<java.util.Map: int hashCode()>() 
(define-const var1854 Int (+ var2242 var3878)) ; Statement: i4 = $i2 + $i1 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {filterName/1722928979=([org.hibernate.cache.spi.FilterKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), filterParameters/1722928979=([org.hibernate.cache.spi.FilterKey], java.util.Map), var2916_hashCode/1768810987=([java.util.Map], int)}
; {var3767=org.hibernate.cache.spi.FilterKey, var466=r0, var636=$r1, var609=$i0, var2799=i3, var2242=$i2, var2916=java.util.Map, var3710=$r2, var3878=$i1, var1854=i4}
; {org.hibernate.cache.spi.FilterKey=var3767, r0=var466, $r1=var636, $i0=var609, i3=var2799, $i2=var2242, java.util.Map=var2916, $r2=var3710, $i1=var3878, i4=var1854}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.FilterKey;	$r1 = r0.<org.hibernate.cache.spi.FilterKey: java.lang.String filterName>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = 481 + $i0;	$i2 = 37 * i3;	$r2 = r0.<org.hibernate.cache.spi.FilterKey: java.util.Map filterParameters>;	$i1 = interfaceinvoke $r2.<java.util.Map: int hashCode()>();	i4 = $i2 + $i1;	return i4
;block_num 1
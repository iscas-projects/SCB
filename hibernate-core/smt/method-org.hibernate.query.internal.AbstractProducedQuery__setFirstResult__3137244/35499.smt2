(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3926 0)
(declare-sort var1349 0)
(declare-sort var1401 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProducer/-1443624759 (var3926) var1349)
(declare-fun var1349_checkOpen/1243875042 (var1349) void)
(declare-fun var1401-init () var1401)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1401 String) void)
(declare-const null-var3926 var3926)
(declare-const null-Int Int)
(declare-const var2419 var3926) ; Statement: r0 := @this: org.hibernate.query.internal.AbstractProducedQuery 
(assert (not (= var2419 null-var3926)))
(declare-const var3309 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3309 null-Int)))
(assert true)
(define-const var1275 var1349 (getProducer/-1443624759 var2419)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.SharedSessionContractImplementor getProducer()>() 
;(assert (var1349_checkOpen/1243875042 var1275)) ; Statement: interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: void checkOpen()>() 

(declare-const var1275!1 var1349)
 ; Statement: if i0 >= 0 goto $r2 = r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.RowSelection queryOptions> 
(assert (not (>= var3309 0))) ; Negate: Cond: i0 >= 0  
(define-const var164 var1401 var1401-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var1846 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1846)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1846!1 String)
(assert (= var1846!1 ""))
(assert true)
(define-const var3142 String (append/672562846 var1846!1 "first-result value cannot be negative : ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("first-result value cannot be negative : ") 
(declare-const var1846!2 String)
(assert (= var1846!2 (str.++ var1846!1 "first-result value cannot be negative : ")))
(assert true)
(define-const var3695 String (append/-1001720160 var3142 var3309)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3142!1 String)
(assert (str.prefixof var3142 var3142!1))
(assert true)
(define-const var636 String (toString/-2075883882 var3695)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var164 var636)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var164!1 var1401)
(declare-const var636!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getProducer/-1443624759=([org.hibernate.query.internal.AbstractProducedQuery], org.hibernate.engine.spi.SharedSessionContractImplementor), var1349_checkOpen/1243875042=([org.hibernate.engine.spi.SharedSessionContractImplementor], void), var1401-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3926=org.hibernate.query.internal.AbstractProducedQuery, var2419=r0, var3309=i0, var1349=org.hibernate.engine.spi.SharedSessionContractImplementor, var1275=$r1, var1401=java.lang.IllegalArgumentException, var164=$r3, var1846=$r4, var3142=$r5, var3695=$r6, var636=$r7}
; {org.hibernate.query.internal.AbstractProducedQuery=var3926, r0=var2419, i0=var3309, org.hibernate.engine.spi.SharedSessionContractImplementor=var1349, $r1=var1275, java.lang.IllegalArgumentException=var1401, $r3=var164, $r4=var1846, $r5=var3142, $r6=var3695, $r7=var636}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.internal.AbstractProducedQuery;	i0 := @parameter0: int;	$r1 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.SharedSessionContractImplementor getProducer()>();	interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: void checkOpen()>();	if i0 >= 0 goto $r2 = r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.RowSelection queryOptions>;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("first-result value cannot be negative : ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 2
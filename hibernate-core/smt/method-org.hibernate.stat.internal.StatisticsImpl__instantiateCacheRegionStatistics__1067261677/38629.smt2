(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var768 0)
(declare-sort var784 0)
(declare-sort var2089 0)
(declare-sort var2653 0)
(declare-sort var3222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cache/-191801824 (var768) var2089)
(declare-fun var2089_getRegion/1019059606 (var2089 String) var2653)
(declare-fun var3222-init () var3222)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3222 String) void)
(declare-const null-var768 var768)
(declare-const null-String String)
(declare-const null-var2653 var2653)
(declare-const var1601 var768) ; Statement: r0 := @this: org.hibernate.stat.internal.StatisticsImpl 
(assert (not (= var1601 null-var768)))
(declare-const var2287 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2287 null-String)))
(define-const var1222 var2089 (cache/-191801824 var1601)) ; Statement: $r2 = r0.<org.hibernate.stat.internal.StatisticsImpl: org.hibernate.cache.spi.CacheImplementor cache> 
(define-const var845 var2653 (var2089_getRegion/1019059606 var1222 var2287)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.cache.spi.CacheImplementor: org.hibernate.cache.spi.Region getRegion(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto $z0 = r3 instanceof org.hibernate.cache.spi.QueryResultsRegion 
(assert (not (not (= var845 null-var2653)))) ; Negate: Cond: r3 != null  
(define-const var1654 var3222 var3222-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var198 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var198)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var198!1 String)
(assert (= var198!1 ""))
(assert true)
(define-const var373 String (append/672562846 var198!1 "Unknown cache region : ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown cache region : ") 
(declare-const var198!2 String)
(assert (= var198!2 (str.++ var198!1 "Unknown cache region : ")))
(assert true)
(define-const var45 String (append/672562846 var373 var2287)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var373!1 String)
(assert (= var373!1 (str.++ var373 var2287)))
(assert true)
(define-const var1607 String (toString/-2075883882 var45)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1654 var1607)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var1654!1 var3222)
(declare-const var1607!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {cache/-191801824=([org.hibernate.stat.internal.StatisticsImpl], org.hibernate.cache.spi.CacheImplementor), var2089_getRegion/1019059606=([org.hibernate.cache.spi.CacheImplementor, java.lang.String], org.hibernate.cache.spi.Region), var3222-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var768=org.hibernate.stat.internal.StatisticsImpl, var1601=r0, var2287=r1, var784=null_type, var2089=org.hibernate.cache.spi.CacheImplementor, var1222=$r2, var2653=org.hibernate.cache.spi.Region, var845=r3, var3222=java.lang.IllegalArgumentException, var1654=$r11, var198=$r12, var373=$r13, var45=$r14, var1607=$r15}
; {org.hibernate.stat.internal.StatisticsImpl=var768, r0=var1601, r1=var2287, null_type=var784, org.hibernate.cache.spi.CacheImplementor=var2089, $r2=var1222, org.hibernate.cache.spi.Region=var2653, r3=var845, java.lang.IllegalArgumentException=var3222, $r11=var1654, $r12=var198, $r13=var373, $r14=var45, $r15=var1607}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.stat.internal.StatisticsImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.stat.internal.StatisticsImpl: org.hibernate.cache.spi.CacheImplementor cache>;	r3 = interfaceinvoke $r2.<org.hibernate.cache.spi.CacheImplementor: org.hibernate.cache.spi.Region getRegion(java.lang.String)>(r1);	if r3 != null goto $z0 = r3 instanceof org.hibernate.cache.spi.QueryResultsRegion;	$r11 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown cache region : ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r11
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3123 0)
(declare-sort var1936 0)
(declare-sort var1998 0)
(declare-sort var3682 0)
(declare-sort var2464 0)
(declare-sort var2331 0)
(declare-sort var2592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1936) void)
(declare-fun cast-from-var3123-to-var1936 (var3123) var1936)
(declare-fun entityName/-219004158 (var3123) String)
(declare-fun var2464_getTenantIdentifier/1891130714 (var2464) String)
(declare-fun tenantId/-219004158 (var3123) String)
(declare-fun getLength-Arr-var1936-1 ((Array Int var1936)) Int)
(declare-fun arr-var2331-init () (Array Int var2331))
(declare-fun naturalIdValues/-219004158 (var3123) (Array Int var2331))
(declare-fun var2464_getFactory/1122061256 (var2464) var2592)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/-219004158 (var3123) Int)
(declare-fun initTransients/-2016808004 (var3123) void)
(declare-const null-var3123 var3123)
(declare-const null-__Array__Int__var1936__ (Array Int var1936))
(declare-const null-__Array__Int__var1998__ (Array Int var1998))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-var2464 var2464)
(declare-const var2052 var3123) ; Statement: r0 := @this: org.hibernate.cache.internal.NaturalIdCacheKey 
(assert (not (= var2052 null-var3123)))
(declare-const var621 (Array Int var1936)) ; Statement: r4 := @parameter0: java.lang.Object[] 
(assert (not (= var621 null-__Array__Int__var1936__)))
(declare-const var357 (Array Int var1998)) ; Statement: r12 := @parameter1: org.hibernate.type.Type[] 
(assert (not (= var357 null-__Array__Int__var1998__)))
(declare-const var1188 (Array Int Int)) ; Statement: r11 := @parameter2: int[] 
(assert (not (= var1188 null-__Array__Int__Int__)))
(declare-const var187 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var187 null-String)))
(declare-const var1446 var2464) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1446 null-var2464)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3123-to-var1936 var2052))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2052!1 var3123)
(declare-const var2052!2 var3123)
(assert (not (= var2052!2 null-var3123)))
(assert (= (entityName/-219004158 var2052!2) var187)) ; Statement: r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName> = r1 
(define-const var201 String (var2464_getTenantIdentifier/1891130714 var1446)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: java.lang.String getTenantIdentifier()>() 
(declare-const var2052!3 var3123)
(assert (not (= var2052!3 null-var3123)))
(assert (= (tenantId/-219004158 var2052!3) var201)) ; Statement: r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId> = $r3 
(define-const var1195 Int (getLength-Arr-var1936-1 var621)) ; Statement: $i0 = lengthof r4 
(define-const var1458 (Array Int var2331) arr-var2331-init) ; Statement: $r5 = newarray (java.io.Serializable)[$i0] 
(declare-const var2052!4 var3123)
(assert (not (= var2052!4 null-var3123)))
(assert (= (naturalIdValues/-219004158 var2052!4) var1458)) ; Statement: r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.io.Serializable[] naturalIdValues> = $r5 
(define-const var1789 var2592 (var2464_getFactory/1122061256 var1446)) ; Statement: r6 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3051 String (entityName/-219004158 var2052!4)) ; Statement: $r7 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName> 
(assert (not (not (= var3051 null-String)))) ; Negate: Cond: $r7 != null  
(define-const var260 Int 0) ; Statement: $i5 = 0 
 ; Statement: goto [?= $i4 = 31 + $i5] 
(assert true) ; Non Conditional
(define-const var713 Int (+ 31 var260)) ; Statement: $i4 = 31 + $i5 
(define-const var904 Int (* 31 var713)) ; Statement: $i1 = 31 * $i4 
(define-const var801 String (tenantId/-219004158 var2052!4)) ; Statement: $r9 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId> 
(assert (not (= var801 null-String))) ; Cond: $r9 != null 
(define-const var734 String (tenantId/-219004158 var2052!4)) ; Statement: $r10 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId> 
(assert true)
(define-const var1510 Int (hashCode/-467973558 var734)) ; Statement: $i6 = virtualinvoke $r10.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var233 Int (+ var904 var1510)) ; Statement: i7 = $i1 + $i6 
(define-const var2079 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var3762 Int (getLength-Arr-var1936-1 var621)) ; Statement: $i9 = lengthof r4 
 ; Statement: if i8 >= $i9 goto r0.<org.hibernate.cache.internal.NaturalIdCacheKey: int hashCode> = i7 
(assert (>= var2079 var3762)) ; Cond: i8 >= $i9 
(declare-const var2052!5 var3123)
(assert (not (= var2052!5 null-var3123)))
(assert (= (hashCode/-219004158 var2052!5) var233)) ; Statement: r0.<org.hibernate.cache.internal.NaturalIdCacheKey: int hashCode> = i7 
(assert true)
;(assert (initTransients/-2016808004 var2052!5)) ; Statement: specialinvoke r0.<org.hibernate.cache.internal.NaturalIdCacheKey: void initTransients()>() 

(declare-const var2052!6 var3123)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3123-to-var1936=([org.hibernate.cache.internal.NaturalIdCacheKey], java.lang.Object), entityName/-219004158=([org.hibernate.cache.internal.NaturalIdCacheKey], java.lang.String), var2464_getTenantIdentifier/1891130714=([org.hibernate.engine.spi.SharedSessionContractImplementor], java.lang.String), tenantId/-219004158=([org.hibernate.cache.internal.NaturalIdCacheKey], java.lang.String), getLength-Arr-var1936-1=([java.lang.Object[]], int), arr-var2331-init=([], java.io.Serializable[]), naturalIdValues/-219004158=([org.hibernate.cache.internal.NaturalIdCacheKey], java.io.Serializable[]), var2464_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), hashCode/-467973558=([java.lang.String], int), hashCode/-219004158=([org.hibernate.cache.internal.NaturalIdCacheKey], int), initTransients/-2016808004=([org.hibernate.cache.internal.NaturalIdCacheKey], void)}
; {var3123=org.hibernate.cache.internal.NaturalIdCacheKey, var2052=r0, var1936=java.lang.Object, var621=r4, var1998=org.hibernate.type.Type, var357=r12, var1188=r11, var187=r1, var3682=null_type, var2464=org.hibernate.engine.spi.SharedSessionContractImplementor, var1446=r2, var201=$r3, var1195=$i0, var2331=java.io.Serializable, var1458=$r5, var2592=org.hibernate.engine.spi.SessionFactoryImplementor, var1789=r6, var3051=$r7, var260=$i5, var713=$i4, var904=$i1, var801=$r9, var734=$r10, var1510=$i6, var233=i7, var2079=i8, var3762=$i9}
; {org.hibernate.cache.internal.NaturalIdCacheKey=var3123, r0=var2052, java.lang.Object=var1936, r4=var621, org.hibernate.type.Type=var1998, r12=var357, r11=var1188, r1=var187, null_type=var3682, org.hibernate.engine.spi.SharedSessionContractImplementor=var2464, r2=var1446, $r3=var201, $i0=var1195, java.io.Serializable=var2331, $r5=var1458, org.hibernate.engine.spi.SessionFactoryImplementor=var2592, r6=var1789, $r7=var3051, $i5=var260, $i4=var713, $i1=var904, $r9=var801, $r10=var734, $i6=var1510, i7=var233, i8=var2079, $i9=var3762}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.internal.NaturalIdCacheKey;	r4 := @parameter0: java.lang.Object[];	r12 := @parameter1: org.hibernate.type.Type[];	r11 := @parameter2: int[];	r1 := @parameter3: java.lang.String;	r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName> = r1;	$r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: java.lang.String getTenantIdentifier()>();	r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId> = $r3;	$i0 = lengthof r4;	$r5 = newarray (java.io.Serializable)[$i0];	r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.io.Serializable[] naturalIdValues> = $r5;	r6 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r7 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName>;	$i5 = 0;	goto [?= $i4 = 31 + $i5];	$i4 = 31 + $i5;	$i1 = 31 * $i4;	$r9 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId>;	$r10 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId>;	$i6 = virtualinvoke $r10.<java.lang.String: int hashCode()>();	i7 = $i1 + $i6;	i8 = 0;	$i9 = lengthof r4;	if i8 >= $i9 goto r0.<org.hibernate.cache.internal.NaturalIdCacheKey: int hashCode> = i7;	r0.<org.hibernate.cache.internal.NaturalIdCacheKey: int hashCode> = i7;	specialinvoke r0.<org.hibernate.cache.internal.NaturalIdCacheKey: void initTransients()>();	return
;block_num 7
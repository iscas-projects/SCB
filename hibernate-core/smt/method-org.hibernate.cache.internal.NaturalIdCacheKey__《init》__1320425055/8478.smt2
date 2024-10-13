(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3387 0)
(declare-sort var3869 0)
(declare-sort var3957 0)
(declare-sort var1541 0)
(declare-sort var1973 0)
(declare-sort var3747 0)
(declare-sort var3356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3869) void)
(declare-fun cast-from-var3387-to-var3869 (var3387) var3869)
(declare-fun entityName/-219004158 (var3387) String)
(declare-fun var1973_getTenantIdentifier/1891130714 (var1973) String)
(declare-fun tenantId/-219004158 (var3387) String)
(declare-fun getLength-Arr-var3869-1 ((Array Int var3869)) Int)
(declare-fun arr-var3747-init () (Array Int var3747))
(declare-fun naturalIdValues/-219004158 (var3387) (Array Int var3747))
(declare-fun var1973_getFactory/1122061256 (var1973) var3356)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/-219004158 (var3387) Int)
(declare-fun initTransients/-2016808004 (var3387) void)
(declare-const null-var3387 var3387)
(declare-const null-__Array__Int__var3869__ (Array Int var3869))
(declare-const null-__Array__Int__var3957__ (Array Int var3957))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-var1973 var1973)
(declare-const var326 var3387) ; Statement: r0 := @this: org.hibernate.cache.internal.NaturalIdCacheKey 
(assert (not (= var326 null-var3387)))
(declare-const var1604 (Array Int var3869)) ; Statement: r4 := @parameter0: java.lang.Object[] 
(assert (not (= var1604 null-__Array__Int__var3869__)))
(declare-const var1349 (Array Int var3957)) ; Statement: r12 := @parameter1: org.hibernate.type.Type[] 
(assert (not (= var1349 null-__Array__Int__var3957__)))
(declare-const var3506 (Array Int Int)) ; Statement: r11 := @parameter2: int[] 
(assert (not (= var3506 null-__Array__Int__Int__)))
(declare-const var397 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var397 null-String)))
(declare-const var212 var1973) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var212 null-var1973)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3387-to-var3869 var326))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var326!1 var3387)
(declare-const var326!2 var3387)
(assert (not (= var326!2 null-var3387)))
(assert (= (entityName/-219004158 var326!2) var397)) ; Statement: r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName> = r1 
(define-const var2057 String (var1973_getTenantIdentifier/1891130714 var212)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: java.lang.String getTenantIdentifier()>() 
(declare-const var326!3 var3387)
(assert (not (= var326!3 null-var3387)))
(assert (= (tenantId/-219004158 var326!3) var2057)) ; Statement: r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId> = $r3 
(define-const var49 Int (getLength-Arr-var3869-1 var1604)) ; Statement: $i0 = lengthof r4 
(define-const var3644 (Array Int var3747) arr-var3747-init) ; Statement: $r5 = newarray (java.io.Serializable)[$i0] 
(declare-const var326!4 var3387)
(assert (not (= var326!4 null-var3387)))
(assert (= (naturalIdValues/-219004158 var326!4) var3644)) ; Statement: r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.io.Serializable[] naturalIdValues> = $r5 
(define-const var787 var3356 (var1973_getFactory/1122061256 var212)) ; Statement: r6 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2925 String (entityName/-219004158 var326!4)) ; Statement: $r7 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName> 
(assert (not (= var2925 null-String))) ; Cond: $r7 != null 
(define-const var234 String (entityName/-219004158 var326!4)) ; Statement: $r8 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName> 
(assert true)
(define-const var577 Int (hashCode/-467973558 var234)) ; Statement: $i5 = virtualinvoke $r8.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2785 Int (+ 31 var577)) ; Statement: $i4 = 31 + $i5 
(define-const var3388 Int (* 31 var2785)) ; Statement: $i1 = 31 * $i4 
(define-const var1749 String (tenantId/-219004158 var326!4)) ; Statement: $r9 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId> 
(assert (not (not (= var1749 null-String)))) ; Negate: Cond: $r9 != null  
(define-const var1922 Int 0) ; Statement: $i6 = 0 
 ; Statement: goto [?= i7 = $i1 + $i6] 
(assert true) ; Non Conditional
(define-const var3382 Int (+ var3388 var1922)) ; Statement: i7 = $i1 + $i6 
(define-const var1119 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var156 Int (getLength-Arr-var3869-1 var1604)) ; Statement: $i9 = lengthof r4 
 ; Statement: if i8 >= $i9 goto r0.<org.hibernate.cache.internal.NaturalIdCacheKey: int hashCode> = i7 
(assert (>= var1119 var156)) ; Cond: i8 >= $i9 
(declare-const var326!5 var3387)
(assert (not (= var326!5 null-var3387)))
(assert (= (hashCode/-219004158 var326!5) var3382)) ; Statement: r0.<org.hibernate.cache.internal.NaturalIdCacheKey: int hashCode> = i7 
(assert true)
;(assert (initTransients/-2016808004 var326!5)) ; Statement: specialinvoke r0.<org.hibernate.cache.internal.NaturalIdCacheKey: void initTransients()>() 

(declare-const var326!6 var3387)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3387-to-var3869=([org.hibernate.cache.internal.NaturalIdCacheKey], java.lang.Object), entityName/-219004158=([org.hibernate.cache.internal.NaturalIdCacheKey], java.lang.String), var1973_getTenantIdentifier/1891130714=([org.hibernate.engine.spi.SharedSessionContractImplementor], java.lang.String), tenantId/-219004158=([org.hibernate.cache.internal.NaturalIdCacheKey], java.lang.String), getLength-Arr-var3869-1=([java.lang.Object[]], int), arr-var3747-init=([], java.io.Serializable[]), naturalIdValues/-219004158=([org.hibernate.cache.internal.NaturalIdCacheKey], java.io.Serializable[]), var1973_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), hashCode/-467973558=([java.lang.String], int), hashCode/-219004158=([org.hibernate.cache.internal.NaturalIdCacheKey], int), initTransients/-2016808004=([org.hibernate.cache.internal.NaturalIdCacheKey], void)}
; {var3387=org.hibernate.cache.internal.NaturalIdCacheKey, var326=r0, var3869=java.lang.Object, var1604=r4, var3957=org.hibernate.type.Type, var1349=r12, var3506=r11, var397=r1, var1541=null_type, var1973=org.hibernate.engine.spi.SharedSessionContractImplementor, var212=r2, var2057=$r3, var49=$i0, var3747=java.io.Serializable, var3644=$r5, var3356=org.hibernate.engine.spi.SessionFactoryImplementor, var787=r6, var2925=$r7, var234=$r8, var577=$i5, var2785=$i4, var3388=$i1, var1749=$r9, var1922=$i6, var3382=i7, var1119=i8, var156=$i9}
; {org.hibernate.cache.internal.NaturalIdCacheKey=var3387, r0=var326, java.lang.Object=var3869, r4=var1604, org.hibernate.type.Type=var3957, r12=var1349, r11=var3506, r1=var397, null_type=var1541, org.hibernate.engine.spi.SharedSessionContractImplementor=var1973, r2=var212, $r3=var2057, $i0=var49, java.io.Serializable=var3747, $r5=var3644, org.hibernate.engine.spi.SessionFactoryImplementor=var3356, r6=var787, $r7=var2925, $r8=var234, $i5=var577, $i4=var2785, $i1=var3388, $r9=var1749, $i6=var1922, i7=var3382, i8=var1119, $i9=var156}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.internal.NaturalIdCacheKey;	r4 := @parameter0: java.lang.Object[];	r12 := @parameter1: org.hibernate.type.Type[];	r11 := @parameter2: int[];	r1 := @parameter3: java.lang.String;	r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName> = r1;	$r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: java.lang.String getTenantIdentifier()>();	r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId> = $r3;	$i0 = lengthof r4;	$r5 = newarray (java.io.Serializable)[$i0];	r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.io.Serializable[] naturalIdValues> = $r5;	r6 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r7 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName>;	$r8 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName>;	$i5 = virtualinvoke $r8.<java.lang.String: int hashCode()>();	$i4 = 31 + $i5;	$i1 = 31 * $i4;	$r9 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId>;	$i6 = 0;	goto [?= i7 = $i1 + $i6];	i7 = $i1 + $i6;	i8 = 0;	$i9 = lengthof r4;	if i8 >= $i9 goto r0.<org.hibernate.cache.internal.NaturalIdCacheKey: int hashCode> = i7;	r0.<org.hibernate.cache.internal.NaturalIdCacheKey: int hashCode> = i7;	specialinvoke r0.<org.hibernate.cache.internal.NaturalIdCacheKey: void initTransients()>();	return
;block_num 7
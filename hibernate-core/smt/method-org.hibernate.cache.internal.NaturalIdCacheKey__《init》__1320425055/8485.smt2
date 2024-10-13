(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2703 0)
(declare-sort var631 0)
(declare-sort var2354 0)
(declare-sort var1460 0)
(declare-sort var3228 0)
(declare-sort var3170 0)
(declare-sort var1847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var631) void)
(declare-fun cast-from-var2703-to-var631 (var2703) var631)
(declare-fun entityName/-219004158 (var2703) String)
(declare-fun var3228_getTenantIdentifier/1891130714 (var3228) String)
(declare-fun tenantId/-219004158 (var2703) String)
(declare-fun getLength-Arr-var631-1 ((Array Int var631)) Int)
(declare-fun arr-var3170-init () (Array Int var3170))
(declare-fun naturalIdValues/-219004158 (var2703) (Array Int var3170))
(declare-fun var3228_getFactory/1122061256 (var3228) var1847)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/-219004158 (var2703) Int)
(declare-fun initTransients/-2016808004 (var2703) void)
(declare-const null-var2703 var2703)
(declare-const null-__Array__Int__var631__ (Array Int var631))
(declare-const null-__Array__Int__var2354__ (Array Int var2354))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-var3228 var3228)
(declare-const var1102 var2703) ; Statement: r0 := @this: org.hibernate.cache.internal.NaturalIdCacheKey 
(assert (not (= var1102 null-var2703)))
(declare-const var2801 (Array Int var631)) ; Statement: r4 := @parameter0: java.lang.Object[] 
(assert (not (= var2801 null-__Array__Int__var631__)))
(declare-const var1250 (Array Int var2354)) ; Statement: r12 := @parameter1: org.hibernate.type.Type[] 
(assert (not (= var1250 null-__Array__Int__var2354__)))
(declare-const var2819 (Array Int Int)) ; Statement: r11 := @parameter2: int[] 
(assert (not (= var2819 null-__Array__Int__Int__)))
(declare-const var1802 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var1802 null-String)))
(declare-const var3898 var3228) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var3898 null-var3228)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2703-to-var631 var1102))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1102!1 var2703)
(declare-const var1102!2 var2703)
(assert (not (= var1102!2 null-var2703)))
(assert (= (entityName/-219004158 var1102!2) var1802)) ; Statement: r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName> = r1 
(define-const var1737 String (var3228_getTenantIdentifier/1891130714 var3898)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: java.lang.String getTenantIdentifier()>() 
(declare-const var1102!3 var2703)
(assert (not (= var1102!3 null-var2703)))
(assert (= (tenantId/-219004158 var1102!3) var1737)) ; Statement: r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId> = $r3 
(define-const var3201 Int (getLength-Arr-var631-1 var2801)) ; Statement: $i0 = lengthof r4 
(define-const var2389 (Array Int var3170) arr-var3170-init) ; Statement: $r5 = newarray (java.io.Serializable)[$i0] 
(declare-const var1102!4 var2703)
(assert (not (= var1102!4 null-var2703)))
(assert (= (naturalIdValues/-219004158 var1102!4) var2389)) ; Statement: r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.io.Serializable[] naturalIdValues> = $r5 
(define-const var1039 var1847 (var3228_getFactory/1122061256 var3898)) ; Statement: r6 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var349 String (entityName/-219004158 var1102!4)) ; Statement: $r7 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName> 
(assert (not (= var349 null-String))) ; Cond: $r7 != null 
(define-const var1595 String (entityName/-219004158 var1102!4)) ; Statement: $r8 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName> 
(assert true)
(define-const var3404 Int (hashCode/-467973558 var1595)) ; Statement: $i5 = virtualinvoke $r8.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2948 Int (+ 31 var3404)) ; Statement: $i4 = 31 + $i5 
(define-const var2666 Int (* 31 var2948)) ; Statement: $i1 = 31 * $i4 
(define-const var2522 String (tenantId/-219004158 var1102!4)) ; Statement: $r9 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId> 
(assert (not (= var2522 null-String))) ; Cond: $r9 != null 
(define-const var1293 String (tenantId/-219004158 var1102!4)) ; Statement: $r10 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId> 
(assert true)
(define-const var2125 Int (hashCode/-467973558 var1293)) ; Statement: $i6 = virtualinvoke $r10.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2940 Int (+ var2666 var2125)) ; Statement: i7 = $i1 + $i6 
(define-const var1504 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var2877 Int (getLength-Arr-var631-1 var2801)) ; Statement: $i9 = lengthof r4 
 ; Statement: if i8 >= $i9 goto r0.<org.hibernate.cache.internal.NaturalIdCacheKey: int hashCode> = i7 
(assert (>= var1504 var2877)) ; Cond: i8 >= $i9 
(declare-const var1102!5 var2703)
(assert (not (= var1102!5 null-var2703)))
(assert (= (hashCode/-219004158 var1102!5) var2940)) ; Statement: r0.<org.hibernate.cache.internal.NaturalIdCacheKey: int hashCode> = i7 
(assert true)
;(assert (initTransients/-2016808004 var1102!5)) ; Statement: specialinvoke r0.<org.hibernate.cache.internal.NaturalIdCacheKey: void initTransients()>() 

(declare-const var1102!6 var2703)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2703-to-var631=([org.hibernate.cache.internal.NaturalIdCacheKey], java.lang.Object), entityName/-219004158=([org.hibernate.cache.internal.NaturalIdCacheKey], java.lang.String), var3228_getTenantIdentifier/1891130714=([org.hibernate.engine.spi.SharedSessionContractImplementor], java.lang.String), tenantId/-219004158=([org.hibernate.cache.internal.NaturalIdCacheKey], java.lang.String), getLength-Arr-var631-1=([java.lang.Object[]], int), arr-var3170-init=([], java.io.Serializable[]), naturalIdValues/-219004158=([org.hibernate.cache.internal.NaturalIdCacheKey], java.io.Serializable[]), var3228_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), hashCode/-467973558=([java.lang.String], int), hashCode/-219004158=([org.hibernate.cache.internal.NaturalIdCacheKey], int), initTransients/-2016808004=([org.hibernate.cache.internal.NaturalIdCacheKey], void)}
; {var2703=org.hibernate.cache.internal.NaturalIdCacheKey, var1102=r0, var631=java.lang.Object, var2801=r4, var2354=org.hibernate.type.Type, var1250=r12, var2819=r11, var1802=r1, var1460=null_type, var3228=org.hibernate.engine.spi.SharedSessionContractImplementor, var3898=r2, var1737=$r3, var3201=$i0, var3170=java.io.Serializable, var2389=$r5, var1847=org.hibernate.engine.spi.SessionFactoryImplementor, var1039=r6, var349=$r7, var1595=$r8, var3404=$i5, var2948=$i4, var2666=$i1, var2522=$r9, var1293=$r10, var2125=$i6, var2940=i7, var1504=i8, var2877=$i9}
; {org.hibernate.cache.internal.NaturalIdCacheKey=var2703, r0=var1102, java.lang.Object=var631, r4=var2801, org.hibernate.type.Type=var2354, r12=var1250, r11=var2819, r1=var1802, null_type=var1460, org.hibernate.engine.spi.SharedSessionContractImplementor=var3228, r2=var3898, $r3=var1737, $i0=var3201, java.io.Serializable=var3170, $r5=var2389, org.hibernate.engine.spi.SessionFactoryImplementor=var1847, r6=var1039, $r7=var349, $r8=var1595, $i5=var3404, $i4=var2948, $i1=var2666, $r9=var2522, $r10=var1293, $i6=var2125, i7=var2940, i8=var1504, $i9=var2877}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.internal.NaturalIdCacheKey;	r4 := @parameter0: java.lang.Object[];	r12 := @parameter1: org.hibernate.type.Type[];	r11 := @parameter2: int[];	r1 := @parameter3: java.lang.String;	r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName> = r1;	$r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: java.lang.String getTenantIdentifier()>();	r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId> = $r3;	$i0 = lengthof r4;	$r5 = newarray (java.io.Serializable)[$i0];	r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.io.Serializable[] naturalIdValues> = $r5;	r6 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r7 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName>;	$r8 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String entityName>;	$i5 = virtualinvoke $r8.<java.lang.String: int hashCode()>();	$i4 = 31 + $i5;	$i1 = 31 * $i4;	$r9 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId>;	$r10 = r0.<org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String tenantId>;	$i6 = virtualinvoke $r10.<java.lang.String: int hashCode()>();	i7 = $i1 + $i6;	i8 = 0;	$i9 = lengthof r4;	if i8 >= $i9 goto r0.<org.hibernate.cache.internal.NaturalIdCacheKey: int hashCode> = i7;	r0.<org.hibernate.cache.internal.NaturalIdCacheKey: int hashCode> = i7;	specialinvoke r0.<org.hibernate.cache.internal.NaturalIdCacheKey: void initTransients()>();	return
;block_num 7
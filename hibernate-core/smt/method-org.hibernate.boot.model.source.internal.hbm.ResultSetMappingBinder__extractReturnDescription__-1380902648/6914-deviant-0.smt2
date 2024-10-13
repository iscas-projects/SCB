(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var940 0)
(declare-sort var2610 0)
(declare-sort var3509 0)
(declare-sort var902 0)
(declare-sort var2707 0)
(declare-sort var3088 0)
(declare-sort var3025 0)
(declare-sort var1344 0)
(declare-sort var1980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRole/1433297865 (var940) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var2610_findEntityBinding/881271259 (var2610 String String) var3509)
(declare-fun getClassName/1810648442 (var3509) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var2707-init () var2707)
(declare-fun getAlias/-830303573 (var940) String)
(declare-fun var3025_extractPropertyResults/-1913882704 (String var1344 var3509 var2610) var3088)
(declare-fun cast-from-var940-to-var1344 (var940) var1344)
(declare-fun getLockMode/457134242 (var940) var1980)
(declare-fun <init>/2004484223 (var2707 String String String var3088 var1980) void)
(declare-const null-var940 var940)
(declare-const null-var2610 var2610)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var3509 var3509)
(declare-const var3800 var940) ; Statement: r0 := @parameter0: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType 
(assert (not (= var3800 null-var940)))
(declare-const var1289 var2610) ; Statement: r2 := @parameter1: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext 
(assert (not (= var1289 null-var2610)))
(declare-const var958 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var958 null-Int)))
(assert true)
(define-const var1920 String (getRole/1433297865 var3800)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: java.lang.String getRole()>() 
(assert true)
(define-const var1220 Int (lastIndexOf/-1292097097 var1920 46)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var3878 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i0 != $i4 goto $r3 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: java.lang.String getRole()>() 
(assert (not (= var1220 var3878))) ; Cond: i0 != $i4 
(assert true)
(define-const var1863 String (getRole/1433297865 var3800)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: java.lang.String getRole()>() 
(assert (not (and true (and (>= 0 0) (>= (str.len var1863) var1220) (>= var1220 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getRole/1433297865=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var2610_findEntityBinding/881271259=([org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext, java.lang.String, java.lang.String], org.hibernate.mapping.PersistentClass), getClassName/1810648442=([org.hibernate.mapping.PersistentClass], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), var2707-init=([], org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn), getAlias/-830303573=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType], java.lang.String), var3025_extractPropertyResults/-1913882704=([java.lang.String, org.hibernate.boot.jaxb.hbm.spi.NativeQueryNonScalarRootReturn, org.hibernate.mapping.PersistentClass, org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext], java.util.Map), cast-from-var940-to-var1344=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType], org.hibernate.boot.jaxb.hbm.spi.NativeQueryNonScalarRootReturn), getLockMode/457134242=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType], org.hibernate.LockMode), <init>/2004484223=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn, java.lang.String, java.lang.String, java.lang.String, java.util.Map, org.hibernate.LockMode], void)}
; {var940=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType, var3800=r0, var2610=org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext, var1289=r2, var958=i2, var1920=$r1, var1220=i0, var3878=$i4, var1863=$r3, var794=$r4, var3509=org.hibernate.mapping.PersistentClass, var902=null_type, var386=$r5, var3108=r6, var1696=$r7, var1387=$i1, var2894=r8, var2707=org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn, var2228=$r21, var1955=$r13, var456=$r10, var3088=java.util.Map, var3025=org.hibernate.boot.model.source.internal.hbm.ResultSetMappingBinder, var1344=org.hibernate.boot.jaxb.hbm.spi.NativeQueryNonScalarRootReturn, var3791=$r12, var1980=org.hibernate.LockMode, var253=$r11}
; {org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType=var940, r0=var3800, org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext=var2610, r2=var1289, i2=var958, $r1=var1920, i0=var1220, $i4=var3878, $r3=var1863, $r4=var794, org.hibernate.mapping.PersistentClass=var3509, null_type=var902, $r5=var386, r6=var3108, $r7=var1696, $i1=var1387, r8=var2894, org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn=var2707, $r21=var2228, $r13=var1955, $r10=var456, java.util.Map=var3088, org.hibernate.boot.model.source.internal.hbm.ResultSetMappingBinder=var3025, org.hibernate.boot.jaxb.hbm.spi.NativeQueryNonScalarRootReturn=var1344, $r12=var3791, org.hibernate.LockMode=var1980, $r11=var253}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType;	r2 := @parameter1: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext;	i2 := @parameter2: int;	$r1 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: java.lang.String getRole()>();	i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int)>(46);	$i4 = (int) -1;	if i0 != $i4 goto $r3 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: java.lang.String getRole()>();	$r3 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: java.lang.String getRole()>();	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r5 = interfaceinvoke r2.<org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext: org.hibernate.mapping.PersistentClass findEntityBinding(java.lang.String,java.lang.String)>(null, $r4);	r6 = virtualinvoke $r5.<org.hibernate.mapping.PersistentClass: java.lang.String getClassName()>();	$r7 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: java.lang.String getRole()>();	$i1 = i0 + 1;	r8 = virtualinvoke $r7.<java.lang.String: java.lang.String substring(int)>($i1);	$r21 = new org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn;	$r13 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: java.lang.String getAlias()>();	$r10 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: java.lang.String getAlias()>();	$r12 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.ResultSetMappingBinder: java.util.Map extractPropertyResults(java.lang.String,org.hibernate.boot.jaxb.hbm.spi.NativeQueryNonScalarRootReturn,org.hibernate.mapping.PersistentClass,org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext)>($r10, r0, null, r2);	$r11 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: org.hibernate.LockMode getLockMode()>();	specialinvoke $r21.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: void <init>(java.lang.String,java.lang.String,java.lang.String,java.util.Map,org.hibernate.LockMode)>($r13, r6, r8, $r12, $r11);	return $r21
;block_num 2
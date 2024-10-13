(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var478 0)
(declare-sort var2852 0)
(declare-sort var54 0)
(declare-sort var1073 0)
(declare-sort var2368 0)
(declare-sort var2748 0)
(declare-sort var68 0)
(declare-sort var2713 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProperty/642155012 (var478) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var54-init () var54)
(declare-fun getAlias/1869527025 (var478) String)
(declare-fun var2368_extractPropertyResults/-1913882704 (String var2748 var68 var2852) var1073)
(declare-fun cast-from-var478-to-var2748 (var478) var2748)
(declare-fun getLockMode/759282204 (var478) var2713)
(declare-fun <init>/-1350977741 (var54 String String String var1073 var2713) void)
(declare-const null-var478 var478)
(declare-const null-var2852 var2852)
(declare-const null-Int Int)
(declare-const null-var68 var68)
(declare-const var386 var478) ; Statement: r0 := @parameter0: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType 
(assert (not (= var386 null-var478)))
(declare-const var594 var2852) ; Statement: r7 := @parameter1: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext 
(assert (not (= var594 null-var2852)))
(declare-const var340 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var340 null-Int)))
(assert true)
(define-const var229 String (getProperty/642155012 var386)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getProperty()>() 
(assert true)
(define-const var2126 Int (lastIndexOf/-1292097097 var229 46)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2228 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i0 != $i4 goto $r2 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getProperty()>() 
(assert (not (= var2126 var2228))) ; Cond: i0 != $i4 
(assert true)
(define-const var3479 String (getProperty/642155012 var386)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getProperty()>() 
(assert (and true (and (>= 0 0) (>= (str.len var3479) var2126) (>= var2126 0))))
(define-const var781 String (substring/-1240304868 var3479 0 var2126)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true)
(define-const var1119 String (getProperty/642155012 var386)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getProperty()>() 
(define-const var3543 Int (+ var2126 1)) ; Statement: $i1 = i0 + 1 
(assert (not (and true (and (>= var3543 0) (>= (str.len var1119) var3543)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getProperty/642155012=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), var54-init=([], org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn), getAlias/1869527025=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType], java.lang.String), var2368_extractPropertyResults/-1913882704=([java.lang.String, org.hibernate.boot.jaxb.hbm.spi.NativeQueryNonScalarRootReturn, org.hibernate.mapping.PersistentClass, org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext], java.util.Map), cast-from-var478-to-var2748=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType], org.hibernate.boot.jaxb.hbm.spi.NativeQueryNonScalarRootReturn), getLockMode/759282204=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType], org.hibernate.LockMode), <init>/-1350977741=([org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn, java.lang.String, java.lang.String, java.lang.String, java.util.Map, org.hibernate.LockMode], void)}
; {var478=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType, var386=r0, var2852=org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext, var594=r7, var340=i2, var229=$r1, var2126=i0, var2228=$i4, var3479=$r2, var781=r3, var1119=$r4, var3543=$i1, var1509=r5, var54=org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn, var1240=$r19, var3146=$r11, var361=$r8, var1073=java.util.Map, var2368=org.hibernate.boot.model.source.internal.hbm.ResultSetMappingBinder, var2748=org.hibernate.boot.jaxb.hbm.spi.NativeQueryNonScalarRootReturn, var68=org.hibernate.mapping.PersistentClass, var3177=$r10, var2713=org.hibernate.LockMode, var3886=$r9}
; {org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType=var478, r0=var386, org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext=var2852, r7=var594, i2=var340, $r1=var229, i0=var2126, $i4=var2228, $r2=var3479, r3=var781, $r4=var1119, $i1=var3543, r5=var1509, org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn=var54, $r19=var1240, $r11=var3146, $r8=var361, java.util.Map=var1073, org.hibernate.boot.model.source.internal.hbm.ResultSetMappingBinder=var2368, org.hibernate.boot.jaxb.hbm.spi.NativeQueryNonScalarRootReturn=var2748, org.hibernate.mapping.PersistentClass=var68, $r10=var3177, org.hibernate.LockMode=var2713, $r9=var3886}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType;	r7 := @parameter1: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext;	i2 := @parameter2: int;	$r1 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getProperty()>();	i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int)>(46);	$i4 = (int) -1;	if i0 != $i4 goto $r2 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getProperty()>();	$r2 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getProperty()>();	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r4 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getProperty()>();	$i1 = i0 + 1;	r5 = virtualinvoke $r4.<java.lang.String: java.lang.String substring(int)>($i1);	$r19 = new org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn;	$r11 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getAlias()>();	$r8 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getAlias()>();	$r10 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.ResultSetMappingBinder: java.util.Map extractPropertyResults(java.lang.String,org.hibernate.boot.jaxb.hbm.spi.NativeQueryNonScalarRootReturn,org.hibernate.mapping.PersistentClass,org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext)>($r8, r0, null, r7);	$r9 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: org.hibernate.LockMode getLockMode()>();	specialinvoke $r19.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: void <init>(java.lang.String,java.lang.String,java.lang.String,java.util.Map,org.hibernate.LockMode)>($r11, r3, r5, $r10, $r9);	return $r19
;block_num 2
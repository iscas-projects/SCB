(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var443 0)
(declare-sort var3873 0)
(declare-sort var3379 0)
(declare-sort var2938 0)
(declare-sort var3102 0)
(declare-sort var1155 0)
(declare-sort var2941 0)
(declare-sort var424 0)
(declare-sort var3239 0)
(declare-sort var2236 0)
(declare-sort var1796 0)
(declare-sort var3855 0)
(declare-sort var254 0)
(declare-sort var2276 0)
(declare-sort var1973 0)
(declare-sort var1032 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var424-init () (Array Int var424))
(declare-fun cast-from-var443-to-var424 (var443) var424)
(declare-fun cast-from-var3873-to-var424 (var3873) var424)
(declare-fun cast-from-String-to-var424 (String) var424)
(declare-fun debugf/766413606 (var1155 String (Array Int var424)) void)
(declare-fun getTable/-330942966 (var443) var3239)
(declare-fun setIdentifierValue/-611203499 (var3239 var2236) void)
(declare-fun cast-from-var443-to-var2236 (var443) var2236)
(declare-fun setIdentifierGeneratorStrategy/679471230 (var443 String) void)
(declare-fun var1796-init () var1796)
(declare-fun <init>/964458484 (var1796) void)
(declare-fun getName/-1669825851 (var3239) String)
(declare-fun setProperty/703705272 (var1796 String String) var424)
(declare-fun getColumnSpan/236229659 (var443) Int)
(declare-fun var2938_getObjectNameNormalizer/-706028344 (var2938) var3855)
(declare-fun put/1981026245 (var254 var424 var424) var424)
(declare-fun cast-from-var1796-to-var254 (var1796) var254)
(declare-fun cast-from-var3855-to-var424 (var3855) var424)
(declare-fun var2941_isEmptyAnnotationValue/1929464449 (String) Bool)
(declare-fun var2941_getIdentifierGenerator/1457568719 (String var3873 var3102 var2938) var2276)
(declare-fun var1973-init () var1973)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var1973 String) void)
(declare-fun cast-from-var1973-to-var1032 (var1973) var1032)
(declare-const null-var443 var443)
(declare-const null-var3873 var3873)
(declare-const null-String String)
(declare-const null-var2938 var2938)
(declare-const null-var3102 var3102)
(declare-const var2941-log var1155)
(declare-const null-__Array__Int__var424__ (Array Int var424))
(declare-const null-var2276 var2276)
(declare-const var1139 var443) ; Statement: r1 := @parameter0: org.hibernate.mapping.SimpleValue 
(assert (not (= var1139 null-var443)))
(declare-const var2282 var3873) ; Statement: r2 := @parameter1: org.hibernate.annotations.common.reflection.XProperty 
(assert (not (= var2282 null-var3873)))
(declare-const var1840 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var1840 null-String)))
(declare-const var832 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var832 null-String)))
(declare-const var2783 var2938) ; Statement: r9 := @parameter4: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var2783 null-var2938)))
(declare-const var48 var3102) ; Statement: r12 := @parameter5: java.util.Map 
(assert (not (= var48 null-var3102)))
(define-const var1647 var1155 var2941-log) ; Statement: $r5 = <org.hibernate.cfg.BinderHelper: org.jboss.logging.Logger log> 
(define-const var389 (Array Int var424) arr-var424-init) ; Statement: $r0 = newarray (java.lang.Object)[4] 
(declare-const var389!1 (Array Int var424))
(assert (not (= var389!1 null-__Array__Int__var424__)))
(assert (= (select var389!1 0) (cast-from-var443-to-var424 var1139))) ; Statement: $r0[0] = r1 
(declare-const var389!2 (Array Int var424))
(assert (not (= var389!2 null-__Array__Int__var424__)))
(assert (= (select var389!2 1) (cast-from-var3873-to-var424 var2282))) ; Statement: $r0[1] = r2 
(declare-const var389!3 (Array Int var424))
(assert (not (= var389!3 null-__Array__Int__var424__)))
(assert (= (select var389!3 2) (cast-from-String-to-var424 var1840))) ; Statement: $r0[2] = r3 
(declare-const var389!4 (Array Int var424))
(assert (not (= var389!4 null-__Array__Int__var424__)))
(assert (= (select var389!4 3) (cast-from-String-to-var424 var832))) ; Statement: $r0[3] = r4 
(assert true)
;(assert (debugf/766413606 var1647 "#makeIdGenerator(%s, %s, %s, %s, ...)" var389!4)) ; Statement: virtualinvoke $r5.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object[])>("#makeIdGenerator(%s, %s, %s, %s, ...)", $r0) 

(declare-const var1647!1 var1155)
(declare-const var1566 String)
(declare-const var389!5 (Array Int var424))
(assert true)
(define-const var3078 var3239 (getTable/-330942966 var1139)) ; Statement: r6 = virtualinvoke r1.<org.hibernate.mapping.SimpleValue: org.hibernate.mapping.Table getTable()>() 
(assert true)
;(assert (setIdentifierValue/-611203499 var3078 (cast-from-var443-to-var2236 var1139))) ; Statement: virtualinvoke r6.<org.hibernate.mapping.Table: void setIdentifierValue(org.hibernate.mapping.KeyValue)>(r1) 

(declare-const var3078!1 var3239)
(declare-const var1139!1 var443)
(assert true)
;(assert (setIdentifierGeneratorStrategy/679471230 var1139!1 var1840)) ; Statement: virtualinvoke r1.<org.hibernate.mapping.SimpleValue: void setIdentifierGeneratorStrategy(java.lang.String)>(r3) 

(declare-const var1139!2 var443)
(declare-const var1840!1 String)
(define-const var3111 var1796 var1796-init) ; Statement: $r36 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var3111)) ; Statement: specialinvoke $r36.<java.util.Properties: void <init>()>() 

(declare-const var3111!1 var1796)
(assert true)
(define-const var3053 String (getName/-1669825851 var3078!1)) ; Statement: $r8 = virtualinvoke r6.<org.hibernate.mapping.Table: java.lang.String getName()>() 
(assert true)
;(assert (setProperty/703705272 var3111!1 "target_table" var3053)) ; Statement: virtualinvoke $r36.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("target_table", $r8) 

(declare-const var3111!2 var1796)
(declare-const var1366 String)
(declare-const var3053!1 String)
(assert true)
(define-const var3816 Int (getColumnSpan/236229659 var1139!2)) ; Statement: $i0 = virtualinvoke r1.<org.hibernate.mapping.SimpleValue: int getColumnSpan()>() 
 ; Statement: if $i0 != 1 goto $r10 = interfaceinvoke r9.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.model.naming.ObjectNameNormalizer getObjectNameNormalizer()>() 
(assert (not (= var3816 1))) ; Cond: $i0 != 1 
(define-const var2078 var3855 (var2938_getObjectNameNormalizer/-706028344 var2783)) ; Statement: $r10 = interfaceinvoke r9.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.model.naming.ObjectNameNormalizer getObjectNameNormalizer()>() 
(assert true)
;(assert (put/1981026245 (cast-from-var1796-to-var254 var3111!2) (cast-from-String-to-var424 "identifier_normalizer") (cast-from-var3855-to-var424 var2078))) ; Statement: virtualinvoke $r36.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("identifier_normalizer", $r10) 

(declare-const var3111!3 var1796)
(declare-const var2703 String)
(declare-const var2078!1 var3855)
(assert true)
;(assert (put/1981026245 (cast-from-var1796-to-var254 var3111!3) (cast-from-String-to-var424 "GENERATOR_NAME") (cast-from-String-to-var424 var832))) ; Statement: virtualinvoke $r36.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("GENERATOR_NAME", r4) 

(declare-const var3111!4 var1796)
(declare-const var1878 String)
(declare-const var832!1 String)
(define-const var1702 Bool (var2941_isEmptyAnnotationValue/1929464449 var832!1)) ; Statement: $z0 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>(r4) 
 ; Statement: if $z0 != 0 goto $r11 = "assigned" 
(assert (not (not (= (ite var1702 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1296 var2276 (var2941_getIdentifierGenerator/1457568719 var832!1 var2282 var48 var2783)) ; Statement: r13 = staticinvoke <org.hibernate.cfg.BinderHelper: org.hibernate.boot.model.IdentifierGeneratorDefinition getIdentifierGenerator(java.lang.String,org.hibernate.annotations.common.reflection.XProperty,java.util.Map,org.hibernate.boot.spi.MetadataBuildingContext)>(r4, r2, r12, r9) 
 ; Statement: if r13 != null goto r14 = virtualinvoke r13.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String getStrategy()>() 
(assert (not (not (= var1296 null-var2276)))) ; Negate: Cond: r13 != null  
(define-const var2213 var1973 var1973-init) ; Statement: $r38 = new org.hibernate.AnnotationException 
(define-const var3961 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3961)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3961!1 String)
(assert (= var3961!1 ""))
(assert true)
(define-const var3101 String (append/672562846 var3961!1 "Unknown named generator (@GeneratedValue#generatorName): ")) ; Statement: $r26 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown named generator (@GeneratedValue#generatorName): ") 
(declare-const var3961!2 String)
(assert (= var3961!2 (str.++ var3961!1 "Unknown named generator (@GeneratedValue#generatorName): ")))
(assert true)
(define-const var3377 String (append/672562846 var3101 var832!1)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3101!1 String)
(assert (= var3101!1 (str.++ var3101 var832!1)))
(assert true)
(define-const var978 String (toString/-2075883882 var3377)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var2213 var978)) ; Statement: specialinvoke $r38.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r28) 

(declare-const var2213!1 var1973)
(declare-const var978!1 String)
(define-const var2196 var1032 (cast-from-var1973-to-var1032 var2213!1)) ; Statement: $r39 = (java.lang.Throwable) $r38 
 ; Statement: throw $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var424-init=([], java.lang.Object[]), cast-from-var443-to-var424=([org.hibernate.mapping.SimpleValue], java.lang.Object), cast-from-var3873-to-var424=([org.hibernate.annotations.common.reflection.XProperty], java.lang.Object), cast-from-String-to-var424=([java.lang.String], java.lang.Object), debugf/766413606=([org.jboss.logging.Logger, java.lang.String, java.lang.Object[]], void), getTable/-330942966=([org.hibernate.mapping.SimpleValue], org.hibernate.mapping.Table), setIdentifierValue/-611203499=([org.hibernate.mapping.Table, org.hibernate.mapping.KeyValue], void), cast-from-var443-to-var2236=([org.hibernate.mapping.SimpleValue], org.hibernate.mapping.KeyValue), setIdentifierGeneratorStrategy/679471230=([org.hibernate.mapping.SimpleValue, java.lang.String], void), var1796-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), getName/-1669825851=([org.hibernate.mapping.Table], java.lang.String), setProperty/703705272=([java.util.Properties, java.lang.String, java.lang.String], java.lang.Object), getColumnSpan/236229659=([org.hibernate.mapping.SimpleValue], int), var2938_getObjectNameNormalizer/-706028344=([org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.model.naming.ObjectNameNormalizer), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1796-to-var254=([java.util.Properties], java.util.Hashtable), cast-from-var3855-to-var424=([org.hibernate.boot.model.naming.ObjectNameNormalizer], java.lang.Object), var2941_isEmptyAnnotationValue/1929464449=([java.lang.String], boolean), var2941_getIdentifierGenerator/1457568719=([java.lang.String, org.hibernate.annotations.common.reflection.XProperty, java.util.Map, org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.model.IdentifierGeneratorDefinition), var1973-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var1973-to-var1032=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var443=org.hibernate.mapping.SimpleValue, var1139=r1, var3873=org.hibernate.annotations.common.reflection.XProperty, var2282=r2, var1840=r3, var3379=null_type, var832=r4, var2938=org.hibernate.boot.spi.MetadataBuildingContext, var2783=r9, var3102=java.util.Map, var48=r12, var1155=org.jboss.logging.Logger, var2941=org.hibernate.cfg.BinderHelper, var1647=$r5, var424=java.lang.Object, var389=$r0, var1566="#makeIdGenerator(%s, %s, %s, %s, ...)", var3239=org.hibernate.mapping.Table, var3078=r6, var2236=org.hibernate.mapping.KeyValue, var1796=java.util.Properties, var3111=$r36, var3053=$r8, var1366="target_table", var3816=$i0, var3855=org.hibernate.boot.model.naming.ObjectNameNormalizer, var2078=$r10, var254=java.util.Hashtable, var2703="identifier_normalizer", var1878="GENERATOR_NAME", var1702=$z0, var2276=org.hibernate.boot.model.IdentifierGeneratorDefinition, var1296=r13, var1973=org.hibernate.AnnotationException, var2213=$r38, var3961=$r37, var3101=$r26, var3377=$r27, var978=$r28, var1032=java.lang.Throwable, var2196=$r39}
; {org.hibernate.mapping.SimpleValue=var443, r1=var1139, org.hibernate.annotations.common.reflection.XProperty=var3873, r2=var2282, r3=var1840, null_type=var3379, r4=var832, org.hibernate.boot.spi.MetadataBuildingContext=var2938, r9=var2783, java.util.Map=var3102, r12=var48, org.jboss.logging.Logger=var1155, org.hibernate.cfg.BinderHelper=var2941, $r5=var1647, java.lang.Object=var424, $r0=var389, "#makeIdGenerator(%s, %s, %s, %s, ...)"=var1566, org.hibernate.mapping.Table=var3239, r6=var3078, org.hibernate.mapping.KeyValue=var2236, java.util.Properties=var1796, $r36=var3111, $r8=var3053, "target_table"=var1366, $i0=var3816, org.hibernate.boot.model.naming.ObjectNameNormalizer=var3855, $r10=var2078, java.util.Hashtable=var254, "identifier_normalizer"=var2703, "GENERATOR_NAME"=var1878, $z0=var1702, org.hibernate.boot.model.IdentifierGeneratorDefinition=var2276, r13=var1296, org.hibernate.AnnotationException=var1973, $r38=var2213, $r37=var3961, $r26=var3101, $r27=var3377, $r28=var978, java.lang.Throwable=var1032, $r39=var2196}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.mapping.SimpleValue;	r2 := @parameter1: org.hibernate.annotations.common.reflection.XProperty;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String;	r9 := @parameter4: org.hibernate.boot.spi.MetadataBuildingContext;	r12 := @parameter5: java.util.Map;	$r5 = <org.hibernate.cfg.BinderHelper: org.jboss.logging.Logger log>;	$r0 = newarray (java.lang.Object)[4];	$r0[0] = r1;	$r0[1] = r2;	$r0[2] = r3;	$r0[3] = r4;	virtualinvoke $r5.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object[])>("#makeIdGenerator(%s, %s, %s, %s, ...)", $r0);	r6 = virtualinvoke r1.<org.hibernate.mapping.SimpleValue: org.hibernate.mapping.Table getTable()>();	virtualinvoke r6.<org.hibernate.mapping.Table: void setIdentifierValue(org.hibernate.mapping.KeyValue)>(r1);	virtualinvoke r1.<org.hibernate.mapping.SimpleValue: void setIdentifierGeneratorStrategy(java.lang.String)>(r3);	$r36 = new java.util.Properties;	specialinvoke $r36.<java.util.Properties: void <init>()>();	$r8 = virtualinvoke r6.<org.hibernate.mapping.Table: java.lang.String getName()>();	virtualinvoke $r36.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("target_table", $r8);	$i0 = virtualinvoke r1.<org.hibernate.mapping.SimpleValue: int getColumnSpan()>();	if $i0 != 1 goto $r10 = interfaceinvoke r9.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.model.naming.ObjectNameNormalizer getObjectNameNormalizer()>();	$r10 = interfaceinvoke r9.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.model.naming.ObjectNameNormalizer getObjectNameNormalizer()>();	virtualinvoke $r36.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("identifier_normalizer", $r10);	virtualinvoke $r36.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("GENERATOR_NAME", r4);	$z0 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>(r4);	if $z0 != 0 goto $r11 = "assigned";	r13 = staticinvoke <org.hibernate.cfg.BinderHelper: org.hibernate.boot.model.IdentifierGeneratorDefinition getIdentifierGenerator(java.lang.String,org.hibernate.annotations.common.reflection.XProperty,java.util.Map,org.hibernate.boot.spi.MetadataBuildingContext)>(r4, r2, r12, r9);	if r13 != null goto r14 = virtualinvoke r13.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String getStrategy()>();	$r38 = new org.hibernate.AnnotationException;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown named generator (@GeneratedValue#generatorName): ");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r38.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r28);	$r39 = (java.lang.Throwable) $r38;	throw $r39
;block_num 4
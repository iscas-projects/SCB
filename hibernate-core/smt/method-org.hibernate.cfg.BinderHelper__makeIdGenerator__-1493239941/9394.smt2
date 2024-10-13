(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3188 0)
(declare-sort var540 0)
(declare-sort var3037 0)
(declare-sort var1223 0)
(declare-sort var1785 0)
(declare-sort var3193 0)
(declare-sort var2631 0)
(declare-sort var2966 0)
(declare-sort var146 0)
(declare-sort var1215 0)
(declare-sort var2373 0)
(declare-sort var3913 0)
(declare-sort var3152 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2966-init () (Array Int var2966))
(declare-fun cast-from-var3188-to-var2966 (var3188) var2966)
(declare-fun cast-from-var540-to-var2966 (var540) var2966)
(declare-fun cast-from-String-to-var2966 (String) var2966)
(declare-fun debugf/766413606 (var3193 String (Array Int var2966)) void)
(declare-fun getTable/-330942966 (var3188) var146)
(declare-fun setIdentifierValue/-611203499 (var146 var1215) void)
(declare-fun cast-from-var3188-to-var1215 (var3188) var1215)
(declare-fun setIdentifierGeneratorStrategy/679471230 (var3188 String) void)
(declare-fun var2373-init () var2373)
(declare-fun <init>/964458484 (var2373) void)
(declare-fun getName/-1669825851 (var146) String)
(declare-fun setProperty/703705272 (var2373 String String) var2966)
(declare-fun getColumnSpan/236229659 (var3188) Int)
(declare-fun var1223_getObjectNameNormalizer/-706028344 (var1223) var3913)
(declare-fun put/1981026245 (var3152 var2966 var2966) var2966)
(declare-fun cast-from-var2373-to-var3152 (var2373) var3152)
(declare-fun cast-from-var3913-to-var2966 (var3913) var2966)
(declare-fun var2631_isEmptyAnnotationValue/1929464449 (String) Bool)
(declare-fun setIdentifierGeneratorProperties/1084531212 (var3188 var2373) void)
(declare-const null-var3188 var3188)
(declare-const null-var540 var540)
(declare-const null-String String)
(declare-const null-var1223 var1223)
(declare-const null-var1785 var1785)
(declare-const var2631-log var3193)
(declare-const null-__Array__Int__var2966__ (Array Int var2966))
(declare-const var3491 var3188) ; Statement: r1 := @parameter0: org.hibernate.mapping.SimpleValue 
(assert (not (= var3491 null-var3188)))
(declare-const var1835 var540) ; Statement: r2 := @parameter1: org.hibernate.annotations.common.reflection.XProperty 
(assert (not (= var1835 null-var540)))
(declare-const var391 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var391 null-String)))
(declare-const var1052 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var1052 null-String)))
(declare-const var1133 var1223) ; Statement: r9 := @parameter4: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var1133 null-var1223)))
(declare-const var511 var1785) ; Statement: r12 := @parameter5: java.util.Map 
(assert (not (= var511 null-var1785)))
(define-const var411 var3193 var2631-log) ; Statement: $r5 = <org.hibernate.cfg.BinderHelper: org.jboss.logging.Logger log> 
(define-const var2053 (Array Int var2966) arr-var2966-init) ; Statement: $r0 = newarray (java.lang.Object)[4] 
(declare-const var2053!1 (Array Int var2966))
(assert (not (= var2053!1 null-__Array__Int__var2966__)))
(assert (= (select var2053!1 0) (cast-from-var3188-to-var2966 var3491))) ; Statement: $r0[0] = r1 
(declare-const var2053!2 (Array Int var2966))
(assert (not (= var2053!2 null-__Array__Int__var2966__)))
(assert (= (select var2053!2 1) (cast-from-var540-to-var2966 var1835))) ; Statement: $r0[1] = r2 
(declare-const var2053!3 (Array Int var2966))
(assert (not (= var2053!3 null-__Array__Int__var2966__)))
(assert (= (select var2053!3 2) (cast-from-String-to-var2966 var391))) ; Statement: $r0[2] = r3 
(declare-const var2053!4 (Array Int var2966))
(assert (not (= var2053!4 null-__Array__Int__var2966__)))
(assert (= (select var2053!4 3) (cast-from-String-to-var2966 var1052))) ; Statement: $r0[3] = r4 
(assert true)
;(assert (debugf/766413606 var411 "#makeIdGenerator(%s, %s, %s, %s, ...)" var2053!4)) ; Statement: virtualinvoke $r5.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object[])>("#makeIdGenerator(%s, %s, %s, %s, ...)", $r0) 

(declare-const var411!1 var3193)
(declare-const var2357 String)
(declare-const var2053!5 (Array Int var2966))
(assert true)
(define-const var649 var146 (getTable/-330942966 var3491)) ; Statement: r6 = virtualinvoke r1.<org.hibernate.mapping.SimpleValue: org.hibernate.mapping.Table getTable()>() 
(assert true)
;(assert (setIdentifierValue/-611203499 var649 (cast-from-var3188-to-var1215 var3491))) ; Statement: virtualinvoke r6.<org.hibernate.mapping.Table: void setIdentifierValue(org.hibernate.mapping.KeyValue)>(r1) 

(declare-const var649!1 var146)
(declare-const var3491!1 var3188)
(assert true)
;(assert (setIdentifierGeneratorStrategy/679471230 var3491!1 var391)) ; Statement: virtualinvoke r1.<org.hibernate.mapping.SimpleValue: void setIdentifierGeneratorStrategy(java.lang.String)>(r3) 

(declare-const var3491!2 var3188)
(declare-const var391!1 String)
(define-const var173 var2373 var2373-init) ; Statement: $r36 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var173)) ; Statement: specialinvoke $r36.<java.util.Properties: void <init>()>() 

(declare-const var173!1 var2373)
(assert true)
(define-const var3046 String (getName/-1669825851 var649!1)) ; Statement: $r8 = virtualinvoke r6.<org.hibernate.mapping.Table: java.lang.String getName()>() 
(assert true)
;(assert (setProperty/703705272 var173!1 "target_table" var3046)) ; Statement: virtualinvoke $r36.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("target_table", $r8) 

(declare-const var173!2 var2373)
(declare-const var353 String)
(declare-const var3046!1 String)
(assert true)
(define-const var3923 Int (getColumnSpan/236229659 var3491!2)) ; Statement: $i0 = virtualinvoke r1.<org.hibernate.mapping.SimpleValue: int getColumnSpan()>() 
 ; Statement: if $i0 != 1 goto $r10 = interfaceinvoke r9.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.model.naming.ObjectNameNormalizer getObjectNameNormalizer()>() 
(assert (not (= var3923 1))) ; Cond: $i0 != 1 
(define-const var750 var3913 (var1223_getObjectNameNormalizer/-706028344 var1133)) ; Statement: $r10 = interfaceinvoke r9.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.model.naming.ObjectNameNormalizer getObjectNameNormalizer()>() 
(assert true)
;(assert (put/1981026245 (cast-from-var2373-to-var3152 var173!2) (cast-from-String-to-var2966 "identifier_normalizer") (cast-from-var3913-to-var2966 var750))) ; Statement: virtualinvoke $r36.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("identifier_normalizer", $r10) 

(declare-const var173!3 var2373)
(declare-const var3295 String)
(declare-const var750!1 var3913)
(assert true)
;(assert (put/1981026245 (cast-from-var2373-to-var3152 var173!3) (cast-from-String-to-var2966 "GENERATOR_NAME") (cast-from-String-to-var2966 var1052))) ; Statement: virtualinvoke $r36.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("GENERATOR_NAME", r4) 

(declare-const var173!4 var2373)
(declare-const var2917 String)
(declare-const var1052!1 String)
(define-const var2291 Bool (var2631_isEmptyAnnotationValue/1929464449 var1052!1)) ; Statement: $z0 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>(r4) 
 ; Statement: if $z0 != 0 goto $r11 = "assigned" 
(assert (not (= (ite var2291 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3897 String "assigned") ; Statement: $r11 = "assigned" 
(assert true)
(define-const var1125 Bool (= var3897 var391!1)) ; Statement: $z1 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z1 == 0 goto virtualinvoke r1.<org.hibernate.mapping.SimpleValue: void setIdentifierGeneratorProperties(java.util.Properties)>($r36) 
(assert (= (ite var1125 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (setIdentifierGeneratorProperties/1084531212 var3491!2 var173!4)) ; Statement: virtualinvoke r1.<org.hibernate.mapping.SimpleValue: void setIdentifierGeneratorProperties(java.util.Properties)>($r36) 

(declare-const var3491!3 var3188)
(declare-const var173!5 var2373)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2966-init=([], java.lang.Object[]), cast-from-var3188-to-var2966=([org.hibernate.mapping.SimpleValue], java.lang.Object), cast-from-var540-to-var2966=([org.hibernate.annotations.common.reflection.XProperty], java.lang.Object), cast-from-String-to-var2966=([java.lang.String], java.lang.Object), debugf/766413606=([org.jboss.logging.Logger, java.lang.String, java.lang.Object[]], void), getTable/-330942966=([org.hibernate.mapping.SimpleValue], org.hibernate.mapping.Table), setIdentifierValue/-611203499=([org.hibernate.mapping.Table, org.hibernate.mapping.KeyValue], void), cast-from-var3188-to-var1215=([org.hibernate.mapping.SimpleValue], org.hibernate.mapping.KeyValue), setIdentifierGeneratorStrategy/679471230=([org.hibernate.mapping.SimpleValue, java.lang.String], void), var2373-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), getName/-1669825851=([org.hibernate.mapping.Table], java.lang.String), setProperty/703705272=([java.util.Properties, java.lang.String, java.lang.String], java.lang.Object), getColumnSpan/236229659=([org.hibernate.mapping.SimpleValue], int), var1223_getObjectNameNormalizer/-706028344=([org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.model.naming.ObjectNameNormalizer), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var2373-to-var3152=([java.util.Properties], java.util.Hashtable), cast-from-var3913-to-var2966=([org.hibernate.boot.model.naming.ObjectNameNormalizer], java.lang.Object), var2631_isEmptyAnnotationValue/1929464449=([java.lang.String], boolean), setIdentifierGeneratorProperties/1084531212=([org.hibernate.mapping.SimpleValue, java.util.Properties], void)}
; {var3188=org.hibernate.mapping.SimpleValue, var3491=r1, var540=org.hibernate.annotations.common.reflection.XProperty, var1835=r2, var391=r3, var3037=null_type, var1052=r4, var1223=org.hibernate.boot.spi.MetadataBuildingContext, var1133=r9, var1785=java.util.Map, var511=r12, var3193=org.jboss.logging.Logger, var2631=org.hibernate.cfg.BinderHelper, var411=$r5, var2966=java.lang.Object, var2053=$r0, var2357="#makeIdGenerator(%s, %s, %s, %s, ...)", var146=org.hibernate.mapping.Table, var649=r6, var1215=org.hibernate.mapping.KeyValue, var2373=java.util.Properties, var173=$r36, var3046=$r8, var353="target_table", var3923=$i0, var3913=org.hibernate.boot.model.naming.ObjectNameNormalizer, var750=$r10, var3152=java.util.Hashtable, var3295="identifier_normalizer", var2917="GENERATOR_NAME", var2291=$z0, var3897=$r11, var1125=$z1}
; {org.hibernate.mapping.SimpleValue=var3188, r1=var3491, org.hibernate.annotations.common.reflection.XProperty=var540, r2=var1835, r3=var391, null_type=var3037, r4=var1052, org.hibernate.boot.spi.MetadataBuildingContext=var1223, r9=var1133, java.util.Map=var1785, r12=var511, org.jboss.logging.Logger=var3193, org.hibernate.cfg.BinderHelper=var2631, $r5=var411, java.lang.Object=var2966, $r0=var2053, "#makeIdGenerator(%s, %s, %s, %s, ...)"=var2357, org.hibernate.mapping.Table=var146, r6=var649, org.hibernate.mapping.KeyValue=var1215, java.util.Properties=var2373, $r36=var173, $r8=var3046, "target_table"=var353, $i0=var3923, org.hibernate.boot.model.naming.ObjectNameNormalizer=var3913, $r10=var750, java.util.Hashtable=var3152, "identifier_normalizer"=var3295, "GENERATOR_NAME"=var2917, $z0=var2291, $r11=var3897, $z1=var1125}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: org.hibernate.mapping.SimpleValue;	r2 := @parameter1: org.hibernate.annotations.common.reflection.XProperty;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String;	r9 := @parameter4: org.hibernate.boot.spi.MetadataBuildingContext;	r12 := @parameter5: java.util.Map;	$r5 = <org.hibernate.cfg.BinderHelper: org.jboss.logging.Logger log>;	$r0 = newarray (java.lang.Object)[4];	$r0[0] = r1;	$r0[1] = r2;	$r0[2] = r3;	$r0[3] = r4;	virtualinvoke $r5.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object[])>("#makeIdGenerator(%s, %s, %s, %s, ...)", $r0);	r6 = virtualinvoke r1.<org.hibernate.mapping.SimpleValue: org.hibernate.mapping.Table getTable()>();	virtualinvoke r6.<org.hibernate.mapping.Table: void setIdentifierValue(org.hibernate.mapping.KeyValue)>(r1);	virtualinvoke r1.<org.hibernate.mapping.SimpleValue: void setIdentifierGeneratorStrategy(java.lang.String)>(r3);	$r36 = new java.util.Properties;	specialinvoke $r36.<java.util.Properties: void <init>()>();	$r8 = virtualinvoke r6.<org.hibernate.mapping.Table: java.lang.String getName()>();	virtualinvoke $r36.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("target_table", $r8);	$i0 = virtualinvoke r1.<org.hibernate.mapping.SimpleValue: int getColumnSpan()>();	if $i0 != 1 goto $r10 = interfaceinvoke r9.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.model.naming.ObjectNameNormalizer getObjectNameNormalizer()>();	$r10 = interfaceinvoke r9.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.model.naming.ObjectNameNormalizer getObjectNameNormalizer()>();	virtualinvoke $r36.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("identifier_normalizer", $r10);	virtualinvoke $r36.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("GENERATOR_NAME", r4);	$z0 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>(r4);	if $z0 != 0 goto $r11 = "assigned";	$r11 = "assigned";	$z1 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z1 == 0 goto virtualinvoke r1.<org.hibernate.mapping.SimpleValue: void setIdentifierGeneratorProperties(java.util.Properties)>($r36);	virtualinvoke r1.<org.hibernate.mapping.SimpleValue: void setIdentifierGeneratorProperties(java.util.Properties)>($r36);	return
;block_num 4
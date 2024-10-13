(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1844 0)
(declare-sort var2454 0)
(declare-sort var1087 0)
(declare-sort var2954 0)
(declare-sort var3212 0)
(declare-sort var1008 0)
(declare-sort var1669 0)
(declare-sort var46 0)
(declare-sort var3687 0)
(declare-sort var2533 0)
(declare-sort var2118 0)
(declare-sort var3564 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1087-to-var1669 (var1087) var1669)
(declare-fun descriptor/-163794951 (var1669) var46)
(declare-fun getNumber/-1369718730 (var46) Int)
(declare-fun isRepeated/1561302426 (var46) Bool)
(declare-fun getLiteType/-1265195616 (var46) var3687)
(declare-fun var2454_readInt32/955567783 (var2454) Int)
(declare-fun getEnumType/706511849 (var46) var2533)
(declare-fun findValueByNumber/-792821783 (var2533 Int) var2118)
(declare-fun var3564_storeUnknownEnum/1294779855 (Int Int var1087 var1008) var1087)
(declare-const null-var1844 var1844)
(declare-const null-var2454 var2454)
(declare-const null-var1087 var1087)
(declare-const null-var2954 var2954)
(declare-const null-var3212 var3212)
(declare-const null-var1008 var1008)
(declare-const var3687-ENUM var3687)
(declare-const null-var2118 var2118)
(declare-const var373 var1844) ; Statement: r59 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaFull 
(assert (not (= var373 null-var1844)))
(declare-const var2607 var2454) ; Statement: r10 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader 
(assert (not (= var2607 null-var2454)))
(declare-const var1198 var1087) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1198 null-var1087)))
(declare-const var779 var2954) ; Statement: r12 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite 
(assert (not (= var779 null-var2954)))
(declare-const var1936 var3212) ; Statement: r17 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet 
(assert (not (= var1936 null-var3212)))
(declare-const var2207 var1087) ; Statement: r60 := @parameter4: java.lang.Object 
(assert (not (= var2207 null-var1087)))
(declare-const var502 var1008) ; Statement: r25 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema 
(assert (not (= var502 null-var1008)))
(define-const var1021 var1669 (cast-from-var1087-to-var1669 var1198)) ; Statement: r1 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo) r0 
(define-const var767 var46 (descriptor/-163794951 var1021)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor> 
(assert true)
(define-const var1937 Int (getNumber/-1369718730 var767)) ; Statement: i0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: int getNumber()>() 
(define-const var2018 var46 (descriptor/-163794951 var1021)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor> 
(assert true)
(define-const var996 Bool (isRepeated/1561302426 var2018)) ; Statement: $z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isRepeated()>() 
 ; Statement: if $z0 == 0 goto r63 = null 
(assert (= (ite var996 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3587 var1087 null-var1087) ; Statement: r63 = null 
(define-const var1305 var46 (descriptor/-163794951 var1021)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor> 
(assert true)
(define-const var2099 var3687 (getLiteType/-1265195616 var1305)) ; Statement: $r6 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>() 
(define-const var1218 var3687 var3687-ENUM) ; Statement: $r5 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType ENUM> 
 ; Statement: if $r6 != $r5 goto $r8 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaFull$1: int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType> 
(assert (not (not (= var2099 var1218)))) ; Negate: Cond: $r6 != $r5  
(define-const var1398 Int (var2454_readInt32/955567783 var2607)) ; Statement: i18 = interfaceinvoke r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader: int readInt32()>() 
(define-const var2022 var46 (descriptor/-163794951 var1021)) ; Statement: $r23 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor> 
(assert true)
(define-const var2010 var2533 (getEnumType/706511849 var2022)) ; Statement: $r24 = virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor getEnumType()>() 
(assert true)
(define-const var1368 var2118 (findValueByNumber/-792821783 var2010 var1398)) ; Statement: r64 = virtualinvoke $r24.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor findValueByNumber(int)>(i18) 
 ; Statement: if r64 != null goto r63 = r64 
(assert (not (not (= var1368 null-var2118)))) ; Negate: Cond: r64 != null  
(define-const var1495 var1087 (var3564_storeUnknownEnum/1294779855 var1937 var1398 var2207 var502)) ; Statement: $r26 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.SchemaUtil: java.lang.Object storeUnknownEnum(int,int,java.lang.Object,com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema)>(i0, i18, r60, r25) 
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1087-to-var1669=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo), descriptor/-163794951=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor), getNumber/-1369718730=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], int), isRepeated/1561302426=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], boolean), getLiteType/-1265195616=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType), var2454_readInt32/955567783=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader], int), getEnumType/706511849=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor), findValueByNumber/-792821783=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor, int], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor), var3564_storeUnknownEnum/1294779855=([int, int, java.lang.Object, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema], java.lang.Object)}
; {var1844=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaFull, var373=r59, var2454=com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader, var2607=r10, var1087=java.lang.Object, var1198=r0, var2954=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite, var779=r12, var3212=com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet, var1936=r17, var2207=r60, var1008=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema, var502=r25, var1669=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo, var1021=r1, var46=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var767=$r2, var1937=i0, var2018=$r3, var996=$z0, var3587=r63, var1305=$r4, var3687=com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType, var2099=$r6, var1218=$r5, var1398=i18, var2022=$r23, var2533=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor, var2010=$r24, var2118=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor, var1368=r64, var3564=com.google.javascript.jscomp.jarjar.com.google.protobuf.SchemaUtil, var1495=$r26}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaFull=var1844, r59=var373, com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader=var2454, r10=var2607, java.lang.Object=var1087, r0=var1198, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite=var2954, r12=var779, com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet=var3212, r17=var1936, r60=var2207, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema=var1008, r25=var502, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo=var1669, r1=var1021, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var46, $r2=var767, i0=var1937, $r3=var2018, $z0=var996, r63=var3587, $r4=var1305, com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType=var3687, $r6=var2099, $r5=var1218, i18=var1398, $r23=var2022, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor=var2533, $r24=var2010, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor=var2118, r64=var1368, com.google.javascript.jscomp.jarjar.com.google.protobuf.SchemaUtil=var3564, $r26=var1495}
;seq 
;cnt {}
;stmts r59 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaFull;	r10 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader;	r0 := @parameter1: java.lang.Object;	r12 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite;	r17 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet;	r60 := @parameter4: java.lang.Object;	r25 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema;	r1 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo) r0;	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor>;	i0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: int getNumber()>();	$r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor>;	$z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isRepeated()>();	if $z0 == 0 goto r63 = null;	r63 = null;	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor>;	$r6 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>();	$r5 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType ENUM>;	if $r6 != $r5 goto $r8 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaFull$1: int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType>;	i18 = interfaceinvoke r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader: int readInt32()>();	$r23 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor>;	$r24 = virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor getEnumType()>();	r64 = virtualinvoke $r24.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor findValueByNumber(int)>(i18);	if r64 != null goto r63 = r64;	$r26 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.SchemaUtil: java.lang.Object storeUnknownEnum(int,int,java.lang.Object,com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema)>(i0, i18, r60, r25);	return $r26
;block_num 4
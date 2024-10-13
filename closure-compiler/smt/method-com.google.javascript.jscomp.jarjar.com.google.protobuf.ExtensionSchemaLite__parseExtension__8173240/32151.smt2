(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2722 0)
(declare-sort var2102 0)
(declare-sort var855 0)
(declare-sort var3227 0)
(declare-sort var3339 0)
(declare-sort var794 0)
(declare-sort var613 0)
(declare-sort var1075 0)
(declare-sort var1273 0)
(declare-sort var146 0)
(declare-sort var248 0)
(declare-sort var3211 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var855-to-var613 (var855) var613)
(declare-fun getNumber/-1337894021 (var613) Int)
(declare-fun descriptor/1796606018 (var613) var1075)
(declare-fun isRepeated/-1089353981 (var1075) Bool)
(declare-fun getLiteType/-2109119173 (var613) var1273)
(declare-fun var2102_readInt32/955567783 (var2102) Int)
(declare-fun getEnumType/790312124 (var1075) var146)
(declare-fun var146_findValueByNumber/-998549590 (var146 Int) var248)
(declare-fun var3211_storeUnknownEnum/1294779855 (Int Int var855 var794) var855)
(declare-const null-var2722 var2722)
(declare-const null-var2102 var2102)
(declare-const null-var855 var855)
(declare-const null-var3227 var3227)
(declare-const null-var3339 var3339)
(declare-const null-var794 var794)
(declare-const var1273-ENUM var1273)
(declare-const null-var248 var248)
(declare-const var891 var2722) ; Statement: r50 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaLite 
(assert (not (= var891 null-var2722)))
(declare-const var1306 var2102) ; Statement: r7 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader 
(assert (not (= var1306 null-var2102)))
(declare-const var622 var855) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var622 null-var855)))
(declare-const var2072 var3227) ; Statement: r9 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite 
(assert (not (= var2072 null-var3227)))
(declare-const var1130 var3339) ; Statement: r13 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet 
(assert (not (= var1130 null-var3339)))
(declare-const var2588 var855) ; Statement: r51 := @parameter4: java.lang.Object 
(assert (not (= var2588 null-var855)))
(declare-const var686 var794) ; Statement: r22 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema 
(assert (not (= var686 null-var794)))
(define-const var1880 var613 (cast-from-var855-to-var613 var622)) ; Statement: r1 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension) r0 
(assert true)
(define-const var2493 Int (getNumber/-1337894021 var1880)) ; Statement: i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: int getNumber()>() 
(define-const var1343 var1075 (descriptor/1796606018 var1880)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor> 
(assert true)
(define-const var2923 Bool (isRepeated/-1089353981 var1343)) ; Statement: $z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: boolean isRepeated()>() 
 ; Statement: if $z0 == 0 goto r54 = null 
(assert (= (ite var2923 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1885 var855 null-var855) ; Statement: r54 = null 
(assert true)
(define-const var2231 var1273 (getLiteType/-2109119173 var1880)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>() 
(define-const var1875 var1273 var1273-ENUM) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType ENUM> 
 ; Statement: if $r4 != $r3 goto $r5 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaLite$1: int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType> 
(assert (not (not (= var2231 var1875)))) ; Negate: Cond: $r4 != $r3  
(define-const var1136 Int (var2102_readInt32/955567783 var1306)) ; Statement: i17 = interfaceinvoke r7.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader: int readInt32()>() 
(define-const var2811 var1075 (descriptor/1796606018 var1880)) ; Statement: $r19 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor> 
(assert true)
(define-const var2164 var146 (getEnumType/790312124 var2811)) ; Statement: $r20 = virtualinvoke $r19.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumLiteMap getEnumType()>() 
(define-const var1939 var248 (var146_findValueByNumber/-998549590 var2164 var1136)) ; Statement: r21 = interfaceinvoke $r20.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumLiteMap: com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumLite findValueByNumber(int)>(i17) 
 ; Statement: if r21 != null goto r54 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i17) 
(assert (not (not (= var1939 null-var248)))) ; Negate: Cond: r21 != null  
(define-const var698 var855 (var3211_storeUnknownEnum/1294779855 var2493 var1136 var2588 var686)) ; Statement: $r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.SchemaUtil: java.lang.Object storeUnknownEnum(int,int,java.lang.Object,com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema)>(i0, i17, r51, r22) 
 ; Statement: return $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var855-to-var613=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension), getNumber/-1337894021=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension], int), descriptor/1796606018=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor), isRepeated/-1089353981=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor], boolean), getLiteType/-2109119173=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension], com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType), var2102_readInt32/955567783=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader], int), getEnumType/790312124=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumLiteMap), var146_findValueByNumber/-998549590=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumLiteMap, int], com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumLite), var3211_storeUnknownEnum/1294779855=([int, int, java.lang.Object, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema], java.lang.Object)}
; {var2722=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaLite, var891=r50, var2102=com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader, var1306=r7, var855=java.lang.Object, var622=r0, var3227=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite, var2072=r9, var3339=com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet, var1130=r13, var2588=r51, var794=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema, var686=r22, var613=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension, var1880=r1, var2493=i0, var1075=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor, var1343=$r2, var2923=$z0, var1885=r54, var1273=com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType, var2231=$r4, var1875=$r3, var1136=i17, var2811=$r19, var146=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumLiteMap, var2164=$r20, var248=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumLite, var1939=r21, var3211=com.google.javascript.jscomp.jarjar.com.google.protobuf.SchemaUtil, var698=$r23}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaLite=var2722, r50=var891, com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader=var2102, r7=var1306, java.lang.Object=var855, r0=var622, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite=var3227, r9=var2072, com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet=var3339, r13=var1130, r51=var2588, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema=var794, r22=var686, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension=var613, r1=var1880, i0=var2493, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor=var1075, $r2=var1343, $z0=var2923, r54=var1885, com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType=var1273, $r4=var2231, $r3=var1875, i17=var1136, $r19=var2811, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumLiteMap=var146, $r20=var2164, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumLite=var248, r21=var1939, com.google.javascript.jscomp.jarjar.com.google.protobuf.SchemaUtil=var3211, $r23=var698}
;seq 
;cnt {}
;stmts r50 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaLite;	r7 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader;	r0 := @parameter1: java.lang.Object;	r9 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite;	r13 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet;	r51 := @parameter4: java.lang.Object;	r22 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema;	r1 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension) r0;	i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: int getNumber()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor>;	$z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: boolean isRepeated()>();	if $z0 == 0 goto r54 = null;	r54 = null;	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>();	$r3 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType ENUM>;	if $r4 != $r3 goto $r5 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaLite$1: int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType>;	i17 = interfaceinvoke r7.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader: int readInt32()>();	$r19 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor>;	$r20 = virtualinvoke $r19.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumLiteMap getEnumType()>();	r21 = interfaceinvoke $r20.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumLiteMap: com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumLite findValueByNumber(int)>(i17);	if r21 != null goto r54 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i17);	$r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.SchemaUtil: java.lang.Object storeUnknownEnum(int,int,java.lang.Object,com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema)>(i0, i17, r51, r22);	return $r23
;block_num 4
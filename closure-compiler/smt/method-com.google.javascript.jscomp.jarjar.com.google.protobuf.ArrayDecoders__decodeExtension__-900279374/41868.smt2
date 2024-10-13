(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var39 0)
(declare-sort var2013 0)
(declare-sort var1595 0)
(declare-sort var3240 0)
(declare-sort var3163 0)
(declare-sort var2790 0)
(declare-sort var2784 0)
(declare-sort var3952 0)
(declare-sort var189 0)
(declare-sort var1406 0)
(declare-sort var3788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun extensions/-24977695 (var39) var3163)
(declare-fun descriptor/1796606018 (var2013) var2790)
(declare-fun isRepeated/-1089353981 (var2790) Bool)
(declare-fun isPacked/658671941 (var2790) Bool)
(declare-fun getLiteType/-2109119173 (var2013) var3952)
(declare-fun ordinal/-291641772 (var189) Int)
(declare-fun cast-from-var3952-to-var189 (var3952) var189)
(declare-fun var1406-init () var1406)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLiteType/-2024498103 (var2790) var3952)
(declare-fun append/-1031950772 (String var3788) String)
(declare-fun cast-from-var3952-to-var3788 (var3952) var3788)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1406 String) void)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var39 var39)
(declare-const null-var2013 var2013)
(declare-const null-var1595 var1595)
(declare-const null-var3240 var3240)
(declare-const var2784-$SwitchMap$com$google$protobuf$WireFormat$FieldType (Array Int Int))
(declare-const var3169 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3169 null-Int)))
(declare-const var1147 (Array Int Int)) ; Statement: r11 := @parameter1: byte[] 
(assert (not (= var1147 null-__Array__Int__Int__)))
(declare-const var3253 Int) ; Statement: i23 := @parameter2: int 
(assert (not (= var3253 null-Int)))
(declare-const var2704 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var2704 null-Int)))
(declare-const var1773 var39) ; Statement: r0 := @parameter4: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtendableMessage 
(assert (not (= var1773 null-var39)))
(declare-const var2919 var2013) ; Statement: r2 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension 
(assert (not (= var2919 null-var2013)))
(declare-const var2613 var1595) ; Statement: r26 := @parameter6: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema 
(assert (not (= var2613 null-var1595)))
(declare-const var3350 var3240) ; Statement: r12 := @parameter7: com.google.javascript.jscomp.jarjar.com.google.protobuf.ArrayDecoders$Registers 
(assert (not (= var3350 null-var3240)))
(define-const var2140 var3163 (extensions/-24977695 var1773)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtendableMessage: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet extensions> 
(define-const var3225 Int (div var3169 (to_int (^ 2 3)))) ; Statement: i1 = i0 >>> 3 
(define-const var3855 var2790 (descriptor/1796606018 var2919)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor> 
(assert true)
(define-const var647 Bool (isRepeated/-1089353981 var3855)) ; Statement: $z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: boolean isRepeated()>() 
 ; Statement: if $z0 == 0 goto r63 = null 
(assert (not (= (ite var647 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var728 var2790 (descriptor/1796606018 var2919)) ; Statement: $r27 = r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor> 
(assert true)
(define-const var2466 Bool (isPacked/658671941 var728)) ; Statement: $z1 = virtualinvoke $r27.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: boolean isPacked()>() 
 ; Statement: if $z1 == 0 goto r63 = null 
(assert (not (= (ite var2466 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1009 (Array Int Int) var2784-$SwitchMap$com$google$protobuf$WireFormat$FieldType) ; Statement: $r28 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.ArrayDecoders$1: int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType> 
(assert true)
(define-const var683 var3952 (getLiteType/-2109119173 var2919)) ; Statement: $r29 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>() 
(assert true)
(define-const var2396 Int (ordinal/-291641772 (cast-from-var3952-to-var189 var683))) ; Statement: $i21 = virtualinvoke $r29.<com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType: int ordinal()>() 
(define-const var2370 Int (select var1009 var2396)) ; Statement: $i22 = $r28[$i21] 
 ; Statement: tableswitch($i22) {     case 1: goto $r53 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.DoubleArrayList;     case 2: goto $r51 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.FloatArrayList;     case 3: goto $r49 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList;     case 4: goto $r49 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList;     case 5: goto $r47 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList;     case 6: goto $r47 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList;     case 7: goto $r45 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList;     case 8: goto $r45 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList;     case 9: goto $r43 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList;     case 10: goto $r43 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList;     case 11: goto $r41 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.BooleanArrayList;     case 12: goto $r39 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList;     case 13: goto $r37 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList;     case 14: goto $r30 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList;     default: goto $r55 = new java.lang.IllegalStateException; } 
(assert (and (not (= var2370 14)) (and (not (= var2370 13)) (and (not (= var2370 12)) (and (not (= var2370 11)) (and (not (= var2370 10)) (and (not (= var2370 9)) (and (not (= var2370 8)) (and (not (= var2370 7)) (and (not (= var2370 6)) (and (not (= var2370 5)) (and (not (= var2370 4)) (and (not (= var2370 3)) (and (not (= var2370 2)) (and (not (= var2370 1)) true))))))))))))))) ; Intersect: Negate: Cond: $i22 == 14   and Intersect: Negate: Cond: $i22 == 13   and Intersect: Negate: Cond: $i22 == 12   and Intersect: Negate: Cond: $i22 == 11   and Intersect: Negate: Cond: $i22 == 10   and Intersect: Negate: Cond: $i22 == 9   and Intersect: Negate: Cond: $i22 == 8   and Intersect: Negate: Cond: $i22 == 7   and Intersect: Negate: Cond: $i22 == 6   and Intersect: Negate: Cond: $i22 == 5   and Intersect: Negate: Cond: $i22 == 4   and Intersect: Negate: Cond: $i22 == 3   and Intersect: Negate: Cond: $i22 == 2   and Intersect: Negate: Cond: $i22 == 1   and Non Conditional              
(define-const var2057 var1406 var1406-init) ; Statement: $r55 = new java.lang.IllegalStateException 
(define-const var1507 String String-init) ; Statement: $r56 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1507)) ; Statement: specialinvoke $r56.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1507!1 String)
(assert (= var1507!1 ""))
(assert true)
(define-const var117 String (append/672562846 var1507!1 "Type cannot be packed: ")) ; Statement: $r59 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type cannot be packed: ") 
(declare-const var1507!2 String)
(assert (= var1507!2 (str.++ var1507!1 "Type cannot be packed: ")))
(define-const var1846 var2790 (descriptor/1796606018 var2919)) ; Statement: $r57 = r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor> 
(assert true)
(define-const var1832 var3952 (getLiteType/-2024498103 var1846)) ; Statement: $r58 = virtualinvoke $r57.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>() 
(assert true)
(define-const var2320 String (append/-1031950772 var117 (cast-from-var3952-to-var3788 var1832))) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r58) 
(declare-const var117!1 String)
(assert (str.prefixof var117 var117!1))
(assert true)
(define-const var2793 String (toString/-2075883882 var2320)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2057 var2793)) ; Statement: specialinvoke $r55.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r61) 

(declare-const var2057!1 var1406)
(declare-const var2793!1 String)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {extensions/-24977695=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtendableMessage], com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet), descriptor/1796606018=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor), isRepeated/-1089353981=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor], boolean), isPacked/658671941=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor], boolean), getLiteType/-2109119173=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension], com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3952-to-var189=([com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType], java.lang.Enum), var1406-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLiteType/-2024498103=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3952-to-var3788=([com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3169=i0, var1147=r11, var3253=i23, var2704=i4, var39=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtendableMessage, var1773=r0, var2013=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension, var2919=r2, var1595=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema, var2613=r26, var3240=com.google.javascript.jscomp.jarjar.com.google.protobuf.ArrayDecoders$Registers, var3350=r12, var3163=com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet, var2140=r1, var3225=i1, var2790=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor, var3855=$r3, var647=$z0, var728=$r27, var2466=$z1, var2784=com.google.javascript.jscomp.jarjar.com.google.protobuf.ArrayDecoders$1, var1009=$r28, var3952=com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType, var683=$r29, var189=java.lang.Enum, var2396=$i21, var2370=$i22, var1406=java.lang.IllegalStateException, var2057=$r55, var1507=$r56, var117=$r59, var1846=$r57, var1832=$r58, var3788=java.lang.Object, var2320=$r60, var2793=$r61}
; {i0=var3169, r11=var1147, i23=var3253, i4=var2704, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtendableMessage=var39, r0=var1773, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension=var2013, r2=var2919, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema=var1595, r26=var2613, com.google.javascript.jscomp.jarjar.com.google.protobuf.ArrayDecoders$Registers=var3240, r12=var3350, com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet=var3163, r1=var2140, i1=var3225, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor=var2790, $r3=var3855, $z0=var647, $r27=var728, $z1=var2466, com.google.javascript.jscomp.jarjar.com.google.protobuf.ArrayDecoders$1=var2784, $r28=var1009, com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType=var3952, $r29=var683, java.lang.Enum=var189, $i21=var2396, $i22=var2370, java.lang.IllegalStateException=var1406, $r55=var2057, $r56=var1507, $r59=var117, $r57=var1846, $r58=var1832, java.lang.Object=var3788, $r60=var2320, $r61=var2793}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r11 := @parameter1: byte[];	i23 := @parameter2: int;	i4 := @parameter3: int;	r0 := @parameter4: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtendableMessage;	r2 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension;	r26 := @parameter6: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema;	r12 := @parameter7: com.google.javascript.jscomp.jarjar.com.google.protobuf.ArrayDecoders$Registers;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtendableMessage: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet extensions>;	i1 = i0 >>> 3;	$r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor>;	$z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: boolean isRepeated()>();	if $z0 == 0 goto r63 = null;	$r27 = r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor>;	$z1 = virtualinvoke $r27.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: boolean isPacked()>();	if $z1 == 0 goto r63 = null;	$r28 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.ArrayDecoders$1: int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType>;	$r29 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>();	$i21 = virtualinvoke $r29.<com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType: int ordinal()>();	$i22 = $r28[$i21];	tableswitch($i22) {     case 1: goto $r53 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.DoubleArrayList;     case 2: goto $r51 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.FloatArrayList;     case 3: goto $r49 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList;     case 4: goto $r49 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList;     case 5: goto $r47 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList;     case 6: goto $r47 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList;     case 7: goto $r45 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList;     case 8: goto $r45 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList;     case 9: goto $r43 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList;     case 10: goto $r43 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList;     case 11: goto $r41 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.BooleanArrayList;     case 12: goto $r39 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList;     case 13: goto $r37 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList;     case 14: goto $r30 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList;     default: goto $r55 = new java.lang.IllegalStateException; };	$r55 = new java.lang.IllegalStateException;	$r56 = new java.lang.StringBuilder;	specialinvoke $r56.<java.lang.StringBuilder: void <init>()>();	$r59 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type cannot be packed: ");	$r57 = r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor>;	$r58 = virtualinvoke $r57.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>();	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r58);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r61);	throw $r55
;block_num 4
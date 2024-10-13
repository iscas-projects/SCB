(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1908 0)
(declare-sort var2792 0)
(declare-sort var2099 0)
(declare-sort var956 0)
(declare-sort var1570 0)
(declare-sort var3206 0)
(declare-sort var3590 0)
(declare-sort var2603 0)
(declare-sort var2371 0)
(declare-sort var109 0)
(declare-sort var1889 0)
(declare-sort var740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2099-to-var3590 (var2099) var3590)
(declare-fun getNumber/-1337894021 (var3590) Int)
(declare-fun descriptor/1796606018 (var3590) var2603)
(declare-fun isRepeated/-1089353981 (var2603) Bool)
(declare-fun isPacked/658671941 (var2603) Bool)
(declare-fun getLiteType/-2109119173 (var3590) var109)
(declare-fun ordinal/-291641772 (var1889) Int)
(declare-fun cast-from-var109-to-var1889 (var109) var1889)
(declare-fun var740-init () var740)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLiteType/-2024498103 (var2603) var109)
(declare-fun append/-1031950772 (String var2099) String)
(declare-fun cast-from-var109-to-var2099 (var109) var2099)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var740 String) void)
(declare-const null-var1908 var1908)
(declare-const null-var2792 var2792)
(declare-const null-var2099 var2099)
(declare-const null-var956 var956)
(declare-const null-var1570 var1570)
(declare-const null-var3206 var3206)
(declare-const var2371-$SwitchMap$com$google$protobuf$WireFormat$FieldType (Array Int Int))
(declare-const var1573 var1908) ; Statement: r50 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaLite 
(assert (not (= var1573 null-var1908)))
(declare-const var3008 var2792) ; Statement: r7 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader 
(assert (not (= var3008 null-var2792)))
(declare-const var2938 var2099) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2938 null-var2099)))
(declare-const var2182 var956) ; Statement: r9 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite 
(assert (not (= var2182 null-var956)))
(declare-const var1697 var1570) ; Statement: r13 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet 
(assert (not (= var1697 null-var1570)))
(declare-const var21 var2099) ; Statement: r51 := @parameter4: java.lang.Object 
(assert (not (= var21 null-var2099)))
(declare-const var3736 var3206) ; Statement: r22 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema 
(assert (not (= var3736 null-var3206)))
(define-const var2986 var3590 (cast-from-var2099-to-var3590 var2938)) ; Statement: r1 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension) r0 
(assert true)
(define-const var1730 Int (getNumber/-1337894021 var2986)) ; Statement: i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: int getNumber()>() 
(define-const var1212 var2603 (descriptor/1796606018 var2986)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor> 
(assert true)
(define-const var3247 Bool (isRepeated/-1089353981 var1212)) ; Statement: $z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: boolean isRepeated()>() 
 ; Statement: if $z0 == 0 goto r54 = null 
(assert (not (= (ite var3247 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1200 var2603 (descriptor/1796606018 var2986)) ; Statement: $r24 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor> 
(assert true)
(define-const var752 Bool (isPacked/658671941 var1200)) ; Statement: $z2 = virtualinvoke $r24.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: boolean isPacked()>() 
 ; Statement: if $z2 == 0 goto r54 = null 
(assert (not (= (ite var752 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1357 (Array Int Int) var2371-$SwitchMap$com$google$protobuf$WireFormat$FieldType) ; Statement: $r25 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaLite$1: int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType> 
(assert true)
(define-const var1823 var109 (getLiteType/-2109119173 var2986)) ; Statement: $r26 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>() 
(assert true)
(define-const var2754 Int (ordinal/-291641772 (cast-from-var109-to-var1889 var1823))) ; Statement: $i15 = virtualinvoke $r26.<com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType: int ordinal()>() 
(define-const var3999 Int (select var1357 var2754)) ; Statement: $i16 = $r25[$i15] 
 ; Statement: tableswitch($i16) {     case 1: goto $r42 = new java.util.ArrayList;     case 2: goto $r41 = new java.util.ArrayList;     case 3: goto $r40 = new java.util.ArrayList;     case 4: goto $r39 = new java.util.ArrayList;     case 5: goto $r38 = new java.util.ArrayList;     case 6: goto $r37 = new java.util.ArrayList;     case 7: goto $r36 = new java.util.ArrayList;     case 8: goto $r35 = new java.util.ArrayList;     case 9: goto $r34 = new java.util.ArrayList;     case 10: goto $r33 = new java.util.ArrayList;     case 11: goto $r32 = new java.util.ArrayList;     case 12: goto $r31 = new java.util.ArrayList;     case 13: goto $r30 = new java.util.ArrayList;     case 14: goto $r27 = new java.util.ArrayList;     default: goto $r43 = new java.lang.IllegalStateException; } 
(assert (and (not (= var3999 14)) (and (not (= var3999 13)) (and (not (= var3999 12)) (and (not (= var3999 11)) (and (not (= var3999 10)) (and (not (= var3999 9)) (and (not (= var3999 8)) (and (not (= var3999 7)) (and (not (= var3999 6)) (and (not (= var3999 5)) (and (not (= var3999 4)) (and (not (= var3999 3)) (and (not (= var3999 2)) (and (not (= var3999 1)) true))))))))))))))) ; Intersect: Negate: Cond: $i16 == 14   and Intersect: Negate: Cond: $i16 == 13   and Intersect: Negate: Cond: $i16 == 12   and Intersect: Negate: Cond: $i16 == 11   and Intersect: Negate: Cond: $i16 == 10   and Intersect: Negate: Cond: $i16 == 9   and Intersect: Negate: Cond: $i16 == 8   and Intersect: Negate: Cond: $i16 == 7   and Intersect: Negate: Cond: $i16 == 6   and Intersect: Negate: Cond: $i16 == 5   and Intersect: Negate: Cond: $i16 == 4   and Intersect: Negate: Cond: $i16 == 3   and Intersect: Negate: Cond: $i16 == 2   and Intersect: Negate: Cond: $i16 == 1   and Non Conditional              
(define-const var2406 var740 var740-init) ; Statement: $r43 = new java.lang.IllegalStateException 
(define-const var2702 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2702)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2702!1 String)
(assert (= var2702!1 ""))
(assert true)
(define-const var700 String (append/672562846 var2702!1 "Type cannot be packed: ")) ; Statement: $r47 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type cannot be packed: ") 
(declare-const var2702!2 String)
(assert (= var2702!2 (str.++ var2702!1 "Type cannot be packed: ")))
(define-const var3912 var2603 (descriptor/1796606018 var2986)) ; Statement: $r45 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor> 
(assert true)
(define-const var1902 var109 (getLiteType/-2024498103 var3912)) ; Statement: $r46 = virtualinvoke $r45.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>() 
(assert true)
(define-const var172 String (append/-1031950772 var700 (cast-from-var109-to-var2099 var1902))) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r46) 
(declare-const var700!1 String)
(assert (str.prefixof var700 var700!1))
(assert true)
(define-const var2508 String (toString/-2075883882 var172)) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2406 var2508)) ; Statement: specialinvoke $r43.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r49) 

(declare-const var2406!1 var740)
(declare-const var2508!1 String)
 ; Statement: throw $r43 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2099-to-var3590=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension), getNumber/-1337894021=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension], int), descriptor/1796606018=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor), isRepeated/-1089353981=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor], boolean), isPacked/658671941=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor], boolean), getLiteType/-2109119173=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension], com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var109-to-var1889=([com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType], java.lang.Enum), var740-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLiteType/-2024498103=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var109-to-var2099=([com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1908=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaLite, var1573=r50, var2792=com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader, var3008=r7, var2099=java.lang.Object, var2938=r0, var956=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite, var2182=r9, var1570=com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet, var1697=r13, var21=r51, var3206=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema, var3736=r22, var3590=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension, var2986=r1, var1730=i0, var2603=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor, var1212=$r2, var3247=$z0, var1200=$r24, var752=$z2, var2371=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaLite$1, var1357=$r25, var109=com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType, var1823=$r26, var1889=java.lang.Enum, var2754=$i15, var3999=$i16, var740=java.lang.IllegalStateException, var2406=$r43, var2702=$r44, var700=$r47, var3912=$r45, var1902=$r46, var172=$r48, var2508=$r49}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaLite=var1908, r50=var1573, com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader=var2792, r7=var3008, java.lang.Object=var2099, r0=var2938, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite=var956, r9=var2182, com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet=var1570, r13=var1697, r51=var21, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema=var3206, r22=var3736, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension=var3590, r1=var2986, i0=var1730, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor=var2603, $r2=var1212, $z0=var3247, $r24=var1200, $z2=var752, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaLite$1=var2371, $r25=var1357, com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType=var109, $r26=var1823, java.lang.Enum=var1889, $i15=var2754, $i16=var3999, java.lang.IllegalStateException=var740, $r43=var2406, $r44=var2702, $r47=var700, $r45=var3912, $r46=var1902, $r48=var172, $r49=var2508}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r50 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaLite;	r7 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader;	r0 := @parameter1: java.lang.Object;	r9 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite;	r13 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet;	r51 := @parameter4: java.lang.Object;	r22 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema;	r1 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension) r0;	i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: int getNumber()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor>;	$z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: boolean isRepeated()>();	if $z0 == 0 goto r54 = null;	$r24 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor>;	$z2 = virtualinvoke $r24.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: boolean isPacked()>();	if $z2 == 0 goto r54 = null;	$r25 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaLite$1: int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType>;	$r26 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>();	$i15 = virtualinvoke $r26.<com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType: int ordinal()>();	$i16 = $r25[$i15];	tableswitch($i16) {     case 1: goto $r42 = new java.util.ArrayList;     case 2: goto $r41 = new java.util.ArrayList;     case 3: goto $r40 = new java.util.ArrayList;     case 4: goto $r39 = new java.util.ArrayList;     case 5: goto $r38 = new java.util.ArrayList;     case 6: goto $r37 = new java.util.ArrayList;     case 7: goto $r36 = new java.util.ArrayList;     case 8: goto $r35 = new java.util.ArrayList;     case 9: goto $r34 = new java.util.ArrayList;     case 10: goto $r33 = new java.util.ArrayList;     case 11: goto $r32 = new java.util.ArrayList;     case 12: goto $r31 = new java.util.ArrayList;     case 13: goto $r30 = new java.util.ArrayList;     case 14: goto $r27 = new java.util.ArrayList;     default: goto $r43 = new java.lang.IllegalStateException; };	$r43 = new java.lang.IllegalStateException;	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r47 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type cannot be packed: ");	$r45 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor descriptor>;	$r46 = virtualinvoke $r45.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>();	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r46);	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r43.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r49);	throw $r43
;block_num 4
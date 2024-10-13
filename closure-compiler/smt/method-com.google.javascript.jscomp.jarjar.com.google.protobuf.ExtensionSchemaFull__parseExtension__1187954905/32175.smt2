(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1826 0)
(declare-sort var558 0)
(declare-sort var3088 0)
(declare-sort var3743 0)
(declare-sort var1893 0)
(declare-sort var694 0)
(declare-sort var1340 0)
(declare-sort var1922 0)
(declare-sort var1973 0)
(declare-sort var1755 0)
(declare-sort var1829 0)
(declare-sort var3516 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3088-to-var1340 (var3088) var1340)
(declare-fun descriptor/-163794951 (var1340) var1922)
(declare-fun getNumber/-1369718730 (var1922) Int)
(declare-fun isRepeated/1561302426 (var1922) Bool)
(declare-fun isPacked/-1430187620 (var1922) Bool)
(declare-fun getLiteType/-1265195616 (var1922) var1755)
(declare-fun ordinal/-291641772 (var1829) Int)
(declare-fun cast-from-var1755-to-var1829 (var1755) var1829)
(declare-fun var3516-init () var3516)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3088) String)
(declare-fun cast-from-var1755-to-var3088 (var1755) var3088)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3516 String) void)
(declare-const null-var1826 var1826)
(declare-const null-var558 var558)
(declare-const null-var3088 var3088)
(declare-const null-var3743 var3743)
(declare-const null-var1893 var1893)
(declare-const null-var694 var694)
(declare-const var1973-$SwitchMap$com$google$protobuf$WireFormat$FieldType (Array Int Int))
(declare-const var2616 var1826) ; Statement: r59 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaFull 
(assert (not (= var2616 null-var1826)))
(declare-const var1567 var558) ; Statement: r10 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader 
(assert (not (= var1567 null-var558)))
(declare-const var516 var3088) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var516 null-var3088)))
(declare-const var34 var3743) ; Statement: r12 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite 
(assert (not (= var34 null-var3743)))
(declare-const var2410 var1893) ; Statement: r17 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet 
(assert (not (= var2410 null-var1893)))
(declare-const var3587 var3088) ; Statement: r60 := @parameter4: java.lang.Object 
(assert (not (= var3587 null-var3088)))
(declare-const var1555 var694) ; Statement: r25 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema 
(assert (not (= var1555 null-var694)))
(define-const var1821 var1340 (cast-from-var3088-to-var1340 var516)) ; Statement: r1 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo) r0 
(define-const var3479 var1922 (descriptor/-163794951 var1821)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor> 
(assert true)
(define-const var1363 Int (getNumber/-1369718730 var3479)) ; Statement: i0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: int getNumber()>() 
(define-const var3106 var1922 (descriptor/-163794951 var1821)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor> 
(assert true)
(define-const var2302 Bool (isRepeated/1561302426 var3106)) ; Statement: $z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isRepeated()>() 
 ; Statement: if $z0 == 0 goto r63 = null 
(assert (not (= (ite var2302 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var499 var1922 (descriptor/-163794951 var1821)) ; Statement: $r27 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor> 
(assert true)
(define-const var3546 Bool (isPacked/-1430187620 var499)) ; Statement: $z2 = virtualinvoke $r27.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isPacked()>() 
 ; Statement: if $z2 == 0 goto r63 = null 
(assert (not (= (ite var3546 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3671 (Array Int Int) var1973-$SwitchMap$com$google$protobuf$WireFormat$FieldType) ; Statement: $r29 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaFull$1: int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType> 
(define-const var3147 var1922 (descriptor/-163794951 var1821)) ; Statement: $r28 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor> 
(assert true)
(define-const var3242 var1755 (getLiteType/-1265195616 var3147)) ; Statement: $r30 = virtualinvoke $r28.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>() 
(assert true)
(define-const var3909 Int (ordinal/-291641772 (cast-from-var1755-to-var1829 var3242))) ; Statement: $i15 = virtualinvoke $r30.<com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType: int ordinal()>() 
(define-const var1268 Int (select var3671 var3909)) ; Statement: $i16 = $r29[$i15] 
 ; Statement: tableswitch($i16) {     case 1: goto $r51 = new java.util.ArrayList;     case 2: goto $r50 = new java.util.ArrayList;     case 3: goto $r49 = new java.util.ArrayList;     case 4: goto $r48 = new java.util.ArrayList;     case 5: goto $r47 = new java.util.ArrayList;     case 6: goto $r46 = new java.util.ArrayList;     case 7: goto $r45 = new java.util.ArrayList;     case 8: goto $r44 = new java.util.ArrayList;     case 9: goto $r43 = new java.util.ArrayList;     case 10: goto $r42 = new java.util.ArrayList;     case 11: goto $r41 = new java.util.ArrayList;     case 12: goto $r40 = new java.util.ArrayList;     case 13: goto $r39 = new java.util.ArrayList;     case 14: goto $r31 = new java.util.ArrayList;     default: goto $r52 = new java.lang.IllegalStateException; } 
(assert (and (not (= var1268 14)) (and (not (= var1268 13)) (and (not (= var1268 12)) (and (not (= var1268 11)) (and (not (= var1268 10)) (and (not (= var1268 9)) (and (not (= var1268 8)) (and (not (= var1268 7)) (and (not (= var1268 6)) (and (not (= var1268 5)) (and (not (= var1268 4)) (and (not (= var1268 3)) (and (not (= var1268 2)) (and (not (= var1268 1)) true))))))))))))))) ; Intersect: Negate: Cond: $i16 == 14   and Intersect: Negate: Cond: $i16 == 13   and Intersect: Negate: Cond: $i16 == 12   and Intersect: Negate: Cond: $i16 == 11   and Intersect: Negate: Cond: $i16 == 10   and Intersect: Negate: Cond: $i16 == 9   and Intersect: Negate: Cond: $i16 == 8   and Intersect: Negate: Cond: $i16 == 7   and Intersect: Negate: Cond: $i16 == 6   and Intersect: Negate: Cond: $i16 == 5   and Intersect: Negate: Cond: $i16 == 4   and Intersect: Negate: Cond: $i16 == 3   and Intersect: Negate: Cond: $i16 == 2   and Intersect: Negate: Cond: $i16 == 1   and Non Conditional              
(define-const var141 var3516 var3516-init) ; Statement: $r52 = new java.lang.IllegalStateException 
(define-const var2565 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2565)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2565!1 String)
(assert (= var2565!1 ""))
(assert true)
(define-const var2899 String (append/672562846 var2565!1 "Type cannot be packed: ")) ; Statement: $r56 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type cannot be packed: ") 
(declare-const var2565!2 String)
(assert (= var2565!2 (str.++ var2565!1 "Type cannot be packed: ")))
(define-const var1493 var1922 (descriptor/-163794951 var1821)) ; Statement: $r54 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor> 
(assert true)
(define-const var2094 var1755 (getLiteType/-1265195616 var1493)) ; Statement: $r55 = virtualinvoke $r54.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>() 
(assert true)
(define-const var1883 String (append/-1031950772 var2899 (cast-from-var1755-to-var3088 var2094))) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r55) 
(declare-const var2899!1 String)
(assert (str.prefixof var2899 var2899!1))
(assert true)
(define-const var2674 String (toString/-2075883882 var1883)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var141 var2674)) ; Statement: specialinvoke $r52.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r58) 

(declare-const var141!1 var3516)
(declare-const var2674!1 String)
 ; Statement: throw $r52 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3088-to-var1340=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo), descriptor/-163794951=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor), getNumber/-1369718730=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], int), isRepeated/1561302426=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], boolean), isPacked/-1430187620=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], boolean), getLiteType/-1265195616=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1755-to-var1829=([com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType], java.lang.Enum), var3516-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1755-to-var3088=([com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1826=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaFull, var2616=r59, var558=com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader, var1567=r10, var3088=java.lang.Object, var516=r0, var3743=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite, var34=r12, var1893=com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet, var2410=r17, var3587=r60, var694=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema, var1555=r25, var1340=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo, var1821=r1, var1922=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var3479=$r2, var1363=i0, var3106=$r3, var2302=$z0, var499=$r27, var3546=$z2, var1973=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaFull$1, var3671=$r29, var3147=$r28, var1755=com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType, var3242=$r30, var1829=java.lang.Enum, var3909=$i15, var1268=$i16, var3516=java.lang.IllegalStateException, var141=$r52, var2565=$r53, var2899=$r56, var1493=$r54, var2094=$r55, var1883=$r57, var2674=$r58}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaFull=var1826, r59=var2616, com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader=var558, r10=var1567, java.lang.Object=var3088, r0=var516, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite=var3743, r12=var34, com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet=var1893, r17=var2410, r60=var3587, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema=var694, r25=var1555, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo=var1340, r1=var1821, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1922, $r2=var3479, i0=var1363, $r3=var3106, $z0=var2302, $r27=var499, $z2=var3546, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaFull$1=var1973, $r29=var3671, $r28=var3147, com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType=var1755, $r30=var3242, java.lang.Enum=var1829, $i15=var3909, $i16=var1268, java.lang.IllegalStateException=var3516, $r52=var141, $r53=var2565, $r56=var2899, $r54=var1493, $r55=var2094, $r57=var1883, $r58=var2674}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r59 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaFull;	r10 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Reader;	r0 := @parameter1: java.lang.Object;	r12 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistryLite;	r17 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet;	r60 := @parameter4: java.lang.Object;	r25 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema;	r1 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo) r0;	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor>;	i0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: int getNumber()>();	$r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor>;	$z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isRepeated()>();	if $z0 == 0 goto r63 = null;	$r27 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor>;	$z2 = virtualinvoke $r27.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isPacked()>();	if $z2 == 0 goto r63 = null;	$r29 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchemaFull$1: int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType>;	$r28 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor>;	$r30 = virtualinvoke $r28.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>();	$i15 = virtualinvoke $r30.<com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType: int ordinal()>();	$i16 = $r29[$i15];	tableswitch($i16) {     case 1: goto $r51 = new java.util.ArrayList;     case 2: goto $r50 = new java.util.ArrayList;     case 3: goto $r49 = new java.util.ArrayList;     case 4: goto $r48 = new java.util.ArrayList;     case 5: goto $r47 = new java.util.ArrayList;     case 6: goto $r46 = new java.util.ArrayList;     case 7: goto $r45 = new java.util.ArrayList;     case 8: goto $r44 = new java.util.ArrayList;     case 9: goto $r43 = new java.util.ArrayList;     case 10: goto $r42 = new java.util.ArrayList;     case 11: goto $r41 = new java.util.ArrayList;     case 12: goto $r40 = new java.util.ArrayList;     case 13: goto $r39 = new java.util.ArrayList;     case 14: goto $r31 = new java.util.ArrayList;     default: goto $r52 = new java.lang.IllegalStateException; };	$r52 = new java.lang.IllegalStateException;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r56 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type cannot be packed: ");	$r54 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor descriptor>;	$r55 = virtualinvoke $r54.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>();	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r55);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r52.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r58);	throw $r52
;block_num 4
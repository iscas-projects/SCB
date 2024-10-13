(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1324 0)
(declare-sort var643 0)
(declare-sort var966 0)
(declare-sort var1085 0)
(declare-sort var2052 0)
(declare-sort var313 0)
(declare-sort var1502 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getJavaType/454487121 (var643) var1085)
(declare-fun ordinal/-291641772 (var2052) Int)
(declare-fun cast-from-var1085-to-var2052 (var1085) var2052)
(declare-fun var313-init () var313)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1502) String)
(declare-fun cast-from-var643-to-var1502 (var643) var1502)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var313 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1324 var1324)
(declare-const null-var643 var643)
(declare-const var966-$SwitchMap$com$google$protobuf$JavaType (Array Int Int))
(declare-const var1619 ClassObject) ; Statement: r3 := @parameter0: java.lang.Class 
(assert (not (= var1619 null-ClassObject)))
(declare-const var372 var1324) ; Statement: r4 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var372 null-var1324)))
(declare-const var3874 var643) ; Statement: r0 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType 
(assert (not (= var3874 null-var643)))
(define-const var2439 (Array Int Int) var966-$SwitchMap$com$google$protobuf$JavaType) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory$3: int[] $SwitchMap$com$google$protobuf$JavaType> 
(assert true)
(define-const var2451 var1085 (getJavaType/454487121 var3874)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType: com.google.javascript.jscomp.jarjar.com.google.protobuf.JavaType getJavaType()>() 
(assert true)
(define-const var3611 Int (ordinal/-291641772 (cast-from-var1085-to-var2052 var2451))) ; Statement: $i0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.JavaType: int ordinal()>() 
(define-const var2870 Int (select var2439 var3611)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return class "Ljava/lang/Boolean;";     case 2: goto return class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/ByteString;";     case 3: goto return class "Ljava/lang/Double;";     case 4: goto return class "Ljava/lang/Float;";     case 5: goto return class "Ljava/lang/Integer;";     case 6: goto return class "Ljava/lang/Integer;";     case 7: goto return class "Ljava/lang/Long;";     case 8: goto return class "Ljava/lang/String;";     case 9: goto $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.Class getOneofStoredTypeForMessage(java.lang.Class,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor)>(r3, r4);     default: goto $r6 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2870 9)) (and (not (= var2870 8)) (and (not (= var2870 7)) (and (not (= var2870 6)) (and (not (= var2870 5)) (and (not (= var2870 4)) (and (not (= var2870 3)) (and (not (= var2870 2)) (and (not (= var2870 1)) true)))))))))) ; Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional         
(define-const var2498 var313 var313-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var3902 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3902)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3902!1 String)
(assert (= var3902!1 ""))
(assert true)
(define-const var1506 String (append/672562846 var3902!1 "Invalid type for oneof: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type for oneof: ") 
(declare-const var3902!2 String)
(assert (= var3902!2 (str.++ var3902!1 "Invalid type for oneof: ")))
(assert true)
(define-const var3319 String (append/-1031950772 var1506 (cast-from-var643-to-var1502 var3874))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1506!1 String)
(assert (str.prefixof var1506 var1506!1))
(assert true)
(define-const var1881 String (toString/-2075883882 var3319)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2498 var1881)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var2498!1 var313)
(declare-const var1881!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getJavaType/454487121=([com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType], com.google.javascript.jscomp.jarjar.com.google.protobuf.JavaType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1085-to-var2052=([com.google.javascript.jscomp.jarjar.com.google.protobuf.JavaType], java.lang.Enum), var313-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var643-to-var1502=([com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1619=r3, var1324=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var372=r4, var643=com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType, var3874=r0, var966=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory$3, var2439=$r1, var1085=com.google.javascript.jscomp.jarjar.com.google.protobuf.JavaType, var2451=$r2, var2052=java.lang.Enum, var3611=$i0, var2870=$i1, var313=java.lang.IllegalArgumentException, var2498=$r6, var3902=$r7, var1506=$r8, var1502=java.lang.Object, var3319=$r9, var1881=$r10}
; {r3=var1619, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1324, r4=var372, com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType=var643, r0=var3874, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory$3=var966, $r1=var2439, com.google.javascript.jscomp.jarjar.com.google.protobuf.JavaType=var1085, $r2=var2451, java.lang.Enum=var2052, $i0=var3611, $i1=var2870, java.lang.IllegalArgumentException=var313, $r6=var2498, $r7=var3902, $r8=var1506, java.lang.Object=var1502, $r9=var3319, $r10=var1881}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.Class;	r4 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r0 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory$3: int[] $SwitchMap$com$google$protobuf$JavaType>;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType: com.google.javascript.jscomp.jarjar.com.google.protobuf.JavaType getJavaType()>();	$i0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.JavaType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return class "Ljava/lang/Boolean;";     case 2: goto return class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/ByteString;";     case 3: goto return class "Ljava/lang/Double;";     case 4: goto return class "Ljava/lang/Float;";     case 5: goto return class "Ljava/lang/Integer;";     case 6: goto return class "Ljava/lang/Integer;";     case 7: goto return class "Ljava/lang/Long;";     case 8: goto return class "Ljava/lang/String;";     case 9: goto $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.Class getOneofStoredTypeForMessage(java.lang.Class,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor)>(r3, r4);     default: goto $r6 = new java.lang.IllegalArgumentException; };	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type for oneof: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r6
;block_num 2
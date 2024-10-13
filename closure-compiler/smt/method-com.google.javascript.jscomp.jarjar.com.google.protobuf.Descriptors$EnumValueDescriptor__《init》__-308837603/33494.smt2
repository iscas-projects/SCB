(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3923 0)
(declare-sort var209 0)
(declare-sort var3726 0)
(declare-sort var3742 0)
(declare-sort var3971 0)
(declare-sort var974 0)
(declare-sort var2962 0)
(declare-sort var878 0)
(declare-sort var924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/882680716 (var3742 var3971) void)
(declare-fun cast-from-var3923-to-var3742 (var3923) var3742)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-256478439 (var3726) String)
(declare-fun append/-1031950772 (String var2962) String)
(declare-fun cast-from-Int-to-var2962 (Int) var2962)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var924_newBuilder/-1918777329 () var878)
(declare-fun setName/-516762465 (var878 String) var878)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun setNumber/1332186941 (var878 Int) var878)
(declare-fun build/-1100883472 (var878) var924)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun index/-1718100429 (var3923) Int)
(declare-fun proto/-1718100429 (var3923) var924)
(declare-fun file/-1718100429 (var3923) var209)
(declare-fun type/-1718100429 (var3923) var3726)
(declare-fun getFullName/-375304694 (var3726) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getName/1377605158 (var924) String)
(declare-fun fullName/-1718100429 (var3923) String)
(declare-const null-var3923 var3923)
(declare-const null-var209 var209)
(declare-const null-var3726 var3726)
(declare-const null-Int Int)
(declare-const null-NullType var974)
(declare-const null-var3971 var3971)
(declare-const var523 var3923) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor 
(assert (not (= var523 null-var3923)))
(declare-const var1854 var209) ; Statement: r14 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor 
(assert (not (= var1854 null-var209)))
(declare-const var2543 var3726) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor 
(assert (not (= var2543 null-var3726)))
(declare-const var2965 Int) ; Statement: r6 := @parameter2: java.lang.Integer 
(assert (not (= var2965 null-Int)))
(assert true)
;(assert (<init>/882680716 (cast-from-var3923-to-var3742 var523) null-var3971)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(null) 

(declare-const var523!1 var3923)
(declare-const var2955 var974)
(define-const var3045 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3045)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3045!1 String)
(assert (= var3045!1 ""))
(assert true)
(define-const var74 String (append/672562846 var3045!1 "UNKNOWN_ENUM_VALUE_")) ; Statement: $r4 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNKNOWN_ENUM_VALUE_") 
(declare-const var3045!2 String)
(assert (= var3045!2 (str.++ var3045!1 "UNKNOWN_ENUM_VALUE_")))
(assert true)
(define-const var495 String (getName/-256478439 var2543)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var1204 String (append/672562846 var74 var495)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var74!1 String)
(assert (= var74!1 (str.++ var74 var495)))
(assert true)
(define-const var2386 String (append/672562846 var1204 "_")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1204!1 String)
(assert (= var1204!1 (str.++ var1204 "_")))
(assert true)
(define-const var846 String (append/-1031950772 var2386 (cast-from-Int-to-var2962 var2965))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var2386!1 String)
(assert (str.prefixof var2386 var2386!1))
(assert true)
(define-const var3791 String (toString/-2075883882 var846)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var299 var878 var924_newBuilder/-1918777329) ; Statement: $r10 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder newBuilder()>() 
(assert true)
(define-const var58 var878 (setName/-516762465 var299 var3791)) ; Statement: $r11 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder setName(java.lang.String)>(r9) 
(assert true)
(define-const var674 Int (intValue/-1815674922 var2965)) ; Statement: $i0 = virtualinvoke r6.<java.lang.Integer: int intValue()>() 
(assert true)
(define-const var491 var878 (setNumber/1332186941 var58 var674)) ; Statement: $r12 = virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder setNumber(int)>($i0) 
(assert true)
(define-const var1449 var924 (build/-1100883472 var491)) ; Statement: r13 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto build()>() 
(define-const var2164 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
(declare-const var523!2 var3923)
(assert (not (= var523!2 null-var3923)))
(assert (= (index/-1718100429 var523!2) var2164)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: int index> = $i2 
(declare-const var523!3 var3923)
(assert (not (= var523!3 null-var3923)))
(assert (= (proto/-1718100429 var523!3) var1449)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto proto> = r13 
(declare-const var523!4 var3923)
(assert (not (= var523!4 null-var3923)))
(assert (= (file/-1718100429 var523!4) var1854)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> = r14 
(declare-const var523!5 var3923)
(assert (not (= var523!5 null-var3923)))
(assert (= (type/-1718100429 var523!5) var2543)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor type> = r2 
(define-const var3730 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3730)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3730!1 String)
(assert (= var3730!1 ""))
(assert true)
(define-const var440 String (getFullName/-375304694 var2543)) ; Statement: $r16 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var1384 String (append/672562846 var3730!1 var440)) ; Statement: $r17 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3730!2 String)
(assert (= var3730!2 (str.++ var3730!1 var440)))
(assert true)
(define-const var2306 String (append/-1166366385 var1384 46)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1384!1 String)
(assert (str.prefixof var1384 var1384!1))
(assert true)
(define-const var3104 String (getName/1377605158 var1449)) ; Statement: $r18 = virtualinvoke r13.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto: java.lang.String getName()>() 
(assert true)
(define-const var968 String (append/672562846 var2306 var3104)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2306!1 String)
(assert (= var2306!1 (str.++ var2306 var3104)))
(assert true)
(define-const var2109 String (toString/-2075883882 var968)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var523!6 var3923)
(assert (not (= var523!6 null-var3923)))
(assert (= (fullName/-1718100429 var523!6) var2109)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: java.lang.String fullName> = $r21 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/882680716=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1], void), cast-from-var3923-to-var3742=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-256478439=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Int-to-var2962=([java.lang.Integer], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var924_newBuilder/-1918777329=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder), setName/-516762465=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder), intValue/-1815674922=([java.lang.Integer], int), setNumber/1332186941=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder, int], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder), build/-1100883472=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto), cast-from-Int-to-Int=([int], int), index/-1718100429=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor], int), proto/-1718100429=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto), file/-1718100429=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), type/-1718100429=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor), getFullName/-375304694=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getName/1377605158=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto], java.lang.String), fullName/-1718100429=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor], java.lang.String)}
; {var3923=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor, var523=r0, var209=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var1854=r14, var3726=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor, var2543=r2, var2965=r6, var3742=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var3971=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1, var2955=null, var974=null_type, var3045=$r22, var74=$r4, var495=$r3, var1204=$r5, var2386=$r7, var2962=java.lang.Object, var846=$r8, var3791=r9, var878=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder, var924=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto, var299=$r10, var58=$r11, var674=$i0, var491=$r12, var1449=r13, var2164=$i2, var3730=$r23, var440=$r16, var1384=$r17, var2306=$r19, var3104=$r18, var968=$r20, var2109=$r21}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor=var3923, r0=var523, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var209, r14=var1854, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor=var3726, r2=var2543, r6=var2965, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var3742, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1=var3971, null=var2955, null_type=var974, $r22=var3045, $r4=var74, $r3=var495, $r5=var1204, $r7=var2386, java.lang.Object=var2962, $r8=var846, r9=var3791, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder=var878, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto=var924, $r10=var299, $r11=var58, $i0=var674, $r12=var491, r13=var1449, $i2=var2164, $r23=var3730, $r16=var440, $r17=var1384, $r19=var2306, $r18=var3104, $r20=var968, $r21=var2109}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor;	r14 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor;	r6 := @parameter2: java.lang.Integer;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(null);	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNKNOWN_ENUM_VALUE_");	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder newBuilder()>();	$r11 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder setName(java.lang.String)>(r9);	$i0 = virtualinvoke r6.<java.lang.Integer: int intValue()>();	$r12 = virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder setNumber(int)>($i0);	r13 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto build()>();	$i2 = (int) -1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: int index> = $i2;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto proto> = r13;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> = r14;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor type> = r2;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: java.lang.String getFullName()>();	$r17 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r18 = virtualinvoke r13.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto: java.lang.String getName()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: java.lang.String fullName> = $r21;	return
;block_num 1
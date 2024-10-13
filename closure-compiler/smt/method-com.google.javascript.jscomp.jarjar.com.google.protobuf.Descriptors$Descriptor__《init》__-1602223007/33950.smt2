(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var177 0)
(declare-sort var3021 0)
(declare-sort var3738 0)
(declare-sort var2210 0)
(declare-sort var3218 0)
(declare-sort var1908 0)
(declare-sort var767 0)
(declare-sort var207 0)
(declare-sort var127 0)
(declare-sort var588 0)
(declare-sort var1509 0)
(declare-sort var2833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/882680716 (var3738 var2210) void)
(declare-fun cast-from-var177-to-var3738 (var177) var3738)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun index/-1045609669 (var177) Int)
(declare-fun var1908_newBuilder/-1601013199 () var3218)
(declare-fun setName/-1384643921 (var3218 String) var3218)
(declare-fun var207_newBuilder/-1918753841 () var767)
(declare-fun setStart/712839334 (var767 Int) var767)
(declare-fun setEnd/-244901793 (var767 Int) var767)
(declare-fun build/2084129008 (var767) var207)
(declare-fun addExtensionRange/-2134492903 (var3218 var207) var3218)
(declare-fun build/-1250132992 (var3218) var1908)
(declare-fun proto/-1045609669 (var177) var1908)
(declare-fun fullName/-1045609669 (var177) String)
(declare-fun containingType/-1045609669 (var177) var177)
(declare-fun arr-var177-init () (Array Int var177))
(declare-fun nestedTypes/-1045609669 (var177) (Array Int var177))
(declare-fun arr-var127-init () (Array Int var127))
(declare-fun enumTypes/-1045609669 (var177) (Array Int var127))
(declare-fun arr-var588-init () (Array Int var588))
(declare-fun fields/-1045609669 (var177) (Array Int var588))
(declare-fun extensions/-1045609669 (var177) (Array Int var588))
(declare-fun arr-var1509-init () (Array Int var1509))
(declare-fun oneofs/-1045609669 (var177) (Array Int var1509))
(declare-fun realOneofCount/-1045609669 (var177) Int)
(declare-fun var2833-init () var2833)
(declare-fun <init>/-1546800364 (var2833 String var177) void)
(declare-fun file/-1045609669 (var177) var2833)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun extensionRangeLowerBounds/-1045609669 (var177) (Array Int Int))
(declare-fun extensionRangeUpperBounds/-1045609669 (var177) (Array Int Int))
(declare-const null-var177 var177)
(declare-const null-String String)
(declare-const null-NullType var3021)
(declare-const null-var2210 var2210)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3767 var177) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var3767 null-var177)))
(declare-const var1352 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1352 null-String)))
(assert true)
;(assert (<init>/882680716 (cast-from-var177-to-var3738 var3767) null-var2210)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(null) 

(declare-const var3767!1 var177)
(declare-const var3416 var3021)
(define-const var3155 String var1352) ; Statement: r18 = r1 
(define-const var176 String "") ; Statement: r19 = "" 
(assert true)
(define-const var595 Int (lastIndexOf/-1292097097 var1352 46)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var3240 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 == $i3 goto r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: int index> = 0 
(assert (= var595 var3240)) ; Cond: i0 == $i3 
(declare-const var3767!2 var177)
(assert (not (= var3767!2 null-var177)))
(assert (= (index/-1045609669 var3767!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: int index> = 0 
(define-const var571 var3218 var1908_newBuilder/-1601013199) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder newBuilder()>() 
(assert true)
(define-const var1139 var3218 (setName/-1384643921 var571 var3155)) ; Statement: $r7 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder setName(java.lang.String)>(r18) 
(define-const var3726 var767 var207_newBuilder/-1918753841) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder newBuilder()>() 
(assert true)
(define-const var3304 var767 (setStart/712839334 var3726 1)) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder setStart(int)>(1) 
(assert true)
(define-const var933 var767 (setEnd/-244901793 var3304 536870912)) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder setEnd(int)>(536870912) 
(assert true)
(define-const var3552 var207 (build/2084129008 var933)) ; Statement: $r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange build()>() 
(assert true)
(define-const var1888 var3218 (addExtensionRange/-2134492903 var1139 var3552)) ; Statement: $r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder addExtensionRange(com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange)>($r6) 
(assert true)
(define-const var589 var1908 (build/-1250132992 var1888)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto build()>() 
(declare-const var3767!3 var177)
(assert (not (= var3767!3 null-var177)))
(assert (= (proto/-1045609669 var3767!3) var589)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto proto> = $r9 
(declare-const var3767!4 var177)
(assert (not (= var3767!4 null-var177)))
(assert (= (fullName/-1045609669 var3767!4) var1352)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String fullName> = r1 
(declare-const var3767!5 var177)
(assert (not (= var3767!5 null-var177)))
(assert (= (containingType/-1045609669 var3767!5) null-var177)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor containingType> = null 
(define-const var1280 (Array Int var177) arr-var177-init) ; Statement: $r10 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)[0] 
(declare-const var3767!6 var177)
(assert (not (= var3767!6 null-var177)))
(assert (= (nestedTypes/-1045609669 var3767!6) var1280)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor[] nestedTypes> = $r10 
(define-const var1929 (Array Int var127) arr-var127-init) ; Statement: $r11 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor)[0] 
(declare-const var3767!7 var177)
(assert (not (= var3767!7 null-var177)))
(assert (= (enumTypes/-1045609669 var3767!7) var1929)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor[] enumTypes> = $r11 
(define-const var182 (Array Int var588) arr-var588-init) ; Statement: $r12 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor)[0] 
(declare-const var3767!8 var177)
(assert (not (= var3767!8 null-var177)))
(assert (= (fields/-1045609669 var3767!8) var182)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor[] fields> = $r12 
(define-const var2622 (Array Int var588) arr-var588-init) ; Statement: $r13 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor)[0] 
(declare-const var3767!9 var177)
(assert (not (= var3767!9 null-var177)))
(assert (= (extensions/-1045609669 var3767!9) var2622)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor[] extensions> = $r13 
(define-const var2799 (Array Int var1509) arr-var1509-init) ; Statement: $r14 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor)[0] 
(declare-const var3767!10 var177)
(assert (not (= var3767!10 null-var177)))
(assert (= (oneofs/-1045609669 var3767!10) var2799)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor[] oneofs> = $r14 
(declare-const var3767!11 var177)
(assert (not (= var3767!11 null-var177)))
(assert (= (realOneofCount/-1045609669 var3767!11) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: int realOneofCount> = 0 
(define-const var3420 var2833 var2833-init) ; Statement: $r20 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor 
(assert true)
;(assert (<init>/-1546800364 var3420 var176 var3767!11)) ; Statement: specialinvoke $r20.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)>(r19, r0) 

(declare-const var3420!1 var2833)
(declare-const var176!1 String)
(declare-const var3767!12 var177)
(declare-const var3767!13 var177)
(assert (not (= var3767!13 null-var177)))
(assert (= (file/-1045609669 var3767!13) var3420!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> = $r20 
(define-const var220 (Array Int Int) arr-Int-init) ; Statement: $r16 = newarray (int)[1] 
(declare-const var220!1 (Array Int Int))
(assert (not (= var220!1 null-__Array__Int__Int__)))
(assert (= (select var220!1 0) 1)) ; Statement: $r16[0] = 1 
(declare-const var3767!14 var177)
(assert (not (= var3767!14 null-var177)))
(assert (= (extensionRangeLowerBounds/-1045609669 var3767!14) var220!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: int[] extensionRangeLowerBounds> = $r16 
(define-const var1421 (Array Int Int) arr-Int-init) ; Statement: $r17 = newarray (int)[1] 
(declare-const var1421!1 (Array Int Int))
(assert (not (= var1421!1 null-__Array__Int__Int__)))
(assert (= (select var1421!1 0) 536870912)) ; Statement: $r17[0] = 536870912 
(declare-const var3767!15 var177)
(assert (not (= var3767!15 null-var177)))
(assert (= (extensionRangeUpperBounds/-1045609669 var3767!15) var1421!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: int[] extensionRangeUpperBounds> = $r17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/882680716=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1], void), cast-from-var177-to-var3738=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), index/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], int), var1908_newBuilder/-1601013199=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder), setName/-1384643921=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder), var207_newBuilder/-1918753841=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder), setStart/712839334=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder, int], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder), setEnd/-244901793=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder, int], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder), build/2084129008=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange), addExtensionRange/-2134492903=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder), build/-1250132992=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto), proto/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto), fullName/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), containingType/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), arr-var177-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor[]), nestedTypes/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor[]), arr-var127-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor[]), enumTypes/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor[]), arr-var588-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor[]), fields/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor[]), extensions/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor[]), arr-var1509-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor[]), oneofs/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor[]), realOneofCount/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], int), var2833-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), <init>/-1546800364=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], void), file/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), arr-Int-init=([], int[]), extensionRangeLowerBounds/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], int[]), extensionRangeUpperBounds/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], int[])}
; {var177=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var3767=r0, var1352=r1, var3021=null_type, var3738=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var2210=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1, var3416=null, var3155=r18, var176=r19, var595=i0, var3240=$i3, var3218=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder, var1908=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto, var571=$r2, var1139=$r7, var767=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder, var207=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange, var3726=$r3, var3304=$r4, var933=$r5, var3552=$r6, var1888=$r8, var589=$r9, var1280=$r10, var127=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor, var1929=$r11, var588=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var182=$r12, var2622=$r13, var1509=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor, var2799=$r14, var2833=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var3420=$r20, var220=$r16, var1421=$r17}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var177, r0=var3767, r1=var1352, null_type=var3021, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var3738, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1=var2210, null=var3416, r18=var3155, r19=var176, i0=var595, $i3=var3240, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder=var3218, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto=var1908, $r2=var571, $r7=var1139, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder=var767, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange=var207, $r3=var3726, $r4=var3304, $r5=var933, $r6=var3552, $r8=var1888, $r9=var589, $r10=var1280, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor=var127, $r11=var1929, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var588, $r12=var182, $r13=var2622, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor=var1509, $r14=var2799, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var2833, $r20=var3420, $r16=var220, $r17=var1421}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(null);	r18 = r1;	r19 = "";	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46);	$i3 = (int) -1;	if i0 == $i3 goto r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: int index> = 0;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: int index> = 0;	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder newBuilder()>();	$r7 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder setName(java.lang.String)>(r18);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder newBuilder()>();	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder setStart(int)>(1);	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder setEnd(int)>(536870912);	$r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange build()>();	$r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder addExtensionRange(com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange)>($r6);	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto build()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto proto> = $r9;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String fullName> = r1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor containingType> = null;	$r10 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)[0];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor[] nestedTypes> = $r10;	$r11 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor)[0];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor[] enumTypes> = $r11;	$r12 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor)[0];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor[] fields> = $r12;	$r13 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor)[0];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor[] extensions> = $r13;	$r14 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor)[0];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor[] oneofs> = $r14;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: int realOneofCount> = 0;	$r20 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor;	specialinvoke $r20.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)>(r19, r0);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> = $r20;	$r16 = newarray (int)[1];	$r16[0] = 1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: int[] extensionRangeLowerBounds> = $r16;	$r17 = newarray (int)[1];	$r17[0] = 536870912;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: int[] extensionRangeUpperBounds> = $r17;	return
;block_num 2
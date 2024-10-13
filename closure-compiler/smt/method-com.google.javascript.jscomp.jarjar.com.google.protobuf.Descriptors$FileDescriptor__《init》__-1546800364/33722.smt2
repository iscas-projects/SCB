(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3585 0)
(declare-sort var3714 0)
(declare-sort var2888 0)
(declare-sort var3089 0)
(declare-sort var2388 0)
(declare-sort var2842 0)
(declare-sort var942 0)
(declare-sort var1026 0)
(declare-sort var265 0)
(declare-sort var201 0)
(declare-sort var421 0)
(declare-sort var3369 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/882680716 (var3089 var2388) void)
(declare-fun cast-from-var3585-to-var3089 (var3585) var3089)
(declare-fun var2842-init () var2842)
(declare-fun arr-var3585-init () (Array Int var3585))
(declare-fun <init>/-562627283 (var2842 (Array Int var3585) Bool) void)
(declare-fun pool/-885873705 (var3585) var2842)
(declare-fun var1026_newBuilder/-731566983 () var942)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getFullName/-1302123061 (var2888) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setName/565837031 (var942 String) var942)
(declare-fun setPackage/1255382956 (var942 String) var942)
(declare-fun toProto/1799429784 (var2888) var265)
(declare-fun addMessageType/1373266950 (var942 var265) var942)
(declare-fun build/1397148728 (var942) var1026)
(declare-fun proto/-885873705 (var3585) var1026)
(declare-fun dependencies/-885873705 (var3585) (Array Int var3585))
(declare-fun publicDependencies/-885873705 (var3585) (Array Int var3585))
(declare-fun arr-var2888-init () (Array Int var2888))
(declare-fun messageTypes/-885873705 (var3585) (Array Int var2888))
(declare-fun arr-var201-init () (Array Int var201))
(declare-fun enumTypes/-885873705 (var3585) (Array Int var201))
(declare-fun arr-var421-init () (Array Int var421))
(declare-fun services/-885873705 (var3585) (Array Int var421))
(declare-fun arr-var3369-init () (Array Int var3369))
(declare-fun extensions/-885873705 (var3585) (Array Int var3369))
(declare-fun addPackage/1117774531 (var2842 String var3585) void)
(declare-fun addSymbol/1500440269 (var2842 var3089) void)
(declare-fun cast-from-var2888-to-var3089 (var2888) var3089)
(declare-const null-var3585 var3585)
(declare-const null-String String)
(declare-const null-var2888 var2888)
(declare-const null-NullType var3714)
(declare-const null-var2388 var2388)
(declare-const null-__Array__Int__var2888__ (Array Int var2888))
(declare-const var211 var3585) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor 
(assert (not (= var211 null-var3585)))
(declare-const var541 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var541 null-String)))
(declare-const var3436 var2888) ; Statement: r4 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var3436 null-var2888)))
(assert true)
;(assert (<init>/882680716 (cast-from-var3585-to-var3089 var211) null-var2388)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(null) 

(declare-const var211!1 var3585)
(declare-const var2618 var3714)
(define-const var3569 var2842 var2842-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool 
(define-const var1563 (Array Int var3585) arr-var3585-init) ; Statement: $r2 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)[0] 
(assert true)
;(assert (<init>/-562627283 var3569 var1563 (ite (= 1 1) true false))) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor[],boolean)>($r2, 1) 

(declare-const var3569!1 var2842)
(declare-const var1563!1 (Array Int var3585))
(declare-const var3728 Int)
(declare-const var211!2 var3585)
(assert (not (= var211!2 null-var3585)))
(assert (= (pool/-885873705 var211!2) var3569!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool pool> = $r1 
(define-const var2743 var942 var1026_newBuilder/-731566983) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder newBuilder()>() 
(define-const var1040 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1040)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1040!1 String)
(assert (= var1040!1 ""))
(assert true)
(define-const var1684 String (getFullName/-1302123061 var3436)) ; Statement: $r5 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var417 String (append/672562846 var1040!1 var1684)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1040!2 String)
(assert (= var1040!2 (str.++ var1040!1 var1684)))
(assert true)
(define-const var2604 String (append/672562846 var417 ".placeholder.proto")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".placeholder.proto") 
(declare-const var417!1 String)
(assert (= var417!1 (str.++ var417 ".placeholder.proto")))
(assert true)
(define-const var3149 String (toString/-2075883882 var2604)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1502 var942 (setName/565837031 var2743 var3149)) ; Statement: $r11 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder setName(java.lang.String)>($r8) 
(assert true)
(define-const var3687 var942 (setPackage/1255382956 var1502 var541)) ; Statement: $r13 = virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder setPackage(java.lang.String)>(r10) 
(assert true)
(define-const var1489 var265 (toProto/1799429784 var3436)) ; Statement: $r12 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto toProto()>() 
(assert true)
(define-const var1337 var942 (addMessageType/1373266950 var3687 var1489)) ; Statement: $r14 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder addMessageType(com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto)>($r12) 
(assert true)
(define-const var1069 var1026 (build/1397148728 var1337)) ; Statement: $r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto build()>() 
(declare-const var211!3 var3585)
(assert (not (= var211!3 null-var3585)))
(assert (= (proto/-885873705 var211!3) var1069)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto proto> = $r15 
(define-const var1232 (Array Int var3585) arr-var3585-init) ; Statement: $r16 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)[0] 
(declare-const var211!4 var3585)
(assert (not (= var211!4 null-var3585)))
(assert (= (dependencies/-885873705 var211!4) var1232)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor[] dependencies> = $r16 
(define-const var3495 (Array Int var3585) arr-var3585-init) ; Statement: $r17 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)[0] 
(declare-const var211!5 var3585)
(assert (not (= var211!5 null-var3585)))
(assert (= (publicDependencies/-885873705 var211!5) var3495)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor[] publicDependencies> = $r17 
(define-const var575 (Array Int var2888) arr-var2888-init) ; Statement: $r18 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)[1] 
(declare-const var575!1 (Array Int var2888))
(assert (not (= var575!1 null-__Array__Int__var2888__)))
(assert (= (select var575!1 0) var3436)) ; Statement: $r18[0] = r4 
(declare-const var211!6 var3585)
(assert (not (= var211!6 null-var3585)))
(assert (= (messageTypes/-885873705 var211!6) var575!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor[] messageTypes> = $r18 
(define-const var702 (Array Int var201) arr-var201-init) ; Statement: $r19 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor)[0] 
(declare-const var211!7 var3585)
(assert (not (= var211!7 null-var3585)))
(assert (= (enumTypes/-885873705 var211!7) var702)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor[] enumTypes> = $r19 
(define-const var899 (Array Int var421) arr-var421-init) ; Statement: $r20 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor)[0] 
(declare-const var211!8 var3585)
(assert (not (= var211!8 null-var3585)))
(assert (= (services/-885873705 var211!8) var899)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor[] services> = $r20 
(define-const var3556 (Array Int var3369) arr-var3369-init) ; Statement: $r21 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor)[0] 
(declare-const var211!9 var3585)
(assert (not (= var211!9 null-var3585)))
(assert (= (extensions/-885873705 var211!9) var3556)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor[] extensions> = $r21 
(define-const var3140 var2842 (pool/-885873705 var211!9)) ; Statement: $r22 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool pool> 
(assert true)
;(assert (addPackage/1117774531 var3140 var541 var211!9)) ; Statement: virtualinvoke $r22.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: void addPackage(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>(r10, r0) 

(declare-const var3140!1 var2842)
(declare-const var541!1 String)
(declare-const var211!10 var3585)
(define-const var3198 var2842 (pool/-885873705 var211!10)) ; Statement: $r23 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool pool> 
(assert true)
;(assert (addSymbol/1500440269 var3198 (cast-from-var2888-to-var3089 var3436))) ; Statement: virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: void addSymbol(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor)>(r4) 

(declare-const var3198!1 var2842)
(declare-const var3436!1 var2888)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/882680716=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1], void), cast-from-var3585-to-var3089=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor), var2842-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool), arr-var3585-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor[]), <init>/-562627283=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor[], boolean], void), pool/-885873705=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool), var1026_newBuilder/-731566983=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getFullName/-1302123061=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setName/565837031=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder), setPackage/1255382956=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder), toProto/1799429784=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto), addMessageType/1373266950=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder), build/1397148728=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto), proto/-885873705=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto), dependencies/-885873705=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor[]), publicDependencies/-885873705=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor[]), arr-var2888-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor[]), messageTypes/-885873705=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor[]), arr-var201-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor[]), enumTypes/-885873705=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor[]), arr-var421-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor[]), services/-885873705=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor[]), arr-var3369-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor[]), extensions/-885873705=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor[]), addPackage/1117774531=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], void), addSymbol/1500440269=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor], void), cast-from-var2888-to-var3089=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor)}
; {var3585=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var211=r0, var541=r10, var3714=null_type, var2888=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var3436=r4, var3089=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var2388=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1, var2618=null, var2842=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var3569=$r1, var1563=$r2, var3728=1, var942=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder, var1026=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto, var2743=$r9, var1040=$r3, var1684=$r5, var417=$r6, var2604=$r7, var3149=$r8, var1502=$r11, var3687=$r13, var265=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto, var1489=$r12, var1337=$r14, var1069=$r15, var1232=$r16, var3495=$r17, var575=$r18, var201=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor, var702=$r19, var421=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor, var899=$r20, var3369=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var3556=$r21, var3140=$r22, var3198=$r23}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var3585, r0=var211, r10=var541, null_type=var3714, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var2888, r4=var3436, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var3089, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1=var2388, null=var2618, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var2842, $r1=var3569, $r2=var1563, 1=var3728, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder=var942, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto=var1026, $r9=var2743, $r3=var1040, $r5=var1684, $r6=var417, $r7=var2604, $r8=var3149, $r11=var1502, $r13=var3687, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto=var265, $r12=var1489, $r14=var1337, $r15=var1069, $r16=var1232, $r17=var3495, $r18=var575, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor=var201, $r19=var702, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor=var421, $r20=var899, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var3369, $r21=var3556, $r22=var3140, $r23=var3198}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor;	r10 := @parameter0: java.lang.String;	r4 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(null);	$r1 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool;	$r2 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)[0];	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor[],boolean)>($r2, 1);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool pool> = $r1;	$r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder newBuilder()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".placeholder.proto");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder setName(java.lang.String)>($r8);	$r13 = virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder setPackage(java.lang.String)>(r10);	$r12 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto toProto()>();	$r14 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder addMessageType(com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$DescriptorProto)>($r12);	$r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto build()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto proto> = $r15;	$r16 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)[0];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor[] dependencies> = $r16;	$r17 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)[0];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor[] publicDependencies> = $r17;	$r18 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)[1];	$r18[0] = r4;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor[] messageTypes> = $r18;	$r19 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor)[0];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor[] enumTypes> = $r19;	$r20 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor)[0];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor[] services> = $r20;	$r21 = newarray (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor)[0];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor[] extensions> = $r21;	$r22 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool pool>;	virtualinvoke $r22.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: void addPackage(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>(r10, r0);	$r23 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool pool>;	virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: void addSymbol(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor)>(r4);	return
;block_num 1
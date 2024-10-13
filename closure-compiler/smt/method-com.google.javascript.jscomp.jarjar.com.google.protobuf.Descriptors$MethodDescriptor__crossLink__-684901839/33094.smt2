(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3116 0)
(declare-sort var1965 0)
(declare-sort var3322 0)
(declare-sort var2980 0)
(declare-sort var2375 0)
(declare-sort var3447 0)
(declare-sort var1384 0)
(declare-sort var1287 0)
(declare-sort var2057 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/-1721105924 (var3116) var1965)
(declare-fun var1965_access$1500/493210752 (var1965) var3322)
(declare-fun proto/-1721105924 (var3116) var2980)
(declare-fun getInputType/926232432 (var2980) String)
(declare-fun lookupSymbol/-1553244160 (var3322 String var3447 var2375) var3447)
(declare-fun cast-from-var3116-to-var3447 (var3116) var3447)
(declare-fun var1384-init () var1384)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1603475532 (var1384 var3447 String var1287) void)
(declare-const null-var3116 var3116)
(declare-const var2375-TYPES_ONLY var2375)
(declare-const null-NullType var2057)
(declare-const null-var1287 var1287)
(declare-const var2608 var3116) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor 
(assert (not (= var2608 null-var3116)))
(define-const var3398 var1965 (file/-1721105924 var2608)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> 
(define-const var1223 var3322 (var1965_access$1500/493210752 var3398)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1) 
(define-const var1004 var2980 (proto/-1721105924 var2608)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto proto> 
(assert true)
(define-const var3690 String (getInputType/926232432 var1004)) ; Statement: $r4 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto: java.lang.String getInputType()>() 
(define-const var2047 var2375 var2375-TYPES_ONLY) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter TYPES_ONLY> 
(assert true)
(define-const var771 var3447 (lookupSymbol/-1553244160 var1223 var3690 (cast-from-var3116-to-var3447 var2608) var2047)) ; Statement: r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor lookupSymbol(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter)>($r4, r0, $r3) 
(define-const var1182 Bool false) ; Statement: $z0 = r6 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
 ; Statement: if $z0 != 0 goto $r7 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor) r6 
(assert (not (not (= (ite var1182 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1895 var1384 var1384-init) ; Statement: $r23 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException 
(define-const var1188 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1188)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1188!1 String)
(assert (= var1188!1 ""))
(assert true)
(define-const var2390 String (append/-1166366385 var1188!1 34)) ; Statement: $r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var1188!2 String)
(assert (str.prefixof var1188!1 var1188!2))
(define-const var3207 var2980 (proto/-1721105924 var2608)) ; Statement: $r25 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto proto> 
(assert true)
(define-const var814 String (getInputType/926232432 var3207)) ; Statement: $r26 = virtualinvoke $r25.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto: java.lang.String getInputType()>() 
(assert true)
(define-const var3658 String (append/672562846 var2390 var814)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2390!1 String)
(assert (= var2390!1 (str.++ var2390 var814)))
(assert true)
(define-const var2116 String (append/672562846 var3658 "\u0022 is not a message type.")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" is not a message type.") 
(declare-const var3658!1 String)
(assert (= var3658!1 (str.++ var3658 "\u0022 is not a message type.")))
(assert true)
(define-const var2906 String (toString/-2075883882 var2116)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1603475532 var1895 (cast-from-var3116-to-var3447 var2608) var2906 null-var1287)) ; Statement: specialinvoke $r23.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(r0, $r30, null) 

(declare-const var1895!1 var1384)
(declare-const var2608!1 var3116)
(declare-const var2906!1 String)
(declare-const var3063 var2057)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {file/-1721105924=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var1965_access$1500/493210752=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool), proto/-1721105924=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto), getInputType/926232432=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto], java.lang.String), lookupSymbol/-1553244160=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor), cast-from-var3116-to-var3447=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor), var1384-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1603475532=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1], void)}
; {var3116=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor, var2608=r0, var1965=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var3398=$r1, var3322=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var1223=$r5, var2980=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto, var1004=$r2, var3690=$r4, var2375=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter, var2047=$r3, var3447=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var771=r6, var1182=$z0, var1384=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException, var1895=$r23, var1188=$r24, var2390=$r27, var3207=$r25, var814=$r26, var3658=$r28, var2116=$r29, var2906=$r30, var1287=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1, var3063=null, var2057=null_type}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor=var3116, r0=var2608, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var1965, $r1=var3398, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var3322, $r5=var1223, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto=var2980, $r2=var1004, $r4=var3690, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter=var2375, $r3=var2047, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var3447, r6=var771, $z0=var1182, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException=var1384, $r23=var1895, $r24=var1188, $r27=var2390, $r25=var3207, $r26=var814, $r28=var3658, $r29=var2116, $r30=var2906, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1=var1287, null=var3063, null_type=var2057}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file>;	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1);	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto proto>;	$r4 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto: java.lang.String getInputType()>();	$r3 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter TYPES_ONLY>;	r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor lookupSymbol(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter)>($r4, r0, $r3);	$z0 = r6 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	if $z0 != 0 goto $r7 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor) r6;	$r23 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r25 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto proto>;	$r26 = virtualinvoke $r25.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto: java.lang.String getInputType()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" is not a message type.");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(r0, $r30, null);	throw $r23
;block_num 2
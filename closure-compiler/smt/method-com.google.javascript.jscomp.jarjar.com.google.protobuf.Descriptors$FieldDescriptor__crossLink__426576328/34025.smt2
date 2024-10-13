(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2813 0)
(declare-sort var3468 0)
(declare-sort var3324 0)
(declare-sort var3943 0)
(declare-sort var2472 0)
(declare-sort var3880 0)
(declare-sort var3090 0)
(declare-sort var508 0)
(declare-sort var3419 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun proto/-1034588227 (var2813) var3468)
(declare-fun hasExtendee/-544148632 (var3468) Bool)
(declare-fun file/-1034588227 (var2813) var3324)
(declare-fun var3324_access$1500/493210752 (var3324) var3943)
(declare-fun getExtendee/2082203169 (var3468) String)
(declare-fun lookupSymbol/-1553244160 (var3943 String var3880 var2472) var3880)
(declare-fun cast-from-var2813-to-var3880 (var2813) var3880)
(declare-fun var3090-init () var3090)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1603475532 (var3090 var3880 String var508) void)
(declare-const null-var2813 var2813)
(declare-const var2472-TYPES_ONLY var2472)
(declare-const null-NullType var3419)
(declare-const null-var508 var508)
(declare-const var552 var2813) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var552 null-var2813)))
(define-const var929 var3468 (proto/-1034588227 var552)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto proto> 
(assert true)
(define-const var1831 Bool (hasExtendee/-544148632 var929)) ; Statement: $z0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto: boolean hasExtendee()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto proto> 
(assert (not (= (ite var1831 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3069 var3324 (file/-1034588227 var552)) ; Statement: $r129 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> 
(define-const var382 var3943 (var3324_access$1500/493210752 var3069)) ; Statement: $r133 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r129) 
(define-const var1307 var3468 (proto/-1034588227 var552)) ; Statement: $r130 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto proto> 
(assert true)
(define-const var743 String (getExtendee/2082203169 var1307)) ; Statement: $r132 = virtualinvoke $r130.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto: java.lang.String getExtendee()>() 
(define-const var3206 var2472 var2472-TYPES_ONLY) ; Statement: $r131 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter TYPES_ONLY> 
(assert true)
(define-const var616 var3880 (lookupSymbol/-1553244160 var382 var743 (cast-from-var2813-to-var3880 var552) var3206)) ; Statement: r170 = virtualinvoke $r133.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor lookupSymbol(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter)>($r132, r0, $r131) 
(define-const var2039 Bool false) ; Statement: $z22 = r170 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
 ; Statement: if $z22 != 0 goto $r134 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor) r170 
(assert (not (not (= (ite var2039 1 0) 0)))) ; Negate: Cond: $z22 != 0  
(define-const var2738 var3090 var3090-init) ; Statement: $r146 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException 
(define-const var223 String String-init) ; Statement: $r147 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var223)) ; Statement: specialinvoke $r147.<java.lang.StringBuilder: void <init>()>() 
(declare-const var223!1 String)
(assert (= var223!1 ""))
(assert true)
(define-const var3209 String (append/-1166366385 var223!1 34)) ; Statement: $r150 = virtualinvoke $r147.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var223!2 String)
(assert (str.prefixof var223!1 var223!2))
(define-const var1267 var3468 (proto/-1034588227 var552)) ; Statement: $r148 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto proto> 
(assert true)
(define-const var379 String (getExtendee/2082203169 var1267)) ; Statement: $r149 = virtualinvoke $r148.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto: java.lang.String getExtendee()>() 
(assert true)
(define-const var3591 String (append/672562846 var3209 var379)) ; Statement: $r151 = virtualinvoke $r150.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r149) 
(declare-const var3209!1 String)
(assert (= var3209!1 (str.++ var3209 var379)))
(assert true)
(define-const var1852 String (append/672562846 var3591 "\u0022 is not a message type.")) ; Statement: $r152 = virtualinvoke $r151.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" is not a message type.") 
(declare-const var3591!1 String)
(assert (= var3591!1 (str.++ var3591 "\u0022 is not a message type.")))
(assert true)
(define-const var2422 String (toString/-2075883882 var1852)) ; Statement: $r153 = virtualinvoke $r152.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1603475532 var2738 (cast-from-var2813-to-var3880 var552) var2422 null-var508)) ; Statement: specialinvoke $r146.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(r0, $r153, null) 

(declare-const var2738!1 var3090)
(declare-const var552!1 var2813)
(declare-const var2422!1 String)
(declare-const var2337 var3419)
 ; Statement: throw $r146 
(check-sat)
(get-model)
(get-unsat-core)
; {proto/-1034588227=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto), hasExtendee/-544148632=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto], boolean), file/-1034588227=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var3324_access$1500/493210752=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool), getExtendee/2082203169=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto], java.lang.String), lookupSymbol/-1553244160=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor), cast-from-var2813-to-var3880=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor), var3090-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1603475532=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1], void)}
; {var2813=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var552=r0, var3468=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto, var929=$r1, var1831=$z0, var3324=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var3069=$r129, var3943=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var382=$r133, var1307=$r130, var743=$r132, var2472=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter, var3206=$r131, var3880=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var616=r170, var2039=$z22, var3090=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException, var2738=$r146, var223=$r147, var3209=$r150, var1267=$r148, var379=$r149, var3591=$r151, var1852=$r152, var2422=$r153, var508=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1, var2337=null, var3419=null_type}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2813, r0=var552, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto=var3468, $r1=var929, $z0=var1831, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var3324, $r129=var3069, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var3943, $r133=var382, $r130=var1307, $r132=var743, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter=var2472, $r131=var3206, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var3880, r170=var616, $z22=var2039, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException=var3090, $r146=var2738, $r147=var223, $r150=var3209, $r148=var1267, $r149=var379, $r151=var3591, $r152=var1852, $r153=var2422, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1=var508, null=var2337, null_type=var3419}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto proto>;	$z0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto: boolean hasExtendee()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto proto>;	$r129 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file>;	$r133 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r129);	$r130 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto proto>;	$r132 = virtualinvoke $r130.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto: java.lang.String getExtendee()>();	$r131 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter TYPES_ONLY>;	r170 = virtualinvoke $r133.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor lookupSymbol(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter)>($r132, r0, $r131);	$z22 = r170 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	if $z22 != 0 goto $r134 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor) r170;	$r146 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException;	$r147 = new java.lang.StringBuilder;	specialinvoke $r147.<java.lang.StringBuilder: void <init>()>();	$r150 = virtualinvoke $r147.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r148 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto proto>;	$r149 = virtualinvoke $r148.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FieldDescriptorProto: java.lang.String getExtendee()>();	$r151 = virtualinvoke $r150.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r149);	$r152 = virtualinvoke $r151.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" is not a message type.");	$r153 = virtualinvoke $r152.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r146.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(r0, $r153, null);	throw $r146
;block_num 3
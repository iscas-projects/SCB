(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2597 0)
(declare-sort var2232 0)
(declare-sort var1090 0)
(declare-sort var3725 0)
(declare-sort var2960 0)
(declare-sort var1926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1090_getDefaultInstance/-23646957 (ClassObject) var2232)
(declare-fun cast-from-var2232-to-var3725 (var2232) var3725)
(declare-fun getTypeUrl/-2091990195 (var2597) String)
(declare-fun var2597_getTypeNameFromTypeUrl/-551410047 (String) String)
(declare-fun var1926_getDescriptorForType/-355994375 (var1926) var2960)
(declare-fun cast-from-var3725-to-var1926 (var3725) var1926)
(declare-fun getFullName/-1302123061 (var2960) String)
(declare-const null-var2597 var2597)
(declare-const null-ClassObject ClassObject)
(declare-const var1375 var2597) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Any 
(assert (not (= var1375 null-var2597)))
(declare-const var2332 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2332 null-ClassObject)))
(define-const var974 var2232 (var1090_getDefaultInstance/-23646957 var2332)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite getDefaultInstance(java.lang.Class)>(r0) 
(define-const var2923 var3725 (cast-from-var2232-to-var3725 var974)) ; Statement: r2 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Message) $r1 
(assert true)
(define-const var2364 String (getTypeUrl/-2091990195 var1375)) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: java.lang.String getTypeUrl()>() 
(define-const var2554 String (var2597_getTypeNameFromTypeUrl/-551410047 var2364)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: java.lang.String getTypeNameFromTypeUrl(java.lang.String)>($r4) 
(define-const var1228 var2960 (var1926_getDescriptorForType/-355994375 (cast-from-var3725-to-var1926 var2923))) ; Statement: $r5 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Message: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptorForType()>() 
(assert true)
(define-const var1175 String (getFullName/-1302123061 var1228)) ; Statement: $r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var2487 Bool (= var2554 var1175)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1090_getDefaultInstance/-23646957=([java.lang.Class], com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite), cast-from-var2232-to-var3725=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite], com.google.javascript.jscomp.jarjar.com.google.protobuf.Message), getTypeUrl/-2091990195=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Any], java.lang.String), var2597_getTypeNameFromTypeUrl/-551410047=([java.lang.String], java.lang.String), var1926_getDescriptorForType/-355994375=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), cast-from-var3725-to-var1926=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Message], com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder), getFullName/-1302123061=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String)}
; {var2597=com.google.javascript.jscomp.jarjar.com.google.protobuf.Any, var1375=r3, var2332=r0, var2232=com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite, var1090=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var974=$r1, var3725=com.google.javascript.jscomp.jarjar.com.google.protobuf.Message, var2923=r2, var2364=$r4, var2554=$r7, var2960=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var1926=com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder, var1228=$r5, var1175=$r6, var2487=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Any=var2597, r3=var1375, r0=var2332, com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite=var2232, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var1090, $r1=var974, com.google.javascript.jscomp.jarjar.com.google.protobuf.Message=var3725, r2=var2923, $r4=var2364, $r7=var2554, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var2960, com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder=var1926, $r5=var1228, $r6=var1175, $z0=var2487}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Any;	r0 := @parameter0: java.lang.Class;	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite getDefaultInstance(java.lang.Class)>(r0);	r2 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Message) $r1;	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: java.lang.String getTypeUrl()>();	$r7 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: java.lang.String getTypeNameFromTypeUrl(java.lang.String)>($r4);	$r5 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Message: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptorForType()>();	$r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	return $z0
;block_num 1
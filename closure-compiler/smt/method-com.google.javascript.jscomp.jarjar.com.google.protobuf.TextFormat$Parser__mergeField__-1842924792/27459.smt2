(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1174 0)
(declare-sort var1404 0)
(declare-sort var2025 0)
(declare-sort var1661 0)
(declare-sort var369 0)
(declare-sort var3177 0)
(declare-sort var2527 0)
(declare-sort var3574 0)
(declare-sort var3243 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLine/-1060157655 (var1404) Int)
(declare-fun getColumn/-1201291129 (var1404) Int)
(declare-fun var1661_getDescriptorForType/1920388975 (var1661) var3574)
(declare-fun getFullName/-1302123061 (var3574) String)
(declare-fun tryConsume/-1518956060 (var1404 String) Bool)
(declare-fun mergeAnyFieldValue/1249634720 (var1174 var1404 var2025 var1661 var369 var3177 var3574) void)
(declare-const null-var1174 var1174)
(declare-const null-var1404 var1404)
(declare-const null-var2025 var2025)
(declare-const null-var1661 var1661)
(declare-const null-var369 var369)
(declare-const null-var3177 var3177)
(declare-const null-var2527 var2527)
(declare-const null-var3243 var3243)
(declare-const var938 var1174) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser 
(assert (not (= var938 null-var1174)))
(declare-const var3382 var1404) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var3382 null-var1404)))
(declare-const var2476 var2025) ; Statement: r8 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry 
(assert (not (= var2476 null-var2025)))
(declare-const var3035 var1661) ; Statement: r1 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget 
(assert (not (= var3035 null-var1661)))
(declare-const var683 var369) ; Statement: r9 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseInfoTree$Builder 
(assert (not (= var683 null-var369)))
(declare-const var3599 var3177) ; Statement: r10 := @parameter4: java.util.List 
(assert (not (= var3599 null-var3177)))
(define-const var844 var2527 null-var2527) ; Statement: r57 = null 
(assert true)
(define-const var1541 Int (getLine/-1060157655 var3382)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: int getLine()>() 
(assert true)
(define-const var2533 Int (getColumn/-1201291129 var3382)) ; Statement: i1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: int getColumn()>() 
(define-const var2110 var3574 (var1661_getDescriptorForType/1920388975 var3035)) ; Statement: r2 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptorForType()>() 
(define-const var739 var3243 null-var3243) ; Statement: r58 = null 
(define-const var2114 String "google.protobuf.Any") ; Statement: $r4 = "google.protobuf.Any" 
(assert true)
(define-const var2707 String (getFullName/-1302123061 var2110)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var1399 Bool (= var2114 var2707)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>("[") 
(assert (not (= (ite var1399 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2788 Bool (tryConsume/-1518956060 var3382 "[")) ; Statement: $z8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>("[") 
 ; Statement: if $z8 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>("[") 
(assert (not (= (ite var2788 1 0) 0))) ; Negate: Cond: $z8 == 0  
(assert true)
;(assert (mergeAnyFieldValue/1249634720 var938 var3382 var2476 var3035 var683 var3599 var2110)) ; Statement: specialinvoke r7.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser: void mergeAnyFieldValue(com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer,com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry,com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget,com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseInfoTree$Builder,java.util.List,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)>(r0, r8, r1, r9, r10, r2) 

(declare-const var938!1 var1174)
(declare-const var3382!1 var1404)
(declare-const var2476!1 var2025)
(declare-const var3035!1 var1661)
(declare-const var683!1 var369)
(declare-const var3599!1 var3177)
(declare-const var2110!1 var3574)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLine/-1060157655=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], int), getColumn/-1201291129=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], int), var1661_getDescriptorForType/1920388975=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), getFullName/-1302123061=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), tryConsume/-1518956060=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, java.lang.String], boolean), mergeAnyFieldValue/1249634720=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry, com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseInfoTree$Builder, java.util.List, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], void)}
; {var1174=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser, var938=r7, var1404=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var3382=r0, var2025=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry, var2476=r8, var1661=com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget, var3035=r1, var369=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseInfoTree$Builder, var683=r9, var3177=java.util.List, var3599=r10, var2527=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var844=r57, var1541=i0, var2533=i1, var3574=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var2110=r2, var3243=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo, var739=r58, var2114=$r4, var2707=$r3, var1399=$z0, var2788=$z8}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser=var1174, r7=var938, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var1404, r0=var3382, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry=var2025, r8=var2476, com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget=var1661, r1=var3035, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseInfoTree$Builder=var369, r9=var683, java.util.List=var3177, r10=var3599, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2527, r57=var844, i0=var1541, i1=var2533, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var3574, r2=var2110, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo=var3243, r58=var739, $r4=var2114, $r3=var2707, $z0=var1399, $z8=var2788}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	r8 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry;	r1 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget;	r9 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseInfoTree$Builder;	r10 := @parameter4: java.util.List;	r57 = null;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: int getLine()>();	i1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: int getColumn()>();	r2 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptorForType()>();	r58 = null;	$r4 = "google.protobuf.Any";	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>("[");	$z8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>("[");	if $z8 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>("[");	specialinvoke r7.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser: void mergeAnyFieldValue(com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer,com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry,com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget,com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseInfoTree$Builder,java.util.List,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)>(r0, r8, r1, r9, r10, r2);	return
;block_num 3
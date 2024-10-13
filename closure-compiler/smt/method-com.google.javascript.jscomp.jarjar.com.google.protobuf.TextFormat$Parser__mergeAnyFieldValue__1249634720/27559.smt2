(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3605 0)
(declare-sort var2805 0)
(declare-sort var358 0)
(declare-sort var906 0)
(declare-sort var3965 0)
(declare-sort var561 0)
(declare-sort var1837 0)
(declare-sort var822 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun consumeIdentifier/573247758 (var2805) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tryConsume/-1518956060 (var2805 String) Bool)
(declare-fun parseExceptionPreviousToken/-93867311 (var2805 String) var822)
(declare-const null-var3605 var3605)
(declare-const null-var2805 var2805)
(declare-const null-var358 var358)
(declare-const null-var906 var906)
(declare-const null-var3965 var3965)
(declare-const null-var561 var561)
(declare-const null-var1837 var1837)
(declare-const var2125 var3605) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser 
(assert (not (= var2125 null-var3605)))
(declare-const var2440 var2805) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var2440 null-var2805)))
(declare-const var548 var358) ; Statement: r14 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry 
(assert (not (= var548 null-var358)))
(declare-const var1760 var906) ; Statement: r7 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget 
(assert (not (= var1760 null-var906)))
(declare-const var1107 var3965) ; Statement: r15 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseInfoTree$Builder 
(assert (not (= var1107 null-var3965)))
(declare-const var2843 var561) ; Statement: r16 := @parameter4: java.util.List 
(assert (not (= var2843 null-var561)))
(declare-const var3238 var1837) ; Statement: r8 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var3238 null-var1837)))
(define-const var2064 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2064)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2064!1 String)
(assert (= var2064!1 ""))
(assert true) ; Non Conditional
(assert true)
(define-const var2509 String (consumeIdentifier/573247758 var2440)) ; Statement: $r31 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String consumeIdentifier()>() 
(assert true)
;(assert (append/672562846 var2064!1 var2509)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31) 
(declare-const var2064!2 String)
(assert (= var2064!2 (str.++ var2064!1 var2509)))
(assert true)
(define-const var2366 Bool (tryConsume/-1518956060 var2440 "]")) ; Statement: $z4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>("]") 
 ; Statement: if $z4 == 0 goto $z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>("/") 
(assert (= (ite var2366 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var646 Bool (tryConsume/-1518956060 var2440 "/")) ; Statement: $z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>(".") 
(assert (= (ite var646 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var627 Bool (tryConsume/-1518956060 var2440 ".")) ; Statement: $z1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>(".") 
 ; Statement: if $z1 == 0 goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseExceptionPreviousToken(java.lang.String)>("Expected a valid type URL.") 
(assert (= (ite var627 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1073 var822 (parseExceptionPreviousToken/-93867311 var2440 "Expected a valid type URL.")) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseExceptionPreviousToken(java.lang.String)>("Expected a valid type URL.") 
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), consumeIdentifier/573247758=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tryConsume/-1518956060=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, java.lang.String], boolean), parseExceptionPreviousToken/-93867311=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException)}
; {var3605=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser, var2125=r3, var2805=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var2440=r1, var358=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry, var548=r14, var906=com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget, var1760=r7, var3965=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseInfoTree$Builder, var1107=r15, var561=java.util.List, var2843=r16, var1837=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var3238=r8, var2064=$r0, var2509=$r31, var2366=$z4, var646=$z0, var627=$z1, var822=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException, var1073=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser=var3605, r3=var2125, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var2805, r1=var2440, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry=var358, r14=var548, com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget=var906, r7=var1760, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseInfoTree$Builder=var3965, r15=var1107, java.util.List=var561, r16=var2843, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var1837, r8=var3238, $r0=var2064, $r31=var2509, $z4=var2366, $z0=var646, $z1=var627, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException=var822, $r2=var1073}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	r14 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry;	r7 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget;	r15 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseInfoTree$Builder;	r16 := @parameter4: java.util.List;	r8 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String consumeIdentifier()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31);	$z4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>("]");	if $z4 == 0 goto $z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>("/");	$z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>("/");	if $z0 == 0 goto $z1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>(".");	$z1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>(".");	if $z1 == 0 goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseExceptionPreviousToken(java.lang.String)>("Expected a valid type URL.");	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseExceptionPreviousToken(java.lang.String)>("Expected a valid type URL.");	throw $r2
;block_num 5
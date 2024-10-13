(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1589 0)
(declare-sort var2263 0)
(declare-sort var1451 0)
(declare-sort var3669 0)
(declare-sort var3641 0)
(declare-sort var2010 0)
(declare-sort var3752 0)
(declare-sort var901 0)
(declare-sort var2143 0)
(declare-sort var511 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun singularOverwritePolicy/-1011488781 (var1589) var2143)
(declare-fun isRepeated/1561302426 (var3641) Bool)
(declare-fun var3669_hasField/-2108818633 (var3669 var3641) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFullName/-1802894463 (var3641) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun parseExceptionPreviousToken/-93867311 (var2263 String) var511)
(declare-const null-var1589 var1589)
(declare-const null-var2263 var2263)
(declare-const null-var1451 var1451)
(declare-const null-var3669 var3669)
(declare-const null-var3641 var3641)
(declare-const null-var2010 var2010)
(declare-const null-var3752 var3752)
(declare-const null-var901 var901)
(declare-const var2143-FORBID_SINGULAR_OVERWRITES var2143)
(declare-const var35 var1589) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser 
(assert (not (= var35 null-var1589)))
(declare-const var3979 var2263) ; Statement: r7 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var3979 null-var2263)))
(declare-const var1116 var1451) ; Statement: r38 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry 
(assert (not (= var1116 null-var1451)))
(declare-const var3527 var3669) ; Statement: r8 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget 
(assert (not (= var3527 null-var3669)))
(declare-const var1932 var3641) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var1932 null-var3641)))
(declare-const var2562 var2010) ; Statement: r37 := @parameter4: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo 
(assert (not (= var2562 null-var2010)))
(declare-const var1277 var3752) ; Statement: r39 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseInfoTree$Builder 
(assert (not (= var1277 null-var3752)))
(declare-const var3373 var901) ; Statement: r40 := @parameter6: java.util.List 
(assert (not (= var3373 null-var901)))
(define-const var3127 var2143 (singularOverwritePolicy/-1011488781 var35)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy singularOverwritePolicy> 
(define-const var375 var2143 var2143-FORBID_SINGULAR_OVERWRITES) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy FORBID_SINGULAR_OVERWRITES> 
 ; Statement: if $r2 != $r1 goto r74 = null 
(assert (not (not (= var3127 var375)))) ; Negate: Cond: $r2 != $r1  
(assert true)
(define-const var1011 Bool (isRepeated/1561302426 var1932)) ; Statement: $z8 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isRepeated()>() 
 ; Statement: if $z8 != 0 goto r74 = null 
(assert (not (not (= (ite var1011 1 0) 0)))) ; Negate: Cond: $z8 != 0  
(define-const var2103 Bool (var3669_hasField/-2108818633 var3527 var1932)) ; Statement: $z9 = interfaceinvoke r8.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget: boolean hasField(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor)>(r3) 
 ; Statement: if $z9 == 0 goto $r50 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor getContainingOneof()>() 
(assert (not (= (ite var2103 1 0) 0))) ; Negate: Cond: $z9 == 0  
(define-const var3625 String String-init) ; Statement: $r66 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3625)) ; Statement: specialinvoke $r66.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3625!1 String)
(assert (= var3625!1 ""))
(assert true)
(define-const var552 String (append/672562846 var3625!1 "Non-repeated field \u0022")) ; Statement: $r68 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Non-repeated field \"") 
(declare-const var3625!2 String)
(assert (= var3625!2 (str.++ var3625!1 "Non-repeated field \u0022")))
(assert true)
(define-const var968 String (getFullName/-1802894463 var1932)) ; Statement: $r67 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var540 String (append/672562846 var552 var968)) ; Statement: $r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r67) 
(declare-const var552!1 String)
(assert (= var552!1 (str.++ var552 var968)))
(assert true)
(define-const var1832 String (append/672562846 var540 "\u0022 cannot be overwritten.")) ; Statement: $r70 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" cannot be overwritten.") 
(declare-const var540!1 String)
(assert (= var540!1 (str.++ var540 "\u0022 cannot be overwritten.")))
(assert true)
(define-const var1964 String (toString/-2075883882 var1832)) ; Statement: $r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3551 var511 (parseExceptionPreviousToken/-93867311 var3979 var1964)) ; Statement: $r72 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseExceptionPreviousToken(java.lang.String)>($r71) 
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {singularOverwritePolicy/-1011488781=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser], com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy), isRepeated/1561302426=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], boolean), var3669_hasField/-2108818633=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFullName/-1802894463=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), parseExceptionPreviousToken/-93867311=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException)}
; {var1589=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser, var35=r0, var2263=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var3979=r7, var1451=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry, var1116=r38, var3669=com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget, var3527=r8, var3641=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var1932=r3, var2010=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo, var2562=r37, var3752=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseInfoTree$Builder, var1277=r39, var901=java.util.List, var3373=r40, var2143=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy, var3127=$r2, var375=$r1, var1011=$z8, var2103=$z9, var3625=$r66, var552=$r68, var968=$r67, var540=$r69, var1832=$r70, var1964=$r71, var511=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException, var3551=$r72}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser=var1589, r0=var35, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var2263, r7=var3979, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry=var1451, r38=var1116, com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget=var3669, r8=var3527, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var3641, r3=var1932, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo=var2010, r37=var2562, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseInfoTree$Builder=var3752, r39=var1277, java.util.List=var901, r40=var3373, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy=var2143, $r2=var3127, $r1=var375, $z8=var1011, $z9=var2103, $r66=var3625, $r68=var552, $r67=var968, $r69=var540, $r70=var1832, $r71=var1964, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException=var511, $r72=var3551}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser;	r7 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	r38 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry;	r8 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget;	r3 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r37 := @parameter4: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionRegistry$ExtensionInfo;	r39 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseInfoTree$Builder;	r40 := @parameter6: java.util.List;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy singularOverwritePolicy>;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy FORBID_SINGULAR_OVERWRITES>;	if $r2 != $r1 goto r74 = null;	$z8 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isRepeated()>();	if $z8 != 0 goto r74 = null;	$z9 = interfaceinvoke r8.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageReflection$MergeTarget: boolean hasField(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor)>(r3);	if $z9 == 0 goto $r50 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor getContainingOneof()>();	$r66 = new java.lang.StringBuilder;	specialinvoke $r66.<java.lang.StringBuilder: void <init>()>();	$r68 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Non-repeated field \"");	$r67 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getFullName()>();	$r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r67);	$r70 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" cannot be overwritten.");	$r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseExceptionPreviousToken(java.lang.String)>($r71);	throw $r72
;block_num 4
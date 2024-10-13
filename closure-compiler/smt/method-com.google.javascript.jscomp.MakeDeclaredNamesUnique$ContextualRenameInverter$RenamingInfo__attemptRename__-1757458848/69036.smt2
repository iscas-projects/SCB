(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2121 0)
(declare-sort var3601 0)
(declare-sort var845 0)
(declare-sort var538 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3601-init () var3601)
(declare-fun <init>/-808729244 (var3601) void)
(declare-fun var845_add/-1142548109 (var845 var538) Bool)
(declare-fun cast-from-var3601-to-var845 (var3601) var845)
(declare-fun cast-from-String-to-var538 (String) var538)
(declare-fun potentialShadowVariables/959149067 (var2121) var845)
(declare-fun var845_iterator/1911472585 (var845) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun preferredName/959149067 (var2121) String)
(declare-fun var845_contains/1636690605 (var845 var538) Bool)
(declare-fun currentName/959149067 (var2121) String)
(declare-const null-var2121 var2121)
(declare-const var1276 var2121) ; Statement: r1 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo 
(assert (not (= var1276 null-var2121)))
(define-const var1935 var3601 var3601-init) ; Statement: $r0 = new java.util.LinkedHashSet 
(assert true)
;(assert (<init>/-808729244 var1935)) ; Statement: specialinvoke $r0.<java.util.LinkedHashSet: void <init>()>() 

(declare-const var1935!1 var3601)
;(assert (var845_add/-1142548109 (cast-from-var3601-to-var845 var1935!1) (cast-from-String-to-var538 "arguments"))) ; Statement: interfaceinvoke $r0.<java.util.Set: boolean add(java.lang.Object)>("arguments") 

(declare-const var1935!2 var3601)
(declare-const var2242 String)
(define-const var1078 var845 (potentialShadowVariables/959149067 var1276)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.util.Set potentialShadowVariables> 
(define-const var378 Iterator (var845_iterator/1911472585 var1078)) ; Statement: r16 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1465 Bool (Iterator_hasNext/-1669924200 var378)) ; Statement: $z0 = interfaceinvoke r16.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r19 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.lang.String preferredName> 
(assert (= (ite var1465 1 0) 0)) ; Cond: $z0 == 0 
(define-const var552 String (preferredName/959149067 var1276)) ; Statement: r19 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.lang.String preferredName> 
(define-const var86 String (preferredName/959149067 var1276)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.lang.String preferredName> 
(define-const var3810 Bool (var845_contains/1636690605 (cast-from-var3601-to-var845 var1935!2) (cast-from-String-to-var538 var86))) ; Statement: $z1 = interfaceinvoke $r0.<java.util.Set: boolean contains(java.lang.Object)>($r3) 
 ; Statement: if $z1 == 0 goto $r4 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.lang.String currentName> 
(assert (= (ite var3810 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2323 String (currentName/959149067 var1276)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.lang.String currentName> 
(assert true)
(define-const var3617 Bool (= var552 var2323)) ; Statement: $z2 = virtualinvoke r19.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z2 == 0 goto $r5 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.util.List referenceNodes> 
(assert (not (= (ite var3617 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3778 String (currentName/959149067 var1276)) ; Statement: $r12 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.lang.String currentName> 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var3601-init=([], java.util.LinkedHashSet), <init>/-808729244=([java.util.LinkedHashSet], void), var845_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-var3601-to-var845=([java.util.LinkedHashSet], java.util.Set), cast-from-String-to-var538=([java.lang.String], java.lang.Object), potentialShadowVariables/959149067=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo], java.util.Set), var845_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), preferredName/959149067=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo], java.lang.String), var845_contains/1636690605=([java.util.Set, java.lang.Object], boolean), currentName/959149067=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo], java.lang.String)}
; {var2121=com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo, var1276=r1, var3601=java.util.LinkedHashSet, var1935=$r0, var845=java.util.Set, var538=java.lang.Object, var2242="arguments", var1078=$r2, var378=r16, var1465=$z0, var552=r19, var86=$r3, var3810=$z1, var2323=$r4, var3617=$z2, var3778=$r12}
; {com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo=var2121, r1=var1276, java.util.LinkedHashSet=var3601, $r0=var1935, java.util.Set=var845, java.lang.Object=var538, "arguments"=var2242, $r2=var1078, r16=var378, $z0=var1465, r19=var552, $r3=var86, $z1=var3810, $r4=var2323, $z2=var3617, $r12=var3778}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo;	$r0 = new java.util.LinkedHashSet;	specialinvoke $r0.<java.util.LinkedHashSet: void <init>()>();	interfaceinvoke $r0.<java.util.Set: boolean add(java.lang.Object)>("arguments");	$r2 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.util.Set potentialShadowVariables>;	r16 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r16.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r19 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.lang.String preferredName>;	r19 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.lang.String preferredName>;	$r3 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.lang.String preferredName>;	$z1 = interfaceinvoke $r0.<java.util.Set: boolean contains(java.lang.Object)>($r3);	if $z1 == 0 goto $r4 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.lang.String currentName>;	$r4 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.lang.String currentName>;	$z2 = virtualinvoke r19.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z2 == 0 goto $r5 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.util.List referenceNodes>;	$r12 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: java.lang.String currentName>;	return $r12
;block_num 5
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1385 0)
(declare-sort var2734 0)
(declare-sort var655 0)
(declare-sort var2273 0)
(declare-sort var2523 0)
(declare-sort var1016 0)
(declare-sort var1624 0)
(declare-sort var2752 0)
(declare-sort var621 0)
(declare-sort var3774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2273_builder/1529695113 () var655)
(declare-fun var1016_builder/-1909122123 () var2523)
(declare-fun template/-1836373906 (var1385) String)
(declare-fun matcher/468719934 (var1624 String) var621)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var621) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3774-init () var3774)
(declare-fun build/274856470 (var655) var2273)
(declare-fun build/-319551664 (var2523) var1016)
(declare-fun <init>/-218057359 (var3774 var2273 var1016) void)
(declare-const null-var1385 var1385)
(declare-const null-var2734 var2734)
(declare-const var2752-ICU_PLACEHOLDER_RE var1624)
(declare-const var3836 var1385) ; Statement: r2 := @this: com.google.javascript.jscomp.JsMessageVisitor$IcuMessageTemplateString 
(assert (not (= var3836 null-var1385)))
(declare-const var2277 var2734) ; Statement: r12 := @parameter0: java.util.Set 
(assert (not (= var2277 null-var2734)))
(define-const var2999 var655 var2273_builder/1529695113) ; Statement: r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder builder()>() 
(define-const var1361 var2523 var1016_builder/-1909122123) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder builder()>() 
(define-const var2883 var1624 var2752-ICU_PLACEHOLDER_RE) ; Statement: $r4 = <com.google.javascript.jscomp.JsMessageVisitor: java.util.regex.Pattern ICU_PLACEHOLDER_RE> 
(define-const var877 String (template/-1836373906 var3836)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.JsMessageVisitor$IcuMessageTemplateString: java.lang.String template> 
(assert true)
(define-const var1517 var621 (matcher/468719934 var2883 (cast-from-String-to-String var877))) ; Statement: r5 = virtualinvoke $r4.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r3) 
(define-const var1300 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2379 Bool (find/1809080823 var1517)) ; Statement: $z0 = virtualinvoke r5.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $r6 = r2.<com.google.javascript.jscomp.JsMessageVisitor$IcuMessageTemplateString: java.lang.String template> 
(assert (= (ite var2379 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1161 String (template/-1836373906 var3836)) ; Statement: $r6 = r2.<com.google.javascript.jscomp.JsMessageVisitor$IcuMessageTemplateString: java.lang.String template> 
(assert true)
(define-const var3804 Int (length/-134980193 var1161)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto $r7 = new com.google.javascript.jscomp.JsMessageVisitor$ExtractedIcuTemplateParts 
(assert (>= var1300 var3804)) ; Cond: i2 >= $i0 
(define-const var276 var3774 var3774-init) ; Statement: $r7 = new com.google.javascript.jscomp.JsMessageVisitor$ExtractedIcuTemplateParts 
(assert true)
(define-const var796 var2273 (build/274856470 var2999)) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet build()>() 
(assert true)
(define-const var2572 var1016 (build/-319551664 var1361)) ; Statement: $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList build()>() 
(assert true)
;(assert (<init>/-218057359 var276 var796 var2572)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.JsMessageVisitor$ExtractedIcuTemplateParts: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList)>($r9, $r8) 

(declare-const var276!1 var3774)
(declare-const var796!1 var2273)
(declare-const var2572!1 var1016)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2273_builder/1529695113=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder), var1016_builder/-1909122123=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder), template/-1836373906=([com.google.javascript.jscomp.JsMessageVisitor$IcuMessageTemplateString], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), length/-134980193=([java.lang.String], int), var3774-init=([], com.google.javascript.jscomp.JsMessageVisitor$ExtractedIcuTemplateParts), build/274856470=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), build/-319551664=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), <init>/-218057359=([com.google.javascript.jscomp.JsMessageVisitor$ExtractedIcuTemplateParts, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], void)}
; {var1385=com.google.javascript.jscomp.JsMessageVisitor$IcuMessageTemplateString, var3836=r2, var2734=java.util.Set, var2277=r12, var655=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder, var2273=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2999=r0, var2523=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder, var1016=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1361=r1, var1624=java.util.regex.Pattern, var2752=com.google.javascript.jscomp.JsMessageVisitor, var2883=$r4, var877=$r3, var621=java.util.regex.Matcher, var1517=r5, var1300=i2, var2379=$z0, var1161=$r6, var3804=$i0, var3774=com.google.javascript.jscomp.JsMessageVisitor$ExtractedIcuTemplateParts, var276=$r7, var796=$r9, var2572=$r8}
; {com.google.javascript.jscomp.JsMessageVisitor$IcuMessageTemplateString=var1385, r2=var3836, java.util.Set=var2734, r12=var2277, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder=var655, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2273, r0=var2999, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder=var2523, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1016, r1=var1361, java.util.regex.Pattern=var1624, com.google.javascript.jscomp.JsMessageVisitor=var2752, $r4=var2883, $r3=var877, java.util.regex.Matcher=var621, r5=var1517, i2=var1300, $z0=var2379, $r6=var1161, $i0=var3804, com.google.javascript.jscomp.JsMessageVisitor$ExtractedIcuTemplateParts=var3774, $r7=var276, $r9=var796, $r8=var2572}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.JsMessageVisitor$IcuMessageTemplateString;	r12 := @parameter0: java.util.Set;	r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder builder()>();	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder builder()>();	$r4 = <com.google.javascript.jscomp.JsMessageVisitor: java.util.regex.Pattern ICU_PLACEHOLDER_RE>;	$r3 = r2.<com.google.javascript.jscomp.JsMessageVisitor$IcuMessageTemplateString: java.lang.String template>;	r5 = virtualinvoke $r4.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r3);	i2 = 0;	$z0 = virtualinvoke r5.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $r6 = r2.<com.google.javascript.jscomp.JsMessageVisitor$IcuMessageTemplateString: java.lang.String template>;	$r6 = r2.<com.google.javascript.jscomp.JsMessageVisitor$IcuMessageTemplateString: java.lang.String template>;	$i0 = virtualinvoke $r6.<java.lang.String: int length()>();	if i2 >= $i0 goto $r7 = new com.google.javascript.jscomp.JsMessageVisitor$ExtractedIcuTemplateParts;	$r7 = new com.google.javascript.jscomp.JsMessageVisitor$ExtractedIcuTemplateParts;	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet build()>();	$r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList build()>();	specialinvoke $r7.<com.google.javascript.jscomp.JsMessageVisitor$ExtractedIcuTemplateParts: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList)>($r9, $r8);	return $r7
;block_num 4
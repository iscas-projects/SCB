(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2742 0)
(declare-sort var1965 0)
(declare-sort var2014 0)
(declare-sort var1094 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun defaultNS/-1785025210 (var2742) String)
(declare-fun namespaceURIToPrefixLookup/-1785025210 (var2742) var2014)
(declare-fun var2014_get/1088891777 (var2014 var1094) var1094)
(declare-fun cast-from-String-to-var1094 (String) var1094)
(declare-fun cast-from-var1094-to-String (var1094) String)
(declare-const null-var2742 var2742)
(declare-const null-String String)
(declare-const var2423 var2742) ; Statement: r1 := @this: freemarker.template.Template 
(assert (not (= var2423 null-var2742)))
(declare-const var3689 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3689 null-String)))
 ; Statement: if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3689 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var1535 Int (length/-134980193 var3689)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r2 = r1.<freemarker.template.Template: java.lang.String defaultNS> 
(assert (not (= var1535 0))) ; Cond: $i0 != 0 
(define-const var1327 String (defaultNS/-1785025210 var2423)) ; Statement: $r2 = r1.<freemarker.template.Template: java.lang.String defaultNS> 
(assert true)
(define-const var3999 Bool (= var3689 var1327)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r3 = r1.<freemarker.template.Template: java.util.Map namespaceURIToPrefixLookup> 
(assert (= (ite var3999 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1502 var2014 (namespaceURIToPrefixLookup/-1785025210 var2423)) ; Statement: $r3 = r1.<freemarker.template.Template: java.util.Map namespaceURIToPrefixLookup> 
(define-const var3215 var1094 (var2014_get/1088891777 var1502 (cast-from-String-to-var1094 var3689))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var3113 String (cast-from-var1094-to-String var3215)) ; Statement: $r5 = (java.lang.String) $r4 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), defaultNS/-1785025210=([freemarker.template.Template], java.lang.String), namespaceURIToPrefixLookup/-1785025210=([freemarker.template.Template], java.util.Map), var2014_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1094=([java.lang.String], java.lang.Object), cast-from-var1094-to-String=([java.lang.Object], java.lang.String)}
; {var2742=freemarker.template.Template, var2423=r1, var3689=r0, var1965=null_type, var1535=$i0, var1327=$r2, var3999=$z0, var2014=java.util.Map, var1502=$r3, var1094=java.lang.Object, var3215=$r4, var3113=$r5}
; {freemarker.template.Template=var2742, r1=var2423, r0=var3689, null_type=var1965, $i0=var1535, $r2=var1327, $z0=var3999, java.util.Map=var2014, $r3=var1502, java.lang.Object=var1094, $r4=var3215, $r5=var3113}
;seq <java.lang.String: int length()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: freemarker.template.Template;	r0 := @parameter0: java.lang.String;	if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $r2 = r1.<freemarker.template.Template: java.lang.String defaultNS>;	$r2 = r1.<freemarker.template.Template: java.lang.String defaultNS>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r3 = r1.<freemarker.template.Template: java.util.Map namespaceURIToPrefixLookup>;	$r3 = r1.<freemarker.template.Template: java.util.Map namespaceURIToPrefixLookup>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	$r5 = (java.lang.String) $r4;	return $r5
;block_num 4
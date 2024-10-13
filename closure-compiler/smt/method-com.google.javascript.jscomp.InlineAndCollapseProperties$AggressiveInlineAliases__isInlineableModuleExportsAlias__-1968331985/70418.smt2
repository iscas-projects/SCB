(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1114 0)
(declare-sort var3045 0)
(declare-sort var1730 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFullName/-1697952982 (var3045) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1114 var1114)
(declare-const null-var3045 var3045)
(declare-const null-var1730 var1730)
(declare-const var246 var1114) ; Statement: r11 := @this: com.google.javascript.jscomp.InlineAndCollapseProperties$AggressiveInlineAliases 
(assert (not (= var246 null-var1114)))
(declare-const var1437 var3045) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.GlobalNamespace$Name 
(assert (not (= var1437 null-var3045)))
(declare-const var3745 var1730) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.ReferenceCollection 
(assert (not (= var3745 null-var1730)))
(assert true)
(define-const var3923 String (getFullName/-1697952982 var1437)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.GlobalNamespace$Name: java.lang.String getFullName()>() 
(assert true)
(define-const var1099 Bool (startsWith/-1785782452 var3923 "module$exports$")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("module$exports$") 
 ; Statement: if $z0 != 0 goto r12 = null 
(assert (not (not (= (ite var1099 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getFullName/-1697952982=([com.google.javascript.jscomp.GlobalNamespace$Name], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1114=com.google.javascript.jscomp.InlineAndCollapseProperties$AggressiveInlineAliases, var246=r11, var3045=com.google.javascript.jscomp.GlobalNamespace$Name, var1437=r0, var1730=com.google.javascript.jscomp.ReferenceCollection, var3745=r2, var3923=r1, var1099=$z0}
; {com.google.javascript.jscomp.InlineAndCollapseProperties$AggressiveInlineAliases=var1114, r11=var246, com.google.javascript.jscomp.GlobalNamespace$Name=var3045, r0=var1437, com.google.javascript.jscomp.ReferenceCollection=var1730, r2=var3745, r1=var3923, $z0=var1099}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.InlineAndCollapseProperties$AggressiveInlineAliases;	r0 := @parameter0: com.google.javascript.jscomp.GlobalNamespace$Name;	r2 := @parameter1: com.google.javascript.jscomp.ReferenceCollection;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.GlobalNamespace$Name: java.lang.String getFullName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("module$exports$");	if $z0 != 0 goto r12 = null;	return 0
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3832 0)
(declare-sort var2641 0)
(declare-sort var2989 0)
(declare-sort var1106 0)
(declare-sort var3525 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isStringLit/305832528 (var2641) Bool)
(declare-fun getString/-897720134 (var2641) String)
(declare-fun toLowerCase/1946809429 (String var2989) String)
(declare-fun var1106_of/1548539739 (var3525) var1106)
(declare-fun cast-from-String-to-var3525 (String) var3525)
(declare-const null-var3832 var3832)
(declare-const null-var2641 var2641)
(declare-const var2989-ROOT var2989)
(declare-const var2614 var3832) ; Statement: r21 := @this: com.google.javascript.jscomp.ConformanceRules$BanCreateDom 
(assert (not (= var2614 null-var3832)))
(declare-const var2052 var2641) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2052 null-var2641)))
(assert true)
(define-const var2229 Bool (isStringLit/305832528 var2052)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isStringLit()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
(assert (not (= (ite var2229 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1372 String (getString/-897720134 var2052)) ; Statement: $r18 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(define-const var803 var2989 var2989-ROOT) ; Statement: $r17 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3454 String (toLowerCase/1946809429 var1372 var803)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r17) 
(define-const var3068 var1106 (var1106_of/1548539739 (cast-from-String-to-var3525 var3454))) ; Statement: $r20 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet of(java.lang.Object)>($r19) 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {isStringLit/305832528=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1106_of/1548539739=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), cast-from-String-to-var3525=([java.lang.String], java.lang.Object)}
; {var3832=com.google.javascript.jscomp.ConformanceRules$BanCreateDom, var2614=r21, var2641=com.google.javascript.rhino.Node, var2052=r0, var2229=$z0, var1372=$r18, var2989=java.util.Locale, var803=$r17, var3454=$r19, var1106=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3525=java.lang.Object, var3068=$r20}
; {com.google.javascript.jscomp.ConformanceRules$BanCreateDom=var3832, r21=var2614, com.google.javascript.rhino.Node=var2641, r0=var2052, $z0=var2229, $r18=var1372, java.util.Locale=var2989, $r17=var803, $r19=var3454, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1106, java.lang.Object=var3525, $r20=var3068}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r21 := @this: com.google.javascript.jscomp.ConformanceRules$BanCreateDom;	r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isStringLit()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>();	$r18 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r17 = <java.util.Locale: java.util.Locale ROOT>;	$r19 = virtualinvoke $r18.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r17);	$r20 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet of(java.lang.Object)>($r19);	return $r20
;block_num 2
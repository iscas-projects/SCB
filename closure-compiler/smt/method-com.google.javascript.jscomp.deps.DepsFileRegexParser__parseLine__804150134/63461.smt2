(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2432 0)
(declare-sort var3930 0)
(declare-sort var1391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun shortcutMode/-2051469147 (var1391) Bool)
(declare-fun cast-from-var2432-to-var1391 (var2432) var1391)
(declare-const null-var2432 var2432)
(declare-const null-String String)
(declare-const var3230 var2432) ; Statement: r1 := @this: com.google.javascript.jscomp.deps.DepsFileRegexParser 
(assert (not (= var3230 null-var2432)))
(declare-const var3842 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3842 null-String)))
(define-const var2193 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(assert true)
(define-const var1850 Bool (contains/1009244746 var3842 (cast-from-String-to-String "addDependency"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("addDependency") 
 ; Statement: if $z0 == 0 goto $z7 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: boolean shortcutMode> 
(assert (= (ite var1850 1 0) 0)) ; Cond: $z0 == 0 
(define-const var568 Bool (shortcutMode/-2051469147 (cast-from-var2432-to-var1391 var3230))) ; Statement: $z7 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: boolean shortcutMode> 
 ; Statement: if $z7 == 0 goto $z8 = 1 
(assert (= (ite var568 1 0) 0)) ; Cond: $z7 == 0 
(define-const var3836 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= return $z8] 
(assert true) ; Non Conditional
 ; Statement: return $z8 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), shortcutMode/-2051469147=([com.google.javascript.jscomp.deps.JsFileLineParser], boolean), cast-from-var2432-to-var1391=([com.google.javascript.jscomp.deps.DepsFileRegexParser], com.google.javascript.jscomp.deps.JsFileLineParser)}
; {var2432=com.google.javascript.jscomp.deps.DepsFileRegexParser, var3230=r1, var3842=r0, var3930=null_type, var2193=z6, var1850=$z0, var1391=com.google.javascript.jscomp.deps.JsFileLineParser, var568=$z7, var3836=$z8}
; {com.google.javascript.jscomp.deps.DepsFileRegexParser=var2432, r1=var3230, r0=var3842, null_type=var3930, z6=var2193, $z0=var1850, com.google.javascript.jscomp.deps.JsFileLineParser=var1391, $z7=var568, $z8=var3836}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.deps.DepsFileRegexParser;	r0 := @parameter0: java.lang.String;	z6 = 0;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("addDependency");	if $z0 == 0 goto $z7 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: boolean shortcutMode>;	$z7 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: boolean shortcutMode>;	if $z7 == 0 goto $z8 = 1;	$z8 = 1;	goto [?= return $z8];	return $z8
;block_num 4
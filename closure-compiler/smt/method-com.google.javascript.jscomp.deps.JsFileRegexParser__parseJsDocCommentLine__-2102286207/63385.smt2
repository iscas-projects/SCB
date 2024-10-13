(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var116 0)
(declare-sort var1406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun includeGoogBase/-171477484 (var116) Bool)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun hasExternsAnnotation/-171477484 (var116) Bool)
(declare-const null-var116 var116)
(declare-const null-String String)
(declare-const var442 var116) ; Statement: r0 := @this: com.google.javascript.jscomp.deps.JsFileRegexParser 
(assert (not (= var442 null-var116)))
(declare-const var1920 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1920 null-String)))
(define-const var2603 Bool (includeGoogBase/-171477484 var442)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.deps.JsFileRegexParser: boolean includeGoogBase> 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@externs") 
(assert (= (ite var2603 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var602 Bool (contains/1009244746 var1920 (cast-from-String-to-String "@externs"))) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@externs") 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@nocompile") 
(assert (not (= (ite var602 1 0) 0))) ; Negate: Cond: $z1 == 0  
(declare-const var442!1 var116)
(assert (not (= var442!1 null-var116)))
(assert (= (hasExternsAnnotation/-171477484 var442!1) (ite (= 1 1) true false))) ; Statement: r0.<com.google.javascript.jscomp.deps.JsFileRegexParser: boolean hasExternsAnnotation> = 1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {includeGoogBase/-171477484=([com.google.javascript.jscomp.deps.JsFileRegexParser], boolean), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), hasExternsAnnotation/-171477484=([com.google.javascript.jscomp.deps.JsFileRegexParser], boolean)}
; {var116=com.google.javascript.jscomp.deps.JsFileRegexParser, var442=r0, var1920=r1, var1406=null_type, var2603=$z0, var602=$z1}
; {com.google.javascript.jscomp.deps.JsFileRegexParser=var116, r0=var442, r1=var1920, null_type=var1406, $z0=var2603, $z1=var602}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.deps.JsFileRegexParser;	r1 := @parameter0: java.lang.String;	$z0 = r0.<com.google.javascript.jscomp.deps.JsFileRegexParser: boolean includeGoogBase>;	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@externs");	$z1 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@externs");	if $z1 == 0 goto $z2 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@nocompile");	r0.<com.google.javascript.jscomp.deps.JsFileRegexParser: boolean hasExternsAnnotation> = 1;	return 0
;block_num 3
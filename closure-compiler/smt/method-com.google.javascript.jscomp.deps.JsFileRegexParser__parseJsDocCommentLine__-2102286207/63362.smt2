(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var761 0)
(declare-sort var3623 0)
(declare-sort var786 0)
(declare-sort var3390 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun includeGoogBase/-171477484 (var761) Bool)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun provides/-171477484 (var761) var786)
(declare-fun var786_add/328494887 (var786 var3390) Bool)
(declare-fun cast-from-String-to-var3390 (String) var3390)
(declare-const null-var761 var761)
(declare-const null-String String)
(declare-const var3737 var761) ; Statement: r0 := @this: com.google.javascript.jscomp.deps.JsFileRegexParser 
(assert (not (= var3737 null-var761)))
(declare-const var300 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var300 null-String)))
(define-const var2265 Bool (includeGoogBase/-171477484 var3737)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.deps.JsFileRegexParser: boolean includeGoogBase> 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@externs") 
(assert (not (= (ite var2265 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2212 Bool (contains/1009244746 var300 (cast-from-String-to-String "@provideGoog"))) ; Statement: $z3 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@provideGoog") 
 ; Statement: if $z3 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@externs") 
(assert (not (= (ite var2212 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var3230 var786 (provides/-171477484 var3737)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.deps.JsFileRegexParser: java.util.List provides> 
;(assert (var786_add/328494887 var3230 (cast-from-String-to-var3390 "goog"))) ; Statement: interfaceinvoke $r2.<java.util.List: boolean add(java.lang.Object)>("goog") 

(declare-const var3230!1 var786)
(declare-const var565 String)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {includeGoogBase/-171477484=([com.google.javascript.jscomp.deps.JsFileRegexParser], boolean), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), provides/-171477484=([com.google.javascript.jscomp.deps.JsFileRegexParser], java.util.List), var786_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3390=([java.lang.String], java.lang.Object)}
; {var761=com.google.javascript.jscomp.deps.JsFileRegexParser, var3737=r0, var300=r1, var3623=null_type, var2265=$z0, var2212=$z3, var786=java.util.List, var3230=$r2, var3390=java.lang.Object, var565="goog"}
; {com.google.javascript.jscomp.deps.JsFileRegexParser=var761, r0=var3737, r1=var300, null_type=var3623, $z0=var2265, $z3=var2212, java.util.List=var786, $r2=var3230, java.lang.Object=var3390, "goog"=var565}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.deps.JsFileRegexParser;	r1 := @parameter0: java.lang.String;	$z0 = r0.<com.google.javascript.jscomp.deps.JsFileRegexParser: boolean includeGoogBase>;	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@externs");	$z3 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@provideGoog");	if $z3 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@externs");	$r2 = r0.<com.google.javascript.jscomp.deps.JsFileRegexParser: java.util.List provides>;	interfaceinvoke $r2.<java.util.List: boolean add(java.lang.Object)>("goog");	return 0
;block_num 3
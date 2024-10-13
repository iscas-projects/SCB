(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2795 0)
(declare-sort var3763 0)
(declare-sort var1981 0)
(declare-sort var2745 0)
(declare-sort var2141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun maybeWarnForFeature/2081553663 (var2795 var2141 var2745) void)
(declare-fun cast-from-var1981-to-var2141 (var1981) var2141)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var2795 var2795)
(declare-const null-String String)
(declare-const null-var1981 var1981)
(declare-const var2745-NUMERIC_SEPARATOR var2745)
(declare-const var215 var2795) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.IRFactory 
(assert (not (= var215 null-var2795)))
(declare-const var1368 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1368 null-String)))
(declare-const var2431 var1981) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.parsing.parser.LiteralToken 
(assert (not (= var2431 null-var1981)))
(define-const var367 var2745 var2745-NUMERIC_SEPARATOR) ; Statement: $r2 = <com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature: com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature NUMERIC_SEPARATOR> 
(assert true)
;(assert (maybeWarnForFeature/2081553663 var215 (cast-from-var1981-to-var2141 var2431) var367)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.parsing.IRFactory: void maybeWarnForFeature(com.google.javascript.jscomp.parsing.parser.Token,com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature)>(r1, $r2) 

(declare-const var215!1 var2795)
(declare-const var2431!1 var1981)
(declare-const var367!1 var2745)
(assert true)
(define-const var1258 String (replace/2138489945 var1368 (cast-from-String-to-String "_") (cast-from-String-to-String ""))) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("_", "") 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {maybeWarnForFeature/2081553663=([com.google.javascript.jscomp.parsing.IRFactory, com.google.javascript.jscomp.parsing.parser.Token, com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature], void), cast-from-var1981-to-var2141=([com.google.javascript.jscomp.parsing.parser.LiteralToken], com.google.javascript.jscomp.parsing.parser.Token), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2795=com.google.javascript.jscomp.parsing.IRFactory, var215=r0, var1368=r3, var3763=null_type, var1981=com.google.javascript.jscomp.parsing.parser.LiteralToken, var2431=r1, var2745=com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature, var367=$r2, var2141=com.google.javascript.jscomp.parsing.parser.Token, var1258=$r4}
; {com.google.javascript.jscomp.parsing.IRFactory=var2795, r0=var215, r3=var1368, null_type=var3763, com.google.javascript.jscomp.parsing.parser.LiteralToken=var1981, r1=var2431, com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature=var2745, $r2=var367, com.google.javascript.jscomp.parsing.parser.Token=var2141, $r4=var1258}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.IRFactory;	r3 := @parameter0: java.lang.String;	r1 := @parameter1: com.google.javascript.jscomp.parsing.parser.LiteralToken;	$r2 = <com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature: com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature NUMERIC_SEPARATOR>;	virtualinvoke r0.<com.google.javascript.jscomp.parsing.IRFactory: void maybeWarnForFeature(com.google.javascript.jscomp.parsing.parser.Token,com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature)>(r1, $r2);	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("_", "");	return $r4
;block_num 1
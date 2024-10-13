(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/-1721619322 (var3123) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3123 var3123)
(declare-const var3455 var3123) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$Text 
(assert (not (= var3455 null-var3123)))
(define-const var949 String (text/-1721619322 var3455)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$Text: java.lang.String text> 
(assert true)
(define-const var338 Int (hashCode/-467973558 var949)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3030 Int (bv2nat (bvxor ((_ int2bv 64) var338) ((_ int2bv 64) 102228752)))) ; Statement: $i1 = $i0 ^ 102228752 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {text/-1721619322=([com.google.javascript.jscomp.regex.RegExpTree$Text], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3123=com.google.javascript.jscomp.regex.RegExpTree$Text, var3455=r0, var949=$r1, var338=$i0, var3030=$i1}
; {com.google.javascript.jscomp.regex.RegExpTree$Text=var3123, r0=var3455, $r1=var949, $i0=var338, $i1=var3030}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$Text;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$Text: java.lang.String text>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$i1 = $i0 ^ 102228752;	return $i1
;block_num 1
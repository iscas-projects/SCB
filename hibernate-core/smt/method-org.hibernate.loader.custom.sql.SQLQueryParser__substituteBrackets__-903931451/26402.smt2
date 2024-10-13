(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3744 0)
(declare-sort var2581 0)
(declare-sort var3794 0)
(declare-sort var575 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun matcher/468719934 (var3794 String) var575)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var575) Bool)
(declare-const null-var3744 var3744)
(declare-const null-String String)
(declare-const var3744-PREPARED_STATEMENT_PATTERN var3794)
(declare-const var2843 var3744) ; Statement: r5 := @this: org.hibernate.loader.custom.sql.SQLQueryParser 
(assert (not (= var2843 null-var3744)))
(declare-const var2868 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2868 null-String)))
(define-const var974 var3794 var3744-PREPARED_STATEMENT_PATTERN) ; Statement: $r1 = <org.hibernate.loader.custom.sql.SQLQueryParser: java.util.regex.Pattern PREPARED_STATEMENT_PATTERN> 
(assert true)
(define-const var1387 String (trim/-847153721 var2868)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1173 var575 (matcher/468719934 var974 (cast-from-String-to-String var1387))) ; Statement: $r3 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r2) 
(assert true)
(define-const var3357 Bool (matches/-149940873 var1173)) ; Statement: $z0 = virtualinvoke $r3.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z0 == 0 goto $r44 = new java.lang.StringBuilder 
(assert (not (= (ite var3357 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean)}
; {var3744=org.hibernate.loader.custom.sql.SQLQueryParser, var2843=r5, var2868=r0, var2581=null_type, var3794=java.util.regex.Pattern, var974=$r1, var1387=$r2, var575=java.util.regex.Matcher, var1173=$r3, var3357=$z0}
; {org.hibernate.loader.custom.sql.SQLQueryParser=var3744, r5=var2843, r0=var2868, null_type=var2581, java.util.regex.Pattern=var3794, $r1=var974, $r2=var1387, java.util.regex.Matcher=var575, $r3=var1173, $z0=var3357}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r5 := @this: org.hibernate.loader.custom.sql.SQLQueryParser;	r0 := @parameter0: java.lang.String;	$r1 = <org.hibernate.loader.custom.sql.SQLQueryParser: java.util.regex.Pattern PREPARED_STATEMENT_PATTERN>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$r3 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r2);	$z0 = virtualinvoke $r3.<java.util.regex.Matcher: boolean matches()>();	if $z0 == 0 goto $r44 = new java.lang.StringBuilder;	return r0
;block_num 2
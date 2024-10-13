(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1182064282 (String) void)
(define-const var544 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/-1182064282 var544)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>()>() 

(declare-const var544!1 String)
(define-const var3066 String var544!1) ; Statement: <freemarker.core._DelayedConversionToString: java.lang.String NOT_SET> = $r0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-1182064282=([java.lang.String], void)}
; {var544=$r0, var3066=<freemarker.core._DelayedConversionToString: java.lang.String NOT_SET>}
; {$r0=var544, <freemarker.core._DelayedConversionToString: java.lang.String NOT_SET>=var3066}
;seq <java.lang.String: void <init>()>
;cnt {"<java.lang.String: void <init>()>": 1}
;stmts $r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>()>();	<freemarker.core._DelayedConversionToString: java.lang.String NOT_SET> = $r0;	return
;block_num 1
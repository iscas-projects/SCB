(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3815 0)
(declare-sort var3569 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sqlBuilder/-2068210809 (var3815) var3569)
(declare-fun toString/-2140704992 (var3569) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var3815 var3815)
(declare-const var1573 var3815) ; Statement: r0 := @this: org.apache.ibatis.scripting.xmltags.DynamicContext 
(assert (not (= var1573 null-var3815)))
(define-const var3251 var3569 (sqlBuilder/-2068210809 var1573)) ; Statement: $r1 = r0.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.StringJoiner sqlBuilder> 
(assert true)
(define-const var1132 String (toString/-2140704992 var3251)) ; Statement: $r2 = virtualinvoke $r1.<java.util.StringJoiner: java.lang.String toString()>() 
(assert true)
(define-const var2523 String (trim/-847153721 var1132)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {sqlBuilder/-2068210809=([org.apache.ibatis.scripting.xmltags.DynamicContext], java.util.StringJoiner), toString/-2140704992=([java.util.StringJoiner], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var3815=org.apache.ibatis.scripting.xmltags.DynamicContext, var1573=r0, var3569=java.util.StringJoiner, var3251=$r1, var1132=$r2, var2523=$r3}
; {org.apache.ibatis.scripting.xmltags.DynamicContext=var3815, r0=var1573, java.util.StringJoiner=var3569, $r1=var3251, $r2=var1132, $r3=var2523}
;seq <java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: org.apache.ibatis.scripting.xmltags.DynamicContext;	$r1 = r0.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.StringJoiner sqlBuilder>;	$r2 = virtualinvoke $r1.<java.util.StringJoiner: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	return $r3
;block_num 1
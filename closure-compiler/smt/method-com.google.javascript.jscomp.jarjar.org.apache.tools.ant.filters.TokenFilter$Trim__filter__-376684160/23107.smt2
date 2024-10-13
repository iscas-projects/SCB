(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3917 0)
(declare-sort var1081 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var3917 var3917)
(declare-const null-String String)
(declare-const var1052 var3917) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$Trim 
(assert (not (= var1052 null-var3917)))
(declare-const var1335 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1335 null-String)))
(assert true)
(define-const var1312 String (trim/-847153721 var1335)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String)}
; {var3917=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$Trim, var1052=r2, var1335=r0, var1081=null_type, var1312=$r1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$Trim=var3917, r2=var1052, r0=var1335, null_type=var1081, $r1=var1312}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$Trim;	r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	return $r1
;block_num 1
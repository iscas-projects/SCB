(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2147 0)
(declare-sort var3022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun name/-1608030493 (var2147) String)
(declare-const null-var2147 var2147)
(declare-const null-String String)
(declare-const var3950 var2147) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission 
(assert (not (= var3950 null-var2147)))
(declare-const var341 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var341 null-String)))
(assert true)
(define-const var3293 String (trim/-847153721 var341)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>() 
(declare-const var3950!1 var2147)
(assert (not (= var3950!1 null-var2147)))
(assert (= (name/-1608030493 var3950!1) var3293)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String name> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), name/-1608030493=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission], java.lang.String)}
; {var2147=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission, var3950=r0, var341=r1, var3022=null_type, var3293=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission=var2147, r0=var3950, r1=var341, null_type=var3022, $r2=var3293}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String name> = $r2;	return
;block_num 1
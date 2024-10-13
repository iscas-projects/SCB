(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3423 0)
(declare-sort var2479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var3423 var3423)
(declare-const null-String String)
(declare-const var3806 var3423) ; Statement: r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder 
(assert (not (= var3806 null-var3423)))
(declare-const var2326 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2326 null-String)))
(assert true)
(define-const var2091 String (trim/-847153721 var2326)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var829 Bool (startsWith/-1785782452 var2091 "and ")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("and ") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean endsWith(java.lang.String)>(" and") 
(assert (= (ite var829 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1780 Bool (endsWith/985337093 var2091 " and")) ; Statement: $z1 = virtualinvoke r2.<java.lang.String: boolean endsWith(java.lang.String)>(" and") 
 ; Statement: if $z1 == 0 goto return r2 
(assert (= (ite var1780 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3423=org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, var3806=r0, var2326=r1, var2479=null_type, var2091=r2, var829=$z0, var1780=$z1}
; {org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder=var3423, r0=var3806, r1=var2326, null_type=var2479, r2=var2091, $z0=var829, $z1=var1780}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder;	r1 := @parameter0: java.lang.String;	r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("and ");	if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean endsWith(java.lang.String)>(" and");	$z1 = virtualinvoke r2.<java.lang.String: boolean endsWith(java.lang.String)>(" and");	if $z1 == 0 goto return r2;	return r2
;block_num 3
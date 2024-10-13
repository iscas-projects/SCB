(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var492 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var492 var492)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1886 var492) ; Statement: r2 := @this: org.hibernate.hql.internal.ast.tree.CollectionFunction 
(assert (not (= var1886 null-var492)))
(declare-const var882 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var882 null-__Array__Int__String__)))
(define-const var900 String (select var882 0)) ; Statement: $r1 = r0[0] 
(assert true)
(define-const var990 String (trim/-847153721 var900)) ; Statement: r3 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1275 Bool (startsWith/-1785782452 var990 "(")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>("(") 
 ; Statement: if $z0 == 0 goto r0[0] = r3 
(assert (= (ite var1275 1 0) 0)) ; Cond: $z0 == 0 
(declare-const var882!1 (Array Int String))
(assert (not (= var882!1 null-__Array__Int__String__)))
(assert (= (select var882!1 0) var990)) ; Statement: r0[0] = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var492=org.hibernate.hql.internal.ast.tree.CollectionFunction, var1886=r2, var882=r0, var900=$r1, var990=r3, var1275=$z0}
; {org.hibernate.hql.internal.ast.tree.CollectionFunction=var492, r2=var1886, r0=var882, $r1=var900, r3=var990, $z0=var1275}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.hql.internal.ast.tree.CollectionFunction;	r0 := @parameter0: java.lang.String[];	$r1 = r0[0];	r3 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>("(");	if $z0 == 0 goto r0[0] = r3;	r0[0] = r3;	return
;block_num 2
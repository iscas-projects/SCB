(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2194 0)
(declare-sort var32 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var2194 var2194)
(declare-const null-String String)
(declare-const var1887 var2194) ; Statement: r0 := @this: org.hibernate.sql.QuerySelect 
(assert (not (= var1887 null-var2194)))
(declare-const var2204 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2204 null-String)))
(assert true)
(define-const var740 Int (length/-134980193 var2204)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>() 
(assert (<= var740 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var575 String (trim/-847153721 var2204)) ; Statement: $r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1986 Int (length/-134980193 var575)) ; Statement: $i3 = virtualinvoke $r5.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= 0 goto return 
(assert (<= var1986 0)) ; Cond: $i3 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), trim/-847153721=([java.lang.String], java.lang.String)}
; {var2194=org.hibernate.sql.QuerySelect, var1887=r0, var2204=r4, var32=null_type, var740=$i0, var575=$r5, var1986=$i3}
; {org.hibernate.sql.QuerySelect=var2194, r0=var1887, r4=var2204, null_type=var32, $i0=var740, $r5=var575, $i3=var1986}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: org.hibernate.sql.QuerySelect;	r4 := @parameter0: java.lang.String;	$i0 = virtualinvoke r4.<java.lang.String: int length()>();	if $i0 <= 0 goto $r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>();	$r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>();	$i3 = virtualinvoke $r5.<java.lang.String: int length()>();	if $i3 <= 0 goto return;	return
;block_num 3
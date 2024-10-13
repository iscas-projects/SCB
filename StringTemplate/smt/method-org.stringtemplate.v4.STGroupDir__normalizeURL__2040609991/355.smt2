(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3620 0)
(declare-sort var2672 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1839352374 (var2672) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var3620 var3620)
(declare-const null-var2672 var2672)
(declare-const var2748 var3620) ; Statement: r4 := @this: org.stringtemplate.v4.STGroupDir 
(assert (not (= var2748 null-var3620)))
(declare-const var1004 var2672) ; Statement: r10 := @parameter0: java.net.URL 
(assert (not (= var1004 null-var2672)))
(assert true)
(define-const var2715 String (toString/-1839352374 var1004)) ; Statement: r0 = virtualinvoke r10.<java.net.URL: java.lang.String toString()>() 
(assert true)
(define-const var2965 Bool (endsWith/985337093 var2715 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto return r10 
(assert (= (ite var2965 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1839352374=([java.net.URL], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3620=org.stringtemplate.v4.STGroupDir, var2748=r4, var2672=java.net.URL, var1004=r10, var2715=r0, var2965=$z0}
; {org.stringtemplate.v4.STGroupDir=var3620, r4=var2748, java.net.URL=var2672, r10=var1004, r0=var2715, $z0=var2965}
;seq <java.net.URL: java.lang.String toString()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r4 := @this: org.stringtemplate.v4.STGroupDir;	r10 := @parameter0: java.net.URL;	r0 = virtualinvoke r10.<java.net.URL: java.lang.String toString()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/");	if $z0 == 0 goto return r10;	return r10
;block_num 2
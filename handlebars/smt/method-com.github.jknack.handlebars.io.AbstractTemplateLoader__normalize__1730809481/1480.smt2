(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var914 0)
(declare-sort var3721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1749764803 (String) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var914 var914)
(declare-const null-String String)
(declare-const var19 var914) ; Statement: r3 := @this: com.github.jknack.handlebars.io.AbstractTemplateLoader 
(assert (not (= var19 null-var914)))
(declare-const var346 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var346 null-String)))
(assert true)
(define-const var1749 String (toString/-1749764803 var346)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String toString()>() 
(assert true)
(define-const var3384 Bool (startsWith/-1785782452 var1749 "/")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto return r0 
(assert (= (ite var3384 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1749764803=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var914=com.github.jknack.handlebars.io.AbstractTemplateLoader, var19=r3, var346=r0, var3721=null_type, var1749=$r1, var3384=$z0}
; {com.github.jknack.handlebars.io.AbstractTemplateLoader=var914, r3=var19, r0=var346, null_type=var3721, $r1=var1749, $z0=var3384}
;seq <java.lang.String: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toString()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.github.jknack.handlebars.io.AbstractTemplateLoader;	r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String toString()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto return r0;	return r0
;block_num 2
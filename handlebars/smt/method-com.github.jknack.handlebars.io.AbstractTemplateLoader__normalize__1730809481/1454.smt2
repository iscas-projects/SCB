(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3092 0)
(declare-sort var1922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1749764803 (String) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var3092 var3092)
(declare-const null-String String)
(declare-const var2145 var3092) ; Statement: r3 := @this: com.github.jknack.handlebars.io.AbstractTemplateLoader 
(assert (not (= var2145 null-var3092)))
(declare-const var3705 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3705 null-String)))
(assert true)
(define-const var2090 String (toString/-1749764803 var3705)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String toString()>() 
(assert true)
(define-const var1015 Bool (startsWith/-1785782452 var2090 "/")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto return r0 
(assert (not (= (ite var1015 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert (and true (and (>= 1 0) (>= (str.len var3705) 1))))
(define-const var3223 String (substring/850833817 var3705 1)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1749764803=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3092=com.github.jknack.handlebars.io.AbstractTemplateLoader, var2145=r3, var3705=r0, var1922=null_type, var2090=$r1, var1015=$z0, var3223=$r2}
; {com.github.jknack.handlebars.io.AbstractTemplateLoader=var3092, r3=var2145, r0=var3705, null_type=var1922, $r1=var2090, $z0=var1015, $r2=var3223}
;seq <java.lang.String: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String toString()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r3 := @this: com.github.jknack.handlebars.io.AbstractTemplateLoader;	r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String toString()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto return r0;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1);	return $r2
;block_num 2
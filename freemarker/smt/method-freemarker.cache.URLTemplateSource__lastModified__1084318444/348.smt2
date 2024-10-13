(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1609 0)
(declare-sort var1930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun conn/-1791200080 (var1609) var1930)
(declare-fun getLastModified/1108688794 (var1930) Int)
(declare-const null-var1609 var1609)
(declare-const var3750 var1609) ; Statement: r0 := @this: freemarker.cache.URLTemplateSource 
(assert (not (= var3750 null-var1609)))
(define-const var916 var1930 (conn/-1791200080 var3750)) ; Statement: $r1 = r0.<freemarker.cache.URLTemplateSource: java.net.URLConnection conn> 
(define-const var2479 Bool false) ; Statement: $z0 = $r1 instanceof java.net.JarURLConnection 
 ; Statement: if $z0 == 0 goto $r2 = r0.<freemarker.cache.URLTemplateSource: java.net.URLConnection conn> 
(assert (= (ite var2479 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3612 var1930 (conn/-1791200080 var3750)) ; Statement: $r2 = r0.<freemarker.cache.URLTemplateSource: java.net.URLConnection conn> 
(assert true)
(define-const var2778 Int (getLastModified/1108688794 var3612)) ; Statement: l4 = virtualinvoke $r2.<java.net.URLConnection: long getLastModified()>() 
(define-const var414 Int (ite (> var2778 (- 1)) 1 (ite (< var2778 (- 1)) (- 1) 0))) ; Statement: $b0 = l4 cmp -1L 
 ; Statement: if $b0 != 0 goto return l4 
(assert (not (= var414 0))) ; Cond: $b0 != 0 
 ; Statement: return l4 
(check-sat)
(get-model)
(get-unsat-core)
; {conn/-1791200080=([freemarker.cache.URLTemplateSource], java.net.URLConnection), getLastModified/1108688794=([java.net.URLConnection], long)}
; {var1609=freemarker.cache.URLTemplateSource, var3750=r0, var1930=java.net.URLConnection, var916=$r1, var2479=$z0, var3612=$r2, var2778=l4, var414=$b0}
; {freemarker.cache.URLTemplateSource=var1609, r0=var3750, java.net.URLConnection=var1930, $r1=var916, $z0=var2479, $r2=var3612, l4=var2778, $b0=var414}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.cache.URLTemplateSource;	$r1 = r0.<freemarker.cache.URLTemplateSource: java.net.URLConnection conn>;	$z0 = $r1 instanceof java.net.JarURLConnection;	if $z0 == 0 goto $r2 = r0.<freemarker.cache.URLTemplateSource: java.net.URLConnection conn>;	$r2 = r0.<freemarker.cache.URLTemplateSource: java.net.URLConnection conn>;	l4 = virtualinvoke $r2.<java.net.URLConnection: long getLastModified()>();	$b0 = l4 cmp -1L;	if $b0 != 0 goto return l4;	return l4
;block_num 3
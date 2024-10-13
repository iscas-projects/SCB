(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3027 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-29768105 (var3027) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3027 var3027)
(declare-const var3638 var3027) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry 
(assert (not (= var3638 null-var3027)))
(assert true)
(define-const var1731 String (getName/-29768105 var3638)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: java.lang.String getName()>() 
(assert true)
(define-const var2476 Bool (startsWith/-1785782452 var1731 "META-INF/")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("META-INF/") 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var2476 1 0) 0)) ; Cond: $z0 == 0 
(define-const var602 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-29768105=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3027=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry, var3638=r0, var1731=$r1, var2476=$z0, var602=$z2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry=var3027, r0=var3638, $r1=var1731, $z0=var2476, $z2=var602}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("META-INF/");	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3
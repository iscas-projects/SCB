(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3566 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1096020831 (var3566) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3566 var3566)
(declare-const var2643 var3566) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert (not (= var2643 null-var3566)))
(declare-const var864 var3566) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert (not (= var864 null-var3566)))
(assert true)
(define-const var726 String (getName/1096020831 var864)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String getName()>() 
(assert true)
(define-const var2353 String (getName/1096020831 var2643)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String getName()>() 
(assert true)
(define-const var440 Bool (startsWith/-1785782452 var726 var2353)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1096020831=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3566=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, var2643=r1, var864=r0, var726=$r3, var2353=$r2, var440=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry=var3566, r1=var2643, r0=var864, $r3=var726, $r2=var2353, $z0=var440}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String getName()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String getName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>($r2);	return $z0
;block_num 1
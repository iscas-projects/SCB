(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-29768105 (var386) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var386 var386)
(declare-const var1071 var386) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry 
(assert (not (= var1071 null-var386)))
(assert true)
(define-const var958 String (getName/-29768105 var1071)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: java.lang.String getName()>() 
(assert true)
(define-const var3678 Bool (endsWith/985337093 var958 "/")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-29768105=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var386=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry, var1071=r0, var958=$r1, var3678=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry=var386, r0=var1071, $r1=var958, $z0=var3678}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>("/");	return $z0
;block_num 1
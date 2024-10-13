(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var78 0)
(declare-sort var2258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/726562231 (var2258) String)
(declare-fun cast-from-var78-to-var2258 (var78) var2258)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-var78 var78)
(declare-const var219 var78) ; Statement: r0 := @parameter0: java.util.jar.JarEntry 
(assert (not (= var219 null-var78)))
(assert true)
(define-const var1336 String (getName/726562231 (cast-from-var78-to-var2258 var219))) ; Statement: $r1 = virtualinvoke r0.<java.util.jar.JarEntry: java.lang.String getName()>() 
(assert true)
(define-const var1025 String (replace/1524665721 var1336 92 47)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/726562231=([java.util.zip.ZipEntry], java.lang.String), cast-from-var78-to-var2258=([java.util.jar.JarEntry], java.util.zip.ZipEntry), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var78=java.util.jar.JarEntry, var219=r0, var2258=java.util.zip.ZipEntry, var1336=$r1, var1025=$r2}
; {java.util.jar.JarEntry=var78, r0=var219, java.util.zip.ZipEntry=var2258, $r1=var1336, $r2=var1025}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @parameter0: java.util.jar.JarEntry;	$r1 = virtualinvoke r0.<java.util.jar.JarEntry: java.lang.String getName()>();	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	return $r2
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1222 0)
(declare-sort var3348 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/726562231 (var3348) String)
(declare-fun cast-from-var1222-to-var3348 (var1222) var3348)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-var1222 var1222)
(declare-const var1302 var1222) ; Statement: r0 := @parameter0: java.util.jar.JarEntry 
(assert (not (= var1302 null-var1222)))
(assert true)
(define-const var461 String (getName/726562231 (cast-from-var1222-to-var3348 var1302))) ; Statement: $r1 = virtualinvoke r0.<java.util.jar.JarEntry: java.lang.String getName()>() 
(assert true)
(define-const var1633 String (replace/1524665721 var461 92 47)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/726562231=([java.util.zip.ZipEntry], java.lang.String), cast-from-var1222-to-var3348=([java.util.jar.JarEntry], java.util.zip.ZipEntry), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var1222=java.util.jar.JarEntry, var1302=r0, var3348=java.util.zip.ZipEntry, var461=$r1, var1633=$r2}
; {java.util.jar.JarEntry=var1222, r0=var1302, java.util.zip.ZipEntry=var3348, $r1=var461, $r2=var1633}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @parameter0: java.util.jar.JarEntry;	$r1 = virtualinvoke r0.<java.util.jar.JarEntry: java.lang.String getName()>();	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	return $r2
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1962 0)
(declare-sort var613 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classNode/1149045424 (var1962) var613)
(declare-fun name/500574324 (var613) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var1962 var1962)
(declare-const var1075 var1962) ; Statement: r0 := @this: jdk.jfr.internal.EventInstrumentation 
(assert (not (= var1075 null-var1962)))
(define-const var414 var613 (classNode/1149045424 var1075)) ; Statement: $r1 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode> 
(define-const var2570 String (name/500574324 var414)) ; Statement: $r2 = $r1.<jdk.internal.org.objectweb.asm.tree.ClassNode: java.lang.String name> 
(assert true)
(define-const var2754 String (replace/2138489945 var2570 (cast-from-String-to-String "/") (cast-from-String-to-String "."))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("/", ".") 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {classNode/1149045424=([jdk.jfr.internal.EventInstrumentation], jdk.internal.org.objectweb.asm.tree.ClassNode), name/500574324=([jdk.internal.org.objectweb.asm.tree.ClassNode], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1962=jdk.jfr.internal.EventInstrumentation, var1075=r0, var613=jdk.internal.org.objectweb.asm.tree.ClassNode, var414=$r1, var2570=$r2, var2754=$r3}
; {jdk.jfr.internal.EventInstrumentation=var1962, r0=var1075, jdk.internal.org.objectweb.asm.tree.ClassNode=var613, $r1=var414, $r2=var2570, $r3=var2754}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r0 := @this: jdk.jfr.internal.EventInstrumentation;	$r1 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode>;	$r2 = $r1.<jdk.internal.org.objectweb.asm.tree.ClassNode: java.lang.String name>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("/", ".");	return $r3
;block_num 1
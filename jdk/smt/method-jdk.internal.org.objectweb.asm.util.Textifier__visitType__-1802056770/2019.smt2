(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var401 0)
(declare-sort var500 0)
(declare-sort var3162 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3162) String)
(declare-fun cast-from-var401-to-var3162 (var401) var3162)
(declare-fun getClassName/-1584732765 (var500) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var401 var401)
(declare-const null-var500 var500)
(declare-const var1919 var401) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var1919 null-var401)))
(declare-const var2567 var500) ; Statement: r1 := @parameter0: jdk.internal.org.objectweb.asm.Type 
(assert (not (= var2567 null-var500)))
(define-const var2837 String (buf/-10557480 (cast-from-var401-to-var3162 var1919))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var236 String (getClassName/-1584732765 var2567)) ; Statement: $r3 = virtualinvoke r1.<jdk.internal.org.objectweb.asm.Type: java.lang.String getClassName()>() 
(assert true)
(define-const var2403 String (append/1560614132 var2837 var236)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var2837!1 String)
(assert (str.prefixof var2837 var2837!1))
(assert true)
;(assert (append/1560614132 var2403 ".class")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".class") 
(declare-const var2403!1 String)
(assert (str.prefixof var2403 var2403!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var401-to-var3162=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), getClassName/-1584732765=([jdk.internal.org.objectweb.asm.Type], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var401=jdk.internal.org.objectweb.asm.util.Textifier, var1919=r0, var500=jdk.internal.org.objectweb.asm.Type, var2567=r1, var3162=jdk.internal.org.objectweb.asm.util.Printer, var2837=$r2, var236=$r3, var2403=$r4}
; {jdk.internal.org.objectweb.asm.util.Textifier=var401, r0=var1919, jdk.internal.org.objectweb.asm.Type=var500, r1=var2567, jdk.internal.org.objectweb.asm.util.Printer=var3162, $r2=var2837, $r3=var236, $r4=var2403}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r1 := @parameter0: jdk.internal.org.objectweb.asm.Type;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r3 = virtualinvoke r1.<jdk.internal.org.objectweb.asm.Type: java.lang.String getClassName()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".class");	return
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2941 0)
(declare-sort var2621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun declaration/170212153 (var2941) String)
(declare-fun separator/170212153 (var2941) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun argumentStack/170212153 (var2941) Int)
(declare-const null-var2941 var2941)
(declare-const null-String String)
(declare-const var20 var2941) ; Statement: r2 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var20 null-var2941)))
(declare-const var1290 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1290 null-String)))
(define-const var2790 String "java/lang/Object") ; Statement: $r1 = "java/lang/Object" 
(assert true)
(define-const var3879 Bool (= var2790 var1290)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = r2.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert (= (ite var3879 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1584 String (declaration/170212153 var20)) ; Statement: $r4 = r2.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(define-const var1743 String (separator/170212153 var20)) ; Statement: $r3 = r2.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.String separator> 
(assert true)
(define-const var935 String (append/1560614132 var1584 var1743)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var1584!1 String)
(assert (str.prefixof var1584 var1584!1))
(assert true)
(define-const var3854 String (replace/1524665721 var1290 47 46)) ; Statement: $r5 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(assert true)
;(assert (append/1560614132 var935 var3854)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var935!1 String)
(assert (str.prefixof var935 var935!1))
(assert true) ; Non Conditional
(declare-const var20!1 var2941)
(assert (not (= var20!1 null-var2941)))
(assert (= (separator/170212153 var20!1) "")) ; Statement: r2.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.String separator> = "" 
(define-const var3115 Int (argumentStack/170212153 var20!1)) ; Statement: $i0 = r2.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> 
(define-const var3135 Int (* var3115 2)) ; Statement: $i1 = $i0 * 2 
(declare-const var20!2 var2941)
(assert (not (= var20!2 null-var2941)))
(assert (= (argumentStack/170212153 var20!2) var3135)) ; Statement: r2.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> = $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), separator/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), replace/1524665721=([java.lang.String, char, char], java.lang.String), argumentStack/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], int)}
; {var2941=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var20=r2, var1290=r0, var2621=null_type, var2790=$r1, var3879=$z0, var1584=$r4, var1743=$r3, var935=$r6, var3854=$r5, var3115=$i0, var3135=$i1}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var2941, r2=var20, r0=var1290, null_type=var2621, $r1=var2790, $z0=var3879, $r4=var1584, $r3=var1743, $r6=var935, $r5=var3854, $i0=var3115, $i1=var3135}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r2 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	r0 := @parameter0: java.lang.String;	$r1 = "java/lang/Object";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r4 = r2.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	$r4 = r2.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	$r3 = r2.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.String separator>;	$r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r5 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	r2.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.String separator> = "";	$i0 = r2.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack>;	$i1 = $i0 * 2;	r2.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> = $i1;	return
;block_num 3
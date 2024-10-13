(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3683 0)
(declare-sort var96 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun argumentStack/170212153 (var3683) Int)
(declare-fun declaration/170212153 (var3683) String)
(declare-fun append/1183289509 (String Int) String)
(declare-fun separator/170212153 (var3683) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-var3683 var3683)
(declare-const null-String String)
(declare-const var2659 var3683) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var2659 null-var3683)))
(declare-const var947 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var947 null-String)))
(define-const var3135 Int (argumentStack/170212153 var2659)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> 
(define-const var3114 Int (mod var3135 2)) ; Statement: $i1 = $i0 % 2 
 ; Statement: if $i1 == 0 goto $i2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> 
(assert (= var3114 0)) ; Cond: $i1 == 0 
(define-const var3032 Int (argumentStack/170212153 var2659)) ; Statement: $i2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> 
(define-const var2721 Int (div var3032 2)) ; Statement: $i3 = $i2 / 2 
(declare-const var2659!1 var3683)
(assert (not (= var2659!1 null-var3683)))
(assert (= (argumentStack/170212153 var2659!1) var2721)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> = $i3 
(define-const var2028 String (declaration/170212153 var2659!1)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1183289509 var2028 46)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46) 

(declare-const var2028!1 String)
(declare-const var1898 Int)
(define-const var1548 String (declaration/170212153 var2659!1)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(define-const var2118 String (separator/170212153 var2659!1)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.String separator> 
(assert true)
(define-const var1101 String (append/1560614132 var1548 var2118)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1548!1 String)
(assert (str.prefixof var1548 var1548!1))
(assert true)
(define-const var937 String (replace/1524665721 var947 47 46)) ; Statement: $r5 = virtualinvoke r4.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(assert true)
;(assert (append/1560614132 var1101 var937)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var1101!1 String)
(assert (str.prefixof var1101 var1101!1))
(declare-const var2659!2 var3683)
(assert (not (= var2659!2 null-var3683)))
(assert (= (separator/170212153 var2659!2) "")) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.String separator> = "" 
(define-const var2032 Int (argumentStack/170212153 var2659!2)) ; Statement: $i4 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> 
(define-const var489 Int (* var2032 2)) ; Statement: $i5 = $i4 * 2 
(declare-const var2659!3 var3683)
(assert (not (= var2659!3 null-var3683)))
(assert (= (argumentStack/170212153 var2659!3) var489)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> = $i5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {argumentStack/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], int), declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), separator/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var3683=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var2659=r0, var947=r4, var96=null_type, var3135=$i0, var3114=$i1, var3032=$i2, var2721=$i3, var2028=$r1, var1898=46, var1548=$r3, var2118=$r2, var1101=$r6, var937=$r5, var2032=$i4, var489=$i5}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var3683, r0=var2659, r4=var947, null_type=var96, $i0=var3135, $i1=var3114, $i2=var3032, $i3=var2721, $r1=var2028, 46=var1898, $r3=var1548, $r2=var2118, $r6=var1101, $r5=var937, $i4=var2032, $i5=var489}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	r4 := @parameter0: java.lang.String;	$i0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack>;	$i1 = $i0 % 2;	if $i1 == 0 goto $i2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack>;	$i2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack>;	$i3 = $i2 / 2;	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> = $i3;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.String separator>;	$r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke r4.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.String separator> = "";	$i4 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack>;	$i5 = $i4 * 2;	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> = $i5;	return
;block_num 2
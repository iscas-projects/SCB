(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3718 0)
(declare-sort var3067 0)
(declare-sort var3821 0)
(declare-sort var170 0)
(declare-sort var1503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3821-init () (Array Int var3821))
(declare-fun cast-from-String-to-var3821 (String) var3821)
(declare-fun var170_format/590284840 (String (Array Int var3821)) String)
(declare-fun var1503-init () var1503)
(declare-fun <init>/-125611728 (var1503 String String String String) void)
(declare-const null-var3718 var3718)
(declare-const null-String String)
(declare-const var3718-UTF_8 String)
(declare-const null-__Array__Int__var3821__ (Array Int var3821))
(declare-const var3176 var3718) ; Statement: r23 := @this: org.apache.commons.io.input.XmlStreamReader 
(assert (not (= var3176 null-var3718)))
(declare-const var3253 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3253 null-String)))
(declare-const var1825 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1825 null-String)))
(declare-const var1664 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var1664 null-String)))
 ; Statement: if r0 != null goto $r1 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8> 
(assert (not (= var3253 null-String))) ; Cond: r0 != null 
(define-const var1195 String var3718-UTF_8) ; Statement: $r1 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8> 
(assert true)
(define-const var3187 Bool (= var3253 var1195)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r2 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_16BE> 
(assert (not (= (ite var3187 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r3 == null goto (branch) 
(assert (not (= var1825 null-String))) ; Negate: Cond: r3 == null  
(define-const var1140 String var3718-UTF_8) ; Statement: $r20 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8> 
(assert true)
(define-const var1032 Bool (= var1825 var1140)) ; Statement: $z12 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>($r20) 
 ; Statement: if $z12 != 0 goto (branch) 
(assert (not (not (= (ite var1032 1 0) 0)))) ; Negate: Cond: $z12 != 0  
(define-const var2427 (Array Int var3821) arr-var3821-init) ; Statement: $r21 = newarray (java.lang.Object)[3] 
(declare-const var2427!1 (Array Int var3821))
(assert (not (= var2427!1 null-__Array__Int__var3821__)))
(assert (= (select var2427!1 0) (cast-from-String-to-var3821 var3253))) ; Statement: $r21[0] = r0 
(declare-const var2427!2 (Array Int var3821))
(assert (not (= var2427!2 null-__Array__Int__var3821__)))
(assert (= (select var2427!2 1) (cast-from-String-to-var3821 var1825))) ; Statement: $r21[1] = r3 
(declare-const var2427!3 (Array Int var3821))
(assert (not (= var2427!3 null-__Array__Int__var3821__)))
(assert (= (select var2427!3 2) (cast-from-String-to-var3821 var1664))) ; Statement: $r21[2] = r4 
(define-const var1244 String (var170_format/590284840 "Illegal encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch" var2427!3)) ; Statement: r29 = staticinvoke <java.text.MessageFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("Illegal encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch", $r21) 
(define-const var9 var1503 var1503-init) ; Statement: $r22 = new org.apache.commons.io.input.XmlStreamReaderException 
(assert true)
;(assert (<init>/-125611728 var9 var1244 var3253 var1825 var1664)) ; Statement: specialinvoke $r22.<org.apache.commons.io.input.XmlStreamReaderException: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>(r29, r0, r3, r4) 

(declare-const var9!1 var1503)
(declare-const var1244!1 String)
(declare-const var3253!1 String)
(declare-const var1825!1 String)
(declare-const var1664!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3821-init=([], java.lang.Object[]), cast-from-String-to-var3821=([java.lang.String], java.lang.Object), var170_format/590284840=([java.lang.String, java.lang.Object[]], java.lang.String), var1503-init=([], org.apache.commons.io.input.XmlStreamReaderException), <init>/-125611728=([org.apache.commons.io.input.XmlStreamReaderException, java.lang.String, java.lang.String, java.lang.String, java.lang.String], void)}
; {var3718=org.apache.commons.io.input.XmlStreamReader, var3176=r23, var3253=r0, var3067=null_type, var1825=r3, var1664=r4, var1195=$r1, var3187=$z0, var1140=$r20, var1032=$z12, var3821=java.lang.Object, var2427=$r21, var170=java.text.MessageFormat, var1244=r29, var1503=org.apache.commons.io.input.XmlStreamReaderException, var9=$r22}
; {org.apache.commons.io.input.XmlStreamReader=var3718, r23=var3176, r0=var3253, null_type=var3067, r3=var1825, r4=var1664, $r1=var1195, $z0=var3187, $r20=var1140, $z12=var1032, java.lang.Object=var3821, $r21=var2427, java.text.MessageFormat=var170, r29=var1244, org.apache.commons.io.input.XmlStreamReaderException=var1503, $r22=var9}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r23 := @this: org.apache.commons.io.input.XmlStreamReader;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	if r0 != null goto $r1 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8>;	$r1 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r2 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_16BE>;	if r3 == null goto (branch);	$r20 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8>;	$z12 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>($r20);	if $z12 != 0 goto (branch);	$r21 = newarray (java.lang.Object)[3];	$r21[0] = r0;	$r21[1] = r3;	$r21[2] = r4;	r29 = staticinvoke <java.text.MessageFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("Illegal encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch", $r21);	$r22 = new org.apache.commons.io.input.XmlStreamReaderException;	specialinvoke $r22.<org.apache.commons.io.input.XmlStreamReaderException: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>(r29, r0, r3, r4);	throw $r22
;block_num 5
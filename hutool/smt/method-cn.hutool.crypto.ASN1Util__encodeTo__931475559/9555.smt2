(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1658 0)
(declare-sort var936 0)
(declare-sort var3404 0)
(declare-sort var3306 0)
(declare-sort var1601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3306-init () var3306)
(declare-fun arr-var1601-init () (Array Int var1601))
(declare-fun cast-from-String-to-var1601 (String) var1601)
(declare-fun <init>/-1016591490 (var3306 String (Array Int var1601)) void)
(declare-const null-String String)
(declare-const null-var936 var936)
(declare-const null-__Array__Int__var3404__ (Array Int var3404))
(declare-const null-__Array__Int__var1601__ (Array Int var1601))
(declare-const var920 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var920 null-String)))
(declare-const var533 var936) ; Statement: r3 := @parameter1: java.io.OutputStream 
(assert (not (= var533 null-var936)))
(declare-const var2033 (Array Int var3404)) ; Statement: r2 := @parameter2: org.bouncycastle.asn1.ASN1Encodable[] 
(assert (not (= var2033 null-__Array__Int__var3404__)))
(define-const var1275 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1514 Int (hashCode/-467973558 var920)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 2184: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("DL");     case 65647: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("BER");     case 67569: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("DER");     default: goto tableswitch(b1) {     case 0: goto $r11 = new org.bouncycastle.asn1.DERSequence;     case 1: goto $r12 = new org.bouncycastle.asn1.BERSequence;     case 2: goto $r13 = new org.bouncycastle.asn1.DLSequence;     default: goto $r14 = new cn.hutool.crypto.CryptoException; }; } 
(assert (and (not (= var1514 67569)) (and (not (= var1514 65647)) (and (not (= var1514 2184)) true)))) ; Intersect: Negate: Cond: $i0 == 67569   and Intersect: Negate: Cond: $i0 == 65647   and Intersect: Negate: Cond: $i0 == 2184   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r11 = new org.bouncycastle.asn1.DERSequence;     case 1: goto $r12 = new org.bouncycastle.asn1.BERSequence;     case 2: goto $r13 = new org.bouncycastle.asn1.DLSequence;     default: goto $r14 = new cn.hutool.crypto.CryptoException; } 
(assert (and (not (= var1275 2)) (and (not (= var1275 1)) (and (not (= var1275 0)) true)))) ; Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(define-const var3971 var3306 var3306-init) ; Statement: $r14 = new cn.hutool.crypto.CryptoException 
(define-const var1528 (Array Int var1601) arr-var1601-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var1528!1 (Array Int var1601))
(assert (not (= var1528!1 null-__Array__Int__var1601__)))
(assert (= (select var1528!1 0) (cast-from-String-to-var1601 var920))) ; Statement: $r7[0] = r0 
(assert true)
;(assert (<init>/-1016591490 var3971 "Unsupported ASN1 encoding: {}" var1528!1)) ; Statement: specialinvoke $r14.<cn.hutool.crypto.CryptoException: void <init>(java.lang.String,java.lang.Object[])>("Unsupported ASN1 encoding: {}", $r7) 

(declare-const var3971!1 var3306)
(declare-const var2923 String)
(declare-const var1528!2 (Array Int var1601))
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var3306-init=([], cn.hutool.crypto.CryptoException), arr-var1601-init=([], java.lang.Object[]), cast-from-String-to-var1601=([java.lang.String], java.lang.Object), <init>/-1016591490=([cn.hutool.crypto.CryptoException, java.lang.String, java.lang.Object[]], void)}
; {var920=r0, var1658=null_type, var936=java.io.OutputStream, var533=r3, var3404=org.bouncycastle.asn1.ASN1Encodable, var2033=r2, var1275=b1, var1514=$i0, var3306=cn.hutool.crypto.CryptoException, var3971=$r14, var1601=java.lang.Object, var1528=$r7, var2923="Unsupported ASN1 encoding: {}"}
; {r0=var920, null_type=var1658, java.io.OutputStream=var936, r3=var533, org.bouncycastle.asn1.ASN1Encodable=var3404, r2=var2033, b1=var1275, $i0=var1514, cn.hutool.crypto.CryptoException=var3306, $r14=var3971, java.lang.Object=var1601, $r7=var1528, "Unsupported ASN1 encoding: {}"=var2923}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.io.OutputStream;	r2 := @parameter2: org.bouncycastle.asn1.ASN1Encodable[];	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 2184: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("DL");     case 65647: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("BER");     case 67569: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("DER");     default: goto tableswitch(b1) {     case 0: goto $r11 = new org.bouncycastle.asn1.DERSequence;     case 1: goto $r12 = new org.bouncycastle.asn1.BERSequence;     case 2: goto $r13 = new org.bouncycastle.asn1.DLSequence;     default: goto $r14 = new cn.hutool.crypto.CryptoException; }; };	tableswitch(b1) {     case 0: goto $r11 = new org.bouncycastle.asn1.DERSequence;     case 1: goto $r12 = new org.bouncycastle.asn1.BERSequence;     case 2: goto $r13 = new org.bouncycastle.asn1.DLSequence;     default: goto $r14 = new cn.hutool.crypto.CryptoException; };	$r14 = new cn.hutool.crypto.CryptoException;	$r7 = newarray (java.lang.Object)[1];	$r7[0] = r0;	specialinvoke $r14.<cn.hutool.crypto.CryptoException: void <init>(java.lang.String,java.lang.Object[])>("Unsupported ASN1 encoding: {}", $r7);	throw $r14
;block_num 3
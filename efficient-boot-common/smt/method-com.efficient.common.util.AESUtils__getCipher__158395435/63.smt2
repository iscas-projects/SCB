(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var924 0)
(declare-sort var1426 0)
(declare-sort var3946 0)
(declare-sort var278 0)
(declare-sort var2373 0)
(declare-sort var184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1426-init () var1426)
(declare-fun getBytes/-163691139 (String var3946) (Array Int Int))
(declare-fun <init>/-1663446212 (var1426 (Array Int Int) String) void)
(declare-fun var2373_getInstance/-503489887 (String) var2373)
(declare-fun cast-from-var1426-to-var184 (var1426) var184)
(declare-fun init/-1276187457 (var2373 Int var184) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var278-UTF_8 var3946)
(declare-const var2545 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2545 null-String)))
(declare-const var2557 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2557 null-Int)))
(define-const var1186 var1426 var1426-init) ; Statement: $r5 = new javax.crypto.spec.SecretKeySpec 
(define-const var1997 var3946 var278-UTF_8) ; Statement: $r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var1818 (Array Int Int) (getBytes/-163691139 var2545 var1997)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r2) 
(assert true)
;(assert (<init>/-1663446212 var1186 var1818 "AES")) ; Statement: specialinvoke $r5.<javax.crypto.spec.SecretKeySpec: void <init>(byte[],java.lang.String)>($r3, "AES") 

(declare-const var1186!1 var1426)
(declare-const var1818!1 (Array Int Int))
(declare-const var1363 String)
(define-const var1674 var2373 (var2373_getInstance/-503489887 "AES/ECB/PKCS5Padding")) ; Statement: r4 = staticinvoke <javax.crypto.Cipher: javax.crypto.Cipher getInstance(java.lang.String)>("AES/ECB/PKCS5Padding") 
(define-const var1955 var184 (cast-from-var1426-to-var184 var1186!1)) ; Statement: $r6 = (java.security.Key) $r5 
(assert true)
;(assert (init/-1276187457 var1674 var2557 var1955)) ; Statement: virtualinvoke r4.<javax.crypto.Cipher: void init(int,java.security.Key)>(i0, $r6) 

(declare-const var1674!1 var2373)
(declare-const var2557!1 Int)
(declare-const var1955!1 var184)
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1426-init=([], javax.crypto.spec.SecretKeySpec), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), <init>/-1663446212=([javax.crypto.spec.SecretKeySpec, byte[], java.lang.String], void), var2373_getInstance/-503489887=([java.lang.String], javax.crypto.Cipher), cast-from-var1426-to-var184=([javax.crypto.spec.SecretKeySpec], java.security.Key), init/-1276187457=([javax.crypto.Cipher, int, java.security.Key], void)}
; {var2545=r1, var924=null_type, var2557=i0, var1426=javax.crypto.spec.SecretKeySpec, var1186=$r5, var3946=java.nio.charset.Charset, var278=java.nio.charset.StandardCharsets, var1997=$r2, var1818=$r3, var1363="AES", var2373=javax.crypto.Cipher, var1674=r4, var184=java.security.Key, var1955=$r6}
; {r1=var2545, null_type=var924, i0=var2557, javax.crypto.spec.SecretKeySpec=var1426, $r5=var1186, java.nio.charset.Charset=var3946, java.nio.charset.StandardCharsets=var278, $r2=var1997, $r3=var1818, "AES"=var1363, javax.crypto.Cipher=var2373, r4=var1674, java.security.Key=var184, $r6=var1955}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r5 = new javax.crypto.spec.SecretKeySpec;	$r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r3 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r2);	specialinvoke $r5.<javax.crypto.spec.SecretKeySpec: void <init>(byte[],java.lang.String)>($r3, "AES");	r4 = staticinvoke <javax.crypto.Cipher: javax.crypto.Cipher getInstance(java.lang.String)>("AES/ECB/PKCS5Padding");	$r6 = (java.security.Key) $r5;	virtualinvoke r4.<javax.crypto.Cipher: void init(int,java.security.Key)>(i0, $r6);	return r4
;block_num 1
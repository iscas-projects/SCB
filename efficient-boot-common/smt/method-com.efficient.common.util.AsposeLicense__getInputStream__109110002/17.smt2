(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var443 0)
(declare-sort var2255 0)
(declare-sort var778 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var443-init () var443)
(declare-fun getBytes/-163691139 (String var2255) (Array Int Int))
(declare-fun <init>/1208500544 (var443 (Array Int Int)) void)
(declare-const var778-UTF_8 var2255)
(define-const var2772 var443 var443-init) ; Statement: $r0 = new java.io.ByteArrayInputStream 
(define-const var153 String "<?xml version=\u00221.0\u0022 encoding=\u0022UTF-8\u0022?>\n<License>\n    <Data>\n        <Products>\n            <Product>Aspose.Total for Java</Product>\n            <Product>Aspose.Words for Java</Product>\n        </Products>\n        <EditionType>Enterprise</EditionType>\n        <SubscriptionExpiry>20991231</SubscriptionExpiry>\n        <LicenseExpiry>20991231</LicenseExpiry>\n        <SerialNumber>8bfe198c-7f0c-4ef8-8ff0-acc3237bf0d7</SerialNumber>\n    </Data>\n    <Signature>\n        sNLLKGMUdF0r8O1kKilWAGdgfs2BvJb/2Xp8p5iuDVfZXmhppo+d0Ran1P9TKdjV4ABwAgKXxJ3jcQTqE/2IRfqwnPf8itN8aFZlV3TJPYeD3yWE7IT55Gz6EijUpC7aKeoohTb4w2fpox58wWoF3SNp6sK6jDfiAUGEHYJ9pjU=\n    </Signature>\n</License>\n") ; Statement: $r2 = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<License>\n    <Data>\n        <Products>\n            <Product>Aspose.Total for Java</Product>\n            <Product>Aspose.Words for Java</Product>\n        </Products>\n        <EditionType>Enterprise</EditionType>\n        <SubscriptionExpiry>20991231</SubscriptionExpiry>\n        <LicenseExpiry>20991231</LicenseExpiry>\n        <SerialNumber>8bfe198c-7f0c-4ef8-8ff0-acc3237bf0d7</SerialNumber>\n    </Data>\n    <Signature>\n        sNLLKGMUdF0r8O1kKilWAGdgfs2BvJb/2Xp8p5iuDVfZXmhppo+d0Ran1P9TKdjV4ABwAgKXxJ3jcQTqE/2IRfqwnPf8itN8aFZlV3TJPYeD3yWE7IT55Gz6EijUpC7aKeoohTb4w2fpox58wWoF3SNp6sK6jDfiAUGEHYJ9pjU=\n    </Signature>\n</License>\n" 
(define-const var3587 var2255 var778-UTF_8) ; Statement: $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var1199 (Array Int Int) (getBytes/-163691139 var153 var3587)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1) 
(assert true)
;(assert (<init>/1208500544 var2772 var1199)) ; Statement: specialinvoke $r0.<java.io.ByteArrayInputStream: void <init>(byte[])>($r3) 

(declare-const var2772!1 var443)
(declare-const var1199!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var443-init=([], java.io.ByteArrayInputStream), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), <init>/1208500544=([java.io.ByteArrayInputStream, byte[]], void)}
; {var443=java.io.ByteArrayInputStream, var2772=$r0, var153=$r2, var2255=java.nio.charset.Charset, var778=java.nio.charset.StandardCharsets, var3587=$r1, var1199=$r3}
; {java.io.ByteArrayInputStream=var443, $r0=var2772, $r2=var153, java.nio.charset.Charset=var2255, java.nio.charset.StandardCharsets=var778, $r1=var3587, $r3=var1199}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts $r0 = new java.io.ByteArrayInputStream;	$r2 = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<License>\n    <Data>\n        <Products>\n            <Product>Aspose.Total for Java</Product>\n            <Product>Aspose.Words for Java</Product>\n        </Products>\n        <EditionType>Enterprise</EditionType>\n        <SubscriptionExpiry>20991231</SubscriptionExpiry>\n        <LicenseExpiry>20991231</LicenseExpiry>\n        <SerialNumber>8bfe198c-7f0c-4ef8-8ff0-acc3237bf0d7</SerialNumber>\n    </Data>\n    <Signature>\n        sNLLKGMUdF0r8O1kKilWAGdgfs2BvJb/2Xp8p5iuDVfZXmhppo+d0Ran1P9TKdjV4ABwAgKXxJ3jcQTqE/2IRfqwnPf8itN8aFZlV3TJPYeD3yWE7IT55Gz6EijUpC7aKeoohTb4w2fpox58wWoF3SNp6sK6jDfiAUGEHYJ9pjU=\n    </Signature>\n</License>\n";	$r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1);	specialinvoke $r0.<java.io.ByteArrayInputStream: void <init>(byte[])>($r3);	return $r0
;block_num 1
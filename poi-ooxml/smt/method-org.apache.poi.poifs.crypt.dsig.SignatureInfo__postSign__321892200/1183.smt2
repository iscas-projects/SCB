(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3992 0)
(declare-sort var3797 0)
(declare-sort var3147 0)
(declare-sort var2101 0)
(declare-sort var2745 0)
(declare-sort var1849 0)
(declare-sort var2080 0)
(declare-sort var2777 0)
(declare-sort var2300 0)
(declare-sort var2986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2101_atDebug/-1653529376 (var2101) var2745)
(declare-fun var2745_log/1618568336 (var2745 String) void)
(declare-fun getParent/125126397 (var3797) var1849)
(declare-fun cast-from-var1849-to-var2080 (var1849) var2080)
(declare-fun signatureConfig/-1667771562 (var3992) var2777)
(declare-fun getPackageSignatureId/113804993 (var2777) String)
(declare-fun var2080_getDocumentElement/-1106552489 (var2080) var2300)
(declare-fun var2300_getAttribute/210607306 (var2300 String) String)
(declare-fun var2986-init () var2986)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2986 String) void)
(declare-const null-var3992 var3992)
(declare-const null-var3797 var3797)
(declare-const null-String String)
(declare-const var3992-LOG var2101)
(declare-const var2353 var3992) ; Statement: r5 := @this: org.apache.poi.poifs.crypt.dsig.SignatureInfo 
(assert (not (= var2353 null-var3992)))
(declare-const var2738 var3797) ; Statement: r2 := @parameter0: javax.xml.crypto.dsig.dom.DOMSignContext 
(assert (not (= var2738 null-var3797)))
(declare-const var2888 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var2888 null-String)))
(define-const var626 var2101 var3992-LOG) ; Statement: $r0 = <org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.logging.log4j.Logger LOG> 
(define-const var2191 var2745 (var2101_atDebug/-1653529376 var626)) ; Statement: $r1 = interfaceinvoke $r0.<org.apache.logging.log4j.Logger: org.apache.logging.log4j.LogBuilder atDebug()>() 
;(assert (var2745_log/1618568336 var2191 "postSign")) ; Statement: interfaceinvoke $r1.<org.apache.logging.log4j.LogBuilder: void log(java.lang.String)>("postSign") 

(declare-const var2191!1 var2745)
(declare-const var1877 String)
(assert true)
(define-const var3388 var1849 (getParent/125126397 var2738)) ; Statement: $r3 = virtualinvoke r2.<javax.xml.crypto.dsig.dom.DOMSignContext: org.w3c.dom.Node getParent()>() 
(define-const var780 var2080 (cast-from-var1849-to-var2080 var3388)) ; Statement: r4 = (org.w3c.dom.Document) $r3 
(define-const var3444 var2777 (signatureConfig/-1667771562 var2353)) ; Statement: $r6 = r5.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig signatureConfig> 
(assert true)
(define-const var2330 String (getPackageSignatureId/113804993 var3444)) ; Statement: r7 = virtualinvoke $r6.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.String getPackageSignatureId()>() 
(define-const var3648 var2300 (var2080_getDocumentElement/-1106552489 var780)) ; Statement: $r8 = interfaceinvoke r4.<org.w3c.dom.Document: org.w3c.dom.Element getDocumentElement()>() 
(define-const var2801 String (var2300_getAttribute/210607306 var3648 "Id")) ; Statement: $r9 = interfaceinvoke $r8.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("Id") 
(assert true)
(define-const var5 Bool (= var2330 var2801)) ; Statement: $z0 = virtualinvoke r7.<java.lang.String: boolean equals(java.lang.Object)>($r9) 
 ; Statement: if $z0 != 0 goto r10 = specialinvoke r5.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.w3c.dom.Element getDsigElement(org.w3c.dom.Document,java.lang.String)>(r4, "SignatureValue") 
(assert (not (not (= (ite var5 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2767 var2986 var2986-init) ; Statement: $r18 = new java.lang.IllegalStateException 
(define-const var462 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var462)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var462!1 String)
(assert (= var462!1 ""))
(assert true)
(define-const var964 String (append/672562846 var462!1 "ds:Signature not found for @Id: ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ds:Signature not found for @Id: ") 
(declare-const var462!2 String)
(assert (= var462!2 (str.++ var462!1 "ds:Signature not found for @Id: ")))
(assert true)
(define-const var1461 String (append/672562846 var964 var2330)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var964!1 String)
(assert (= var964!1 (str.++ var964 var2330)))
(assert true)
(define-const var539 String (toString/-2075883882 var1461)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2767 var539)) ; Statement: specialinvoke $r18.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r22) 

(declare-const var2767!1 var2986)
(declare-const var539!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var2101_atDebug/-1653529376=([org.apache.logging.log4j.Logger], org.apache.logging.log4j.LogBuilder), var2745_log/1618568336=([org.apache.logging.log4j.LogBuilder, java.lang.String], void), getParent/125126397=([javax.xml.crypto.dsig.dom.DOMSignContext], org.w3c.dom.Node), cast-from-var1849-to-var2080=([org.w3c.dom.Node], org.w3c.dom.Document), signatureConfig/-1667771562=([org.apache.poi.poifs.crypt.dsig.SignatureInfo], org.apache.poi.poifs.crypt.dsig.SignatureConfig), getPackageSignatureId/113804993=([org.apache.poi.poifs.crypt.dsig.SignatureConfig], java.lang.String), var2080_getDocumentElement/-1106552489=([org.w3c.dom.Document], org.w3c.dom.Element), var2300_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), var2986-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3992=org.apache.poi.poifs.crypt.dsig.SignatureInfo, var2353=r5, var3797=javax.xml.crypto.dsig.dom.DOMSignContext, var2738=r2, var2888=r11, var3147=null_type, var2101=org.apache.logging.log4j.Logger, var626=$r0, var2745=org.apache.logging.log4j.LogBuilder, var2191=$r1, var1877="postSign", var1849=org.w3c.dom.Node, var3388=$r3, var2080=org.w3c.dom.Document, var780=r4, var2777=org.apache.poi.poifs.crypt.dsig.SignatureConfig, var3444=$r6, var2330=r7, var2300=org.w3c.dom.Element, var3648=$r8, var2801=$r9, var5=$z0, var2986=java.lang.IllegalStateException, var2767=$r18, var462=$r19, var964=$r20, var1461=$r21, var539=$r22}
; {org.apache.poi.poifs.crypt.dsig.SignatureInfo=var3992, r5=var2353, javax.xml.crypto.dsig.dom.DOMSignContext=var3797, r2=var2738, r11=var2888, null_type=var3147, org.apache.logging.log4j.Logger=var2101, $r0=var626, org.apache.logging.log4j.LogBuilder=var2745, $r1=var2191, "postSign"=var1877, org.w3c.dom.Node=var1849, $r3=var3388, org.w3c.dom.Document=var2080, r4=var780, org.apache.poi.poifs.crypt.dsig.SignatureConfig=var2777, $r6=var3444, r7=var2330, org.w3c.dom.Element=var2300, $r8=var3648, $r9=var2801, $z0=var5, java.lang.IllegalStateException=var2986, $r18=var2767, $r19=var462, $r20=var964, $r21=var1461, $r22=var539}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.poi.poifs.crypt.dsig.SignatureInfo;	r2 := @parameter0: javax.xml.crypto.dsig.dom.DOMSignContext;	r11 := @parameter1: java.lang.String;	$r0 = <org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.logging.log4j.Logger LOG>;	$r1 = interfaceinvoke $r0.<org.apache.logging.log4j.Logger: org.apache.logging.log4j.LogBuilder atDebug()>();	interfaceinvoke $r1.<org.apache.logging.log4j.LogBuilder: void log(java.lang.String)>("postSign");	$r3 = virtualinvoke r2.<javax.xml.crypto.dsig.dom.DOMSignContext: org.w3c.dom.Node getParent()>();	r4 = (org.w3c.dom.Document) $r3;	$r6 = r5.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig signatureConfig>;	r7 = virtualinvoke $r6.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.String getPackageSignatureId()>();	$r8 = interfaceinvoke r4.<org.w3c.dom.Document: org.w3c.dom.Element getDocumentElement()>();	$r9 = interfaceinvoke $r8.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("Id");	$z0 = virtualinvoke r7.<java.lang.String: boolean equals(java.lang.Object)>($r9);	if $z0 != 0 goto r10 = specialinvoke r5.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.w3c.dom.Element getDsigElement(org.w3c.dom.Document,java.lang.String)>(r4, "SignatureValue");	$r18 = new java.lang.IllegalStateException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ds:Signature not found for @Id: ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r22);	throw $r18
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var845 0)
(declare-sort var3064 0)
(declare-sort var3008 0)
(declare-sort var2215 0)
(declare-sort var2709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun key/-1828462603 (var845) var3064)
(declare-fun var845_isMSCapi/1706294117 (var3064) Bool)
(declare-fun algo/-1828462603 (var845) var3008)
(declare-fun var2709_getMessageDigest/1333886646 (var3008) var2215)
(declare-fun md/-1828462603 (var845) var2215)
(declare-const null-var845 var845)
(declare-const var2517 var845) ; Statement: r0 := @this: org.apache.poi.poifs.crypt.dsig.DigestOutputStream 
(assert (not (= var2517 null-var845)))
(define-const var2444 var3064 (key/-1828462603 var2517)) ; Statement: $r1 = r0.<org.apache.poi.poifs.crypt.dsig.DigestOutputStream: java.security.PrivateKey key> 
(define-const var1447 Bool (var845_isMSCapi/1706294117 var2444)) ; Statement: $z0 = staticinvoke <org.apache.poi.poifs.crypt.dsig.DigestOutputStream: boolean isMSCapi(java.security.PrivateKey)>($r1) 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.apache.poi.poifs.crypt.dsig.DigestOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo> 
(assert (= (ite var1447 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3920 var3008 (algo/-1828462603 var2517)) ; Statement: $r2 = r0.<org.apache.poi.poifs.crypt.dsig.DigestOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo> 
(define-const var1071 var2215 (var2709_getMessageDigest/1333886646 var3920)) ; Statement: $r3 = staticinvoke <org.apache.poi.poifs.crypt.CryptoFunctions: java.security.MessageDigest getMessageDigest(org.apache.poi.poifs.crypt.HashAlgorithm)>($r2) 
(declare-const var2517!1 var845)
(assert (not (= var2517!1 null-var845)))
(assert (= (md/-1828462603 var2517!1) var1071)) ; Statement: r0.<org.apache.poi.poifs.crypt.dsig.DigestOutputStream: java.security.MessageDigest md> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {key/-1828462603=([org.apache.poi.poifs.crypt.dsig.DigestOutputStream], java.security.PrivateKey), var845_isMSCapi/1706294117=([java.security.PrivateKey], boolean), algo/-1828462603=([org.apache.poi.poifs.crypt.dsig.DigestOutputStream], org.apache.poi.poifs.crypt.HashAlgorithm), var2709_getMessageDigest/1333886646=([org.apache.poi.poifs.crypt.HashAlgorithm], java.security.MessageDigest), md/-1828462603=([org.apache.poi.poifs.crypt.dsig.DigestOutputStream], java.security.MessageDigest)}
; {var845=org.apache.poi.poifs.crypt.dsig.DigestOutputStream, var2517=r0, var3064=java.security.PrivateKey, var2444=$r1, var1447=$z0, var3008=org.apache.poi.poifs.crypt.HashAlgorithm, var3920=$r2, var2215=java.security.MessageDigest, var2709=org.apache.poi.poifs.crypt.CryptoFunctions, var1071=$r3}
; {org.apache.poi.poifs.crypt.dsig.DigestOutputStream=var845, r0=var2517, java.security.PrivateKey=var3064, $r1=var2444, $z0=var1447, org.apache.poi.poifs.crypt.HashAlgorithm=var3008, $r2=var3920, java.security.MessageDigest=var2215, org.apache.poi.poifs.crypt.CryptoFunctions=var2709, $r3=var1071}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.poifs.crypt.dsig.DigestOutputStream;	$r1 = r0.<org.apache.poi.poifs.crypt.dsig.DigestOutputStream: java.security.PrivateKey key>;	$z0 = staticinvoke <org.apache.poi.poifs.crypt.dsig.DigestOutputStream: boolean isMSCapi(java.security.PrivateKey)>($r1);	if $z0 == 0 goto $r2 = r0.<org.apache.poi.poifs.crypt.dsig.DigestOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo>;	$r2 = r0.<org.apache.poi.poifs.crypt.dsig.DigestOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo>;	$r3 = staticinvoke <org.apache.poi.poifs.crypt.CryptoFunctions: java.security.MessageDigest getMessageDigest(org.apache.poi.poifs.crypt.HashAlgorithm)>($r2);	r0.<org.apache.poi.poifs.crypt.dsig.DigestOutputStream: java.security.MessageDigest md> = $r3;	return
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1052 0)
(declare-sort var3279 0)
(declare-sort var675 0)
(declare-sort var1500 0)
(declare-sort var2322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSubjectX500Principal/-415787385 (var675) var2322)
(declare-fun getName/-1628125019 (var2322) String)
(declare-fun getCertCN/1959331682 (var3279) String)
(declare-const null-var1052 var1052)
(declare-const null-var3279 var3279)
(declare-const null-var675 var675)
(declare-const null-String String)
(declare-const var3274 var1052) ; Statement: r5 := @this: org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService 
(assert (not (= var3274 null-var1052)))
(declare-const var1833 var3279) ; Statement: r2 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureConfig$CRLEntry 
(assert (not (= var1833 null-var3279)))
(declare-const var673 var675) ; Statement: r0 := @parameter1: java.security.cert.X509Certificate 
(assert (not (= var673 null-var675)))
(declare-const var3198 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var3198 null-String)))
(assert true)
(define-const var1557 var2322 (getSubjectX500Principal/-415787385 var673)) ; Statement: $r1 = virtualinvoke r0.<java.security.cert.X509Certificate: javax.security.auth.x500.X500Principal getSubjectX500Principal()>() 
(assert true)
(define-const var1771 String (getName/-1628125019 var1557)) ; Statement: $r4 = virtualinvoke $r1.<javax.security.auth.x500.X500Principal: java.lang.String getName()>() 
(assert true)
(define-const var2366 String (getCertCN/1959331682 var1833)) ; Statement: $r3 = virtualinvoke r2.<org.apache.poi.poifs.crypt.dsig.SignatureConfig$CRLEntry: java.lang.String getCertCN()>() 
(assert true)
(define-const var2596 Bool (= var1771 var2366)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getSubjectX500Principal/-415787385=([java.security.cert.X509Certificate], javax.security.auth.x500.X500Principal), getName/-1628125019=([javax.security.auth.x500.X500Principal], java.lang.String), getCertCN/1959331682=([org.apache.poi.poifs.crypt.dsig.SignatureConfig$CRLEntry], java.lang.String)}
; {var1052=org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService, var3274=r5, var3279=org.apache.poi.poifs.crypt.dsig.SignatureConfig$CRLEntry, var1833=r2, var675=java.security.cert.X509Certificate, var673=r0, var3198=r6, var1500=null_type, var2322=javax.security.auth.x500.X500Principal, var1557=$r1, var1771=$r4, var2366=$r3, var2596=$z0}
; {org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService=var1052, r5=var3274, org.apache.poi.poifs.crypt.dsig.SignatureConfig$CRLEntry=var3279, r2=var1833, java.security.cert.X509Certificate=var675, r0=var673, r6=var3198, null_type=var1500, javax.security.auth.x500.X500Principal=var2322, $r1=var1557, $r4=var1771, $r3=var2366, $z0=var2596}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService;	r2 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureConfig$CRLEntry;	r0 := @parameter1: java.security.cert.X509Certificate;	r6 := @parameter2: java.lang.String;	$r1 = virtualinvoke r0.<java.security.cert.X509Certificate: javax.security.auth.x500.X500Principal getSubjectX500Principal()>();	$r4 = virtualinvoke $r1.<javax.security.auth.x500.X500Principal: java.lang.String getName()>();	$r3 = virtualinvoke r2.<org.apache.poi.poifs.crypt.dsig.SignatureConfig$CRLEntry: java.lang.String getCertCN()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	return $z0
;block_num 1
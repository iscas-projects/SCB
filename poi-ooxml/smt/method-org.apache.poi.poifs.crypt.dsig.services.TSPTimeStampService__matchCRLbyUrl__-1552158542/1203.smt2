(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1406 0)
(declare-sort var3581 0)
(declare-sort var1500 0)
(declare-sort var518 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCrlURL/1237264319 (var3581) String)
(declare-const null-var1406 var1406)
(declare-const null-var3581 var3581)
(declare-const null-var1500 var1500)
(declare-const null-String String)
(declare-const var2918 var1406) ; Statement: r3 := @this: org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService 
(assert (not (= var2918 null-var1406)))
(declare-const var117 var3581) ; Statement: r1 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureConfig$CRLEntry 
(assert (not (= var117 null-var3581)))
(declare-const var2287 var1500) ; Statement: r4 := @parameter1: java.security.cert.X509Certificate 
(assert (not (= var2287 null-var1500)))
(declare-const var3340 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3340 null-String)))
(assert true)
(define-const var2625 String (getCrlURL/1237264319 var117)) ; Statement: $r2 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig$CRLEntry: java.lang.String getCrlURL()>() 
(assert true)
(define-const var58 Bool (= var3340 var2625)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getCrlURL/1237264319=([org.apache.poi.poifs.crypt.dsig.SignatureConfig$CRLEntry], java.lang.String)}
; {var1406=org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService, var2918=r3, var3581=org.apache.poi.poifs.crypt.dsig.SignatureConfig$CRLEntry, var117=r1, var1500=java.security.cert.X509Certificate, var2287=r4, var3340=r0, var518=null_type, var2625=$r2, var58=$z0}
; {org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService=var1406, r3=var2918, org.apache.poi.poifs.crypt.dsig.SignatureConfig$CRLEntry=var3581, r1=var117, java.security.cert.X509Certificate=var1500, r4=var2287, r0=var3340, null_type=var518, $r2=var2625, $z0=var58}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService;	r1 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureConfig$CRLEntry;	r4 := @parameter1: java.security.cert.X509Certificate;	r0 := @parameter2: java.lang.String;	$r2 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig$CRLEntry: java.lang.String getCrlURL()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	return $z0
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var458 0)
(declare-sort var3424 0)
(declare-sort var2530 0)
(declare-sort var2543 0)
(declare-sort var1607 0)
(declare-sort var2696 0)
(declare-sort var2237 0)
(declare-sort var1326 0)
(declare-sort var1602 0)
(declare-sort var3616 0)
(declare-sort var907 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSignatureConfig/-1274643453 (var3424) var1607)
(declare-fun var2237_asList/1779083644 ((Array Int var1326)) var2696)
(declare-fun cast-from-__Array__Int__var2543__-to-__Array__Int__var1326__ ((Array Int var2543)) (Array Int var1326))
(declare-fun getXadesCanonicalizationMethod/759367698 (var1607) String)
(declare-fun var458_getC14nValue/2074824461 (var2696 String) (Array Int Int))
(declare-fun var3616-init () var3616)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var907) String)
(declare-fun cast-from-var1602-to-var907 (var1602) var907)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var3616 String var907) void)
(declare-const null-var458 var458)
(declare-const null-var3424 var3424)
(declare-const null-var2530 var2530)
(declare-const null-__Array__Int__var2543__ (Array Int var2543))
(declare-const null-var1602 var1602)
(declare-const var2681 var458) ; Statement: r21 := @this: org.apache.poi.poifs.crypt.dsig.facets.XAdESXLSignatureFacet 
(assert (not (= var2681 null-var458)))
(declare-const var1829 var3424) ; Statement: r0 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo 
(assert (not (= var1829 null-var3424)))
(declare-const var1887 var2530) ; Statement: r6 := @parameter1: org.apache.poi.poifs.crypt.dsig.services.RevocationData 
(assert (not (= var1887 null-var2530)))
(declare-const var3332 (Array Int var2543)) ; Statement: r2 := @parameter2: org.w3c.dom.Node[] 
(assert (not (= var3332 null-__Array__Int__var2543__)))
(assert true)
(define-const var3783 var1607 (getSignatureConfig/-1274643453 var1829)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig getSignatureConfig()>() 
(define-const var3926 var2696 (var2237_asList/1779083644 (cast-from-__Array__Int__var2543__-to-__Array__Int__var1326__ var3332))) ; Statement: $r4 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r2) 
(assert true)
(define-const var3763 String (getXadesCanonicalizationMethod/759367698 var3783)) ; Statement: $r3 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.String getXadesCanonicalizationMethod()>() 
(define-const var2469 (Array Int Int) (var458_getC14nValue/2074824461 var3926 var3763)) ; Statement: r5 = staticinvoke <org.apache.poi.poifs.crypt.dsig.facets.XAdESXLSignatureFacet: byte[] getC14nValue(java.util.List,java.lang.String)>($r4, $r3) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1106 var1602) ; Statement: $r14 := @caughtexception 
(assert (not (= var1106 null-var1602)))
(define-const var3954 var3616 var3616-init) ; Statement: $r15 = new java.lang.IllegalStateException 
(define-const var2861 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2861)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2861!1 String)
(assert (= var2861!1 ""))
(assert true)
(define-const var850 String (append/672562846 var2861!1 "error while creating a time-stamp: ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("error while creating a time-stamp: ") 
(declare-const var2861!2 String)
(assert (= var2861!2 (str.++ var2861!1 "error while creating a time-stamp: ")))
(assert true)
(define-const var1223 String (getMessage/849299655 (cast-from-var1602-to-var907 var1106))) ; Statement: $r17 = virtualinvoke $r14.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var506 String (append/672562846 var850 var1223)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var850!1 String)
(assert (= var850!1 (str.++ var850 var1223)))
(assert true)
(define-const var100 String (toString/-2075883882 var506)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var3954 var100 (cast-from-var1602-to-var907 var1106))) ; Statement: specialinvoke $r15.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r20, $r14) 

(declare-const var3954!1 var3616)
(declare-const var100!1 String)
(declare-const var1106!1 var1602)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getSignatureConfig/-1274643453=([org.apache.poi.poifs.crypt.dsig.SignatureInfo], org.apache.poi.poifs.crypt.dsig.SignatureConfig), var2237_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__var2543__-to-__Array__Int__var1326__=([org.w3c.dom.Node[]], java.lang.Object[]), getXadesCanonicalizationMethod/759367698=([org.apache.poi.poifs.crypt.dsig.SignatureConfig], java.lang.String), var458_getC14nValue/2074824461=([java.util.List, java.lang.String], byte[]), var3616-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1602-to-var907=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void)}
; {var458=org.apache.poi.poifs.crypt.dsig.facets.XAdESXLSignatureFacet, var2681=r21, var3424=org.apache.poi.poifs.crypt.dsig.SignatureInfo, var1829=r0, var2530=org.apache.poi.poifs.crypt.dsig.services.RevocationData, var1887=r6, var2543=org.w3c.dom.Node, var3332=r2, var1607=org.apache.poi.poifs.crypt.dsig.SignatureConfig, var3783=r1, var2696=java.util.List, var2237=java.util.Arrays, var1326=java.lang.Object, var3926=$r4, var3763=$r3, var2469=r5, var1602=java.lang.Exception, var1106=$r14, var3616=java.lang.IllegalStateException, var3954=$r15, var2861=$r16, var850=$r18, var907=java.lang.Throwable, var1223=$r17, var506=$r19, var100=$r20}
; {org.apache.poi.poifs.crypt.dsig.facets.XAdESXLSignatureFacet=var458, r21=var2681, org.apache.poi.poifs.crypt.dsig.SignatureInfo=var3424, r0=var1829, org.apache.poi.poifs.crypt.dsig.services.RevocationData=var2530, r6=var1887, org.w3c.dom.Node=var2543, r2=var3332, org.apache.poi.poifs.crypt.dsig.SignatureConfig=var1607, r1=var3783, java.util.List=var2696, java.util.Arrays=var2237, java.lang.Object=var1326, $r4=var3926, $r3=var3763, r5=var2469, java.lang.Exception=var1602, $r14=var1106, java.lang.IllegalStateException=var3616, $r15=var3954, $r16=var2861, $r18=var850, java.lang.Throwable=var907, $r17=var1223, $r19=var506, $r20=var100}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r21 := @this: org.apache.poi.poifs.crypt.dsig.facets.XAdESXLSignatureFacet;	r0 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo;	r6 := @parameter1: org.apache.poi.poifs.crypt.dsig.services.RevocationData;	r2 := @parameter2: org.w3c.dom.Node[];	r1 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig getSignatureConfig()>();	$r4 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r2);	$r3 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.String getXadesCanonicalizationMethod()>();	r5 = staticinvoke <org.apache.poi.poifs.crypt.dsig.facets.XAdESXLSignatureFacet: byte[] getC14nValue(java.util.List,java.lang.String)>($r4, $r3);	$r14 := @caughtexception;	$r15 = new java.lang.IllegalStateException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("error while creating a time-stamp: ");	$r17 = virtualinvoke $r14.<java.lang.Exception: java.lang.String getMessage()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r20, $r14);	throw $r15
;block_num 2
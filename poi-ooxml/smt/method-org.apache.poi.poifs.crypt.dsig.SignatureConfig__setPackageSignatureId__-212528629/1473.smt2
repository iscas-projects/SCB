(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var416 0)
(declare-sort var219 0)
(declare-sort var3363 0)
(declare-sort var1222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3363_randomUUID/-2039575017 () var3363)
(declare-fun append/-1031950772 (String var1222) String)
(declare-fun cast-from-var3363-to-var1222 (var3363) var1222)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var416_nvl/-2105937532 (var1222 var1222) var1222)
(declare-fun cast-from-String-to-var1222 (String) var1222)
(declare-fun cast-from-var1222-to-String (var1222) String)
(declare-fun packageSignatureId/-876288022 (var416) String)
(declare-const null-var416 var416)
(declare-const null-String String)
(declare-const var3196 var416) ; Statement: r0 := @this: org.apache.poi.poifs.crypt.dsig.SignatureConfig 
(assert (not (= var3196 null-var416)))
(declare-const var2132 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2132 null-String)))
(define-const var2733 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2733)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2733!1 String)
(assert (= var2733!1 ""))
(assert true)
(define-const var1152 String (append/672562846 var2733!1 "xmldsig-")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xmldsig-") 
(declare-const var2733!2 String)
(assert (= var2733!2 (str.++ var2733!1 "xmldsig-")))
(define-const var763 var3363 var3363_randomUUID/-2039575017) ; Statement: $r3 = staticinvoke <java.util.UUID: java.util.UUID randomUUID()>() 
(assert true)
(define-const var3372 String (append/-1031950772 var1152 (cast-from-var3363-to-var1222 var763))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1152!1 String)
(assert (str.prefixof var1152 var1152!1))
(assert true)
(define-const var2022 String (toString/-2075883882 var3372)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3538 var1222 (var416_nvl/-2105937532 (cast-from-String-to-var1222 var2132) (cast-from-String-to-var1222 var2022))) ; Statement: $r7 = staticinvoke <org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.Object nvl(java.lang.Object,java.lang.Object)>(r1, $r6) 
(define-const var723 String (cast-from-var1222-to-String var3538)) ; Statement: $r8 = (java.lang.String) $r7 
(declare-const var3196!1 var416)
(assert (not (= var3196!1 null-var416)))
(assert (= (packageSignatureId/-876288022 var3196!1) var723)) ; Statement: r0.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.String packageSignatureId> = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3363_randomUUID/-2039575017=([], java.util.UUID), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3363-to-var1222=([java.util.UUID], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var416_nvl/-2105937532=([java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1222=([java.lang.String], java.lang.Object), cast-from-var1222-to-String=([java.lang.Object], java.lang.String), packageSignatureId/-876288022=([org.apache.poi.poifs.crypt.dsig.SignatureConfig], java.lang.String)}
; {var416=org.apache.poi.poifs.crypt.dsig.SignatureConfig, var3196=r0, var2132=r1, var219=null_type, var2733=$r2, var1152=$r4, var3363=java.util.UUID, var763=$r3, var1222=java.lang.Object, var3372=$r5, var2022=$r6, var3538=$r7, var723=$r8}
; {org.apache.poi.poifs.crypt.dsig.SignatureConfig=var416, r0=var3196, r1=var2132, null_type=var219, $r2=var2733, $r4=var1152, java.util.UUID=var3363, $r3=var763, java.lang.Object=var1222, $r5=var3372, $r6=var2022, $r7=var3538, $r8=var723}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.poifs.crypt.dsig.SignatureConfig;	r1 := @parameter0: java.lang.String;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xmldsig-");	$r3 = staticinvoke <java.util.UUID: java.util.UUID randomUUID()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = staticinvoke <org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.Object nvl(java.lang.Object,java.lang.Object)>(r1, $r6);	$r8 = (java.lang.String) $r7;	r0.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.String packageSignatureId> = $r8;	return
;block_num 1
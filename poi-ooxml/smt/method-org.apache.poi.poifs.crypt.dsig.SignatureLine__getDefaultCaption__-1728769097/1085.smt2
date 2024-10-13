(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun suggestedSigner/-1667686756 (var2831) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun suggestedSigner2/-1667686756 (var2831) String)
(declare-fun suggestedSignerEmail/-1667686756 (var2831) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2831 var2831)
(declare-const var3082 var2831) ; Statement: r1 := @this: org.apache.poi.poifs.crypt.dsig.SignatureLine 
(assert (not (= var3082 null-var2831)))
(define-const var3610 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3610)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3610!1 String)
(assert (= var3610!1 ""))
(define-const var389 String (suggestedSigner/-1667686756 var3082)) ; Statement: $r2 = r1.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String suggestedSigner> 
(assert true)
(define-const var2481 String (append/672562846 var3610!1 var389)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3610!2 String)
(assert (= var3610!2 (str.++ var3610!1 var389)))
(assert true)
(define-const var2786 String (append/672562846 var2481 "\n")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var2481!1 String)
(assert (= var2481!1 (str.++ var2481 "\n")))
(define-const var33 String (suggestedSigner2/-1667686756 var3082)) ; Statement: $r4 = r1.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String suggestedSigner2> 
(assert true)
(define-const var3294 String (append/672562846 var2786 var33)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2786!1 String)
(assert (= var2786!1 (str.++ var2786 var33)))
(assert true)
(define-const var616 String (append/672562846 var3294 "\n")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var3294!1 String)
(assert (= var3294!1 (str.++ var3294 "\n")))
(define-const var3466 String (suggestedSignerEmail/-1667686756 var3082)) ; Statement: $r7 = r1.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String suggestedSignerEmail> 
(assert true)
(define-const var18 String (append/672562846 var616 var3466)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var616!1 String)
(assert (= var616!1 (str.++ var616 var3466)))
(assert true)
(define-const var436 String (toString/-2075883882 var18)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), suggestedSigner/-1667686756=([org.apache.poi.poifs.crypt.dsig.SignatureLine], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), suggestedSigner2/-1667686756=([org.apache.poi.poifs.crypt.dsig.SignatureLine], java.lang.String), suggestedSignerEmail/-1667686756=([org.apache.poi.poifs.crypt.dsig.SignatureLine], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2831=org.apache.poi.poifs.crypt.dsig.SignatureLine, var3082=r1, var3610=$r0, var389=$r2, var2481=$r3, var2786=$r5, var33=$r4, var3294=$r6, var616=$r8, var3466=$r7, var18=$r9, var436=$r10}
; {org.apache.poi.poifs.crypt.dsig.SignatureLine=var2831, r1=var3082, $r0=var3610, $r2=var389, $r3=var2481, $r5=var2786, $r4=var33, $r6=var3294, $r8=var616, $r7=var3466, $r9=var18, $r10=var436}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.poifs.crypt.dsig.SignatureLine;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String suggestedSigner>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r4 = r1.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String suggestedSigner2>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r7 = r1.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String suggestedSignerEmail>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1
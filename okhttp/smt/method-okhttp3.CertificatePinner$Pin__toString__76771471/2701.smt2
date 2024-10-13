(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1171 0)
(declare-sort var66 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun hashAlgorithm/487783471 (var1171) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun hash/487783471 (var1171) var66)
(declare-fun base64/-54072094 (var66) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1171 var1171)
(declare-const var2888 var1171) ; Statement: r1 := @this: okhttp3.CertificatePinner$Pin 
(assert (not (= var2888 null-var1171)))
(define-const var428 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var428)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var428!1 String)
(assert (= var428!1 ""))
(define-const var3565 String (hashAlgorithm/487783471 var2888)) ; Statement: $r2 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String hashAlgorithm> 
(assert true)
(define-const var2245 String (append/672562846 var428!1 var3565)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var428!2 String)
(assert (= var428!2 (str.++ var428!1 var3565)))
(assert true)
(define-const var1558 String (append/-1166366385 var2245 47)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47) 
(declare-const var2245!1 String)
(assert (str.prefixof var2245 var2245!1))
(define-const var3897 var66 (hash/487783471 var2888)) ; Statement: $r4 = r1.<okhttp3.CertificatePinner$Pin: okio.ByteString hash> 
(assert true)
(define-const var3604 String (base64/-54072094 var3897)) ; Statement: $r5 = virtualinvoke $r4.<okio.ByteString: java.lang.String base64()>() 
(assert true)
(define-const var2927 String (append/672562846 var1558 var3604)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1558!1 String)
(assert (= var1558!1 (str.++ var1558 var3604)))
(assert true)
(define-const var580 String (toString/-2075883882 var2927)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), hashAlgorithm/487783471=([okhttp3.CertificatePinner$Pin], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), hash/487783471=([okhttp3.CertificatePinner$Pin], okio.ByteString), base64/-54072094=([okio.ByteString], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1171=okhttp3.CertificatePinner$Pin, var2888=r1, var428=$r0, var3565=$r2, var2245=$r3, var1558=$r6, var66=okio.ByteString, var3897=$r4, var3604=$r5, var2927=$r7, var580=$r8}
; {okhttp3.CertificatePinner$Pin=var1171, r1=var2888, $r0=var428, $r2=var3565, $r3=var2245, $r6=var1558, okio.ByteString=var66, $r4=var3897, $r5=var3604, $r7=var2927, $r8=var580}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.CertificatePinner$Pin;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String hashAlgorithm>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47);	$r4 = r1.<okhttp3.CertificatePinner$Pin: okio.ByteString hash>;	$r5 = virtualinvoke $r4.<okio.ByteString: java.lang.String base64()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1
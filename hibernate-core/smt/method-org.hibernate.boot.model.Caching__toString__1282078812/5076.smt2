(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1914 0)
(declare-sort var1958 0)
(declare-sort var346 0)
(declare-sort var2236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun region/-550673980 (var1914) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun accessType/-550673980 (var1914) var1958)
(declare-fun append/-1031950772 (String var346) String)
(declare-fun cast-from-var1958-to-var346 (var1958) var346)
(declare-fun cacheLazyProperties/-550673980 (var1914) Bool)
(declare-fun append/-388390247 (String Bool) String)
(declare-fun requested/-550673980 (var1914) var2236)
(declare-fun cast-from-var2236-to-var346 (var2236) var346)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1914 var1914)
(declare-const var3660 var1914) ; Statement: r1 := @this: org.hibernate.boot.model.Caching 
(assert (not (= var3660 null-var1914)))
(define-const var914 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var914)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var914!1 String)
(assert (= var914!1 ""))
(assert true)
(define-const var3556 String (append/672562846 var914!1 "Caching{region=\u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Caching{region=\'") 
(declare-const var914!2 String)
(assert (= var914!2 (str.++ var914!1 "Caching{region=\u0027")))
(define-const var172 String (region/-550673980 var3660)) ; Statement: $r2 = r1.<org.hibernate.boot.model.Caching: java.lang.String region> 
(assert true)
(define-const var2558 String (append/672562846 var3556 var172)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3556!1 String)
(assert (= var3556!1 (str.++ var3556 var172)))
(assert true)
(define-const var2211 String (append/-1166366385 var2558 39)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var2558!1 String)
(assert (str.prefixof var2558 var2558!1))
(assert true)
(define-const var985 String (append/672562846 var2211 ", accessType=")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", accessType=") 
(declare-const var2211!1 String)
(assert (= var2211!1 (str.++ var2211 ", accessType=")))
(define-const var1512 var1958 (accessType/-550673980 var3660)) ; Statement: $r6 = r1.<org.hibernate.boot.model.Caching: org.hibernate.cache.spi.access.AccessType accessType> 
(assert true)
(define-const var3999 String (append/-1031950772 var985 (cast-from-var1958-to-var346 var1512))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var985!1 String)
(assert (str.prefixof var985 var985!1))
(assert true)
(define-const var3229 String (append/672562846 var3999 ", cacheLazyProperties=")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", cacheLazyProperties=") 
(declare-const var3999!1 String)
(assert (= var3999!1 (str.++ var3999 ", cacheLazyProperties=")))
(define-const var2603 Bool (cacheLazyProperties/-550673980 var3660)) ; Statement: $z0 = r1.<org.hibernate.boot.model.Caching: boolean cacheLazyProperties> 
(assert true)
(define-const var2886 String (append/-388390247 var3229 var2603)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0) 
(declare-const var3229!1 String)
(assert (str.prefixof var3229 var3229!1))
(assert true)
(define-const var261 String (append/672562846 var2886 ", requested=")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", requested=") 
(declare-const var2886!1 String)
(assert (= var2886!1 (str.++ var2886 ", requested=")))
(define-const var481 var2236 (requested/-550673980 var3660)) ; Statement: $r11 = r1.<org.hibernate.boot.model.Caching: org.hibernate.boot.model.TruthValue requested> 
(assert true)
(define-const var1001 String (append/-1031950772 var261 (cast-from-var2236-to-var346 var481))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var261!1 String)
(assert (str.prefixof var261 var261!1))
(assert true)
(define-const var3263 String (append/-1166366385 var1001 125)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var1001!1 String)
(assert (str.prefixof var1001 var1001!1))
(assert true)
(define-const var2092 String (toString/-2075883882 var3263)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), region/-550673980=([org.hibernate.boot.model.Caching], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), accessType/-550673980=([org.hibernate.boot.model.Caching], org.hibernate.cache.spi.access.AccessType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1958-to-var346=([org.hibernate.cache.spi.access.AccessType], java.lang.Object), cacheLazyProperties/-550673980=([org.hibernate.boot.model.Caching], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), requested/-550673980=([org.hibernate.boot.model.Caching], org.hibernate.boot.model.TruthValue), cast-from-var2236-to-var346=([org.hibernate.boot.model.TruthValue], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1914=org.hibernate.boot.model.Caching, var3660=r1, var914=$r0, var3556=$r3, var172=$r2, var2558=$r4, var2211=$r5, var985=$r7, var1958=org.hibernate.cache.spi.access.AccessType, var1512=$r6, var346=java.lang.Object, var3999=$r8, var3229=$r9, var2603=$z0, var2886=$r10, var261=$r12, var2236=org.hibernate.boot.model.TruthValue, var481=$r11, var1001=$r13, var3263=$r14, var2092=$r15}
; {org.hibernate.boot.model.Caching=var1914, r1=var3660, $r0=var914, $r3=var3556, $r2=var172, $r4=var2558, $r5=var2211, $r7=var985, org.hibernate.cache.spi.access.AccessType=var1958, $r6=var1512, java.lang.Object=var346, $r8=var3999, $r9=var3229, $z0=var2603, $r10=var2886, $r12=var261, org.hibernate.boot.model.TruthValue=var2236, $r11=var481, $r13=var1001, $r14=var3263, $r15=var2092}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.boot.model.Caching;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Caching{region=\'");	$r2 = r1.<org.hibernate.boot.model.Caching: java.lang.String region>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", accessType=");	$r6 = r1.<org.hibernate.boot.model.Caching: org.hibernate.cache.spi.access.AccessType accessType>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", cacheLazyProperties=");	$z0 = r1.<org.hibernate.boot.model.Caching: boolean cacheLazyProperties>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", requested=");	$r11 = r1.<org.hibernate.boot.model.Caching: org.hibernate.boot.model.TruthValue requested>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 1
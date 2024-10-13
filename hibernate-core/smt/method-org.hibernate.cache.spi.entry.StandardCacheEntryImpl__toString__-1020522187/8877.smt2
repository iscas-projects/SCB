(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3017 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun subclass/2131935837 (var3017) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3017 var3017)
(declare-const var414 var3017) ; Statement: r1 := @this: org.hibernate.cache.spi.entry.StandardCacheEntryImpl 
(assert (not (= var414 null-var3017)))
(define-const var403 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var403)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var403!1 String)
(assert (= var403!1 ""))
(assert true)
(define-const var3851 String (append/672562846 var403!1 "CacheEntry(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CacheEntry(") 
(declare-const var403!2 String)
(assert (= var403!2 (str.++ var403!1 "CacheEntry(")))
(define-const var1746 String (subclass/2131935837 var414)) ; Statement: $r2 = r1.<org.hibernate.cache.spi.entry.StandardCacheEntryImpl: java.lang.String subclass> 
(assert true)
(define-const var3710 String (append/672562846 var3851 var1746)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3851!1 String)
(assert (= var3851!1 (str.++ var3851 var1746)))
(assert true)
(define-const var3375 String (append/-1166366385 var3710 41)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3710!1 String)
(assert (str.prefixof var3710 var3710!1))
(assert true)
(define-const var2715 String (toString/-2075883882 var3375)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), subclass/2131935837=([org.hibernate.cache.spi.entry.StandardCacheEntryImpl], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3017=org.hibernate.cache.spi.entry.StandardCacheEntryImpl, var414=r1, var403=$r0, var3851=$r3, var1746=$r2, var3710=$r4, var3375=$r5, var2715=$r6}
; {org.hibernate.cache.spi.entry.StandardCacheEntryImpl=var3017, r1=var414, $r0=var403, $r3=var3851, $r2=var1746, $r4=var3710, $r5=var3375, $r6=var2715}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cache.spi.entry.StandardCacheEntryImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CacheEntry(");	$r2 = r1.<org.hibernate.cache.spi.entry.StandardCacheEntryImpl: java.lang.String subclass>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
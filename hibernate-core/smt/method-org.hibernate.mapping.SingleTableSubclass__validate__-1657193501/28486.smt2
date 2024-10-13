(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1415 0)
(declare-sort var2169 0)
(declare-sort var3807 0)
(declare-sort var3862 0)
(declare-sort var1953 0)
(declare-sort var2271 0)
(declare-sort var3176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDiscriminator/231740898 (var3862) var3807)
(declare-fun cast-from-var1415-to-var3862 (var1415) var3862)
(declare-fun var1953-init () var1953)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityName/-2043384209 (var2271) String)
(declare-fun cast-from-var1415-to-var2271 (var1415) var2271)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1953 String) void)
(declare-fun cast-from-var1953-to-var3176 (var1953) var3176)
(declare-const null-var1415 var1415)
(declare-const null-var2169 var2169)
(declare-const null-var3807 var3807)
(declare-const var2159 var1415) ; Statement: r0 := @this: org.hibernate.mapping.SingleTableSubclass 
(assert (not (= var2159 null-var1415)))
(declare-const var988 var2169) ; Statement: r2 := @parameter0: org.hibernate.engine.spi.Mapping 
(assert (not (= var988 null-var2169)))
(assert true)
(define-const var3420 var3807 (getDiscriminator/231740898 (cast-from-var1415-to-var3862 var2159))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.SingleTableSubclass: org.hibernate.mapping.Value getDiscriminator()>() 
 ; Statement: if $r1 != null goto specialinvoke r0.<org.hibernate.mapping.Subclass: void validate(org.hibernate.engine.spi.Mapping)>(r2) 
(assert (not (not (= var3420 null-var3807)))) ; Negate: Cond: $r1 != null  
(define-const var2044 var1953 var1953-init) ; Statement: $r11 = new org.hibernate.MappingException 
(define-const var2123 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2123)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2123!1 String)
(assert (= var2123!1 ""))
(assert true)
(define-const var1796 String (append/672562846 var2123!1 "No discriminator found for ")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No discriminator found for ") 
(declare-const var2123!2 String)
(assert (= var2123!2 (str.++ var2123!1 "No discriminator found for ")))
(assert true)
(define-const var469 String (getEntityName/-2043384209 (cast-from-var1415-to-var2271 var2159))) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.mapping.SingleTableSubclass: java.lang.String getEntityName()>() 
(assert true)
(define-const var3058 String (append/672562846 var1796 var469)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1796!1 String)
(assert (= var1796!1 (str.++ var1796 var469)))
(assert true)
(define-const var1782 String (append/672562846 var3058 ". Discriminator is needed when \u0027single-table-per-hierarchy\u0027 is used and a class has subclasses")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Discriminator is needed when \'single-table-per-hierarchy\' is used and a class has subclasses") 
(declare-const var3058!1 String)
(assert (= var3058!1 (str.++ var3058 ". Discriminator is needed when \u0027single-table-per-hierarchy\u0027 is used and a class has subclasses")))
(assert true)
(define-const var2009 String (toString/-2075883882 var1782)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var2044 var2009)) ; Statement: specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r9) 

(declare-const var2044!1 var1953)
(declare-const var2009!1 String)
(define-const var1672 var3176 (cast-from-var1953-to-var3176 var2044!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getDiscriminator/231740898=([org.hibernate.mapping.Subclass], org.hibernate.mapping.Value), cast-from-var1415-to-var3862=([org.hibernate.mapping.SingleTableSubclass], org.hibernate.mapping.Subclass), var1953-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), cast-from-var1415-to-var2271=([org.hibernate.mapping.SingleTableSubclass], org.hibernate.mapping.PersistentClass), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1953-to-var3176=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1415=org.hibernate.mapping.SingleTableSubclass, var2159=r0, var2169=org.hibernate.engine.spi.Mapping, var988=r2, var3807=org.hibernate.mapping.Value, var3862=org.hibernate.mapping.Subclass, var3420=$r1, var1953=org.hibernate.MappingException, var2044=$r11, var2123=$r10, var1796=$r6, var2271=org.hibernate.mapping.PersistentClass, var469=$r5, var3058=$r7, var1782=$r8, var2009=$r9, var3176=java.lang.Throwable, var1672=$r12}
; {org.hibernate.mapping.SingleTableSubclass=var1415, r0=var2159, org.hibernate.engine.spi.Mapping=var2169, r2=var988, org.hibernate.mapping.Value=var3807, org.hibernate.mapping.Subclass=var3862, $r1=var3420, org.hibernate.MappingException=var1953, $r11=var2044, $r10=var2123, $r6=var1796, org.hibernate.mapping.PersistentClass=var2271, $r5=var469, $r7=var3058, $r8=var1782, $r9=var2009, java.lang.Throwable=var3176, $r12=var1672}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.SingleTableSubclass;	r2 := @parameter0: org.hibernate.engine.spi.Mapping;	$r1 = virtualinvoke r0.<org.hibernate.mapping.SingleTableSubclass: org.hibernate.mapping.Value getDiscriminator()>();	if $r1 != null goto specialinvoke r0.<org.hibernate.mapping.Subclass: void validate(org.hibernate.engine.spi.Mapping)>(r2);	$r11 = new org.hibernate.MappingException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No discriminator found for ");	$r5 = virtualinvoke r0.<org.hibernate.mapping.SingleTableSubclass: java.lang.String getEntityName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Discriminator is needed when \'single-table-per-hierarchy\' is used and a class has subclasses");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2
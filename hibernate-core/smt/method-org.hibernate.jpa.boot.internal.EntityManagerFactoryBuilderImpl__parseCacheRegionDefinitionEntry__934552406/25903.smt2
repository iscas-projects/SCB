(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2948 0)
(declare-sort var507 0)
(declare-sort var1403 0)
(declare-sort var1060 0)
(declare-sort var440 0)
(declare-sort var3509 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1060-init () var1060)
(declare-fun <init>/1909349671 (var1060 String String) void)
(declare-fun hasMoreTokens/711654492 (var1060) Bool)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun persistenceException/1821617216 (var2948 String) var440)
(declare-fun cast-from-var440-to-var3509 (var440) var3509)
(declare-const null-var2948 var2948)
(declare-const null-String String)
(declare-const null-var1403 var1403)
(declare-const var1403-ENTITY var1403)
(declare-const var1394 var2948) ; Statement: r15 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl 
(assert (not (= var1394 null-var2948)))
(declare-const var366 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var366 null-String)))
(declare-const var3258 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3258 null-String)))
(declare-const var916 var1403) ; Statement: r2 := @parameter2: org.hibernate.boot.CacheRegionDefinition$CacheRegionType 
(assert (not (= var916 null-var1403)))
(define-const var2923 var1060 var1060-init) ; Statement: $r23 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/1909349671 var2923 var3258 ";, ")) ; Statement: specialinvoke $r23.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r1, ";, ") 

(declare-const var2923!1 var1060)
(declare-const var3258!1 String)
(declare-const var1343 String)
(assert true)
(define-const var2347 Bool (hasMoreTokens/711654492 var2923!1)) ; Statement: $z0 = virtualinvoke $r23.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z0 != 0 goto r20 = virtualinvoke $r23.<java.util.StringTokenizer: java.lang.String nextToken()>() 
(assert (not (not (= (ite var2347 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2863 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2863 "Illegal usage of ")) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>(java.lang.String)>("Illegal usage of ") 
(declare-const var2863!1 String)
(assert (= var2863!1 "Illegal usage of "))
(define-const var2052 var1403 var1403-ENTITY) ; Statement: $r8 = <org.hibernate.boot.CacheRegionDefinition$CacheRegionType: org.hibernate.boot.CacheRegionDefinition$CacheRegionType ENTITY> 
 ; Statement: if r2 != $r8 goto $r9 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.collectioncache") 
(assert (not (= var916 var2052))) ; Cond: r2 != $r8 
(assert true)
(define-const var646 String (append/672562846 var2863!1 "hibernate.collectioncache")) ; Statement: $r9 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.collectioncache") 
(declare-const var2863!2 String)
(assert (= var2863!2 (str.++ var2863!1 "hibernate.collectioncache")))
(assert true)
(define-const var368 String (append/672562846 var646 ": ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var646!1 String)
(assert (= var646!1 (str.++ var646 ": ")))
(assert true)
;(assert (append/672562846 var368 "hibernate.collectioncache")) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.collectioncache") 
(declare-const var368!1 String)
(assert (= var368!1 (str.++ var368 "hibernate.collectioncache")))
(assert true) ; Non Conditional
(assert true)
(define-const var21 String (append/-1166366385 var2863!2 46)) ; Statement: $r11 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2863!3 String)
(assert (str.prefixof var2863!2 var2863!3))
(assert true)
(define-const var3770 String (append/672562846 var21 var366)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var21!1 String)
(assert (= var21!1 (str.++ var21 var366)))
(assert true)
(define-const var2584 String (append/-1166366385 var3770 32)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3770!1 String)
(assert (str.prefixof var3770 var3770!1))
(assert true)
(define-const var1304 String (append/672562846 var2584 var3258!1)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2584!1 String)
(assert (= var2584!1 (str.++ var2584 var3258!1)))
(assert true)
;(assert (append/672562846 var1304 ".  Was expecting configuration (usage[,region[,lazy]]), but found none")) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Was expecting configuration (usage[,region[,lazy]]), but found none") 
(declare-const var1304!1 String)
(assert (= var1304!1 (str.++ var1304 ".  Was expecting configuration (usage[,region[,lazy]]), but found none")))
(assert true)
(define-const var1712 String (toString/-2075883882 var2863!3)) ; Statement: $r16 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var271 var440 (persistenceException/1821617216 var1394 var1712)) ; Statement: $r17 = specialinvoke r15.<org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl: javax.persistence.PersistenceException persistenceException(java.lang.String)>($r16) 
(define-const var1587 var3509 (cast-from-var440-to-var3509 var271)) ; Statement: $r26 = (java.lang.Throwable) $r17 
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {var1060-init=([], java.util.StringTokenizer), <init>/1909349671=([java.util.StringTokenizer, java.lang.String, java.lang.String], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), persistenceException/1821617216=([org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl, java.lang.String], javax.persistence.PersistenceException), cast-from-var440-to-var3509=([javax.persistence.PersistenceException], java.lang.Throwable)}
; {var2948=org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl, var1394=r15, var366=r4, var507=null_type, var3258=r1, var1403=org.hibernate.boot.CacheRegionDefinition$CacheRegionType, var916=r2, var1060=java.util.StringTokenizer, var2923=$r23, var1343=";, ", var2347=$z0, var2863=$r24, var2052=$r8, var646=$r9, var368=$r10, var21=$r11, var3770=$r12, var2584=$r13, var1304=$r14, var1712=$r16, var440=javax.persistence.PersistenceException, var271=$r17, var3509=java.lang.Throwable, var1587=$r26}
; {org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl=var2948, r15=var1394, r4=var366, null_type=var507, r1=var3258, org.hibernate.boot.CacheRegionDefinition$CacheRegionType=var1403, r2=var916, java.util.StringTokenizer=var1060, $r23=var2923, ";, "=var1343, $z0=var2347, $r24=var2863, $r8=var2052, $r9=var646, $r10=var368, $r11=var21, $r12=var3770, $r13=var2584, $r14=var1304, $r16=var1712, javax.persistence.PersistenceException=var440, $r17=var271, java.lang.Throwable=var3509, $r26=var1587}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl;	r4 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: org.hibernate.boot.CacheRegionDefinition$CacheRegionType;	$r23 = new java.util.StringTokenizer;	specialinvoke $r23.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r1, ";, ");	$z0 = virtualinvoke $r23.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z0 != 0 goto r20 = virtualinvoke $r23.<java.util.StringTokenizer: java.lang.String nextToken()>();	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>(java.lang.String)>("Illegal usage of ");	$r8 = <org.hibernate.boot.CacheRegionDefinition$CacheRegionType: org.hibernate.boot.CacheRegionDefinition$CacheRegionType ENTITY>;	if r2 != $r8 goto $r9 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.collectioncache");	$r9 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.collectioncache");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.collectioncache");	$r11 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Was expecting configuration (usage[,region[,lazy]]), but found none");	$r16 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = specialinvoke r15.<org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl: javax.persistence.PersistenceException persistenceException(java.lang.String)>($r16);	$r26 = (java.lang.Throwable) $r17;	throw $r26
;block_num 4
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1897 0)
(declare-sort var3816 0)
(declare-sort var3684 0)
(declare-sort var2181 0)
(declare-sort var2942 0)
(declare-sort var3474 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2181-init () var2181)
(declare-fun <init>/1909349671 (var2181 String String) void)
(declare-fun hasMoreTokens/711654492 (var2181) Bool)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun persistenceException/1821617216 (var1897 String) var2942)
(declare-fun cast-from-var2942-to-var3474 (var2942) var3474)
(declare-const null-var1897 var1897)
(declare-const null-String String)
(declare-const null-var3684 var3684)
(declare-const var3684-ENTITY var3684)
(declare-const var1476 var1897) ; Statement: r15 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl 
(assert (not (= var1476 null-var1897)))
(declare-const var640 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var640 null-String)))
(declare-const var2866 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2866 null-String)))
(declare-const var2650 var3684) ; Statement: r2 := @parameter2: org.hibernate.boot.CacheRegionDefinition$CacheRegionType 
(assert (not (= var2650 null-var3684)))
(define-const var3531 var2181 var2181-init) ; Statement: $r23 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/1909349671 var3531 var2866 ";, ")) ; Statement: specialinvoke $r23.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r1, ";, ") 

(declare-const var3531!1 var2181)
(declare-const var2866!1 String)
(declare-const var1012 String)
(assert true)
(define-const var2293 Bool (hasMoreTokens/711654492 var3531!1)) ; Statement: $z0 = virtualinvoke $r23.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z0 != 0 goto r20 = virtualinvoke $r23.<java.util.StringTokenizer: java.lang.String nextToken()>() 
(assert (not (not (= (ite var2293 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2128 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2128 "Illegal usage of ")) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>(java.lang.String)>("Illegal usage of ") 
(declare-const var2128!1 String)
(assert (= var2128!1 "Illegal usage of "))
(define-const var3122 var3684 var3684-ENTITY) ; Statement: $r8 = <org.hibernate.boot.CacheRegionDefinition$CacheRegionType: org.hibernate.boot.CacheRegionDefinition$CacheRegionType ENTITY> 
 ; Statement: if r2 != $r8 goto $r9 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.collectioncache") 
(assert (not (not (= var2650 var3122)))) ; Negate: Cond: r2 != $r8  
(assert true)
(define-const var2488 String (append/672562846 var2128!1 "hibernate.classcache")) ; Statement: $r18 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.classcache") 
(declare-const var2128!2 String)
(assert (= var2128!2 (str.++ var2128!1 "hibernate.classcache")))
(assert true)
(define-const var111 String (append/672562846 var2488 ": ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2488!1 String)
(assert (= var2488!1 (str.++ var2488 ": ")))
(assert true)
;(assert (append/672562846 var111 "hibernate.classcache")) ; Statement: virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.classcache") 
(declare-const var111!1 String)
(assert (= var111!1 (str.++ var111 "hibernate.classcache")))
 ; Statement: goto [?= $r11 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2606 String (append/-1166366385 var2128!2 46)) ; Statement: $r11 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2128!3 String)
(assert (str.prefixof var2128!2 var2128!3))
(assert true)
(define-const var625 String (append/672562846 var2606 var640)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2606!1 String)
(assert (= var2606!1 (str.++ var2606 var640)))
(assert true)
(define-const var1850 String (append/-1166366385 var625 32)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var625!1 String)
(assert (str.prefixof var625 var625!1))
(assert true)
(define-const var2936 String (append/672562846 var1850 var2866!1)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1850!1 String)
(assert (= var1850!1 (str.++ var1850 var2866!1)))
(assert true)
;(assert (append/672562846 var2936 ".  Was expecting configuration (usage[,region[,lazy]]), but found none")) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Was expecting configuration (usage[,region[,lazy]]), but found none") 
(declare-const var2936!1 String)
(assert (= var2936!1 (str.++ var2936 ".  Was expecting configuration (usage[,region[,lazy]]), but found none")))
(assert true)
(define-const var2840 String (toString/-2075883882 var2128!3)) ; Statement: $r16 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3022 var2942 (persistenceException/1821617216 var1476 var2840)) ; Statement: $r17 = specialinvoke r15.<org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl: javax.persistence.PersistenceException persistenceException(java.lang.String)>($r16) 
(define-const var2107 var3474 (cast-from-var2942-to-var3474 var3022)) ; Statement: $r26 = (java.lang.Throwable) $r17 
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {var2181-init=([], java.util.StringTokenizer), <init>/1909349671=([java.util.StringTokenizer, java.lang.String, java.lang.String], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), persistenceException/1821617216=([org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl, java.lang.String], javax.persistence.PersistenceException), cast-from-var2942-to-var3474=([javax.persistence.PersistenceException], java.lang.Throwable)}
; {var1897=org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl, var1476=r15, var640=r4, var3816=null_type, var2866=r1, var3684=org.hibernate.boot.CacheRegionDefinition$CacheRegionType, var2650=r2, var2181=java.util.StringTokenizer, var3531=$r23, var1012=";, ", var2293=$z0, var2128=$r24, var3122=$r8, var2488=$r18, var111=$r19, var2606=$r11, var625=$r12, var1850=$r13, var2936=$r14, var2840=$r16, var2942=javax.persistence.PersistenceException, var3022=$r17, var3474=java.lang.Throwable, var2107=$r26}
; {org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl=var1897, r15=var1476, r4=var640, null_type=var3816, r1=var2866, org.hibernate.boot.CacheRegionDefinition$CacheRegionType=var3684, r2=var2650, java.util.StringTokenizer=var2181, $r23=var3531, ";, "=var1012, $z0=var2293, $r24=var2128, $r8=var3122, $r18=var2488, $r19=var111, $r11=var2606, $r12=var625, $r13=var1850, $r14=var2936, $r16=var2840, javax.persistence.PersistenceException=var2942, $r17=var3022, java.lang.Throwable=var3474, $r26=var2107}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl;	r4 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: org.hibernate.boot.CacheRegionDefinition$CacheRegionType;	$r23 = new java.util.StringTokenizer;	specialinvoke $r23.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r1, ";, ");	$z0 = virtualinvoke $r23.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z0 != 0 goto r20 = virtualinvoke $r23.<java.util.StringTokenizer: java.lang.String nextToken()>();	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>(java.lang.String)>("Illegal usage of ");	$r8 = <org.hibernate.boot.CacheRegionDefinition$CacheRegionType: org.hibernate.boot.CacheRegionDefinition$CacheRegionType ENTITY>;	if r2 != $r8 goto $r9 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.collectioncache");	$r18 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.classcache");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.classcache");	goto [?= $r11 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46)];	$r11 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Was expecting configuration (usage[,region[,lazy]]), but found none");	$r16 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = specialinvoke r15.<org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl: javax.persistence.PersistenceException persistenceException(java.lang.String)>($r16);	$r26 = (java.lang.Throwable) $r17;	throw $r26
;block_num 4
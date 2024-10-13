(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1105 0)
(declare-sort var335 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1105 var1105)
(declare-const null-String String)
(declare-const var1260 var1105) ; Statement: r11 := @this: org.hibernate.cache.spi.support.RegionNameQualifier 
(assert (not (= var1260 null-var1105)))
(declare-const var1920 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1920 null-String)))
(declare-const var711 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var711 null-String)))
(define-const var2857 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2857)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2857!1 String)
(assert (= var2857!1 ""))
(assert true)
(define-const var2729 String (append/672562846 var2857!1 var1920)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2857!2 String)
(assert (= var2857!2 (str.++ var2857!1 var1920)))
(assert true)
(define-const var1783 String (append/-1166366385 var2729 46)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2729!1 String)
(assert (str.prefixof var2729 var2729!1))
(assert true)
(define-const var3081 String (toString/-2075883882 var1783)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3463 Bool (startsWith/-1785782452 var711 var3081)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r5) 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (= (ite var3463 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3590 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3590)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3590!1 String)
(assert (= var3590!1 ""))
(assert true)
(define-const var1313 String (append/672562846 var3590!1 var1920)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3590!2 String)
(assert (= var3590!2 (str.++ var3590!1 var1920)))
(assert true)
(define-const var2744 String (append/-1166366385 var1313 46)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1313!1 String)
(assert (str.prefixof var1313 var1313!1))
(assert true)
(define-const var2455 String (append/672562846 var2744 var711)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2744!1 String)
(assert (= var2744!1 (str.++ var2744 var711)))
(assert true)
(define-const var484 String (toString/-2075883882 var2455)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1105=org.hibernate.cache.spi.support.RegionNameQualifier, var1260=r11, var1920=r2, var335=null_type, var711=r0, var2857=$r1, var2729=$r3, var1783=$r4, var3081=$r5, var3463=$z0, var3590=$r6, var1313=$r7, var2744=$r8, var2455=$r9, var484=$r10}
; {org.hibernate.cache.spi.support.RegionNameQualifier=var1105, r11=var1260, r2=var1920, null_type=var335, r0=var711, $r1=var2857, $r3=var2729, $r4=var1783, $r5=var3081, $z0=var3463, $r6=var3590, $r7=var1313, $r8=var2744, $r9=var2455, $r10=var484}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r11 := @this: org.hibernate.cache.spi.support.RegionNameQualifier;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r5);	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1664 0)
(declare-sort var1880 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cacheRegionPrefix/-191801824 (var1664) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1664 var1664)
(declare-const null-String String)
(declare-const var3293 var1664) ; Statement: r0 := @this: org.hibernate.stat.internal.StatisticsImpl 
(assert (not (= var3293 null-var1664)))
(declare-const var3086 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3086 null-String)))
(define-const var1500 String (cacheRegionPrefix/-191801824 var3293)) ; Statement: $r1 = r0.<org.hibernate.stat.internal.StatisticsImpl: java.lang.String cacheRegionPrefix> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var1500 null-String))) ; Cond: $r1 != null 
(define-const var3031 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3031)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3031!1 String)
(assert (= var3031!1 ""))
(define-const var693 String (cacheRegionPrefix/-191801824 var3293)) ; Statement: $r3 = r0.<org.hibernate.stat.internal.StatisticsImpl: java.lang.String cacheRegionPrefix> 
(assert true)
(define-const var3301 String (append/672562846 var3031!1 var693)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3031!2 String)
(assert (= var3031!2 (str.++ var3031!1 var693)))
(assert true)
(define-const var2679 String (append/-1166366385 var3301 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3301!1 String)
(assert (str.prefixof var3301 var3301!1))
(assert true)
(define-const var3322 String (append/672562846 var2679 var3086)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2679!1 String)
(assert (= var2679!1 (str.++ var2679 var3086)))
(assert true)
(define-const var3675 String (toString/-2075883882 var3322)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {cacheRegionPrefix/-191801824=([org.hibernate.stat.internal.StatisticsImpl], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1664=org.hibernate.stat.internal.StatisticsImpl, var3293=r0, var3086=r5, var1880=null_type, var1500=$r1, var3031=$r2, var693=$r3, var3301=$r4, var2679=$r6, var3322=$r7, var3675=$r8}
; {org.hibernate.stat.internal.StatisticsImpl=var1664, r0=var3293, r5=var3086, null_type=var1880, $r1=var1500, $r2=var3031, $r3=var693, $r4=var3301, $r6=var2679, $r7=var3322, $r8=var3675}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.stat.internal.StatisticsImpl;	r5 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.stat.internal.StatisticsImpl: java.lang.String cacheRegionPrefix>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<org.hibernate.stat.internal.StatisticsImpl: java.lang.String cacheRegionPrefix>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3
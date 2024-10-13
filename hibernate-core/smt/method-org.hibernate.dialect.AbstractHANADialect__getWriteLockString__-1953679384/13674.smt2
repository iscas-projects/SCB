(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1141 0)
(declare-sort var3440 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLockWaitTimeoutInSeconds/-781444613 (var1141 Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/-1674222761 (var3440) String)
(declare-fun cast-from-var1141-to-var3440 (var1141) var3440)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1141 var1141)
(declare-const null-Int Int)
(declare-const var1898 var1141) ; Statement: r0 := @this: org.hibernate.dialect.AbstractHANADialect 
(assert (not (= var1898 null-var1141)))
(declare-const var1334 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1334 null-Int)))
(assert true)
(define-const var2721 Int (getLockWaitTimeoutInSeconds/-781444613 var1898 var1334)) ; Statement: l1 = specialinvoke r0.<org.hibernate.dialect.AbstractHANADialect: long getLockWaitTimeoutInSeconds(int)>(i0) 
(define-const var2358 Int (ite (> var2721 0) 1 (ite (< var2721 0) (- 1) 0))) ; Statement: $b2 = l1 cmp 0L 
(define-const var3714 Int (cast-from-Int-to-Int var2358)) ; Statement: $i4 = (int) $b2 
 ; Statement: if $i4 <= 0 goto $b3 = l1 cmp 0L 
(assert (not (<= var3714 0))) ; Negate: Cond: $i4 <= 0  
(define-const var674 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var674)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var674!1 String)
(assert (= var674!1 ""))
(assert true)
(define-const var161 String (getForUpdateString/-1674222761 (cast-from-var1141-to-var3440 var1898))) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.dialect.AbstractHANADialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var2297 String (append/672562846 var674!1 var161)) ; Statement: $r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var674!2 String)
(assert (= var674!2 (str.++ var674!1 var161)))
(assert true)
(define-const var580 String (append/672562846 var2297 " wait ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" wait ") 
(declare-const var2297!1 String)
(assert (= var2297!1 (str.++ var2297 " wait ")))
(assert true)
(define-const var1620 String (append/-901862667 var580 var2721)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1) 
(declare-const var580!1 String)
(assert (str.prefixof var580 var580!1))
(assert true)
(define-const var1200 String (toString/-2075883882 var1620)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getLockWaitTimeoutInSeconds/-781444613=([org.hibernate.dialect.AbstractHANADialect, int], long), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/-1674222761=([org.hibernate.dialect.Dialect], java.lang.String), cast-from-var1141-to-var3440=([org.hibernate.dialect.AbstractHANADialect], org.hibernate.dialect.Dialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1141=org.hibernate.dialect.AbstractHANADialect, var1898=r0, var1334=i0, var2721=l1, var2358=$b2, var3714=$i4, var674=$r9, var3440=org.hibernate.dialect.Dialect, var161=$r4, var2297=$r5, var580=$r6, var1620=$r7, var1200=$r8}
; {org.hibernate.dialect.AbstractHANADialect=var1141, r0=var1898, i0=var1334, l1=var2721, $b2=var2358, $i4=var3714, $r9=var674, org.hibernate.dialect.Dialect=var3440, $r4=var161, $r5=var2297, $r6=var580, $r7=var1620, $r8=var1200}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.AbstractHANADialect;	i0 := @parameter0: int;	l1 = specialinvoke r0.<org.hibernate.dialect.AbstractHANADialect: long getLockWaitTimeoutInSeconds(int)>(i0);	$b2 = l1 cmp 0L;	$i4 = (int) $b2;	if $i4 <= 0 goto $b3 = l1 cmp 0L;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke r0.<org.hibernate.dialect.AbstractHANADialect: java.lang.String getForUpdateString()>();	$r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" wait ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityCount/-474136048 (var2429) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getCollectionCount/-39028149 (var2429) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2429 var2429)
(declare-const var1028 var2429) ; Statement: r2 := @this: org.hibernate.stat.internal.SessionStatisticsImpl 
(assert (not (= var1028 null-var2429)))
(define-const var367 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var367)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var367!1 String)
(assert (= var367!1 ""))
(assert true)
(define-const var2386 String (append/672562846 var367!1 "SessionStatistics[")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SessionStatistics[") 
(declare-const var367!2 String)
(assert (= var367!2 (str.++ var367!1 "SessionStatistics[")))
(assert true)
(define-const var2495 String (append/672562846 var2386 "entity count=")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("entity count=") 
(declare-const var2386!1 String)
(assert (= var2386!1 (str.++ var2386 "entity count=")))
(assert true)
(define-const var1080 Int (getEntityCount/-474136048 var1028)) ; Statement: $i0 = virtualinvoke r2.<org.hibernate.stat.internal.SessionStatisticsImpl: int getEntityCount()>() 
(assert true)
(define-const var3767 String (append/-1001720160 var2495 var1080)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2495!1 String)
(assert (str.prefixof var2495 var2495!1))
(assert true)
(define-const var733 String (append/672562846 var3767 ",collection count=")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",collection count=") 
(declare-const var3767!1 String)
(assert (= var3767!1 (str.++ var3767 ",collection count=")))
(assert true)
(define-const var3419 Int (getCollectionCount/-39028149 var1028)) ; Statement: $i1 = virtualinvoke r2.<org.hibernate.stat.internal.SessionStatisticsImpl: int getCollectionCount()>() 
(assert true)
(define-const var1178 String (append/-1001720160 var733 var3419)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var733!1 String)
(assert (str.prefixof var733 var733!1))
(assert true)
(define-const var3859 String (append/-1166366385 var1178 93)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1178!1 String)
(assert (str.prefixof var1178 var1178!1))
(assert true)
(define-const var3315 String (toString/-2075883882 var3859)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityCount/-474136048=([org.hibernate.stat.internal.SessionStatisticsImpl], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getCollectionCount/-39028149=([org.hibernate.stat.internal.SessionStatisticsImpl], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2429=org.hibernate.stat.internal.SessionStatisticsImpl, var1028=r2, var367=$r0, var2386=$r1, var2495=$r3, var1080=$i0, var3767=$r4, var733=$r5, var3419=$i1, var1178=$r6, var3859=$r7, var3315=$r8}
; {org.hibernate.stat.internal.SessionStatisticsImpl=var2429, r2=var1028, $r0=var367, $r1=var2386, $r3=var2495, $i0=var1080, $r4=var3767, $r5=var733, $i1=var3419, $r6=var1178, $r7=var3859, $r8=var3315}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.stat.internal.SessionStatisticsImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SessionStatistics[");	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("entity count=");	$i0 = virtualinvoke r2.<org.hibernate.stat.internal.SessionStatisticsImpl: int getEntityCount()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",collection count=");	$i1 = virtualinvoke r2.<org.hibernate.stat.internal.SessionStatisticsImpl: int getCollectionCount()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1
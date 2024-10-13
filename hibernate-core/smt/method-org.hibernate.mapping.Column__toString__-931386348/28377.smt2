(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1688 0)
(declare-sort var1980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1980) ClassObject)
(declare-fun cast-from-var1688-to-var1980 (var1688) var1980)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getName/1923604921 (var1688) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1688 var1688)
(declare-const var3075 var1688) ; Statement: r1 := @this: org.hibernate.mapping.Column 
(assert (not (= var3075 null-var1688)))
(define-const var1083 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1083)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1083!1 String)
(assert (= var1083!1 ""))
(assert true)
(define-const var367 ClassObject (getClass/1258963082 (cast-from-var1688-to-var1980 var3075))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var224 String (getName/-1958580599 var367)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2650 String (append/672562846 var1083!1 var224)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1083!2 String)
(assert (= var1083!2 (str.++ var1083!1 var224)))
(assert true)
(define-const var767 String (append/-1166366385 var2650 40)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var2650!1 String)
(assert (str.prefixof var2650 var2650!1))
(assert true)
(define-const var1031 String (getName/1923604921 var3075)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.mapping.Column: java.lang.String getName()>() 
(assert true)
(define-const var3450 String (append/672562846 var767 var1031)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var767!1 String)
(assert (= var767!1 (str.++ var767 var1031)))
(assert true)
(define-const var3288 String (append/-1166366385 var3450 41)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3450!1 String)
(assert (str.prefixof var3450 var3450!1))
(assert true)
(define-const var2649 String (toString/-2075883882 var3288)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1688-to-var1980=([org.hibernate.mapping.Column], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getName/1923604921=([org.hibernate.mapping.Column], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1688=org.hibernate.mapping.Column, var3075=r1, var1083=$r0, var1980=java.lang.Object, var367=$r2, var224=$r3, var2650=$r4, var767=$r6, var1031=$r5, var3450=$r7, var3288=$r8, var2649=$r9}
; {org.hibernate.mapping.Column=var1688, r1=var3075, $r0=var1083, java.lang.Object=var1980, $r2=var367, $r3=var224, $r4=var2650, $r6=var767, $r5=var1031, $r7=var3450, $r8=var3288, $r9=var2649}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.Column;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = virtualinvoke r1.<org.hibernate.mapping.Column: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1
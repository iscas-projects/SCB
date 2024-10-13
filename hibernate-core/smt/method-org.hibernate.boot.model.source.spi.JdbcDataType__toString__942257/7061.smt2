(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1365 0)
(declare-sort var2635 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-522406933 (var2635) String)
(declare-fun cast-from-var1365-to-var2635 (var1365) var2635)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun typeCode/1457624281 (var1365) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun typeName/1457624281 (var1365) String)
(declare-fun javaType/1457624281 (var1365) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1365 var1365)
(declare-const var1036 var1365) ; Statement: r1 := @this: org.hibernate.boot.model.source.spi.JdbcDataType 
(assert (not (= var1036 null-var1365)))
(define-const var2380 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2380)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2380!1 String)
(assert (= var2380!1 ""))
(assert true)
(define-const var2772 String (toString/-522406933 (cast-from-var1365-to-var2635 var1036))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3843 String (append/672562846 var2380!1 var2772)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2380!2 String)
(assert (= var2380!2 (str.++ var2380!1 var2772)))
(assert true)
(define-const var839 String (append/672562846 var3843 "[code=")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[code=") 
(declare-const var3843!1 String)
(assert (= var3843!1 (str.++ var3843 "[code=")))
(define-const var143 Int (typeCode/1457624281 var1036)) ; Statement: $i0 = r1.<org.hibernate.boot.model.source.spi.JdbcDataType: int typeCode> 
(assert true)
(define-const var1072 String (append/-1001720160 var839 var143)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var839!1 String)
(assert (str.prefixof var839 var839!1))
(assert true)
(define-const var2057 String (append/672562846 var1072 ", name=")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", name=") 
(declare-const var1072!1 String)
(assert (= var1072!1 (str.++ var1072 ", name=")))
(define-const var472 String (typeName/1457624281 var1036)) ; Statement: $r6 = r1.<org.hibernate.boot.model.source.spi.JdbcDataType: java.lang.String typeName> 
(assert true)
(define-const var1816 String (append/672562846 var2057 var472)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2057!1 String)
(assert (= var2057!1 (str.++ var2057 var472)))
(assert true)
(define-const var2170 String (append/672562846 var1816 ", javaClass=")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", javaClass=") 
(declare-const var1816!1 String)
(assert (= var1816!1 (str.++ var1816 ", javaClass=")))
(define-const var101 ClassObject (javaType/1457624281 var1036)) ; Statement: $r9 = r1.<org.hibernate.boot.model.source.spi.JdbcDataType: java.lang.Class javaType> 
(assert true)
(define-const var3420 String (getName/-1958580599 var101)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3773 String (append/672562846 var2170 var3420)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2170!1 String)
(assert (= var2170!1 (str.++ var2170 var3420)))
(assert true)
(define-const var136 String (append/672562846 var3773 "]")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3773!1 String)
(assert (= var3773!1 (str.++ var3773 "]")))
(assert true)
(define-const var2008 String (toString/-2075883882 var136)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1365-to-var2635=([org.hibernate.boot.model.source.spi.JdbcDataType], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), typeCode/1457624281=([org.hibernate.boot.model.source.spi.JdbcDataType], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), typeName/1457624281=([org.hibernate.boot.model.source.spi.JdbcDataType], java.lang.String), javaType/1457624281=([org.hibernate.boot.model.source.spi.JdbcDataType], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1365=org.hibernate.boot.model.source.spi.JdbcDataType, var1036=r1, var2380=$r0, var2635=java.lang.Object, var2772=$r2, var3843=$r3, var839=$r4, var143=$i0, var1072=$r5, var2057=$r7, var472=$r6, var1816=$r8, var2170=$r11, var101=$r9, var3420=$r10, var3773=$r12, var136=$r13, var2008=$r14}
; {org.hibernate.boot.model.source.spi.JdbcDataType=var1365, r1=var1036, $r0=var2380, java.lang.Object=var2635, $r2=var2772, $r3=var3843, $r4=var839, $i0=var143, $r5=var1072, $r7=var2057, $r6=var472, $r8=var1816, $r11=var2170, $r9=var101, $r10=var3420, $r12=var3773, $r13=var136, $r14=var2008}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.boot.model.source.spi.JdbcDataType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[code=");	$i0 = r1.<org.hibernate.boot.model.source.spi.JdbcDataType: int typeCode>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", name=");	$r6 = r1.<org.hibernate.boot.model.source.spi.JdbcDataType: java.lang.String typeName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", javaClass=");	$r9 = r1.<org.hibernate.boot.model.source.spi.JdbcDataType: java.lang.Class javaType>;	$r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1
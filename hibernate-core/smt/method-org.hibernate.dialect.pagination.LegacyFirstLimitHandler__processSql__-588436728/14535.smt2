(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1796 0)
(declare-sort var2749 0)
(declare-sort var3600 0)
(declare-sort var3415 0)
(declare-sort var1671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toLowerCase/1946809429 (String var3415) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun <init>/1968657023 () String "")
(declare-fun getMaxOrLimit/1324675775 (var1671 var3600) Int)
(declare-fun cast-from-var1796-to-var1671 (var1796) var1671)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun insert/1196171004 (String Int String) String)
(declare-const null-var1796 var1796)
(declare-const null-String String)
(declare-const null-var3600 var3600)
(declare-const var3415-ROOT var3415)
(declare-const var611 var1796) ; Statement: r5 := @this: org.hibernate.dialect.pagination.LegacyFirstLimitHandler 
(assert (not (= var611 null-var1796)))
(declare-const var3941 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3941 null-String)))
(declare-const var1189 var3600) ; Statement: r6 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var1189 null-var3600)))
(define-const var3486 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var2310 Int (length/-134980193 var3941)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2048 Int (+ var2310 16)) ; Statement: $i1 = $i0 + 16 
(assert true)
;(assert (<init>/543593434 var3486 var2048)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3486!1 String)
(declare-const var2048!1 Int)
(assert true)
(define-const var2711 String (append/672562846 var3486!1 var3941)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3486!2 String)
(assert (= var3486!2 (str.++ var3486!1 var3941)))
(define-const var924 var3415 var3415-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3345 String (toLowerCase/1946809429 var3941 var924)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
(define-const var2890 Int (indexOf/-1209756239 var3345 "select")) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int indexOf(java.lang.String)>("select") 
(define-const var159 Int (+ var2890 6)) ; Statement: $i4 = $i2 + 6 
(define-const var2173 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2173)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2173!1 String)
(assert (= var2173!1 ""))
(assert true)
(define-const var3588 String (append/672562846 var2173!1 " first ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" first ") 
(declare-const var2173!2 String)
(assert (= var2173!2 (str.++ var2173!1 " first ")))
(assert true)
(define-const var194 Int (getMaxOrLimit/1324675775 (cast-from-var1796-to-var1671 var611) var1189)) ; Statement: $i3 = virtualinvoke r5.<org.hibernate.dialect.pagination.LegacyFirstLimitHandler: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r6) 
(assert true)
(define-const var3462 String (append/-1001720160 var3588 var194)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var3588!1 String)
(assert (str.prefixof var3588 var3588!1))
(assert true)
(define-const var609 String (toString/-2075883882 var3462)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3974 String (insert/1196171004 var2711 var159 var609)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r9) 
(assert true)
(define-const var1642 String (toString/-2075883882 var3974)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), <init>/1968657023=([java.lang.StringBuilder], void), getMaxOrLimit/1324675775=([org.hibernate.dialect.pagination.AbstractLimitHandler, org.hibernate.engine.spi.RowSelection], int), cast-from-var1796-to-var1671=([org.hibernate.dialect.pagination.LegacyFirstLimitHandler], org.hibernate.dialect.pagination.AbstractLimitHandler), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder)}
; {var1796=org.hibernate.dialect.pagination.LegacyFirstLimitHandler, var611=r5, var3941=r1, var2749=null_type, var3600=org.hibernate.engine.spi.RowSelection, var1189=r6, var3486=$r0, var2310=$i0, var2048=$i1, var2711=$r10, var3415=java.util.Locale, var924=$r2, var3345=$r3, var2890=$i2, var159=$i4, var2173=$r4, var3588=$r7, var1671=org.hibernate.dialect.pagination.AbstractLimitHandler, var194=$i3, var3462=$r8, var609=$r9, var3974=$r11, var1642=$r12}
; {org.hibernate.dialect.pagination.LegacyFirstLimitHandler=var1796, r5=var611, r1=var3941, null_type=var2749, org.hibernate.engine.spi.RowSelection=var3600, r6=var1189, $r0=var3486, $i0=var2310, $i1=var2048, $r10=var2711, java.util.Locale=var3415, $r2=var924, $r3=var3345, $i2=var2890, $i4=var159, $r4=var2173, $r7=var3588, org.hibernate.dialect.pagination.AbstractLimitHandler=var1671, $i3=var194, $r8=var3462, $r9=var609, $r11=var3974, $r12=var1642}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1}
;stmts r5 := @this: org.hibernate.dialect.pagination.LegacyFirstLimitHandler;	r1 := @parameter0: java.lang.String;	r6 := @parameter1: org.hibernate.engine.spi.RowSelection;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 16;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$i2 = virtualinvoke $r3.<java.lang.String: int indexOf(java.lang.String)>("select");	$i4 = $i2 + 6;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" first ");	$i3 = virtualinvoke r5.<org.hibernate.dialect.pagination.LegacyFirstLimitHandler: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1
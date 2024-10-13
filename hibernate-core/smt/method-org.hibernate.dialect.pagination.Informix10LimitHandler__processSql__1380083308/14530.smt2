(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1514 0)
(declare-sort var2905 0)
(declare-sort var3595 0)
(declare-sort var3168 0)
(declare-sort var2925 0)
(declare-sort var3543 0)
(declare-sort var835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3168_hasFirstRow/-2097898482 (var3595) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFirstRow/1410679095 (var3595) Int)
(declare-fun append/-1031950772 (String var2925) String)
(declare-fun cast-from-Int-to-var2925 (Int) var2925)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getMaxOrLimit/1324675775 (var3543 var3595) Int)
(declare-fun cast-from-var1514-to-var3543 (var1514) var3543)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun toLowerCase/1946809429 (String var835) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun insert/1196171004 (String Int String) String)
(declare-const null-var1514 var1514)
(declare-const null-String String)
(declare-const null-var3595 var3595)
(declare-const var835-ROOT var835)
(declare-const var1477 var1514) ; Statement: r2 := @this: org.hibernate.dialect.pagination.Informix10LimitHandler 
(assert (not (= var1477 null-var1514)))
(declare-const var3319 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var3319 null-String)))
(declare-const var1677 var3595) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var1677 null-var3595)))
(define-const var1775 Bool (var3168_hasFirstRow/-2097898482 var1677)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
 ; Statement: if z0 == 0 goto $r21 = "" 
(assert (not (= (ite var1775 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3838 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3838)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3838!1 String)
(assert (= var3838!1 ""))
(assert true)
(define-const var1970 String (append/672562846 var3838!1 " skip ")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" skip ") 
(declare-const var3838!2 String)
(assert (= var3838!2 (str.++ var3838!1 " skip ")))
(assert true)
(define-const var3563 Int (getFirstRow/1410679095 var1677)) ; Statement: $r15 = virtualinvoke r0.<org.hibernate.engine.spi.RowSelection: java.lang.Integer getFirstRow()>() 
(assert true)
(define-const var2140 String (append/-1031950772 var1970 (cast-from-Int-to-var2925 var3563))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var1970!1 String)
(assert (str.prefixof var1970 var1970!1))
(assert true)
(define-const var3376 String (toString/-2075883882 var2140)) ; Statement: $r21 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r1 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2264 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2264)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2264!1 String)
(assert (= var2264!1 ""))
(assert true)
(define-const var3664 String (append/672562846 var2264!1 " first ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" first ") 
(declare-const var2264!2 String)
(assert (= var2264!2 (str.++ var2264!1 " first ")))
(assert true)
(define-const var3011 Int (getMaxOrLimit/1324675775 (cast-from-var1514-to-var3543 var1477) var1677)) ; Statement: $i0 = virtualinvoke r2.<org.hibernate.dialect.pagination.Informix10LimitHandler: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r0) 
(assert true)
(define-const var3355 String (append/-1001720160 var3664 var3011)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3664!1 String)
(assert (str.prefixof var3664 var3664!1))
(assert true)
(define-const var2528 String (toString/-2075883882 var3355)) ; Statement: $r18 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1664 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1664)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1664!1 String)
(assert (= var1664!1 ""))
(assert true)
(define-const var3921 String (append/672562846 var1664!1 var3376)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1664!2 String)
(assert (= var1664!2 (str.++ var1664!1 var3376)))
(assert true)
(define-const var49 String (append/672562846 var3921 var2528)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3921!1 String)
(assert (= var3921!1 (str.++ var3921 var2528)))
(assert true)
(define-const var466 String (toString/-2075883882 var49)) ; Statement: $r19 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1881 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var271 Int (length/-134980193 var3319)) ; Statement: $i1 = virtualinvoke r9.<java.lang.String: int length()>() 
(define-const var386 Int (+ var271 10)) ; Statement: $i2 = $i1 + 10 
(assert true)
;(assert (<init>/543593434 var1881 var386)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var1881!1 String)
(declare-const var386!1 Int)
(assert true)
(define-const var3556 String (append/672562846 var1881!1 var3319)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var1881!2 String)
(assert (= var1881!2 (str.++ var1881!1 var3319)))
(define-const var3139 var835 var835-ROOT) ; Statement: $r10 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1257 String (toLowerCase/1946809429 var3319 var3139)) ; Statement: $r11 = virtualinvoke r9.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r10) 
(assert true)
(define-const var1044 Int (indexOf/-1209756239 var1257 "select")) ; Statement: $i3 = virtualinvoke $r11.<java.lang.String: int indexOf(java.lang.String)>("select") 
(define-const var333 Int (+ var1044 6)) ; Statement: $i4 = $i3 + 6 
(assert true)
(define-const var3049 String (insert/1196171004 var3556 var333 var466)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r19) 
(assert true)
(define-const var3505 String (toString/-2075883882 var3049)) ; Statement: $r20 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var3168_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFirstRow/1410679095=([org.hibernate.engine.spi.RowSelection], java.lang.Integer), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Int-to-var2925=([java.lang.Integer], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getMaxOrLimit/1324675775=([org.hibernate.dialect.pagination.AbstractLimitHandler, org.hibernate.engine.spi.RowSelection], int), cast-from-var1514-to-var3543=([org.hibernate.dialect.pagination.Informix10LimitHandler], org.hibernate.dialect.pagination.AbstractLimitHandler), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder)}
; {var1514=org.hibernate.dialect.pagination.Informix10LimitHandler, var1477=r2, var3319=r9, var2905=null_type, var3595=org.hibernate.engine.spi.RowSelection, var1677=r0, var3168=org.hibernate.dialect.pagination.LimitHelper, var1775=z0, var3838=$r14, var1970=$r16, var3563=$r15, var2925=java.lang.Object, var2140=$r17, var3376=$r21, var2264=$r1, var3664=$r3, var3543=org.hibernate.dialect.pagination.AbstractLimitHandler, var3011=$i0, var3355=$r4, var2528=$r18, var1664=$r5, var3921=$r6, var49=$r7, var466=$r19, var1881=$r8, var271=$i1, var386=$i2, var3556=$r12, var835=java.util.Locale, var3139=$r10, var1257=$r11, var1044=$i3, var333=$i4, var3049=$r13, var3505=$r20}
; {org.hibernate.dialect.pagination.Informix10LimitHandler=var1514, r2=var1477, r9=var3319, null_type=var2905, org.hibernate.engine.spi.RowSelection=var3595, r0=var1677, org.hibernate.dialect.pagination.LimitHelper=var3168, z0=var1775, $r14=var3838, $r16=var1970, $r15=var3563, java.lang.Object=var2925, $r17=var2140, $r21=var3376, $r1=var2264, $r3=var3664, org.hibernate.dialect.pagination.AbstractLimitHandler=var3543, $i0=var3011, $r4=var3355, $r18=var2528, $r5=var1664, $r6=var3921, $r7=var49, $r19=var466, $r8=var1881, $i1=var271, $i2=var386, $r12=var3556, java.util.Locale=var835, $r10=var3139, $r11=var1257, $i3=var1044, $i4=var333, $r13=var3049, $r20=var3505}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.dialect.pagination.Informix10LimitHandler;	r9 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	if z0 == 0 goto $r21 = "";	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" skip ");	$r15 = virtualinvoke r0.<org.hibernate.engine.spi.RowSelection: java.lang.Integer getFirstRow()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r21 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r1 = new java.lang.StringBuilder];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" first ");	$i0 = virtualinvoke r2.<org.hibernate.dialect.pagination.Informix10LimitHandler: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r18 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r19 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = new java.lang.StringBuilder;	$i1 = virtualinvoke r9.<java.lang.String: int length()>();	$i2 = $i1 + 10;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2);	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r10 = <java.util.Locale: java.util.Locale ROOT>;	$r11 = virtualinvoke r9.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r10);	$i3 = virtualinvoke $r11.<java.lang.String: int indexOf(java.lang.String)>("select");	$i4 = $i3 + 6;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r19);	$r20 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 3
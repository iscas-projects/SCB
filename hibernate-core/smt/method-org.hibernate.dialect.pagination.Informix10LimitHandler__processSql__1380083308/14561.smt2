(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1056 0)
(declare-sort var1650 0)
(declare-sort var356 0)
(declare-sort var1549 0)
(declare-sort var3098 0)
(declare-sort var1803 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1549_hasFirstRow/-2097898482 (var356) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMaxOrLimit/1324675775 (var3098 var356) Int)
(declare-fun cast-from-var1056-to-var3098 (var1056) var3098)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun toLowerCase/1946809429 (String var1803) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun insert/1196171004 (String Int String) String)
(declare-const null-var1056 var1056)
(declare-const null-String String)
(declare-const null-var356 var356)
(declare-const var1803-ROOT var1803)
(declare-const var1109 var1056) ; Statement: r2 := @this: org.hibernate.dialect.pagination.Informix10LimitHandler 
(assert (not (= var1109 null-var1056)))
(declare-const var2374 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var2374 null-String)))
(declare-const var2788 var356) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var2788 null-var356)))
(define-const var3792 Bool (var1549_hasFirstRow/-2097898482 var2788)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
 ; Statement: if z0 == 0 goto $r21 = "" 
(assert (= (ite var3792 1 0) 0)) ; Cond: z0 == 0 
(define-const var2114 String "") ; Statement: $r21 = "" 
(assert true) ; Non Conditional
(define-const var1024 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1024)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1024!1 String)
(assert (= var1024!1 ""))
(assert true)
(define-const var1522 String (append/672562846 var1024!1 " first ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" first ") 
(declare-const var1024!2 String)
(assert (= var1024!2 (str.++ var1024!1 " first ")))
(assert true)
(define-const var3447 Int (getMaxOrLimit/1324675775 (cast-from-var1056-to-var3098 var1109) var2788)) ; Statement: $i0 = virtualinvoke r2.<org.hibernate.dialect.pagination.Informix10LimitHandler: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r0) 
(assert true)
(define-const var1136 String (append/-1001720160 var1522 var3447)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1522!1 String)
(assert (str.prefixof var1522 var1522!1))
(assert true)
(define-const var3345 String (toString/-2075883882 var1136)) ; Statement: $r18 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2489 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2489)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2489!1 String)
(assert (= var2489!1 ""))
(assert true)
(define-const var3725 String (append/672562846 var2489!1 var2114)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2489!2 String)
(assert (= var2489!2 (str.++ var2489!1 var2114)))
(assert true)
(define-const var941 String (append/672562846 var3725 var3345)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3725!1 String)
(assert (= var3725!1 (str.++ var3725 var3345)))
(assert true)
(define-const var3610 String (toString/-2075883882 var941)) ; Statement: $r19 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1700 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var2751 Int (length/-134980193 var2374)) ; Statement: $i1 = virtualinvoke r9.<java.lang.String: int length()>() 
(define-const var380 Int (+ var2751 10)) ; Statement: $i2 = $i1 + 10 
(assert true)
;(assert (<init>/543593434 var1700 var380)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var1700!1 String)
(declare-const var380!1 Int)
(assert true)
(define-const var1396 String (append/672562846 var1700!1 var2374)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var1700!2 String)
(assert (= var1700!2 (str.++ var1700!1 var2374)))
(define-const var620 var1803 var1803-ROOT) ; Statement: $r10 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2123 String (toLowerCase/1946809429 var2374 var620)) ; Statement: $r11 = virtualinvoke r9.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r10) 
(assert true)
(define-const var1346 Int (indexOf/-1209756239 var2123 "select")) ; Statement: $i3 = virtualinvoke $r11.<java.lang.String: int indexOf(java.lang.String)>("select") 
(define-const var393 Int (+ var1346 6)) ; Statement: $i4 = $i3 + 6 
(assert true)
(define-const var877 String (insert/1196171004 var1396 var393 var3610)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r19) 
(assert true)
(define-const var3100 String (toString/-2075883882 var877)) ; Statement: $r20 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var1549_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMaxOrLimit/1324675775=([org.hibernate.dialect.pagination.AbstractLimitHandler, org.hibernate.engine.spi.RowSelection], int), cast-from-var1056-to-var3098=([org.hibernate.dialect.pagination.Informix10LimitHandler], org.hibernate.dialect.pagination.AbstractLimitHandler), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder)}
; {var1056=org.hibernate.dialect.pagination.Informix10LimitHandler, var1109=r2, var2374=r9, var1650=null_type, var356=org.hibernate.engine.spi.RowSelection, var2788=r0, var1549=org.hibernate.dialect.pagination.LimitHelper, var3792=z0, var2114=$r21, var1024=$r1, var1522=$r3, var3098=org.hibernate.dialect.pagination.AbstractLimitHandler, var3447=$i0, var1136=$r4, var3345=$r18, var2489=$r5, var3725=$r6, var941=$r7, var3610=$r19, var1700=$r8, var2751=$i1, var380=$i2, var1396=$r12, var1803=java.util.Locale, var620=$r10, var2123=$r11, var1346=$i3, var393=$i4, var877=$r13, var3100=$r20}
; {org.hibernate.dialect.pagination.Informix10LimitHandler=var1056, r2=var1109, r9=var2374, null_type=var1650, org.hibernate.engine.spi.RowSelection=var356, r0=var2788, org.hibernate.dialect.pagination.LimitHelper=var1549, z0=var3792, $r21=var2114, $r1=var1024, $r3=var1522, org.hibernate.dialect.pagination.AbstractLimitHandler=var3098, $i0=var3447, $r4=var1136, $r18=var3345, $r5=var2489, $r6=var3725, $r7=var941, $r19=var3610, $r8=var1700, $i1=var2751, $i2=var380, $r12=var1396, java.util.Locale=var1803, $r10=var620, $r11=var2123, $i3=var1346, $i4=var393, $r13=var877, $r20=var3100}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.dialect.pagination.Informix10LimitHandler;	r9 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	if z0 == 0 goto $r21 = "";	$r21 = "";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" first ");	$i0 = virtualinvoke r2.<org.hibernate.dialect.pagination.Informix10LimitHandler: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r18 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r19 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = new java.lang.StringBuilder;	$i1 = virtualinvoke r9.<java.lang.String: int length()>();	$i2 = $i1 + 10;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2);	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r10 = <java.util.Locale: java.util.Locale ROOT>;	$r11 = virtualinvoke r9.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r10);	$i3 = virtualinvoke $r11.<java.lang.String: int indexOf(java.lang.String)>("select");	$i4 = $i3 + 6;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r19);	$r20 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 3
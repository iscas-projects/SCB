(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3644 0)
(declare-sort var2974 0)
(declare-sort var2023 0)
(declare-sort var2955 0)
(declare-sort var294 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2955_hasFirstRow/-2097898482 (var2023) Bool)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var294) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3644 var3644)
(declare-const null-String String)
(declare-const null-var2023 var2023)
(declare-const var294-ROOT var294)
(declare-const var3888 var3644) ; Statement: r5 := @this: org.hibernate.dialect.Oracle9iDialect$1 
(assert (not (= var3888 null-var3644)))
(declare-const var1255 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var1255 null-String)))
(declare-const var880 var2023) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var880 null-var2023)))
(define-const var3067 Bool (var2955_hasFirstRow/-2097898482 var880)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(assert true)
(define-const var2489 String (trim/-847153721 var1255)) ; Statement: r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>() 
(define-const var2185 String null-String) ; Statement: r8 = null 
(define-const var1690 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var2651 var294 var294-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3333 String (toLowerCase/1946809429 var2489 var2651)) ; Statement: $r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var1009 Int (lastIndexOf/-618837785 var3333 "for update")) ; Statement: i0 = virtualinvoke $r2.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(define-const var582 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i0 <= $i5 goto $r9 = new java.lang.StringBuilder 
(assert (<= var1009 var582)) ; Cond: i0 <= $i5 
(define-const var2017 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
(define-const var2628 Int (length/-134980193 var2489)) ; Statement: $i1 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var1400 Int (+ var2628 100)) ; Statement: $i2 = $i1 + 100 
(assert true)
;(assert (<init>/543593434 var2017 var1400)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var2017!1 String)
(declare-const var1400!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (not (= (ite var3067 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
;(assert (append/672562846 var2017!1 "select * from ( select row_.*, rownum rownum_ from ( ")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ") 
(declare-const var2017!2 String)
(assert (= var2017!2 (str.++ var2017!1 "select * from ( select row_.*, rownum rownum_ from ( ")))
 ; Statement: goto [?= virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2017!2 var2489)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var2017!3 String)
(assert (= var2017!3 (str.++ var2017!2 var2489)))
 ; Statement: if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (= (ite var3067 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var2017!3 " ) where rownum <= ?")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(declare-const var2017!4 String)
(assert (= var2017!4 (str.++ var2017!3 " ) where rownum <= ?")))
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1690 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var1288 String (toString/-2075883882 var2017!4)) ; Statement: $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2955_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3644=org.hibernate.dialect.Oracle9iDialect$1, var3888=r5, var1255=r6, var2974=null_type, var2023=org.hibernate.engine.spi.RowSelection, var880=r0, var2955=org.hibernate.dialect.pagination.LimitHelper, var3067=z0, var2489=r7, var2185=r8, var1690=z1, var294=java.util.Locale, var2651=$r1, var3333=$r2, var1009=i0, var582=$i5, var2017=$r9, var2628=$i1, var1400=$i2, var1288=$r4}
; {org.hibernate.dialect.Oracle9iDialect$1=var3644, r5=var3888, r6=var1255, null_type=var2974, org.hibernate.engine.spi.RowSelection=var2023, r0=var880, org.hibernate.dialect.pagination.LimitHelper=var2955, z0=var3067, r7=var2489, r8=var2185, z1=var1690, java.util.Locale=var294, $r1=var2651, $r2=var3333, i0=var1009, $i5=var582, $r9=var2017, $i1=var2628, $i2=var1400, $r4=var1288}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.Oracle9iDialect$1;	r6 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>();	r8 = null;	z1 = 0;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	i0 = virtualinvoke $r2.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	$i5 = (int) -1;	if i0 <= $i5 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	$i1 = virtualinvoke r7.<java.lang.String: int length()>();	$i2 = $i1 + 100;	specialinvoke $r9.<java.lang.StringBuilder: void <init>(int)>($i2);	if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ");	goto [?= virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7)];	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	if z1 == 0 goto $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 7
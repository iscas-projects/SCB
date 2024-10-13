(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1863 0)
(declare-sort var1713 0)
(declare-sort var122 0)
(declare-sort var130 0)
(declare-sort var664 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var130_hasFirstRow/-2097898482 (var122) Bool)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var664) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1863 var1863)
(declare-const null-String String)
(declare-const null-var122 var122)
(declare-const var664-ROOT var664)
(declare-const var2262 var1863) ; Statement: r5 := @this: org.hibernate.dialect.Oracle9iDialect$1 
(assert (not (= var2262 null-var1863)))
(declare-const var2507 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2507 null-String)))
(declare-const var3704 var122) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var3704 null-var122)))
(define-const var3755 Bool (var130_hasFirstRow/-2097898482 var3704)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(assert true)
(define-const var521 String (trim/-847153721 var2507)) ; Statement: r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>() 
(define-const var2424 String null-String) ; Statement: r8 = null 
(define-const var2662 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3311 var664 var664-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1379 String (toLowerCase/1946809429 var521 var3311)) ; Statement: $r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var1991 Int (lastIndexOf/-618837785 var1379 "for update")) ; Statement: i0 = virtualinvoke $r2.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(define-const var1198 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i0 <= $i5 goto $r9 = new java.lang.StringBuilder 
(assert (<= var1991 var1198)) ; Cond: i0 <= $i5 
(define-const var747 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
(define-const var2578 Int (length/-134980193 var521)) ; Statement: $i1 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var3732 Int (+ var2578 100)) ; Statement: $i2 = $i1 + 100 
(assert true)
;(assert (<init>/543593434 var747 var3732)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var747!1 String)
(declare-const var3732!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (= (ite var3755 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var747!1 "select * from ( ")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(declare-const var747!2 String)
(assert (= var747!2 (str.++ var747!1 "select * from ( ")))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var747!2 var521)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var747!3 String)
(assert (= var747!3 (str.++ var747!2 var521)))
 ; Statement: if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (= (ite var3755 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var747!3 " ) where rownum <= ?")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(declare-const var747!4 String)
(assert (= var747!4 (str.++ var747!3 " ) where rownum <= ?")))
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2662 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var498 String (toString/-2075883882 var747!4)) ; Statement: $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var130_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1863=org.hibernate.dialect.Oracle9iDialect$1, var2262=r5, var2507=r6, var1713=null_type, var122=org.hibernate.engine.spi.RowSelection, var3704=r0, var130=org.hibernate.dialect.pagination.LimitHelper, var3755=z0, var521=r7, var2424=r8, var2662=z1, var664=java.util.Locale, var3311=$r1, var1379=$r2, var1991=i0, var1198=$i5, var747=$r9, var2578=$i1, var3732=$i2, var498=$r4}
; {org.hibernate.dialect.Oracle9iDialect$1=var1863, r5=var2262, r6=var2507, null_type=var1713, org.hibernate.engine.spi.RowSelection=var122, r0=var3704, org.hibernate.dialect.pagination.LimitHelper=var130, z0=var3755, r7=var521, r8=var2424, z1=var2662, java.util.Locale=var664, $r1=var3311, $r2=var1379, i0=var1991, $i5=var1198, $r9=var747, $i1=var2578, $i2=var3732, $r4=var498}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.Oracle9iDialect$1;	r6 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>();	r8 = null;	z1 = 0;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	i0 = virtualinvoke $r2.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	$i5 = (int) -1;	if i0 <= $i5 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	$i1 = virtualinvoke r7.<java.lang.String: int length()>();	$i2 = $i1 + 100;	specialinvoke $r9.<java.lang.StringBuilder: void <init>(int)>($i2);	if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	if z1 == 0 goto $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 7
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1521 0)
(declare-sort var2189 0)
(declare-sort var2502 0)
(declare-sort var3868 0)
(declare-sort var367 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3868_hasFirstRow/-2097898482 (var2502) Bool)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var367) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1521 var1521)
(declare-const null-String String)
(declare-const null-var2502 var2502)
(declare-const var367-ROOT var367)
(declare-const var3327 var1521) ; Statement: r5 := @this: org.hibernate.dialect.Oracle8iDialect$1 
(assert (not (= var3327 null-var1521)))
(declare-const var2930 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2930 null-String)))
(declare-const var3580 var2502) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var3580 null-var2502)))
(define-const var3640 Bool (var3868_hasFirstRow/-2097898482 var3580)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(assert true)
(define-const var700 String (trim/-847153721 var2930)) ; Statement: r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>() 
(define-const var1523 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2603 var367 var367-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2899 String (toLowerCase/1946809429 var700 var2603)) ; Statement: $r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var202 Bool (endsWith/985337093 var2899 " for update")) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(" for update") 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var202 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3877 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var2614 Int (length/-134980193 var700)) ; Statement: $i0 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var2223 Int (+ var2614 100)) ; Statement: $i1 = $i0 + 100 
(assert true)
;(assert (<init>/543593434 var3877 var2223)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3877!1 String)
(declare-const var2223!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (= (ite var3640 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var3877!1 "select * from ( ")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(declare-const var3877!2 String)
(assert (= var3877!2 (str.++ var3877!1 "select * from ( ")))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3877!2 var700)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var3877!3 String)
(assert (= var3877!3 (str.++ var3877!2 var700)))
 ; Statement: if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (not (= (ite var3640 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
;(assert (append/672562846 var3877!3 " ) row_ ) where rownum_ <= ? and rownum_ > ?")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ ) where rownum_ <= ? and rownum_ > ?") 
(declare-const var3877!4 String)
(assert (= var3877!4 (str.++ var3877!3 " ) row_ ) where rownum_ <= ? and rownum_ > ?")))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1523 1 0) 0)) ; Cond: z2 == 0 
(assert true)
(define-const var3368 String (toString/-2075883882 var3877!4)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3868_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1521=org.hibernate.dialect.Oracle8iDialect$1, var3327=r5, var2930=r6, var2189=null_type, var2502=org.hibernate.engine.spi.RowSelection, var3580=r0, var3868=org.hibernate.dialect.pagination.LimitHelper, var3640=z0, var700=r7, var1523=z2, var367=java.util.Locale, var2603=$r1, var2899=$r2, var202=$z1, var3877=$r3, var2614=$i0, var2223=$i1, var3368=$r4}
; {org.hibernate.dialect.Oracle8iDialect$1=var1521, r5=var3327, r6=var2930, null_type=var2189, org.hibernate.engine.spi.RowSelection=var2502, r0=var3580, org.hibernate.dialect.pagination.LimitHelper=var3868, z0=var3640, r7=var700, z2=var1523, java.util.Locale=var367, $r1=var2603, $r2=var2899, $z1=var202, $r3=var3877, $i0=var2614, $i1=var2223, $r4=var3368}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.Oracle8iDialect$1;	r6 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>();	z2 = 0;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(" for update");	if $z1 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	$i0 = virtualinvoke r7.<java.lang.String: int length()>();	$i1 = $i0 + 100;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ ) where rownum_ <= ? and rownum_ > ?");	goto [?= (branch)];	if z2 == 0 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 7
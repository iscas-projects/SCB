(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2792 0)
(declare-sort var2768 0)
(declare-sort var1521 0)
(declare-sort var2941 0)
(declare-sort var800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2941_hasFirstRow/-2097898482 (var1521) Bool)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var800) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2792 var2792)
(declare-const null-String String)
(declare-const null-var1521 var1521)
(declare-const var800-ROOT var800)
(declare-const var1327 var2792) ; Statement: r5 := @this: org.hibernate.dialect.Oracle8iDialect$1 
(assert (not (= var1327 null-var2792)))
(declare-const var221 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var221 null-String)))
(declare-const var2652 var1521) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var2652 null-var1521)))
(define-const var1199 Bool (var2941_hasFirstRow/-2097898482 var2652)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(assert true)
(define-const var2279 String (trim/-847153721 var221)) ; Statement: r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>() 
(define-const var951 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2001 var800 var800-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var233 String (toLowerCase/1946809429 var2279 var2001)) ; Statement: $r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var1328 Bool (endsWith/985337093 var233 " for update")) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(" for update") 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var1328 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2834 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var1849 Int (length/-134980193 var2279)) ; Statement: $i0 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var2481 Int (+ var1849 100)) ; Statement: $i1 = $i0 + 100 
(assert true)
;(assert (<init>/543593434 var2834 var2481)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2834!1 String)
(declare-const var2481!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (= (ite var1199 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var2834!1 "select * from ( ")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(declare-const var2834!2 String)
(assert (= var2834!2 (str.++ var2834!1 "select * from ( ")))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2834!2 var2279)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var2834!3 String)
(assert (= var2834!3 (str.++ var2834!2 var2279)))
 ; Statement: if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (= (ite var1199 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var2834!3 " ) where rownum <= ?")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(declare-const var2834!4 String)
(assert (= var2834!4 (str.++ var2834!3 " ) where rownum <= ?")))
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var951 1 0) 0)) ; Cond: z2 == 0 
(assert true)
(define-const var2892 String (toString/-2075883882 var2834!4)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2941_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2792=org.hibernate.dialect.Oracle8iDialect$1, var1327=r5, var221=r6, var2768=null_type, var1521=org.hibernate.engine.spi.RowSelection, var2652=r0, var2941=org.hibernate.dialect.pagination.LimitHelper, var1199=z0, var2279=r7, var951=z2, var800=java.util.Locale, var2001=$r1, var233=$r2, var1328=$z1, var2834=$r3, var1849=$i0, var2481=$i1, var2892=$r4}
; {org.hibernate.dialect.Oracle8iDialect$1=var2792, r5=var1327, r6=var221, null_type=var2768, org.hibernate.engine.spi.RowSelection=var1521, r0=var2652, org.hibernate.dialect.pagination.LimitHelper=var2941, z0=var1199, r7=var2279, z2=var951, java.util.Locale=var800, $r1=var2001, $r2=var233, $z1=var1328, $r3=var2834, $i0=var1849, $i1=var2481, $r4=var2892}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.Oracle8iDialect$1;	r6 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>();	z2 = 0;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(" for update");	if $z1 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	$i0 = virtualinvoke r7.<java.lang.String: int length()>();	$i1 = $i0 + 100;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	if z2 == 0 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 7
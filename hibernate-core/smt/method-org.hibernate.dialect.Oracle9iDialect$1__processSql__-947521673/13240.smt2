(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var275 0)
(declare-sort var942 0)
(declare-sort var3754 0)
(declare-sort var2226 0)
(declare-sort var3629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2226_hasFirstRow/-2097898482 (var3754) Bool)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var3629) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var275 var275)
(declare-const null-String String)
(declare-const null-var3754 var3754)
(declare-const var3629-ROOT var3629)
(declare-const var550 var275) ; Statement: r5 := @this: org.hibernate.dialect.Oracle9iDialect$1 
(assert (not (= var550 null-var275)))
(declare-const var1636 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var1636 null-String)))
(declare-const var3052 var3754) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var3052 null-var3754)))
(define-const var1958 Bool (var2226_hasFirstRow/-2097898482 var3052)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(assert true)
(define-const var767 String (trim/-847153721 var1636)) ; Statement: r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>() 
(define-const var3485 String null-String) ; Statement: r8 = null 
(define-const var3194 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var1834 var3629 var3629-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var856 String (toLowerCase/1946809429 var767 var1834)) ; Statement: $r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var3934 Int (lastIndexOf/-618837785 var856 "for update")) ; Statement: i0 = virtualinvoke $r2.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(define-const var1482 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i0 <= $i5 goto $r9 = new java.lang.StringBuilder 
(assert (<= var3934 var1482)) ; Cond: i0 <= $i5 
(define-const var1107 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
(define-const var1760 Int (length/-134980193 var767)) ; Statement: $i1 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var1713 Int (+ var1760 100)) ; Statement: $i2 = $i1 + 100 
(assert true)
;(assert (<init>/543593434 var1107 var1713)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var1107!1 String)
(declare-const var1713!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (= (ite var1958 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var1107!1 "select * from ( ")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(declare-const var1107!2 String)
(assert (= var1107!2 (str.++ var1107!1 "select * from ( ")))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1107!2 var767)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1107!3 String)
(assert (= var1107!3 (str.++ var1107!2 var767)))
 ; Statement: if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (not (= (ite var1958 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
;(assert (append/672562846 var1107!3 " ) row_ where rownum <= ?) where rownum_ > ?")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ where rownum <= ?) where rownum_ > ?") 
(declare-const var1107!4 String)
(assert (= var1107!4 (str.++ var1107!3 " ) row_ where rownum <= ?) where rownum_ > ?")))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3194 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var1033 String (toString/-2075883882 var1107!4)) ; Statement: $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2226_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var275=org.hibernate.dialect.Oracle9iDialect$1, var550=r5, var1636=r6, var942=null_type, var3754=org.hibernate.engine.spi.RowSelection, var3052=r0, var2226=org.hibernate.dialect.pagination.LimitHelper, var1958=z0, var767=r7, var3485=r8, var3194=z1, var3629=java.util.Locale, var1834=$r1, var856=$r2, var3934=i0, var1482=$i5, var1107=$r9, var1760=$i1, var1713=$i2, var1033=$r4}
; {org.hibernate.dialect.Oracle9iDialect$1=var275, r5=var550, r6=var1636, null_type=var942, org.hibernate.engine.spi.RowSelection=var3754, r0=var3052, org.hibernate.dialect.pagination.LimitHelper=var2226, z0=var1958, r7=var767, r8=var3485, z1=var3194, java.util.Locale=var3629, $r1=var1834, $r2=var856, i0=var3934, $i5=var1482, $r9=var1107, $i1=var1760, $i2=var1713, $r4=var1033}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.Oracle9iDialect$1;	r6 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>();	r8 = null;	z1 = 0;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	i0 = virtualinvoke $r2.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	$i5 = (int) -1;	if i0 <= $i5 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	$i1 = virtualinvoke r7.<java.lang.String: int length()>();	$i2 = $i1 + 100;	specialinvoke $r9.<java.lang.StringBuilder: void <init>(int)>($i2);	if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ where rownum <= ?) where rownum_ > ?");	goto [?= (branch)];	if z1 == 0 goto $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 7
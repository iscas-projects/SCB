(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3587 0)
(declare-sort var3514 0)
(declare-sort var155 0)
(declare-sort var415 0)
(declare-sort var1418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var415_hasFirstRow/-2097898482 (var155) Bool)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var1418) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3587 var3587)
(declare-const null-String String)
(declare-const null-var155 var155)
(declare-const var1418-ROOT var1418)
(declare-const var2350 var3587) ; Statement: r5 := @this: org.hibernate.dialect.Oracle9iDialect$1 
(assert (not (= var2350 null-var3587)))
(declare-const var2151 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2151 null-String)))
(declare-const var1579 var155) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var1579 null-var155)))
(define-const var403 Bool (var415_hasFirstRow/-2097898482 var1579)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(assert true)
(define-const var3233 String (trim/-847153721 var2151)) ; Statement: r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>() 
(define-const var3534 String null-String) ; Statement: r8 = null 
(define-const var2993 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var2208 var1418 var1418-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1162 String (toLowerCase/1946809429 var3233 var2208)) ; Statement: $r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var1516 Int (lastIndexOf/-618837785 var1162 "for update")) ; Statement: i0 = virtualinvoke $r2.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(define-const var679 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i0 <= $i5 goto $r9 = new java.lang.StringBuilder 
(assert (<= var1516 var679)) ; Cond: i0 <= $i5 
(define-const var613 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
(define-const var3246 Int (length/-134980193 var3233)) ; Statement: $i1 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var1408 Int (+ var3246 100)) ; Statement: $i2 = $i1 + 100 
(assert true)
;(assert (<init>/543593434 var613 var1408)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var613!1 String)
(declare-const var1408!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (not (= (ite var403 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
;(assert (append/672562846 var613!1 "select * from ( select row_.*, rownum rownum_ from ( ")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ") 
(declare-const var613!2 String)
(assert (= var613!2 (str.++ var613!1 "select * from ( select row_.*, rownum rownum_ from ( ")))
 ; Statement: goto [?= virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var613!2 var3233)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var613!3 String)
(assert (= var613!3 (str.++ var613!2 var3233)))
 ; Statement: if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (not (= (ite var403 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
;(assert (append/672562846 var613!3 " ) row_ where rownum <= ?) where rownum_ > ?")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ where rownum <= ?) where rownum_ > ?") 
(declare-const var613!4 String)
(assert (= var613!4 (str.++ var613!3 " ) row_ where rownum <= ?) where rownum_ > ?")))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2993 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var1575 String (toString/-2075883882 var613!4)) ; Statement: $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var415_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3587=org.hibernate.dialect.Oracle9iDialect$1, var2350=r5, var2151=r6, var3514=null_type, var155=org.hibernate.engine.spi.RowSelection, var1579=r0, var415=org.hibernate.dialect.pagination.LimitHelper, var403=z0, var3233=r7, var3534=r8, var2993=z1, var1418=java.util.Locale, var2208=$r1, var1162=$r2, var1516=i0, var679=$i5, var613=$r9, var3246=$i1, var1408=$i2, var1575=$r4}
; {org.hibernate.dialect.Oracle9iDialect$1=var3587, r5=var2350, r6=var2151, null_type=var3514, org.hibernate.engine.spi.RowSelection=var155, r0=var1579, org.hibernate.dialect.pagination.LimitHelper=var415, z0=var403, r7=var3233, r8=var3534, z1=var2993, java.util.Locale=var1418, $r1=var2208, $r2=var1162, i0=var1516, $i5=var679, $r9=var613, $i1=var3246, $i2=var1408, $r4=var1575}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.Oracle9iDialect$1;	r6 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>();	r8 = null;	z1 = 0;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	i0 = virtualinvoke $r2.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	$i5 = (int) -1;	if i0 <= $i5 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	$i1 = virtualinvoke r7.<java.lang.String: int length()>();	$i2 = $i1 + 100;	specialinvoke $r9.<java.lang.StringBuilder: void <init>(int)>($i2);	if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ");	goto [?= virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7)];	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	if z0 == 0 goto virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ where rownum <= ?) where rownum_ > ?");	goto [?= (branch)];	if z1 == 0 goto $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 7
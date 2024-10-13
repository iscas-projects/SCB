(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2254 0)
(declare-sort var364 0)
(declare-sort var2415 0)
(declare-sort var3887 0)
(declare-sort var2158 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3887_hasFirstRow/-2097898482 (var2415) Bool)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var2158) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2254 var2254)
(declare-const null-String String)
(declare-const null-var2415 var2415)
(declare-const var2158-ROOT var2158)
(declare-const var511 var2254) ; Statement: r5 := @this: org.hibernate.dialect.Oracle8iDialect$1 
(assert (not (= var511 null-var2254)))
(declare-const var1342 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var1342 null-String)))
(declare-const var2131 var2415) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var2131 null-var2415)))
(define-const var3313 Bool (var3887_hasFirstRow/-2097898482 var2131)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(assert true)
(define-const var2840 String (trim/-847153721 var1342)) ; Statement: r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>() 
(define-const var2576 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var1573 var2158 var2158-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1453 String (toLowerCase/1946809429 var2840 var1573)) ; Statement: $r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var745 Bool (endsWith/985337093 var1453 " for update")) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(" for update") 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var745 1 0) 0)) ; Cond: $z1 == 0 
(define-const var525 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var1083 Int (length/-134980193 var2840)) ; Statement: $i0 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var1411 Int (+ var1083 100)) ; Statement: $i1 = $i0 + 100 
(assert true)
;(assert (<init>/543593434 var525 var1411)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var525!1 String)
(declare-const var1411!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (not (= (ite var3313 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
;(assert (append/672562846 var525!1 "select * from ( select row_.*, rownum rownum_ from ( ")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ") 
(declare-const var525!2 String)
(assert (= var525!2 (str.++ var525!1 "select * from ( select row_.*, rownum rownum_ from ( ")))
 ; Statement: goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var525!2 var2840)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var525!3 String)
(assert (= var525!3 (str.++ var525!2 var2840)))
 ; Statement: if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (= (ite var3313 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var525!3 " ) where rownum <= ?")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(declare-const var525!4 String)
(assert (= var525!4 (str.++ var525!3 " ) where rownum <= ?")))
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2576 1 0) 0)) ; Cond: z2 == 0 
(assert true)
(define-const var806 String (toString/-2075883882 var525!4)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3887_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2254=org.hibernate.dialect.Oracle8iDialect$1, var511=r5, var1342=r6, var364=null_type, var2415=org.hibernate.engine.spi.RowSelection, var2131=r0, var3887=org.hibernate.dialect.pagination.LimitHelper, var3313=z0, var2840=r7, var2576=z2, var2158=java.util.Locale, var1573=$r1, var1453=$r2, var745=$z1, var525=$r3, var1083=$i0, var1411=$i1, var806=$r4}
; {org.hibernate.dialect.Oracle8iDialect$1=var2254, r5=var511, r6=var1342, null_type=var364, org.hibernate.engine.spi.RowSelection=var2415, r0=var2131, org.hibernate.dialect.pagination.LimitHelper=var3887, z0=var3313, r7=var2840, z2=var2576, java.util.Locale=var2158, $r1=var1573, $r2=var1453, $z1=var745, $r3=var525, $i0=var1083, $i1=var1411, $r4=var806}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.Oracle8iDialect$1;	r6 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>();	z2 = 0;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(" for update");	if $z1 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	$i0 = virtualinvoke r7.<java.lang.String: int length()>();	$i1 = $i0 + 100;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ");	goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7)];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	if z2 == 0 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 7
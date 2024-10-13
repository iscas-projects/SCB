(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2354 0)
(declare-sort var3054 0)
(declare-sort var2181 0)
(declare-sort var3036 0)
(declare-sort var1358 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3036_hasFirstRow/-2097898482 (var2181) Bool)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var1358) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2354 var2354)
(declare-const null-String String)
(declare-const null-var2181 var2181)
(declare-const var1358-ROOT var1358)
(declare-const var3060 var2354) ; Statement: r5 := @this: org.hibernate.dialect.Oracle8iDialect$1 
(assert (not (= var3060 null-var2354)))
(declare-const var3416 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3416 null-String)))
(declare-const var2245 var2181) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var2245 null-var2181)))
(define-const var3845 Bool (var3036_hasFirstRow/-2097898482 var2245)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(assert true)
(define-const var394 String (trim/-847153721 var3416)) ; Statement: r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>() 
(define-const var1813 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2234 var1358 var1358-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1873 String (toLowerCase/1946809429 var394 var2234)) ; Statement: $r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var930 Bool (endsWith/985337093 var1873 " for update")) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(" for update") 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var930 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1880 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var3150 Int (length/-134980193 var394)) ; Statement: $i0 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var3325 Int (+ var3150 100)) ; Statement: $i1 = $i0 + 100 
(assert true)
;(assert (<init>/543593434 var1880 var3325)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1880!1 String)
(declare-const var3325!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (not (= (ite var3845 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
;(assert (append/672562846 var1880!1 "select * from ( select row_.*, rownum rownum_ from ( ")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ") 
(declare-const var1880!2 String)
(assert (= var1880!2 (str.++ var1880!1 "select * from ( select row_.*, rownum rownum_ from ( ")))
 ; Statement: goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1880!2 var394)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1880!3 String)
(assert (= var1880!3 (str.++ var1880!2 var394)))
 ; Statement: if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (not (= (ite var3845 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
;(assert (append/672562846 var1880!3 " ) row_ ) where rownum_ <= ? and rownum_ > ?")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ ) where rownum_ <= ? and rownum_ > ?") 
(declare-const var1880!4 String)
(assert (= var1880!4 (str.++ var1880!3 " ) row_ ) where rownum_ <= ? and rownum_ > ?")))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1813 1 0) 0)) ; Cond: z2 == 0 
(assert true)
(define-const var655 String (toString/-2075883882 var1880!4)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3036_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2354=org.hibernate.dialect.Oracle8iDialect$1, var3060=r5, var3416=r6, var3054=null_type, var2181=org.hibernate.engine.spi.RowSelection, var2245=r0, var3036=org.hibernate.dialect.pagination.LimitHelper, var3845=z0, var394=r7, var1813=z2, var1358=java.util.Locale, var2234=$r1, var1873=$r2, var930=$z1, var1880=$r3, var3150=$i0, var3325=$i1, var655=$r4}
; {org.hibernate.dialect.Oracle8iDialect$1=var2354, r5=var3060, r6=var3416, null_type=var3054, org.hibernate.engine.spi.RowSelection=var2181, r0=var2245, org.hibernate.dialect.pagination.LimitHelper=var3036, z0=var3845, r7=var394, z2=var1813, java.util.Locale=var1358, $r1=var2234, $r2=var1873, $z1=var930, $r3=var1880, $i0=var3150, $i1=var3325, $r4=var655}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.Oracle8iDialect$1;	r6 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	r7 = virtualinvoke r6.<java.lang.String: java.lang.String trim()>();	z2 = 0;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(" for update");	if $z1 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	$i0 = virtualinvoke r7.<java.lang.String: int length()>();	$i1 = $i0 + 100;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ");	goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7)];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	if z0 == 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ ) where rownum_ <= ? and rownum_ > ?");	goto [?= (branch)];	if z2 == 0 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 7
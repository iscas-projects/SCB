(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1822 0)
(declare-sort var2340 0)
(declare-sort var243 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var243) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1822 var1822)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var243-ROOT var243)
(declare-const var2540 var1822) ; Statement: r4 := @this: org.hibernate.dialect.Oracle9Dialect 
(assert (not (= var2540 null-var1822)))
(declare-const var1426 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1426 null-String)))
(declare-const var3591 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3591 null-Bool)))
(assert true)
(define-const var3252 String (trim/-847153721 var1426)) ; Statement: r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>() 
(define-const var1453 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2217 var243 var243-ROOT) ; Statement: $r0 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1456 String (toLowerCase/1946809429 var3252 var2217)) ; Statement: $r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0) 
(assert true)
(define-const var2872 Bool (endsWith/985337093 var1456 " for update")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(" for update") 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var2872 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1984 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var1824 Int (length/-134980193 var3252)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
(define-const var3026 Int (+ var1824 100)) ; Statement: $i1 = $i0 + 100 
(assert true)
;(assert (<init>/543593434 var1984 var3026)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1984!1 String)
(declare-const var3026!1 Int)
 ; Statement: if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (= (ite var3591 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (append/672562846 var1984!1 "select * from ( ")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(declare-const var1984!2 String)
(assert (= var1984!2 (str.++ var1984!1 "select * from ( ")))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1984!2 var3252)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1984!3 String)
(assert (= var1984!3 (str.++ var1984!2 var3252)))
 ; Statement: if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (not (= (ite var3591 1 0) 0))) ; Negate: Cond: z1 == 0  
(assert true)
;(assert (append/672562846 var1984!3 " ) row_ where rownum <= ?) where rownum_ > ?")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ where rownum <= ?) where rownum_ > ?") 
(declare-const var1984!4 String)
(assert (= var1984!4 (str.++ var1984!3 " ) row_ where rownum <= ?) where rownum_ > ?")))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1453 1 0) 0)) ; Cond: z2 == 0 
(assert true)
(define-const var1846 String (toString/-2075883882 var1984!4)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1822=org.hibernate.dialect.Oracle9Dialect, var2540=r4, var1426=r5, var2340=null_type, var3591=z1, var3252=r6, var1453=z2, var243=java.util.Locale, var2217=$r0, var1456=$r1, var2872=$z0, var1984=$r2, var1824=$i0, var3026=$i1, var1846=$r3}
; {org.hibernate.dialect.Oracle9Dialect=var1822, r4=var2540, r5=var1426, null_type=var2340, z1=var3591, r6=var3252, z2=var1453, java.util.Locale=var243, $r0=var2217, $r1=var1456, $z0=var2872, $r2=var1984, $i0=var1824, $i1=var3026, $r3=var1846}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.Oracle9Dialect;	r5 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>();	z2 = 0;	$r0 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(" for update");	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	$i1 = $i0 + 100;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i1);	if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ where rownum <= ?) where rownum_ > ?");	goto [?= (branch)];	if z2 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 7
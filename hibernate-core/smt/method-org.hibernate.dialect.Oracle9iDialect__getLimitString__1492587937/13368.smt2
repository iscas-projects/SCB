(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1733 0)
(declare-sort var2417 0)
(declare-sort var2653 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var2653) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1733 var1733)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2653-ROOT var2653)
(declare-const var3251 var1733) ; Statement: r4 := @this: org.hibernate.dialect.Oracle9iDialect 
(assert (not (= var3251 null-var1733)))
(declare-const var513 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var513 null-String)))
(declare-const var3705 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3705 null-Bool)))
(assert true)
(define-const var2620 String (trim/-847153721 var513)) ; Statement: r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>() 
(define-const var1256 String null-String) ; Statement: r7 = null 
(define-const var2697 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3834 var2653 var2653-ROOT) ; Statement: $r0 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3261 String (toLowerCase/1946809429 var2620 var3834)) ; Statement: $r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0) 
(assert true)
(define-const var3855 Int (lastIndexOf/-618837785 var3261 "for update")) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(define-const var1248 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i0 <= $i5 goto $r8 = new java.lang.StringBuilder 
(assert (<= var3855 var1248)) ; Cond: i0 <= $i5 
(define-const var2579 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var1841 Int (length/-134980193 var2620)) ; Statement: $i1 = virtualinvoke r6.<java.lang.String: int length()>() 
(define-const var2676 Int (+ var1841 100)) ; Statement: $i2 = $i1 + 100 
(assert true)
;(assert (<init>/543593434 var2579 var2676)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var2579!1 String)
(declare-const var2676!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (= (ite var3705 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var2579!1 "select * from ( ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(declare-const var2579!2 String)
(assert (= var2579!2 (str.++ var2579!1 "select * from ( ")))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2579!2 var2620)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var2579!3 String)
(assert (= var2579!3 (str.++ var2579!2 var2620)))
 ; Statement: if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (= (ite var3705 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var2579!3 " ) where rownum <= ?")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(declare-const var2579!4 String)
(assert (= var2579!4 (str.++ var2579!3 " ) where rownum <= ?")))
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2697 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var557 String (toString/-2075883882 var2579!4)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1733=org.hibernate.dialect.Oracle9iDialect, var3251=r4, var513=r5, var2417=null_type, var3705=z0, var2620=r6, var1256=r7, var2697=z1, var2653=java.util.Locale, var3834=$r0, var3261=$r1, var3855=i0, var1248=$i5, var2579=$r8, var1841=$i1, var2676=$i2, var557=$r3}
; {org.hibernate.dialect.Oracle9iDialect=var1733, r4=var3251, r5=var513, null_type=var2417, z0=var3705, r6=var2620, r7=var1256, z1=var2697, java.util.Locale=var2653, $r0=var3834, $r1=var3261, i0=var3855, $i5=var1248, $r8=var2579, $i1=var1841, $i2=var2676, $r3=var557}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.Oracle9iDialect;	r5 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>();	r7 = null;	z1 = 0;	$r0 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0);	i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	$i5 = (int) -1;	if i0 <= $i5 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	$i1 = virtualinvoke r6.<java.lang.String: int length()>();	$i2 = $i1 + 100;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2);	if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	if z1 == 0 goto $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 7
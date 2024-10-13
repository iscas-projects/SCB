(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1118 0)
(declare-sort var1129 0)
(declare-sort var651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var651) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1118 var1118)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var651-ROOT var651)
(declare-const var2607 var1118) ; Statement: r4 := @this: org.hibernate.dialect.Oracle9iDialect 
(assert (not (= var2607 null-var1118)))
(declare-const var2774 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2774 null-String)))
(declare-const var3382 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3382 null-Bool)))
(assert true)
(define-const var1598 String (trim/-847153721 var2774)) ; Statement: r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>() 
(define-const var3915 String null-String) ; Statement: r7 = null 
(define-const var3590 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3629 var651 var651-ROOT) ; Statement: $r0 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var825 String (toLowerCase/1946809429 var1598 var3629)) ; Statement: $r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0) 
(assert true)
(define-const var3561 Int (lastIndexOf/-618837785 var825 "for update")) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(define-const var2621 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i0 <= $i5 goto $r8 = new java.lang.StringBuilder 
(assert (<= var3561 var2621)) ; Cond: i0 <= $i5 
(define-const var1967 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var694 Int (length/-134980193 var1598)) ; Statement: $i1 = virtualinvoke r6.<java.lang.String: int length()>() 
(define-const var1805 Int (+ var694 100)) ; Statement: $i2 = $i1 + 100 
(assert true)
;(assert (<init>/543593434 var1967 var1805)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var1967!1 String)
(declare-const var1805!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (not (= (ite var3382 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
;(assert (append/672562846 var1967!1 "select * from ( select row_.*, rownum rownum_ from ( ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ") 
(declare-const var1967!2 String)
(assert (= var1967!2 (str.++ var1967!1 "select * from ( select row_.*, rownum rownum_ from ( ")))
 ; Statement: goto [?= virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1967!2 var1598)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1967!3 String)
(assert (= var1967!3 (str.++ var1967!2 var1598)))
 ; Statement: if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (= (ite var3382 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var1967!3 " ) where rownum <= ?")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(declare-const var1967!4 String)
(assert (= var1967!4 (str.++ var1967!3 " ) where rownum <= ?")))
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3590 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var641 String (toString/-2075883882 var1967!4)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1118=org.hibernate.dialect.Oracle9iDialect, var2607=r4, var2774=r5, var1129=null_type, var3382=z0, var1598=r6, var3915=r7, var3590=z1, var651=java.util.Locale, var3629=$r0, var825=$r1, var3561=i0, var2621=$i5, var1967=$r8, var694=$i1, var1805=$i2, var641=$r3}
; {org.hibernate.dialect.Oracle9iDialect=var1118, r4=var2607, r5=var2774, null_type=var1129, z0=var3382, r6=var1598, r7=var3915, z1=var3590, java.util.Locale=var651, $r0=var3629, $r1=var825, i0=var3561, $i5=var2621, $r8=var1967, $i1=var694, $i2=var1805, $r3=var641}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.Oracle9iDialect;	r5 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>();	r7 = null;	z1 = 0;	$r0 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0);	i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	$i5 = (int) -1;	if i0 <= $i5 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	$i1 = virtualinvoke r6.<java.lang.String: int length()>();	$i2 = $i1 + 100;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2);	if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ");	goto [?= virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6)];	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	if z1 == 0 goto $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 7
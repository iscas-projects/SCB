(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2822 0)
(declare-sort var3088 0)
(declare-sort var1832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var1832) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2822 var2822)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1832-ROOT var1832)
(declare-const var1244 var2822) ; Statement: r4 := @this: org.hibernate.dialect.Oracle9iDialect 
(assert (not (= var1244 null-var2822)))
(declare-const var1080 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1080 null-String)))
(declare-const var2725 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2725 null-Bool)))
(assert true)
(define-const var1182 String (trim/-847153721 var1080)) ; Statement: r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>() 
(define-const var1403 String null-String) ; Statement: r7 = null 
(define-const var2027 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3165 var1832 var1832-ROOT) ; Statement: $r0 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3137 String (toLowerCase/1946809429 var1182 var3165)) ; Statement: $r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0) 
(assert true)
(define-const var2493 Int (lastIndexOf/-618837785 var3137 "for update")) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(define-const var1110 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i0 <= $i5 goto $r8 = new java.lang.StringBuilder 
(assert (<= var2493 var1110)) ; Cond: i0 <= $i5 
(define-const var460 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var1998 Int (length/-134980193 var1182)) ; Statement: $i1 = virtualinvoke r6.<java.lang.String: int length()>() 
(define-const var1730 Int (+ var1998 100)) ; Statement: $i2 = $i1 + 100 
(assert true)
;(assert (<init>/543593434 var460 var1730)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var460!1 String)
(declare-const var1730!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (= (ite var2725 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var460!1 "select * from ( ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(declare-const var460!2 String)
(assert (= var460!2 (str.++ var460!1 "select * from ( ")))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var460!2 var1182)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var460!3 String)
(assert (= var460!3 (str.++ var460!2 var1182)))
 ; Statement: if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (not (= (ite var2725 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
;(assert (append/672562846 var460!3 " ) row_ where rownum <= ?) where rownum_ > ?")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ where rownum <= ?) where rownum_ > ?") 
(declare-const var460!4 String)
(assert (= var460!4 (str.++ var460!3 " ) row_ where rownum <= ?) where rownum_ > ?")))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2027 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var663 String (toString/-2075883882 var460!4)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2822=org.hibernate.dialect.Oracle9iDialect, var1244=r4, var1080=r5, var3088=null_type, var2725=z0, var1182=r6, var1403=r7, var2027=z1, var1832=java.util.Locale, var3165=$r0, var3137=$r1, var2493=i0, var1110=$i5, var460=$r8, var1998=$i1, var1730=$i2, var663=$r3}
; {org.hibernate.dialect.Oracle9iDialect=var2822, r4=var1244, r5=var1080, null_type=var3088, z0=var2725, r6=var1182, r7=var1403, z1=var2027, java.util.Locale=var1832, $r0=var3165, $r1=var3137, i0=var2493, $i5=var1110, $r8=var460, $i1=var1998, $i2=var1730, $r3=var663}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.Oracle9iDialect;	r5 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>();	r7 = null;	z1 = 0;	$r0 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0);	i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	$i5 = (int) -1;	if i0 <= $i5 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	$i1 = virtualinvoke r6.<java.lang.String: int length()>();	$i2 = $i1 + 100;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2);	if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ where rownum <= ?) where rownum_ > ?");	goto [?= (branch)];	if z1 == 0 goto $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 7
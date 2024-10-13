(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2993 0)
(declare-sort var2906 0)
(declare-sort var2181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toLowerCase/1946809429 (String var2181) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun insert/1196171004 (String Int String) String)
(declare-const null-var2993 var2993)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2181-ROOT var2181)
(declare-const var11 var2993) ; Statement: r12 := @this: org.hibernate.dialect.InformixDialect 
(assert (not (= var11 null-var2993)))
(declare-const var1564 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1564 null-String)))
(declare-const var3766 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3766 null-Int)))
(declare-const var807 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var807 null-Int)))
 ; Statement: if i0 <= 0 goto $r0 = new java.lang.StringBuilder 
(assert (<= var3766 0)) ; Cond: i0 <= 0 
(define-const var3518 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var35 Int (length/-134980193 var1564)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3185 Int (+ var35 8)) ; Statement: $i2 = $i1 + 8 
(assert true)
;(assert (<init>/543593434 var3518 var3185)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var3518!1 String)
(declare-const var3185!1 Int)
(assert true)
(define-const var1620 String (append/672562846 var3518!1 var1564)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3518!2 String)
(assert (= var3518!2 (str.++ var3518!1 var1564)))
(define-const var697 var2181 var2181-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3601 String (toLowerCase/1946809429 var1564 var697)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
(define-const var295 Int (indexOf/-1209756239 var3601 "select")) ; Statement: $i3 = virtualinvoke $r3.<java.lang.String: int indexOf(java.lang.String)>("select") 
(define-const var3879 Int (+ var295 6)) ; Statement: $i5 = $i3 + 6 
(define-const var3170 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3170)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3170!1 String)
(assert (= var3170!1 ""))
(assert true)
(define-const var3708 String (append/672562846 var3170!1 " first ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" first ") 
(declare-const var3170!2 String)
(assert (= var3170!2 (str.++ var3170!1 " first ")))
(assert true)
(define-const var561 String (append/-1001720160 var3708 var807)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var3708!1 String)
(assert (str.prefixof var3708 var3708!1))
(assert true)
(define-const var1921 String (toString/-2075883882 var561)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2485 String (insert/1196171004 var1620 var3879 var1921)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i5, $r7) 
(assert true)
(define-const var1931 String (toString/-2075883882 var2485)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder)}
; {var2993=org.hibernate.dialect.InformixDialect, var11=r12, var1564=r1, var2906=null_type, var3766=i0, var807=i4, var3518=$r0, var35=$i1, var3185=$i2, var1620=$r8, var2181=java.util.Locale, var697=$r2, var3601=$r3, var295=$i3, var3879=$i5, var3170=$r4, var3708=$r5, var561=$r6, var1921=$r7, var2485=$r9, var1931=$r10}
; {org.hibernate.dialect.InformixDialect=var2993, r12=var11, r1=var1564, null_type=var2906, i0=var3766, i4=var807, $r0=var3518, $i1=var35, $i2=var3185, $r8=var1620, java.util.Locale=var2181, $r2=var697, $r3=var3601, $i3=var295, $i5=var3879, $r4=var3170, $r5=var3708, $r6=var561, $r7=var1921, $r9=var2485, $r10=var1931}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1}
;stmts r12 := @this: org.hibernate.dialect.InformixDialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i4 := @parameter2: int;	if i0 <= 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i1 + 8;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$i3 = virtualinvoke $r3.<java.lang.String: int indexOf(java.lang.String)>("select");	$i5 = $i3 + 6;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" first ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i5, $r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3290 0)
(declare-sort var1563 0)
(declare-sort var511 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hsqldbVersion/1410848242 (var3290) Int)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toLowerCase/1946809429 (String var511) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun insert/1196171004 (String Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3290 var3290)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var511-ROOT var511)
(declare-const var2879 var3290) ; Statement: r0 := @this: org.hibernate.dialect.HSQLDialect 
(assert (not (= var2879 null-var3290)))
(declare-const var141 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var141 null-String)))
(declare-const var2447 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2447 null-Bool)))
(define-const var652 Int (hsqldbVersion/1410848242 var2879)) ; Statement: $i0 = r0.<org.hibernate.dialect.HSQLDialect: int hsqldbVersion> 
 ; Statement: if $i0 >= 200 goto $r1 = new java.lang.StringBuilder 
(assert (not (>= var652 200))) ; Negate: Cond: $i0 >= 200  
(define-const var2305 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
(define-const var1773 Int (length/-134980193 var141)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var2132 Int (+ var1773 10)) ; Statement: $i2 = $i1 + 10 
(assert true)
;(assert (<init>/543593434 var2305 var2132)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var2305!1 String)
(declare-const var2132!1 Int)
(assert true)
(define-const var980 String (append/672562846 var2305!1 var141)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2305!2 String)
(assert (= var2305!2 (str.++ var2305!1 var141)))
(define-const var898 var511 var511-ROOT) ; Statement: $r7 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1207 String (toLowerCase/1946809429 var141 var898)) ; Statement: $r8 = virtualinvoke r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r7) 
(assert true)
(define-const var3737 Int (indexOf/-1209756239 var1207 "select")) ; Statement: $i3 = virtualinvoke $r8.<java.lang.String: int indexOf(java.lang.String)>("select") 
(define-const var1176 Int (+ var3737 6)) ; Statement: $i4 = $i3 + 6 
 ; Statement: if z0 == 0 goto $r12 = " top ?" 
(assert (= (ite var2447 1 0) 0)) ; Cond: z0 == 0 
(define-const var610 String " top ?") ; Statement: $r12 = " top ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var1096 String (insert/1196171004 var980 var1176 var610)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r12) 
(assert true)
(define-const var2019 String (toString/-2075883882 var1096)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {hsqldbVersion/1410848242=([org.hibernate.dialect.HSQLDialect], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3290=org.hibernate.dialect.HSQLDialect, var2879=r0, var141=r2, var1563=null_type, var2447=z0, var652=$i0, var2305=$r6, var1773=$i1, var2132=$i2, var980=$r9, var511=java.util.Locale, var898=$r7, var1207=$r8, var3737=$i3, var1176=$i4, var610=$r12, var1096=$r10, var2019=$r11}
; {org.hibernate.dialect.HSQLDialect=var3290, r0=var2879, r2=var141, null_type=var1563, z0=var2447, $i0=var652, $r6=var2305, $i1=var1773, $i2=var2132, $r9=var980, java.util.Locale=var511, $r7=var898, $r8=var1207, $i3=var3737, $i4=var1176, $r12=var610, $r10=var1096, $r11=var2019}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.HSQLDialect;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$i0 = r0.<org.hibernate.dialect.HSQLDialect: int hsqldbVersion>;	if $i0 >= 200 goto $r1 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = $i1 + 10;	specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>($i2);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = <java.util.Locale: java.util.Locale ROOT>;	$r8 = virtualinvoke r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r7);	$i3 = virtualinvoke $r8.<java.lang.String: int indexOf(java.lang.String)>("select");	$i4 = $i3 + 6;	if z0 == 0 goto $r12 = " top ?";	$r12 = " top ?";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r12);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 4
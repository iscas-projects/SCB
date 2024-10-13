(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var505 0)
(declare-sort var725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var725_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2269 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2269 null-String)))
(declare-const var1676 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1676 null-String)))
(define-const var3372 Bool (var725_isEmpty/1595667738 (cast-from-String-to-String var2269))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var3372 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2613 Bool (var725_isEmpty/1595667738 (cast-from-String-to-String var1676))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var2613 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2615 Bool (startsWith/-1785782452 var2269 var1676)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (not (= (ite var2615 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var1154 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= z3 = $z6] 
(assert true) ; Non Conditional
(define-const var1956 Bool var1154) ; Statement: z3 = $z6 
(assert true)
(define-const var630 Bool (endsWith/985337093 var2269 var1676)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (= (ite var630 1 0) 0))) ; Cond: $z4 != 0 
(define-const var317 Bool (ite (= 1 0) true false)) ; Statement: $z9 = 0 
(define-const var1351 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
(define-const var589 Bool var1351) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var1956 1 0) 0))) ; Cond: z3 != 0 
(define-const var3075 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var2036 Int (length/-134980193 var2269)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var2562 Int (length/-134980193 var1676)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var922 Int (+ var2036 var2562)) ; Statement: $i3 = $i1 + $i0 
(assert true)
(define-const var2744 Int (length/-134980193 var1676)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var363 Int (+ var922 var2744)) ; Statement: $i4 = $i3 + $i2 
(assert true)
;(assert (<init>/543593434 var3075 var363)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var3075!1 String)
(declare-const var363!1 Int)
 ; Statement: if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (= (ite var1956 1 0) 0)) ; Cond: z3 == 0 
(assert true)
;(assert (append/672562846 var3075!1 var2269)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3075!2 String)
(assert (= var3075!2 (str.++ var3075!1 var2269)))
 ; Statement: if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var589 1 0) 0)) ; Cond: z5 == 0 
(assert true)
(define-const var2142 String (toString/-2075883882 var3075!2)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var725_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2269=r0, var505=null_type, var1676=r1, var725=org.apache.commons.lang3.StringUtils, var3372=$z0, var2613=$z1, var2615=$z2, var1154=$z6, var1956=z3, var630=$z4, var317=$z9, var1351=$z8, var589=z5, var3075=$r2, var2036=$i1, var2562=$i0, var922=$i3, var2744=$i2, var363=$i4, var2142=$r3}
; {r0=var2269, null_type=var505, r1=var1676, org.apache.commons.lang3.StringUtils=var725, $z0=var3372, $z1=var2613, $z2=var2615, $z6=var1154, z3=var1956, $z4=var630, $z9=var317, $z8=var1351, z5=var589, $r2=var3075, $i1=var2036, $i0=var2562, $i3=var922, $i2=var2744, $i4=var363, $r3=var2142}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 1;	goto [?= z3 = $z6];	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 0;	$z8 = 0;	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = $i1 + $i0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 + $i2;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4);	if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 10
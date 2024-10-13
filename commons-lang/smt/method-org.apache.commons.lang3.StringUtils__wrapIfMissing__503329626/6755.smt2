(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1816 0)
(declare-sort var352 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var352_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2061 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2061 null-String)))
(declare-const var3376 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3376 null-String)))
(define-const var226 Bool (var352_isEmpty/1595667738 (cast-from-String-to-String var2061))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var226 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3280 Bool (var352_isEmpty/1595667738 (cast-from-String-to-String var3376))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var3280 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1099 Bool (startsWith/-1785782452 var2061 var3376)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (not (= (ite var1099 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var436 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= z3 = $z6] 
(assert true) ; Non Conditional
(define-const var882 Bool var436) ; Statement: z3 = $z6 
(assert true)
(define-const var1044 Bool (endsWith/985337093 var2061 var3376)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (not (= (ite var1044 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var3972 Bool (ite (= 1 1) true false)) ; Statement: $z9 = 1 
(define-const var1989 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= z5 = $z8] 
(assert true) ; Non Conditional
(define-const var2439 Bool var1989) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var882 1 0) 0))) ; Cond: z3 != 0 
(define-const var820 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var2476 Int (length/-134980193 var2061)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var2074 Int (length/-134980193 var3376)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2385 Int (+ var2476 var2074)) ; Statement: $i3 = $i1 + $i0 
(assert true)
(define-const var2991 Int (length/-134980193 var3376)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var449 Int (+ var2385 var2991)) ; Statement: $i4 = $i3 + $i2 
(assert true)
;(assert (<init>/543593434 var820 var449)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var820!1 String)
(declare-const var449!1 Int)
 ; Statement: if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (not (= (ite var882 1 0) 0))) ; Negate: Cond: z3 == 0  
(assert true)
;(assert (append/672562846 var820!1 var3376)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var820!2 String)
(assert (= var820!2 (str.++ var820!1 var3376)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var820!2 var2061)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var820!3 String)
(assert (= var820!3 (str.++ var820!2 var2061)))
 ; Statement: if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2439 1 0) 0)) ; Cond: z5 == 0 
(assert true)
(define-const var1544 String (toString/-2075883882 var820!3)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var352_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2061=r0, var1816=null_type, var3376=r1, var352=org.apache.commons.lang3.StringUtils, var226=$z0, var3280=$z1, var1099=$z2, var436=$z6, var882=z3, var1044=$z4, var3972=$z9, var1989=$z8, var2439=z5, var820=$r2, var2476=$i1, var2074=$i0, var2385=$i3, var2991=$i2, var449=$i4, var1544=$r3}
; {r0=var2061, null_type=var1816, r1=var3376, org.apache.commons.lang3.StringUtils=var352, $z0=var226, $z1=var3280, $z2=var1099, $z6=var436, z3=var882, $z4=var1044, $z9=var3972, $z8=var1989, z5=var2439, $r2=var820, $i1=var2476, $i0=var2074, $i3=var2385, $i2=var2991, $i4=var449, $r3=var1544}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 1;	goto [?= z3 = $z6];	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 1;	$z8 = 1;	goto [?= z5 = $z8];	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = $i1 + $i0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 + $i2;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4);	if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 11
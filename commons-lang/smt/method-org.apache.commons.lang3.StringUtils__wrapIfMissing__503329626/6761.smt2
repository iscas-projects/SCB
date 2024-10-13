(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var657 0)
(declare-sort var2897 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2897_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var353 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var353 null-String)))
(declare-const var1690 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1690 null-String)))
(define-const var2283 Bool (var2897_isEmpty/1595667738 (cast-from-String-to-String var353))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var2283 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2581 Bool (var2897_isEmpty/1595667738 (cast-from-String-to-String var1690))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var2581 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1916 Bool (startsWith/-1785782452 var353 var1690)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (= (ite var1916 1 0) 0))) ; Cond: $z2 != 0 
(define-const var2985 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var2310 Bool var2985) ; Statement: z3 = $z6 
(assert true)
(define-const var560 Bool (endsWith/985337093 var353 var1690)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (not (= (ite var560 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var2994 Bool (ite (= 1 1) true false)) ; Statement: $z9 = 1 
(define-const var3653 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= z5 = $z8] 
(assert true) ; Non Conditional
(define-const var2684 Bool var3653) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var2310 1 0) 0))) ; Cond: z3 != 0 
(define-const var2854 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var3537 Int (length/-134980193 var353)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var2357 Int (length/-134980193 var1690)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3822 Int (+ var3537 var2357)) ; Statement: $i3 = $i1 + $i0 
(assert true)
(define-const var3577 Int (length/-134980193 var1690)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1284 Int (+ var3822 var3577)) ; Statement: $i4 = $i3 + $i2 
(assert true)
;(assert (<init>/543593434 var2854 var1284)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var2854!1 String)
(declare-const var1284!1 Int)
 ; Statement: if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (not (= (ite var2310 1 0) 0))) ; Negate: Cond: z3 == 0  
(assert true)
;(assert (append/672562846 var2854!1 var1690)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2854!2 String)
(assert (= var2854!2 (str.++ var2854!1 var1690)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2854!2 var353)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2854!3 String)
(assert (= var2854!3 (str.++ var2854!2 var353)))
 ; Statement: if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2684 1 0) 0)) ; Cond: z5 == 0 
(assert true)
(define-const var579 String (toString/-2075883882 var2854!3)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2897_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var353=r0, var657=null_type, var1690=r1, var2897=org.apache.commons.lang3.StringUtils, var2283=$z0, var2581=$z1, var1916=$z2, var2985=$z6, var2310=z3, var560=$z4, var2994=$z9, var3653=$z8, var2684=z5, var2854=$r2, var3537=$i1, var2357=$i0, var3822=$i3, var3577=$i2, var1284=$i4, var579=$r3}
; {r0=var353, null_type=var657, r1=var1690, org.apache.commons.lang3.StringUtils=var2897, $z0=var2283, $z1=var2581, $z2=var1916, $z6=var2985, z3=var2310, $z4=var560, $z9=var2994, $z8=var3653, z5=var2684, $r2=var2854, $i1=var3537, $i0=var2357, $i3=var3822, $i2=var3577, $i4=var1284, $r3=var579}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 0;	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 1;	$z8 = 1;	goto [?= z5 = $z8];	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = $i1 + $i0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 + $i2;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4);	if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 11
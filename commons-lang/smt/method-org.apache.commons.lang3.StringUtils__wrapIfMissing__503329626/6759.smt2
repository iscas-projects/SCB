(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1845 0)
(declare-sort var333 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var333_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var3456 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3456 null-String)))
(declare-const var1303 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1303 null-String)))
(define-const var3675 Bool (var333_isEmpty/1595667738 (cast-from-String-to-String var3456))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var3675 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3614 Bool (var333_isEmpty/1595667738 (cast-from-String-to-String var1303))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var3614 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3914 Bool (startsWith/-1785782452 var3456 var1303)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (not (= (ite var3914 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var1000 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= z3 = $z6] 
(assert true) ; Non Conditional
(define-const var3011 Bool var1000) ; Statement: z3 = $z6 
(assert true)
(define-const var2106 Bool (endsWith/985337093 var3456 var1303)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (= (ite var2106 1 0) 0))) ; Cond: $z4 != 0 
(define-const var962 Bool (ite (= 1 0) true false)) ; Statement: $z9 = 0 
(define-const var3706 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
(define-const var1867 Bool var3706) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var3011 1 0) 0))) ; Cond: z3 != 0 
(define-const var3873 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var331 Int (length/-134980193 var3456)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var748 Int (length/-134980193 var1303)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1322 Int (+ var331 var748)) ; Statement: $i3 = $i1 + $i0 
(assert true)
(define-const var1676 Int (length/-134980193 var1303)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var574 Int (+ var1322 var1676)) ; Statement: $i4 = $i3 + $i2 
(assert true)
;(assert (<init>/543593434 var3873 var574)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var3873!1 String)
(declare-const var574!1 Int)
 ; Statement: if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (= (ite var3011 1 0) 0)) ; Cond: z3 == 0 
(assert true)
;(assert (append/672562846 var3873!1 var3456)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3873!2 String)
(assert (= var3873!2 (str.++ var3873!1 var3456)))
 ; Statement: if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var1867 1 0) 0))) ; Negate: Cond: z5 == 0  
(assert true)
;(assert (append/672562846 var3873!2 var1303)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3873!3 String)
(assert (= var3873!3 (str.++ var3873!2 var1303)))
(assert true) ; Non Conditional
(assert true)
(define-const var3878 String (toString/-2075883882 var3873!3)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var333_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3456=r0, var1845=null_type, var1303=r1, var333=org.apache.commons.lang3.StringUtils, var3675=$z0, var3614=$z1, var3914=$z2, var1000=$z6, var3011=z3, var2106=$z4, var962=$z9, var3706=$z8, var1867=z5, var3873=$r2, var331=$i1, var748=$i0, var1322=$i3, var1676=$i2, var574=$i4, var3878=$r3}
; {r0=var3456, null_type=var1845, r1=var1303, org.apache.commons.lang3.StringUtils=var333, $z0=var3675, $z1=var3614, $z2=var3914, $z6=var1000, z3=var3011, $z4=var2106, $z9=var962, $z8=var3706, z5=var1867, $r2=var3873, $i1=var331, $i0=var748, $i3=var1322, $i2=var1676, $i4=var574, $r3=var3878}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 1;	goto [?= z3 = $z6];	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 0;	$z8 = 0;	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = $i1 + $i0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 + $i2;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4);	if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 11
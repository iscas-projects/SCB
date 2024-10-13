(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1368 0)
(declare-sort var2684 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2684_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var3246 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3246 null-String)))
(declare-const var1544 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1544 null-String)))
(define-const var575 Bool (var2684_isEmpty/1595667738 (cast-from-String-to-String var3246))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var575 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2176 Bool (var2684_isEmpty/1595667738 (cast-from-String-to-String var1544))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var2176 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var568 Bool (startsWith/-1785782452 var3246 var1544)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (not (= (ite var568 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var1930 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= z3 = $z6] 
(assert true) ; Non Conditional
(define-const var1898 Bool var1930) ; Statement: z3 = $z6 
(assert true)
(define-const var3258 Bool (endsWith/985337093 var3246 var1544)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (not (= (ite var3258 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var1640 Bool (ite (= 1 1) true false)) ; Statement: $z9 = 1 
(define-const var1859 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= z5 = $z8] 
(assert true) ; Non Conditional
(define-const var3903 Bool var1859) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var1898 1 0) 0))) ; Cond: z3 != 0 
(define-const var865 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var561 Int (length/-134980193 var3246)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var3068 Int (length/-134980193 var1544)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1584 Int (+ var561 var3068)) ; Statement: $i3 = $i1 + $i0 
(assert true)
(define-const var1592 Int (length/-134980193 var1544)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2167 Int (+ var1584 var1592)) ; Statement: $i4 = $i3 + $i2 
(assert true)
;(assert (<init>/543593434 var865 var2167)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var865!1 String)
(declare-const var2167!1 Int)
 ; Statement: if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (= (ite var1898 1 0) 0)) ; Cond: z3 == 0 
(assert true)
;(assert (append/672562846 var865!1 var3246)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var865!2 String)
(assert (= var865!2 (str.++ var865!1 var3246)))
 ; Statement: if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3903 1 0) 0)) ; Cond: z5 == 0 
(assert true)
(define-const var2145 String (toString/-2075883882 var865!2)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2684_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3246=r0, var1368=null_type, var1544=r1, var2684=org.apache.commons.lang3.StringUtils, var575=$z0, var2176=$z1, var568=$z2, var1930=$z6, var1898=z3, var3258=$z4, var1640=$z9, var1859=$z8, var3903=z5, var865=$r2, var561=$i1, var3068=$i0, var1584=$i3, var1592=$i2, var2167=$i4, var2145=$r3}
; {r0=var3246, null_type=var1368, r1=var1544, org.apache.commons.lang3.StringUtils=var2684, $z0=var575, $z1=var2176, $z2=var568, $z6=var1930, z3=var1898, $z4=var3258, $z9=var1640, $z8=var1859, z5=var3903, $r2=var865, $i1=var561, $i0=var3068, $i3=var1584, $i2=var1592, $i4=var2167, $r3=var2145}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 1;	goto [?= z3 = $z6];	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 1;	$z8 = 1;	goto [?= z5 = $z8];	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = $i1 + $i0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 + $i2;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4);	if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 10
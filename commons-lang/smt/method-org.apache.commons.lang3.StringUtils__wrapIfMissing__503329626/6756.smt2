(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1765 0)
(declare-sort var691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var691_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var20 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var20 null-String)))
(declare-const var2840 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2840 null-String)))
(define-const var2044 Bool (var691_isEmpty/1595667738 (cast-from-String-to-String var20))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var2044 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1954 Bool (var691_isEmpty/1595667738 (cast-from-String-to-String var2840))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var1954 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3392 Bool (startsWith/-1785782452 var20 var2840)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (not (= (ite var3392 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var3294 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= z3 = $z6] 
(assert true) ; Non Conditional
(define-const var124 Bool var3294) ; Statement: z3 = $z6 
(assert true)
(define-const var1263 Bool (endsWith/985337093 var20 var2840)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (not (= (ite var1263 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var2606 Bool (ite (= 1 1) true false)) ; Statement: $z9 = 1 
(define-const var456 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= z5 = $z8] 
(assert true) ; Non Conditional
(define-const var2771 Bool var456) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var124 1 0) 0))) ; Cond: z3 != 0 
(define-const var996 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var1530 Int (length/-134980193 var20)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var1268 Int (length/-134980193 var2840)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2134 Int (+ var1530 var1268)) ; Statement: $i3 = $i1 + $i0 
(assert true)
(define-const var1377 Int (length/-134980193 var2840)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3378 Int (+ var2134 var1377)) ; Statement: $i4 = $i3 + $i2 
(assert true)
;(assert (<init>/543593434 var996 var3378)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var996!1 String)
(declare-const var3378!1 Int)
 ; Statement: if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (= (ite var124 1 0) 0)) ; Cond: z3 == 0 
(assert true)
;(assert (append/672562846 var996!1 var20)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var996!2 String)
(assert (= var996!2 (str.++ var996!1 var20)))
 ; Statement: if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var2771 1 0) 0))) ; Negate: Cond: z5 == 0  
(assert true)
;(assert (append/672562846 var996!2 var2840)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var996!3 String)
(assert (= var996!3 (str.++ var996!2 var2840)))
(assert true) ; Non Conditional
(assert true)
(define-const var1123 String (toString/-2075883882 var996!3)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var691_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var20=r0, var1765=null_type, var2840=r1, var691=org.apache.commons.lang3.StringUtils, var2044=$z0, var1954=$z1, var3392=$z2, var3294=$z6, var124=z3, var1263=$z4, var2606=$z9, var456=$z8, var2771=z5, var996=$r2, var1530=$i1, var1268=$i0, var2134=$i3, var1377=$i2, var3378=$i4, var1123=$r3}
; {r0=var20, null_type=var1765, r1=var2840, org.apache.commons.lang3.StringUtils=var691, $z0=var2044, $z1=var1954, $z2=var3392, $z6=var3294, z3=var124, $z4=var1263, $z9=var2606, $z8=var456, z5=var2771, $r2=var996, $i1=var1530, $i0=var1268, $i3=var2134, $i2=var1377, $i4=var3378, $r3=var1123}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 1;	goto [?= z3 = $z6];	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 1;	$z8 = 1;	goto [?= z5 = $z8];	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = $i1 + $i0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 + $i2;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i4);	if z3 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	if z5 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 11
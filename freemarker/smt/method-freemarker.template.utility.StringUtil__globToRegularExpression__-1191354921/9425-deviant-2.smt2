(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var658 0)
(declare-sort var1810 0)
(declare-sort var1860 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1810_appendLiteralGlobSection/-427210499 (String String Int Int) void)
(declare-fun var1860-init () var1860)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1860 String) void)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2319 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2319 null-String)))
(declare-const var1188 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1188 null-Bool)))
(define-const var3341 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3341)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3341!1 String)
(assert (= var3341!1 ""))
(define-const var2881 Int 0) ; Statement: i12 = 0 
(define-const var410 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var3281 Int (length/-134980193 var2319)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var796 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (>= var796 var3281))) ; Negate: Cond: i13 >= i0  
(assert (and true (and (> (str.len var2319) var796) (<= 0 var796))))
(define-const var2564 Int (charAt/698050440 var2319 var796)) ; Statement: c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13) 
 ; Statement: if z1 != 0 goto z1 = 0 
(assert (not (not (= (ite var410 1 0) 0)))) ; Negate: Cond: z1 != 0  
(define-const var1012 Int (cast-from-Int-to-Int var2564)) ; Statement: $i15 = (int) c2 
 ; Statement: if $i15 != 63 goto $i16 = (int) c2 
(assert (not (= var1012 63))) ; Cond: $i15 != 63 
(define-const var202 Int (cast-from-Int-to-Int var2564)) ; Statement: $i16 = (int) c2 
 ; Statement: if $i16 != 42 goto $i20 = (int) c2 
(assert (not (not (= var202 42)))) ; Negate: Cond: $i16 != 42  
;(assert (var1810_appendLiteralGlobSection/-427210499 var3341!1 var2319 var2881 var796)) ; Statement: staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, i13) 

(declare-const var3341!2 String)
(declare-const var2319!1 String)
(declare-const var2881!1 Int)
(declare-const var796!1 Int)
(define-const var394 Int (+ var796!1 1)) ; Statement: $i3 = i13 + 1 
 ; Statement: if $i3 >= i0 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]*") 
(assert (not (>= var394 var3281))) ; Negate: Cond: $i3 >= i0  
(define-const var921 Int (+ var796!1 1)) ; Statement: $i4 = i13 + 1 
(assert (and true (and (> (str.len var2319!1) var921) (<= 0 var921))))
(define-const var673 Int (charAt/698050440 var2319!1 var921)) ; Statement: $c5 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i4) 
(define-const var1667 Int (cast-from-Int-to-Int var673)) ; Statement: $i17 = (int) $c5 
 ; Statement: if $i17 != 42 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]*") 
(assert (not (not (= var1667 42)))) ; Negate: Cond: $i17 != 42  
 ; Statement: if i13 == 0 goto $i6 = i13 + 2 
(assert (= var796!1 0)) ; Cond: i13 == 0 
(define-const var2311 Int (+ var796!1 2)) ; Statement: $i6 = i13 + 2 
 ; Statement: if $i6 != i0 goto $i7 = i13 + 2 
(assert (not (= var2311 var3281))) ; Cond: $i6 != i0 
(define-const var1846 Int (+ var796!1 2)) ; Statement: $i7 = i13 + 2 
 ; Statement: if $i7 >= i0 goto $r25 = new java.lang.IllegalArgumentException 
(assert (not (>= var1846 var3281))) ; Negate: Cond: $i7 >= i0  
(define-const var65 Int (+ var796!1 2)) ; Statement: $i8 = i13 + 2 
(assert (not (and true (and (> (str.len var2319!1) var65) (<= 0 var65)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1810_appendLiteralGlobSection/-427210499=([java.lang.StringBuilder, java.lang.String, int, int], void), var1860-init=([], java.lang.IllegalArgumentException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2319=r1, var658=null_type, var1188=z0, var3341=$r21, var2881=i12, var410=z1, var3281=i0, var796=i13, var2564=c2, var1012=$i15, var202=$i16, var1810=freemarker.template.utility.StringUtil, var394=$i3, var921=$i4, var673=$c5, var1667=$i17, var2311=$i6, var1846=$i7, var65=$i8, var3805=$c9, var400=$i19, var1860=java.lang.IllegalArgumentException, var3503=$r25, var625=$r24, var2842=$r13, var3411=$r14, var833=$r15}
; {r1=var2319, null_type=var658, z0=var1188, $r21=var3341, i12=var2881, z1=var410, i0=var3281, i13=var796, c2=var2564, $i15=var1012, $i16=var202, freemarker.template.utility.StringUtil=var1810, $i3=var394, $i4=var921, $c5=var673, $i17=var1667, $i6=var2311, $i7=var1846, $i8=var65, $c9=var3805, $i19=var400, java.lang.IllegalArgumentException=var1860, $r25=var3503, $r24=var625, $r13=var2842, $r14=var3411, $r15=var833}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	i12 = 0;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i13 = 0;	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13);	if z1 != 0 goto z1 = 0;	$i15 = (int) c2;	if $i15 != 63 goto $i16 = (int) c2;	$i16 = (int) c2;	if $i16 != 42 goto $i20 = (int) c2;	staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, i13);	$i3 = i13 + 1;	if $i3 >= i0 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]*");	$i4 = i13 + 1;	$c5 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i4);	$i17 = (int) $c5;	if $i17 != 42 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]*");	if i13 == 0 goto $i6 = i13 + 2;	$i6 = i13 + 2;	if $i6 != i0 goto $i7 = i13 + 2;	$i7 = i13 + 2;	if $i7 >= i0 goto $r25 = new java.lang.IllegalArgumentException;	$i8 = i13 + 2;	$c9 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i8);	$i19 = (int) $c9;	if $i19 == 47 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(.*?/)*");	$r25 = new java.lang.IllegalArgumentException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"**\" wildcard must be followed by \"/\", or must be at tehe end, in this glob: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r25
;block_num 12
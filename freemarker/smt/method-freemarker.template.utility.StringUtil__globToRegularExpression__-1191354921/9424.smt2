(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2891 0)
(declare-sort var3770 0)
(declare-sort var2175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3770_appendLiteralGlobSection/-427210499 (String String Int Int) void)
(declare-fun var2175-init () var2175)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2175 String) void)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2926 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2926 null-String)))
(declare-const var1123 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1123 null-Bool)))
(define-const var3194 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3194)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3194!1 String)
(assert (= var3194!1 ""))
(define-const var3642 Int 0) ; Statement: i12 = 0 
(define-const var3636 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var2875 Int (length/-134980193 var2926)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var644 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (>= var644 var2875))) ; Negate: Cond: i13 >= i0  
(assert (and true (and (> (str.len var2926) var644) (<= 0 var644))))
(define-const var3616 Int (charAt/698050440 var2926 var644)) ; Statement: c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13) 
 ; Statement: if z1 != 0 goto z1 = 0 
(assert (not (not (= (ite var3636 1 0) 0)))) ; Negate: Cond: z1 != 0  
(define-const var1818 Int (cast-from-Int-to-Int var3616)) ; Statement: $i15 = (int) c2 
 ; Statement: if $i15 != 63 goto $i16 = (int) c2 
(assert (not (= var1818 63))) ; Cond: $i15 != 63 
(define-const var139 Int (cast-from-Int-to-Int var3616)) ; Statement: $i16 = (int) c2 
 ; Statement: if $i16 != 42 goto $i20 = (int) c2 
(assert (not (not (= var139 42)))) ; Negate: Cond: $i16 != 42  
;(assert (var3770_appendLiteralGlobSection/-427210499 var3194!1 var2926 var3642 var644)) ; Statement: staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, i13) 

(declare-const var3194!2 String)
(declare-const var2926!1 String)
(declare-const var3642!1 Int)
(declare-const var644!1 Int)
(define-const var2711 Int (+ var644!1 1)) ; Statement: $i3 = i13 + 1 
 ; Statement: if $i3 >= i0 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]*") 
(assert (not (>= var2711 var2875))) ; Negate: Cond: $i3 >= i0  
(define-const var461 Int (+ var644!1 1)) ; Statement: $i4 = i13 + 1 
(assert (and true (and (> (str.len var2926!1) var461) (<= 0 var461))))
(define-const var918 Int (charAt/698050440 var2926!1 var461)) ; Statement: $c5 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i4) 
(define-const var1544 Int (cast-from-Int-to-Int var918)) ; Statement: $i17 = (int) $c5 
 ; Statement: if $i17 != 42 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]*") 
(assert (not (not (= var1544 42)))) ; Negate: Cond: $i17 != 42  
 ; Statement: if i13 == 0 goto $i6 = i13 + 2 
(assert (not (= var644!1 0))) ; Negate: Cond: i13 == 0  
(define-const var793 Int (- var644!1 1)) ; Statement: $i10 = i13 - 1 
(assert (and true (and (> (str.len var2926!1) var793) (<= 0 var793))))
(define-const var110 Int (charAt/698050440 var2926!1 var793)) ; Statement: $c11 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i10) 
(define-const var3501 Int (cast-from-Int-to-Int var110)) ; Statement: $i18 = (int) $c11 
 ; Statement: if $i18 == 47 goto $i6 = i13 + 2 
(assert (= var3501 47)) ; Cond: $i18 == 47 
(define-const var878 Int (+ var644!1 2)) ; Statement: $i6 = i13 + 2 
 ; Statement: if $i6 != i0 goto $i7 = i13 + 2 
(assert (not (= var878 var2875))) ; Cond: $i6 != i0 
(define-const var3982 Int (+ var644!1 2)) ; Statement: $i7 = i13 + 2 
 ; Statement: if $i7 >= i0 goto $r25 = new java.lang.IllegalArgumentException 
(assert (>= var3982 var2875)) ; Cond: $i7 >= i0 
(define-const var200 var2175 var2175-init) ; Statement: $r25 = new java.lang.IllegalArgumentException 
(define-const var1458 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1458)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1458!1 String)
(assert (= var1458!1 ""))
(assert true)
(define-const var1523 String (append/672562846 var1458!1 "The \u0022**\u0022 wildcard must be followed by \u0022/\u0022, or must be at tehe end, in this glob: ")) ; Statement: $r13 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"**\" wildcard must be followed by \"/\", or must be at tehe end, in this glob: ") 
(declare-const var1458!2 String)
(assert (= var1458!2 (str.++ var1458!1 "The \u0022**\u0022 wildcard must be followed by \u0022/\u0022, or must be at tehe end, in this glob: ")))
(assert true)
(define-const var3952 String (append/672562846 var1523 var2926!1)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1523!1 String)
(assert (= var1523!1 (str.++ var1523 var2926!1)))
(assert true)
(define-const var1811 String (toString/-2075883882 var3952)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var200 var1811)) ; Statement: specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var200!1 var2175)
(declare-const var1811!1 String)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var3770_appendLiteralGlobSection/-427210499=([java.lang.StringBuilder, java.lang.String, int, int], void), var2175-init=([], java.lang.IllegalArgumentException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2926=r1, var2891=null_type, var1123=z0, var3194=$r21, var3642=i12, var3636=z1, var2875=i0, var644=i13, var3616=c2, var1818=$i15, var139=$i16, var3770=freemarker.template.utility.StringUtil, var2711=$i3, var461=$i4, var918=$c5, var1544=$i17, var793=$i10, var110=$c11, var3501=$i18, var878=$i6, var3982=$i7, var2175=java.lang.IllegalArgumentException, var200=$r25, var1458=$r24, var1523=$r13, var3952=$r14, var1811=$r15}
; {r1=var2926, null_type=var2891, z0=var1123, $r21=var3194, i12=var3642, z1=var3636, i0=var2875, i13=var644, c2=var3616, $i15=var1818, $i16=var139, freemarker.template.utility.StringUtil=var3770, $i3=var2711, $i4=var461, $c5=var918, $i17=var1544, $i10=var793, $c11=var110, $i18=var3501, $i6=var878, $i7=var3982, java.lang.IllegalArgumentException=var2175, $r25=var200, $r24=var1458, $r13=var1523, $r14=var3952, $r15=var1811}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	i12 = 0;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i13 = 0;	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13);	if z1 != 0 goto z1 = 0;	$i15 = (int) c2;	if $i15 != 63 goto $i16 = (int) c2;	$i16 = (int) c2;	if $i16 != 42 goto $i20 = (int) c2;	staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, i13);	$i3 = i13 + 1;	if $i3 >= i0 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]*");	$i4 = i13 + 1;	$c5 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i4);	$i17 = (int) $c5;	if $i17 != 42 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]*");	if i13 == 0 goto $i6 = i13 + 2;	$i10 = i13 - 1;	$c11 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i10);	$i18 = (int) $c11;	if $i18 == 47 goto $i6 = i13 + 2;	$i6 = i13 + 2;	if $i6 != i0 goto $i7 = i13 + 2;	$i7 = i13 + 2;	if $i7 >= i0 goto $r25 = new java.lang.IllegalArgumentException;	$r25 = new java.lang.IllegalArgumentException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"**\" wildcard must be followed by \"/\", or must be at tehe end, in this glob: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r25
;block_num 12
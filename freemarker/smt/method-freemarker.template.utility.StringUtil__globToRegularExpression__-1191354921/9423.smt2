(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1908 0)
(declare-sort var3140 0)
(declare-sort var3144 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3140_appendLiteralGlobSection/-427210499 (String String Int Int) void)
(declare-fun var3144-init () var3144)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3144 String) void)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3283 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3283 null-String)))
(declare-const var212 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var212 null-Bool)))
(define-const var1173 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1173)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1173!1 String)
(assert (= var1173!1 ""))
(define-const var2958 Int 0) ; Statement: i12 = 0 
(define-const var827 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var634 Int (length/-134980193 var3283)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3895 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (>= var3895 var634))) ; Negate: Cond: i13 >= i0  
(assert (and true (and (> (str.len var3283) var3895) (<= 0 var3895))))
(define-const var655 Int (charAt/698050440 var3283 var3895)) ; Statement: c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13) 
 ; Statement: if z1 != 0 goto z1 = 0 
(assert (not (not (= (ite var827 1 0) 0)))) ; Negate: Cond: z1 != 0  
(define-const var2729 Int (cast-from-Int-to-Int var655)) ; Statement: $i15 = (int) c2 
 ; Statement: if $i15 != 63 goto $i16 = (int) c2 
(assert (not (= var2729 63))) ; Cond: $i15 != 63 
(define-const var2126 Int (cast-from-Int-to-Int var655)) ; Statement: $i16 = (int) c2 
 ; Statement: if $i16 != 42 goto $i20 = (int) c2 
(assert (not (not (= var2126 42)))) ; Negate: Cond: $i16 != 42  
;(assert (var3140_appendLiteralGlobSection/-427210499 var1173!1 var3283 var2958 var3895)) ; Statement: staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, i13) 

(declare-const var1173!2 String)
(declare-const var3283!1 String)
(declare-const var2958!1 Int)
(declare-const var3895!1 Int)
(define-const var3320 Int (+ var3895!1 1)) ; Statement: $i3 = i13 + 1 
 ; Statement: if $i3 >= i0 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]*") 
(assert (not (>= var3320 var634))) ; Negate: Cond: $i3 >= i0  
(define-const var1952 Int (+ var3895!1 1)) ; Statement: $i4 = i13 + 1 
(assert (and true (and (> (str.len var3283!1) var1952) (<= 0 var1952))))
(define-const var3489 Int (charAt/698050440 var3283!1 var1952)) ; Statement: $c5 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i4) 
(define-const var928 Int (cast-from-Int-to-Int var3489)) ; Statement: $i17 = (int) $c5 
 ; Statement: if $i17 != 42 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]*") 
(assert (not (not (= var928 42)))) ; Negate: Cond: $i17 != 42  
 ; Statement: if i13 == 0 goto $i6 = i13 + 2 
(assert (= var3895!1 0)) ; Cond: i13 == 0 
(define-const var2927 Int (+ var3895!1 2)) ; Statement: $i6 = i13 + 2 
 ; Statement: if $i6 != i0 goto $i7 = i13 + 2 
(assert (not (= var2927 var634))) ; Cond: $i6 != i0 
(define-const var2132 Int (+ var3895!1 2)) ; Statement: $i7 = i13 + 2 
 ; Statement: if $i7 >= i0 goto $r25 = new java.lang.IllegalArgumentException 
(assert (>= var2132 var634)) ; Cond: $i7 >= i0 
(define-const var381 var3144 var3144-init) ; Statement: $r25 = new java.lang.IllegalArgumentException 
(define-const var1109 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1109)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1109!1 String)
(assert (= var1109!1 ""))
(assert true)
(define-const var1731 String (append/672562846 var1109!1 "The \u0022**\u0022 wildcard must be followed by \u0022/\u0022, or must be at tehe end, in this glob: ")) ; Statement: $r13 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"**\" wildcard must be followed by \"/\", or must be at tehe end, in this glob: ") 
(declare-const var1109!2 String)
(assert (= var1109!2 (str.++ var1109!1 "The \u0022**\u0022 wildcard must be followed by \u0022/\u0022, or must be at tehe end, in this glob: ")))
(assert true)
(define-const var2110 String (append/672562846 var1731 var3283!1)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1731!1 String)
(assert (= var1731!1 (str.++ var1731 var3283!1)))
(assert true)
(define-const var1737 String (toString/-2075883882 var2110)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var381 var1737)) ; Statement: specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var381!1 var3144)
(declare-const var1737!1 String)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var3140_appendLiteralGlobSection/-427210499=([java.lang.StringBuilder, java.lang.String, int, int], void), var3144-init=([], java.lang.IllegalArgumentException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3283=r1, var1908=null_type, var212=z0, var1173=$r21, var2958=i12, var827=z1, var634=i0, var3895=i13, var655=c2, var2729=$i15, var2126=$i16, var3140=freemarker.template.utility.StringUtil, var3320=$i3, var1952=$i4, var3489=$c5, var928=$i17, var2927=$i6, var2132=$i7, var3144=java.lang.IllegalArgumentException, var381=$r25, var1109=$r24, var1731=$r13, var2110=$r14, var1737=$r15}
; {r1=var3283, null_type=var1908, z0=var212, $r21=var1173, i12=var2958, z1=var827, i0=var634, i13=var3895, c2=var655, $i15=var2729, $i16=var2126, freemarker.template.utility.StringUtil=var3140, $i3=var3320, $i4=var1952, $c5=var3489, $i17=var928, $i6=var2927, $i7=var2132, java.lang.IllegalArgumentException=var3144, $r25=var381, $r24=var1109, $r13=var1731, $r14=var2110, $r15=var1737}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	i12 = 0;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i13 = 0;	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13);	if z1 != 0 goto z1 = 0;	$i15 = (int) c2;	if $i15 != 63 goto $i16 = (int) c2;	$i16 = (int) c2;	if $i16 != 42 goto $i20 = (int) c2;	staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, i13);	$i3 = i13 + 1;	if $i3 >= i0 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]*");	$i4 = i13 + 1;	$c5 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i4);	$i17 = (int) $c5;	if $i17 != 42 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]*");	if i13 == 0 goto $i6 = i13 + 2;	$i6 = i13 + 2;	if $i6 != i0 goto $i7 = i13 + 2;	$i7 = i13 + 2;	if $i7 >= i0 goto $r25 = new java.lang.IllegalArgumentException;	$r25 = new java.lang.IllegalArgumentException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"**\" wildcard must be followed by \"/\", or must be at tehe end, in this glob: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r25
;block_num 11
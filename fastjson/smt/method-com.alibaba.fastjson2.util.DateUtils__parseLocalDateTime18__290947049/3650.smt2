(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(declare-fun <init>/-1380519146 (String (Array Int Int) Int Int) void)
(declare-fun var1139-init () var1139)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1826383805 (var1139 String String Int) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2686 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2686 null-__Array__Int__Int__)))
(declare-const var21 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var21 null-Int)))
(define-const var55 Int (+ var21 18)) ; Statement: $i2 = i0 + 18 
(define-const var1688 Int (getLength-Arr-Int-1 var2686)) ; Statement: $i1 = lengthof r0 
 ; Statement: if $i2 <= $i1 goto $b3 = r0[i0] 
(assert (not (<= var55 var1688))) ; Negate: Cond: $i2 <= $i1  
(define-const var723 String String-init) ; Statement: $r86 = new java.lang.String 
(define-const var944 Int (getLength-Arr-Int-1 var2686)) ; Statement: $i103 = lengthof r0 
(define-const var2674 Int (- var944 var21)) ; Statement: $i104 = $i103 - i0 
(assert true)
;(assert (<init>/-1380519146 var723 var2686 var21 var2674)) ; Statement: specialinvoke $r86.<java.lang.String: void <init>(byte[],int,int)>(r0, i0, $i104) 

(declare-const var723!1 String)
(declare-const var2686!1 (Array Int Int))
(declare-const var21!1 Int)
(declare-const var2674!1 Int)
(define-const var878 var1139 var1139-init) ; Statement: $r88 = new java.time.format.DateTimeParseException 
(define-const var294 String String-init) ; Statement: $r87 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var294)) ; Statement: specialinvoke $r87.<java.lang.StringBuilder: void <init>()>() 
(declare-const var294!1 String)
(assert (= var294!1 ""))
(assert true)
(define-const var3847 String (append/672562846 var294!1 "illegal input ")) ; Statement: $r41 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ") 
(declare-const var294!2 String)
(assert (= var294!2 (str.++ var294!1 "illegal input ")))
(assert true)
(define-const var987 String (append/672562846 var3847 var723!1)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r86) 
(declare-const var3847!1 String)
(assert (= var3847!1 (str.++ var3847 var723!1)))
(assert true)
(define-const var2707 String (toString/-2075883882 var987)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1826383805 var878 var2707 (cast-from-String-to-String var723!1) 0)) ; Statement: specialinvoke $r88.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r43, $r86, 0) 

(declare-const var878!1 var1139)
(declare-const var2707!1 String)
(declare-const var723!2 String)
(declare-const var1458 Int)
 ; Statement: throw $r88 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), String-init=([], java.lang.String), <init>/-1380519146=([java.lang.String, byte[], int, int], void), var1139-init=([], java.time.format.DateTimeParseException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1826383805=([java.time.format.DateTimeParseException, java.lang.String, java.lang.CharSequence, int], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2686=r0, var21=i0, var55=$i2, var1688=$i1, var723=$r86, var944=$i103, var2674=$i104, var1139=java.time.format.DateTimeParseException, var878=$r88, var294=$r87, var3847=$r41, var987=$r42, var2707=$r43, var1458=0}
; {r0=var2686, i0=var21, $i2=var55, $i1=var1688, $r86=var723, $i103=var944, $i104=var2674, java.time.format.DateTimeParseException=var1139, $r88=var878, $r87=var294, $r41=var3847, $r42=var987, $r43=var2707, 0=var1458}
;seq <java.lang.String: void <init>(byte[],int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: void <init>(byte[],int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: byte[];	i0 := @parameter1: int;	$i2 = i0 + 18;	$i1 = lengthof r0;	if $i2 <= $i1 goto $b3 = r0[i0];	$r86 = new java.lang.String;	$i103 = lengthof r0;	$i104 = $i103 - i0;	specialinvoke $r86.<java.lang.String: void <init>(byte[],int,int)>(r0, i0, $i104);	$r88 = new java.time.format.DateTimeParseException;	$r87 = new java.lang.StringBuilder;	specialinvoke $r87.<java.lang.StringBuilder: void <init>()>();	$r41 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ");	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r86);	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r88.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r43, $r86, 0);	throw $r88
;block_num 2
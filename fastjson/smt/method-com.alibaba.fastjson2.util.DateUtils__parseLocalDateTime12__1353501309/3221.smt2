(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1885 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun var1885-init () var1885)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1826383805 (var1885 String String Int) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3678 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var3678 null-__Array__Int__Int__)))
(declare-const var2454 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2454 null-Int)))
(define-const var2639 Int (+ var2454 12)) ; Statement: $i2 = i0 + 12 
(define-const var1965 Int (getLength-Arr-Int-1 var3678)) ; Statement: $i1 = lengthof r0 
 ; Statement: if $i2 <= $i1 goto c49 = r0[i0] 
(assert (not (<= var2639 var1965))) ; Negate: Cond: $i2 <= $i1  
(define-const var1929 String String-init) ; Statement: $r38 = new java.lang.String 
(define-const var3639 Int (getLength-Arr-Int-1 var3678)) ; Statement: $i47 = lengthof r0 
(define-const var2573 Int (- var3639 var2454)) ; Statement: $i48 = $i47 - i0 
(assert true)
;(assert (<init>/-253222812 var1929 var3678 var2454 var2573)) ; Statement: specialinvoke $r38.<java.lang.String: void <init>(char[],int,int)>(r0, i0, $i48) 

(declare-const var1929!1 String)
(declare-const var3678!1 (Array Int Int))
(declare-const var2454!1 Int)
(declare-const var2573!1 Int)
(define-const var3327 var1885 var1885-init) ; Statement: $r40 = new java.time.format.DateTimeParseException 
(define-const var2481 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2481)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2481!1 String)
(assert (= var2481!1 ""))
(assert true)
(define-const var3613 String (append/672562846 var2481!1 "illegal input ")) ; Statement: $r4 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ") 
(declare-const var2481!2 String)
(assert (= var2481!2 (str.++ var2481!1 "illegal input ")))
(assert true)
(define-const var2650 String (append/672562846 var3613 var1929!1)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38) 
(declare-const var3613!1 String)
(assert (= var3613!1 (str.++ var3613 var1929!1)))
(assert true)
(define-const var1803 String (toString/-2075883882 var2650)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1826383805 var3327 var1803 (cast-from-String-to-String var1929!1) 0)) ; Statement: specialinvoke $r40.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r6, $r38, 0) 

(declare-const var3327!1 var1885)
(declare-const var1803!1 String)
(declare-const var1929!2 String)
(declare-const var945 Int)
 ; Statement: throw $r40 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([char[]], int), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), var1885-init=([], java.time.format.DateTimeParseException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1826383805=([java.time.format.DateTimeParseException, java.lang.String, java.lang.CharSequence, int], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var3678=r0, var2454=i0, var2639=$i2, var1965=$i1, var1929=$r38, var3639=$i47, var2573=$i48, var1885=java.time.format.DateTimeParseException, var3327=$r40, var2481=$r39, var3613=$r4, var2650=$r5, var1803=$r6, var945=0}
; {r0=var3678, i0=var2454, $i2=var2639, $i1=var1965, $r38=var1929, $i47=var3639, $i48=var2573, java.time.format.DateTimeParseException=var1885, $r40=var3327, $r39=var2481, $r4=var3613, $r5=var2650, $r6=var1803, 0=var945}
;seq <java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: char[];	i0 := @parameter1: int;	$i2 = i0 + 12;	$i1 = lengthof r0;	if $i2 <= $i1 goto c49 = r0[i0];	$r38 = new java.lang.String;	$i47 = lengthof r0;	$i48 = $i47 - i0;	specialinvoke $r38.<java.lang.String: void <init>(char[],int,int)>(r0, i0, $i48);	$r40 = new java.time.format.DateTimeParseException;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r40.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r6, $r38, 0);	throw $r40
;block_num 2
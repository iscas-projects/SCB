(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3549 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun var3549-init () var3549)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1826383805 (var3549 String String Int) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3141 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var3141 null-__Array__Int__Int__)))
(declare-const var2391 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2391 null-Int)))
(define-const var456 Int (+ var2391 18)) ; Statement: $i2 = i0 + 18 
(define-const var454 Int (getLength-Arr-Int-1 var3141)) ; Statement: $i1 = lengthof r0 
 ; Statement: if $i2 <= $i1 goto c87 = r0[i0] 
(assert (not (<= var456 var454))) ; Negate: Cond: $i2 <= $i1  
(define-const var1951 String String-init) ; Statement: $r86 = new java.lang.String 
(define-const var3034 Int (getLength-Arr-Int-1 var3141)) ; Statement: $i85 = lengthof r0 
(define-const var1697 Int (- var3034 var2391)) ; Statement: $i86 = $i85 - i0 
(assert true)
;(assert (<init>/-253222812 var1951 var3141 var2391 var1697)) ; Statement: specialinvoke $r86.<java.lang.String: void <init>(char[],int,int)>(r0, i0, $i86) 

(declare-const var1951!1 String)
(declare-const var3141!1 (Array Int Int))
(declare-const var2391!1 Int)
(declare-const var1697!1 Int)
(define-const var1592 var3549 var3549-init) ; Statement: $r88 = new java.time.format.DateTimeParseException 
(define-const var1187 String String-init) ; Statement: $r87 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1187)) ; Statement: specialinvoke $r87.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1187!1 String)
(assert (= var1187!1 ""))
(assert true)
(define-const var439 String (append/672562846 var1187!1 "illegal input ")) ; Statement: $r41 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ") 
(declare-const var1187!2 String)
(assert (= var1187!2 (str.++ var1187!1 "illegal input ")))
(assert true)
(define-const var1893 String (append/672562846 var439 var1951!1)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r86) 
(declare-const var439!1 String)
(assert (= var439!1 (str.++ var439 var1951!1)))
(assert true)
(define-const var2847 String (toString/-2075883882 var1893)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1826383805 var1592 var2847 (cast-from-String-to-String var1951!1) 0)) ; Statement: specialinvoke $r88.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r43, $r86, 0) 

(declare-const var1592!1 var3549)
(declare-const var2847!1 String)
(declare-const var1951!2 String)
(declare-const var3135 Int)
 ; Statement: throw $r88 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([char[]], int), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), var3549-init=([], java.time.format.DateTimeParseException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1826383805=([java.time.format.DateTimeParseException, java.lang.String, java.lang.CharSequence, int], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var3141=r0, var2391=i0, var456=$i2, var454=$i1, var1951=$r86, var3034=$i85, var1697=$i86, var3549=java.time.format.DateTimeParseException, var1592=$r88, var1187=$r87, var439=$r41, var1893=$r42, var2847=$r43, var3135=0}
; {r0=var3141, i0=var2391, $i2=var456, $i1=var454, $r86=var1951, $i85=var3034, $i86=var1697, java.time.format.DateTimeParseException=var3549, $r88=var1592, $r87=var1187, $r41=var439, $r42=var1893, $r43=var2847, 0=var3135}
;seq <java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: char[];	i0 := @parameter1: int;	$i2 = i0 + 18;	$i1 = lengthof r0;	if $i2 <= $i1 goto c87 = r0[i0];	$r86 = new java.lang.String;	$i85 = lengthof r0;	$i86 = $i85 - i0;	specialinvoke $r86.<java.lang.String: void <init>(char[],int,int)>(r0, i0, $i86);	$r88 = new java.time.format.DateTimeParseException;	$r87 = new java.lang.StringBuilder;	specialinvoke $r87.<java.lang.StringBuilder: void <init>()>();	$r41 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ");	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r86);	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r88.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r43, $r86, 0);	throw $r88
;block_num 2
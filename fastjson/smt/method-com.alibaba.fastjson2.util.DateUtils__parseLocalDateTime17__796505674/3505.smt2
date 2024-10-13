(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(declare-fun <init>/-1380519146 (String (Array Int Int) Int Int) void)
(declare-fun var3765-init () var3765)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1826383805 (var3765 String String Int) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1549 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1549 null-__Array__Int__Int__)))
(declare-const var2173 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2173 null-Int)))
(define-const var2792 Int (+ var2173 17)) ; Statement: $i2 = i0 + 17 
(define-const var1831 Int (getLength-Arr-Int-1 var1549)) ; Statement: $i1 = lengthof r0 
 ; Statement: if $i2 <= $i1 goto b103 = r0[i0] 
(assert (not (<= var2792 var1831))) ; Negate: Cond: $i2 <= $i1  
(define-const var2826 String String-init) ; Statement: $r74 = new java.lang.String 
(define-const var2630 Int (getLength-Arr-Int-1 var1549)) ; Statement: $i101 = lengthof r0 
(define-const var2710 Int (- var2630 var2173)) ; Statement: $i102 = $i101 - i0 
(assert true)
;(assert (<init>/-1380519146 var2826 var1549 var2173 var2710)) ; Statement: specialinvoke $r74.<java.lang.String: void <init>(byte[],int,int)>(r0, i0, $i102) 

(declare-const var2826!1 String)
(declare-const var1549!1 (Array Int Int))
(declare-const var2173!1 Int)
(declare-const var2710!1 Int)
(define-const var2960 var3765 var3765-init) ; Statement: $r76 = new java.time.format.DateTimeParseException 
(define-const var1829 String String-init) ; Statement: $r75 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1829)) ; Statement: specialinvoke $r75.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1829!1 String)
(assert (= var1829!1 ""))
(assert true)
(define-const var1189 String (append/672562846 var1829!1 "illegal input ")) ; Statement: $r35 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ") 
(declare-const var1829!2 String)
(assert (= var1829!2 (str.++ var1829!1 "illegal input ")))
(assert true)
(define-const var1475 String (append/672562846 var1189 var2826!1)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r74) 
(declare-const var1189!1 String)
(assert (= var1189!1 (str.++ var1189 var2826!1)))
(assert true)
(define-const var3841 String (toString/-2075883882 var1475)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1826383805 var2960 var3841 (cast-from-String-to-String var2826!1) 0)) ; Statement: specialinvoke $r76.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r37, $r74, 0) 

(declare-const var2960!1 var3765)
(declare-const var3841!1 String)
(declare-const var2826!2 String)
(declare-const var1952 Int)
 ; Statement: throw $r76 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), String-init=([], java.lang.String), <init>/-1380519146=([java.lang.String, byte[], int, int], void), var3765-init=([], java.time.format.DateTimeParseException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1826383805=([java.time.format.DateTimeParseException, java.lang.String, java.lang.CharSequence, int], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1549=r0, var2173=i0, var2792=$i2, var1831=$i1, var2826=$r74, var2630=$i101, var2710=$i102, var3765=java.time.format.DateTimeParseException, var2960=$r76, var1829=$r75, var1189=$r35, var1475=$r36, var3841=$r37, var1952=0}
; {r0=var1549, i0=var2173, $i2=var2792, $i1=var1831, $r74=var2826, $i101=var2630, $i102=var2710, java.time.format.DateTimeParseException=var3765, $r76=var2960, $r75=var1829, $r35=var1189, $r36=var1475, $r37=var3841, 0=var1952}
;seq <java.lang.String: void <init>(byte[],int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: void <init>(byte[],int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: byte[];	i0 := @parameter1: int;	$i2 = i0 + 17;	$i1 = lengthof r0;	if $i2 <= $i1 goto b103 = r0[i0];	$r74 = new java.lang.String;	$i101 = lengthof r0;	$i102 = $i101 - i0;	specialinvoke $r74.<java.lang.String: void <init>(byte[],int,int)>(r0, i0, $i102);	$r76 = new java.time.format.DateTimeParseException;	$r75 = new java.lang.StringBuilder;	specialinvoke $r75.<java.lang.StringBuilder: void <init>()>();	$r35 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ");	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r74);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r76.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r37, $r74, 0);	throw $r76
;block_num 2
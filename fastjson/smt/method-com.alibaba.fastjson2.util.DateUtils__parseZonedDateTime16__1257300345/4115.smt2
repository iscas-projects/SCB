(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var71 0)
(declare-sort var1793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun var1793-init () var1793)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1826383805 (var1793 String String Int) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var71 var71)
(declare-const var2912 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var2912 null-__Array__Int__Int__)))
(declare-const var3740 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3740 null-Int)))
(declare-const var330 var71) ; Statement: r2 := @parameter2: java.time.ZoneId 
(assert (not (= var330 null-var71)))
(define-const var3199 Int (+ var3740 16)) ; Statement: $i2 = i0 + 16 
(define-const var80 Int (getLength-Arr-Int-1 var2912)) ; Statement: $i1 = lengthof r0 
 ; Statement: if $i2 <= $i1 goto c43 = r0[i0] 
(assert (not (<= var3199 var80))) ; Negate: Cond: $i2 <= $i1  
(define-const var2002 String String-init) ; Statement: $r38 = new java.lang.String 
(define-const var1662 Int (getLength-Arr-Int-1 var2912)) ; Statement: $i41 = lengthof r0 
(define-const var615 Int (- var1662 var3740)) ; Statement: $i42 = $i41 - i0 
(assert true)
;(assert (<init>/-253222812 var2002 var2912 var3740 var615)) ; Statement: specialinvoke $r38.<java.lang.String: void <init>(char[],int,int)>(r0, i0, $i42) 

(declare-const var2002!1 String)
(declare-const var2912!1 (Array Int Int))
(declare-const var3740!1 Int)
(declare-const var615!1 Int)
(define-const var1735 var1793 var1793-init) ; Statement: $r40 = new java.time.format.DateTimeParseException 
(define-const var2609 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2609)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2609!1 String)
(assert (= var2609!1 ""))
(assert true)
(define-const var1327 String (append/672562846 var2609!1 "illegal input ")) ; Statement: $r10 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ") 
(declare-const var2609!2 String)
(assert (= var2609!2 (str.++ var2609!1 "illegal input ")))
(assert true)
(define-const var1313 String (append/672562846 var1327 var2002!1)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38) 
(declare-const var1327!1 String)
(assert (= var1327!1 (str.++ var1327 var2002!1)))
(assert true)
(define-const var2243 String (toString/-2075883882 var1313)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1826383805 var1735 var2243 (cast-from-String-to-String var2002!1) 0)) ; Statement: specialinvoke $r40.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r12, $r38, 0) 

(declare-const var1735!1 var1793)
(declare-const var2243!1 String)
(declare-const var2002!2 String)
(declare-const var2905 Int)
 ; Statement: throw $r40 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([char[]], int), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), var1793-init=([], java.time.format.DateTimeParseException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1826383805=([java.time.format.DateTimeParseException, java.lang.String, java.lang.CharSequence, int], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2912=r0, var3740=i0, var71=java.time.ZoneId, var330=r2, var3199=$i2, var80=$i1, var2002=$r38, var1662=$i41, var615=$i42, var1793=java.time.format.DateTimeParseException, var1735=$r40, var2609=$r39, var1327=$r10, var1313=$r11, var2243=$r12, var2905=0}
; {r0=var2912, i0=var3740, java.time.ZoneId=var71, r2=var330, $i2=var3199, $i1=var80, $r38=var2002, $i41=var1662, $i42=var615, java.time.format.DateTimeParseException=var1793, $r40=var1735, $r39=var2609, $r10=var1327, $r11=var1313, $r12=var2243, 0=var2905}
;seq <java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: char[];	i0 := @parameter1: int;	r2 := @parameter2: java.time.ZoneId;	$i2 = i0 + 16;	$i1 = lengthof r0;	if $i2 <= $i1 goto c43 = r0[i0];	$r38 = new java.lang.String;	$i41 = lengthof r0;	$i42 = $i41 - i0;	specialinvoke $r38.<java.lang.String: void <init>(char[],int,int)>(r0, i0, $i42);	$r40 = new java.time.format.DateTimeParseException;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r40.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r12, $r38, 0);	throw $r40
;block_num 2
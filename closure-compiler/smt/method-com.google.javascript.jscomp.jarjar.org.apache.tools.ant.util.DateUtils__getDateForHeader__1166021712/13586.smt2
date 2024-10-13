(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2015 0)
(declare-sort var1848 0)
(declare-sort var742 0)
(declare-sort var1350 0)
(declare-sort var3594 0)
(declare-sort var702 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2015_getInstance/1373634036 () var2015)
(declare-fun getTimeZone/633046453 (var2015) var1848)
(declare-fun get/335439681 (var2015 Int) Int)
(declare-fun getOffset/-697430904 (var1848 Int Int Int Int Int Int) Int)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var742_abs/-1886746561 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-const var3594-DATE_HEADER_FORMAT_INT var1350)
(declare-const null-var702 var702)
(define-const var23 var2015 var2015_getInstance/1373634036) ; Statement: r0 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>() 
(assert true)
(define-const var143 var1848 (getTimeZone/633046453 var23)) ; Statement: r1 = virtualinvoke r0.<java.util.Calendar: java.util.TimeZone getTimeZone()>() 
(assert true)
(define-const var419 Int (get/335439681 var23 0)) ; Statement: $i5 = virtualinvoke r0.<java.util.Calendar: int get(int)>(0) 
(assert true)
(define-const var1202 Int (get/335439681 var23 1)) ; Statement: $i4 = virtualinvoke r0.<java.util.Calendar: int get(int)>(1) 
(assert true)
(define-const var1324 Int (get/335439681 var23 2)) ; Statement: $i3 = virtualinvoke r0.<java.util.Calendar: int get(int)>(2) 
(assert true)
(define-const var1758 Int (get/335439681 var23 5)) ; Statement: $i2 = virtualinvoke r0.<java.util.Calendar: int get(int)>(5) 
(assert true)
(define-const var322 Int (get/335439681 var23 7)) ; Statement: $i1 = virtualinvoke r0.<java.util.Calendar: int get(int)>(7) 
(assert true)
(define-const var1414 Int (get/335439681 var23 14)) ; Statement: $i0 = virtualinvoke r0.<java.util.Calendar: int get(int)>(14) 
(assert true)
(define-const var1924 Int (getOffset/-697430904 var143 var419 var1202 var1324 var1758 var322 var1414)) ; Statement: i11 = virtualinvoke r1.<java.util.TimeZone: int getOffset(int,int,int,int,int,int)>($i5, $i4, $i3, $i2, $i1, $i0) 
(define-const var909 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
 ; Statement: if i11 >= 0 goto $r13 = "+" 
(assert (>= var1924 0)) ; Cond: i11 >= 0 
(define-const var3465 String "+") ; Statement: $r13 = "+" 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1061048412 var909 var3465)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13) 
(declare-const var909!1 String)
(assert (= var909!1 var3465))
(define-const var1100 Int (var742_abs/-1886746561 var1924)) ; Statement: $i8 = staticinvoke <java.lang.Math: int abs(int)>(i11) 
(define-const var496 Int (div var1100 3600000)) ; Statement: $i9 = $i8 / 3600000 
(define-const var1680 Int (cast-from-Int-to-Int 60000)) ; Statement: $i13 = (int) 60000 
(define-const var2083 Int (div var1100 var1680)) ; Statement: $i7 = $i8 / $i13 
(define-const var168 Int (* 60 var496)) ; Statement: $i6 = 60 * $i9 
(define-const var3270 Int (- var2083 var168)) ; Statement: $i10 = $i7 - $i6 
 ; Statement: if $i9 >= 10 goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(assert (>= var496 10)) ; Cond: $i9 >= 10 
(assert true)
;(assert (append/-1001720160 var909!1 var496)) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(declare-const var909!2 String)
(assert (str.prefixof var909!1 var909!2))
 ; Statement: if $i10 >= 10 goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10) 
(assert (>= var3270 10)) ; Cond: $i10 >= 10 
(assert true)
;(assert (append/-1001720160 var909!2 var3270)) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10) 
(declare-const var909!3 String)
(assert (str.prefixof var909!2 var909!3))
(define-const var2174 var1350 var3594-DATE_HEADER_FORMAT_INT) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils: java.text.DateFormat DATE_HEADER_FORMAT_INT> 
 ; Statement: entermonitor $r3 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1046 var702) ; Statement: $r12 := @caughtexception 
(assert (not (= var1046 null-var702)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r3 
(assert true) ; Non Conditional
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2015_getInstance/1373634036=([], java.util.Calendar), getTimeZone/633046453=([java.util.Calendar], java.util.TimeZone), get/335439681=([java.util.Calendar, int], int), getOffset/-697430904=([java.util.TimeZone, int, int, int, int, int, int], int), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var742_abs/-1886746561=([int], int), cast-from-Int-to-Int=([int], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder)}
; {var2015=java.util.Calendar, var23=r0, var1848=java.util.TimeZone, var143=r1, var419=$i5, var1202=$i4, var1324=$i3, var1758=$i2, var322=$i1, var1414=$i0, var1924=i11, var909=$r14, var3465=$r13, var742=java.lang.Math, var1100=$i8, var496=$i9, var1680=$i13, var2083=$i7, var168=$i6, var3270=$i10, var1350=java.text.DateFormat, var3594=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils, var2174=$r3, var702=java.lang.Throwable, var1046=$r12}
; {java.util.Calendar=var2015, r0=var23, java.util.TimeZone=var1848, r1=var143, $i5=var419, $i4=var1202, $i3=var1324, $i2=var1758, $i1=var322, $i0=var1414, i11=var1924, $r14=var909, $r13=var3465, java.lang.Math=var742, $i8=var1100, $i9=var496, $i13=var1680, $i7=var2083, $i6=var168, $i10=var3270, java.text.DateFormat=var1350, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils=var3594, $r3=var2174, java.lang.Throwable=var702, $r12=var1046}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2}
;stmts r0 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();	r1 = virtualinvoke r0.<java.util.Calendar: java.util.TimeZone getTimeZone()>();	$i5 = virtualinvoke r0.<java.util.Calendar: int get(int)>(0);	$i4 = virtualinvoke r0.<java.util.Calendar: int get(int)>(1);	$i3 = virtualinvoke r0.<java.util.Calendar: int get(int)>(2);	$i2 = virtualinvoke r0.<java.util.Calendar: int get(int)>(5);	$i1 = virtualinvoke r0.<java.util.Calendar: int get(int)>(7);	$i0 = virtualinvoke r0.<java.util.Calendar: int get(int)>(14);	i11 = virtualinvoke r1.<java.util.TimeZone: int getOffset(int,int,int,int,int,int)>($i5, $i4, $i3, $i2, $i1, $i0);	$r14 = new java.lang.StringBuilder;	if i11 >= 0 goto $r13 = "+";	$r13 = "+";	specialinvoke $r14.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13);	$i8 = staticinvoke <java.lang.Math: int abs(int)>(i11);	$i9 = $i8 / 3600000;	$i13 = (int) 60000;	$i7 = $i8 / $i13;	$i6 = 60 * $i9;	$i10 = $i7 - $i6;	if $i9 >= 10 goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	if $i10 >= 10 goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10);	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10);	$r3 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils: java.text.DateFormat DATE_HEADER_FORMAT_INT>;	entermonitor $r3;	$r12 := @caughtexception;	exitmonitor $r3;	throw $r12
;block_num 8
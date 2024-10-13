(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1098 0)
(declare-sort var3535 0)
(declare-sort var2756 0)
(declare-sort var94 0)
(declare-sort var574 0)
(declare-sort var1383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1098_getInstance/1373634036 () var1098)
(declare-fun getTimeZone/633046453 (var1098) var3535)
(declare-fun get/335439681 (var1098 Int) Int)
(declare-fun getOffset/-697430904 (var3535 Int Int Int Int Int Int) Int)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var2756_abs/-1886746561 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-const var574-DATE_HEADER_FORMAT_INT var94)
(declare-const null-var1383 var1383)
(define-const var2119 var1098 var1098_getInstance/1373634036) ; Statement: r0 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>() 
(assert true)
(define-const var692 var3535 (getTimeZone/633046453 var2119)) ; Statement: r1 = virtualinvoke r0.<java.util.Calendar: java.util.TimeZone getTimeZone()>() 
(assert true)
(define-const var3545 Int (get/335439681 var2119 0)) ; Statement: $i5 = virtualinvoke r0.<java.util.Calendar: int get(int)>(0) 
(assert true)
(define-const var1919 Int (get/335439681 var2119 1)) ; Statement: $i4 = virtualinvoke r0.<java.util.Calendar: int get(int)>(1) 
(assert true)
(define-const var1130 Int (get/335439681 var2119 2)) ; Statement: $i3 = virtualinvoke r0.<java.util.Calendar: int get(int)>(2) 
(assert true)
(define-const var2720 Int (get/335439681 var2119 5)) ; Statement: $i2 = virtualinvoke r0.<java.util.Calendar: int get(int)>(5) 
(assert true)
(define-const var941 Int (get/335439681 var2119 7)) ; Statement: $i1 = virtualinvoke r0.<java.util.Calendar: int get(int)>(7) 
(assert true)
(define-const var2733 Int (get/335439681 var2119 14)) ; Statement: $i0 = virtualinvoke r0.<java.util.Calendar: int get(int)>(14) 
(assert true)
(define-const var3762 Int (getOffset/-697430904 var692 var3545 var1919 var1130 var2720 var941 var2733)) ; Statement: i11 = virtualinvoke r1.<java.util.TimeZone: int getOffset(int,int,int,int,int,int)>($i5, $i4, $i3, $i2, $i1, $i0) 
(define-const var1004 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
 ; Statement: if i11 >= 0 goto $r13 = "+" 
(assert (not (>= var3762 0))) ; Negate: Cond: i11 >= 0  
(define-const var2621 String "-") ; Statement: $r13 = "-" 
 ; Statement: goto [?= specialinvoke $r14.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1061048412 var1004 var2621)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13) 
(declare-const var1004!1 String)
(assert (= var1004!1 var2621))
(define-const var1287 Int (var2756_abs/-1886746561 var3762)) ; Statement: $i8 = staticinvoke <java.lang.Math: int abs(int)>(i11) 
(define-const var3627 Int (div var1287 3600000)) ; Statement: $i9 = $i8 / 3600000 
(define-const var581 Int (cast-from-Int-to-Int 60000)) ; Statement: $i13 = (int) 60000 
(define-const var3908 Int (div var1287 var581)) ; Statement: $i7 = $i8 / $i13 
(define-const var1553 Int (* 60 var3627)) ; Statement: $i6 = 60 * $i9 
(define-const var2530 Int (- var3908 var1553)) ; Statement: $i10 = $i7 - $i6 
 ; Statement: if $i9 >= 10 goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(assert (>= var3627 10)) ; Cond: $i9 >= 10 
(assert true)
;(assert (append/-1001720160 var1004!1 var3627)) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(declare-const var1004!2 String)
(assert (str.prefixof var1004!1 var1004!2))
 ; Statement: if $i10 >= 10 goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10) 
(assert (>= var2530 10)) ; Cond: $i10 >= 10 
(assert true)
;(assert (append/-1001720160 var1004!2 var2530)) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10) 
(declare-const var1004!3 String)
(assert (str.prefixof var1004!2 var1004!3))
(define-const var2401 var94 var574-DATE_HEADER_FORMAT_INT) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils: java.text.DateFormat DATE_HEADER_FORMAT_INT> 
 ; Statement: entermonitor $r3 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var974 var1383) ; Statement: $r12 := @caughtexception 
(assert (not (= var974 null-var1383)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r3 
(assert true) ; Non Conditional
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1098_getInstance/1373634036=([], java.util.Calendar), getTimeZone/633046453=([java.util.Calendar], java.util.TimeZone), get/335439681=([java.util.Calendar, int], int), getOffset/-697430904=([java.util.TimeZone, int, int, int, int, int, int], int), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var2756_abs/-1886746561=([int], int), cast-from-Int-to-Int=([int], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder)}
; {var1098=java.util.Calendar, var2119=r0, var3535=java.util.TimeZone, var692=r1, var3545=$i5, var1919=$i4, var1130=$i3, var2720=$i2, var941=$i1, var2733=$i0, var3762=i11, var1004=$r14, var2621=$r13, var2756=java.lang.Math, var1287=$i8, var3627=$i9, var581=$i13, var3908=$i7, var1553=$i6, var2530=$i10, var94=java.text.DateFormat, var574=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils, var2401=$r3, var1383=java.lang.Throwable, var974=$r12}
; {java.util.Calendar=var1098, r0=var2119, java.util.TimeZone=var3535, r1=var692, $i5=var3545, $i4=var1919, $i3=var1130, $i2=var2720, $i1=var941, $i0=var2733, i11=var3762, $r14=var1004, $r13=var2621, java.lang.Math=var2756, $i8=var1287, $i9=var3627, $i13=var581, $i7=var3908, $i6=var1553, $i10=var2530, java.text.DateFormat=var94, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils=var574, $r3=var2401, java.lang.Throwable=var1383, $r12=var974}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2}
;stmts r0 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();	r1 = virtualinvoke r0.<java.util.Calendar: java.util.TimeZone getTimeZone()>();	$i5 = virtualinvoke r0.<java.util.Calendar: int get(int)>(0);	$i4 = virtualinvoke r0.<java.util.Calendar: int get(int)>(1);	$i3 = virtualinvoke r0.<java.util.Calendar: int get(int)>(2);	$i2 = virtualinvoke r0.<java.util.Calendar: int get(int)>(5);	$i1 = virtualinvoke r0.<java.util.Calendar: int get(int)>(7);	$i0 = virtualinvoke r0.<java.util.Calendar: int get(int)>(14);	i11 = virtualinvoke r1.<java.util.TimeZone: int getOffset(int,int,int,int,int,int)>($i5, $i4, $i3, $i2, $i1, $i0);	$r14 = new java.lang.StringBuilder;	if i11 >= 0 goto $r13 = "+";	$r13 = "-";	goto [?= specialinvoke $r14.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13)];	specialinvoke $r14.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13);	$i8 = staticinvoke <java.lang.Math: int abs(int)>(i11);	$i9 = $i8 / 3600000;	$i13 = (int) 60000;	$i7 = $i8 / $i13;	$i6 = 60 * $i9;	$i10 = $i7 - $i6;	if $i9 >= 10 goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	if $i10 >= 10 goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10);	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10);	$r3 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils: java.text.DateFormat DATE_HEADER_FORMAT_INT>;	entermonitor $r3;	$r12 := @caughtexception;	exitmonitor $r3;	throw $r12
;block_num 8
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3783 0)
(declare-sort var2145 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var2145) String)
(declare-fun cast-from-String-to-var2145 (String) var2145)
(declare-fun arr-var2145-init () (Array Int var2145))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getLength-Arr-var2145-1 ((Array Int var2145)) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/50905802 (String String Int Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-__Array__Int__var2145__ (Array Int var2145))
(declare-const var412 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var412 null-String)))
(declare-const var1835 (Array Int var2145)) ; Statement: r9 := @parameter1: java.lang.Object[] 
(assert (not (= var1835 null-__Array__Int__var2145__)))
(define-const var562 String (String_valueOf/-333372740 (cast-from-String-to-var2145 var412))) ; Statement: r10 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r8) 
 ; Statement: if r9 != null goto i11 = 0 
(assert (not (not (= var1835 null-__Array__Int__var2145__)))) ; Negate: Cond: r9 != null  
(define-const var3357 (Array Int var2145) arr-var2145-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var3357!1 (Array Int var2145))
(assert (not (= var3357!1 null-__Array__Int__var2145__)))
(assert (= (select var3357!1 0) (cast-from-String-to-var2145 "(Object[])null"))) ; Statement: $r7[0] = "(Object[])null" 
(define-const var1835!1 (Array Int var2145) var3357!1) ; Statement: r9 = $r7 
 ; Statement: goto [?= $r11 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1392 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
(define-const var199 Int (length/-134980193 var562)) ; Statement: $i3 = virtualinvoke r10.<java.lang.String: int length()>() 
(define-const var2431 Int (getLength-Arr-var2145-1 var1835!1)) ; Statement: $i1 = lengthof r9 
(define-const var3996 Int (* 16 var2431)) ; Statement: $i2 = 16 * $i1 
(define-const var2640 Int (+ var199 var3996)) ; Statement: $i4 = $i3 + $i2 
(assert true)
;(assert (<init>/543593434 var1392 var2640)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var1392!1 String)
(declare-const var2640!1 Int)
(define-const var638 Int 0) ; Statement: i12 = 0 
(define-const var3874 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(define-const var1304 Int (getLength-Arr-var2145-1 var1835!1)) ; Statement: $i14 = lengthof r9 
 ; Statement: if i13 >= $i14 goto $i5 = virtualinvoke r10.<java.lang.String: int length()>() 
(assert (>= var3874 var1304)) ; Cond: i13 >= $i14 
(assert true)
(define-const var1604 Int (length/-134980193 var562)) ; Statement: $i5 = virtualinvoke r10.<java.lang.String: int length()>() 
(assert true)
;(assert (append/50905802 var1392!1 (cast-from-String-to-String var562) var638 var1604)) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r10, i12, $i5) 
(declare-const var1392!2 String)
(assert (str.prefixof var1392!1 var1392!2))
(define-const var1676 Int (getLength-Arr-var2145-1 var1835!1)) ; Statement: $i6 = lengthof r9 
 ; Statement: if i13 >= $i6 goto $r1 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3874 var1676)) ; Cond: i13 >= $i6 
(assert true)
(define-const var3635 String (toString/-2075883882 var1392!2)) ; Statement: $r1 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-String-to-var2145=([java.lang.String], java.lang.Object), arr-var2145-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), getLength-Arr-var2145-1=([java.lang.Object[]], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var412=r8, var3783=null_type, var2145=java.lang.Object, var1835=r9, var562=r10, var3357=$r7, var1392=$r11, var199=$i3, var2431=$i1, var3996=$i2, var2640=$i4, var638=i12, var3874=i13, var1304=$i14, var1604=$i5, var1676=$i6, var3635=$r1}
; {r8=var412, null_type=var3783, java.lang.Object=var2145, r9=var1835, r10=var562, $r7=var3357, $r11=var1392, $i3=var199, $i1=var2431, $i2=var3996, $i4=var2640, i12=var638, i13=var3874, $i14=var1304, $i5=var1604, $i6=var1676, $r1=var3635}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @parameter0: java.lang.String;	r9 := @parameter1: java.lang.Object[];	r10 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r8);	if r9 != null goto i11 = 0;	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "(Object[])null";	r9 = $r7;	goto [?= $r11 = new java.lang.StringBuilder];	$r11 = new java.lang.StringBuilder;	$i3 = virtualinvoke r10.<java.lang.String: int length()>();	$i1 = lengthof r9;	$i2 = 16 * $i1;	$i4 = $i3 + $i2;	specialinvoke $r11.<java.lang.StringBuilder: void <init>(int)>($i4);	i12 = 0;	i13 = 0;	$i14 = lengthof r9;	if i13 >= $i14 goto $i5 = virtualinvoke r10.<java.lang.String: int length()>();	$i5 = virtualinvoke r10.<java.lang.String: int length()>();	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r10, i12, $i5);	$i6 = lengthof r9;	if i13 >= $i6 goto $r1 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r1 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r1
;block_num 6
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1572 0)
(declare-sort var2111 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1572 var1572)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2314 var1572) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties 
(assert (not (= var2314 null-var1572)))
(declare-const var2110 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2110 null-String)))
(assert true)
(define-const var300 Int (length/-134980193 var2110)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1445 Int (+ var300 1)) ; Statement: $i1 = $i0 + 1 
(define-const var2572 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i1] 
(assert true)
(define-const var465 Int (length/-134980193 var2110)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
;(assert (getChars/1306883398 var2110 0 var465 var2572 0)) ; Statement: virtualinvoke r0.<java.lang.String: void getChars(int,int,char[],int)>(0, $i2, r1, 0) 

(declare-const var2110!1 String)
(declare-const var2619 Int)
(declare-const var465!1 Int)
(declare-const var2572!1 (Array Int Int))
(declare-const var2619!1 Int)
(assert true)
(define-const var3018 Int (length/-134980193 var2110!1)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(declare-const var2572!2 (Array Int Int))
(assert (not (= var2572!2 null-__Array__Int__Int__)))
(assert (= (select var2572!2 var3018) 10)) ; Statement: r1[$i3] = 10 
(define-const var999 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
(define-const var2963 Int (length/-134980193 var2110!1)) ; Statement: $i4 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/543593434 var999 var2963)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var999!1 String)
(declare-const var2963!1 Int)
(define-const var555 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var3408 Int (getLength-Arr-Int-1 var2572!2)) ; Statement: $i5 = lengthof r1 
 ; Statement: if i7 >= $i5 goto $r3 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var555 var3408)) ; Cond: i7 >= $i5 
(assert true)
(define-const var418 String (toString/-2075883882 var999!1)) ; Statement: $r3 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), arr-Int-init=([], char[]), getChars/1306883398=([java.lang.String, int, int, char[], int], void), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1572=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties, var2314=r4, var2110=r0, var2111=null_type, var300=$i0, var1445=$i1, var2572=r1, var465=$i2, var2619=0, var3018=$i3, var999=$r5, var2963=$i4, var555=i7, var3408=$i5, var418=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties=var1572, r4=var2314, r0=var2110, null_type=var2111, $i0=var300, $i1=var1445, r1=var2572, $i2=var465, 0=var2619, $i3=var3018, $r5=var999, $i4=var2963, i7=var555, $i5=var3408, $r3=var418}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: void getChars(int,int,char[],int)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 4,"<java.lang.String: void getChars(int,int,char[],int)>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 + 1;	r1 = newarray (char)[$i1];	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	virtualinvoke r0.<java.lang.String: void getChars(int,int,char[],int)>(0, $i2, r1, 0);	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	r1[$i3] = 10;	$r5 = new java.lang.StringBuilder;	$i4 = virtualinvoke r0.<java.lang.String: int length()>();	specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i4);	i7 = 0;	$i5 = lengthof r1;	if i7 >= $i5 goto $r3 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3
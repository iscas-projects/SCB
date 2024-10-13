(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3100 0)
(declare-sort var226 0)
(declare-sort var3347 0)
(declare-sort var3423 0)
(declare-sort var757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/386509729 (var3100) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var226-init () var226)
(declare-fun <init>/-1300283768 (var226) void)
(declare-fun left/386509729 (var3100) String)
(declare-fun var3347_addFirst/-1050222593 (var3347 var3423) void)
(declare-fun cast-from-var226-to-var3347 (var226) var3347)
(declare-fun cast-from-String-to-var3423 (String) var3423)
(declare-fun right/386509729 (var3100) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-fun var757_isEmpty/-1652560782 (var757) Bool)
(declare-fun cast-from-var226-to-var757 (var226) var757)
(declare-fun var3347_pollFirst/-746461713 (var3347) var3423)
(declare-fun cast-from-var3423-to-String (var3423) String)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun state/386509729 (var3100) Int)
(declare-const null-var3100 var3100)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var1674 var3100) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.ConsString 
(assert (not (= var1674 null-var3100)))
(declare-const var2747 Bool) ; Statement: z2 := @parameter0: boolean 
(assert (not (= var2747 null-Bool)))
(define-const var3105 Int (length/386509729 var1674)) ; Statement: $i0 = r0.<jdk.nashorn.internal.runtime.ConsString: int length> 
(define-const var27 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i0] 
(define-const var3155 Int (length/386509729 var1674)) ; Statement: i6 = r0.<jdk.nashorn.internal.runtime.ConsString: int length> 
(define-const var1018 var226 var226-init) ; Statement: $r11 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var1018)) ; Statement: specialinvoke $r11.<java.util.ArrayDeque: void <init>()>() 

(declare-const var1018!1 var226)
(define-const var3953 String (left/386509729 var1674)) ; Statement: $r3 = r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence left> 
;(assert (var3347_addFirst/-1050222593 (cast-from-var226-to-var3347 var1018!1) (cast-from-String-to-var3423 var3953))) ; Statement: interfaceinvoke $r11.<java.util.Deque: void addFirst(java.lang.Object)>($r3) 

(declare-const var1018!2 var226)
(declare-const var3953!1 String)
(define-const var1226 String (right/386509729 var1674)) ; Statement: r7 = r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence right> 
(assert true) ; Non Conditional
(define-const var2373 Bool true) ; Statement: $z0 = r7 instanceof jdk.nashorn.internal.runtime.ConsString 
 ; Statement: if $z0 == 0 goto r9 = (java.lang.String) r7 
(assert (= (ite var2373 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3728 String (cast-from-String-to-String var1226)) ; Statement: r9 = (java.lang.String) r7 
(assert true)
(define-const var2356 Int (length/-134980193 var3728)) ; Statement: $i1 = virtualinvoke r9.<java.lang.String: int length()>() 
(define-const var3155!1 Int (- var3155 var2356)) ; Statement: i6 = i6 - $i1 
(assert true)
(define-const var1491 Int (length/-134980193 var3728)) ; Statement: $i2 = virtualinvoke r9.<java.lang.String: int length()>() 
(assert true)
;(assert (getChars/1306883398 var3728 0 var1491 var27 var3155!1)) ; Statement: virtualinvoke r9.<java.lang.String: void getChars(int,int,char[],int)>(0, $i2, r1, i6) 

(declare-const var3728!1 String)
(declare-const var2483 Int)
(declare-const var1491!1 Int)
(declare-const var27!1 (Array Int Int))
(declare-const var3155!2 Int)
(define-const var2714 Bool (var757_isEmpty/-1652560782 (cast-from-var226-to-var757 var1018!2))) ; Statement: $z1 = interfaceinvoke $r11.<java.util.Deque: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r4 = interfaceinvoke $r11.<java.util.Deque: java.lang.Object pollFirst()>() 
(assert (= (ite var2714 1 0) 0)) ; Cond: $z1 == 0 
(define-const var603 var3423 (var3347_pollFirst/-746461713 (cast-from-var226-to-var3347 var1018!2))) ; Statement: $r4 = interfaceinvoke $r11.<java.util.Deque: java.lang.Object pollFirst()>() 
(define-const var2525 String (cast-from-var3423-to-String var603)) ; Statement: $r10 = (java.lang.CharSequence) $r4 
(assert true) ; Non Conditional
(define-const var1226!1 String var2525) ; Statement: r7 = $r10 
(assert true) ; Non Conditional
 ; Statement: if r7 != null goto $z0 = r7 instanceof jdk.nashorn.internal.runtime.ConsString 
(assert (not (not (= var1226!1 null-String)))) ; Negate: Cond: r7 != null  
(define-const var2026 String String-init) ; Statement: $r12 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var2026 var27!1)) ; Statement: specialinvoke $r12.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var2026!1 String)
(declare-const var27!2 (Array Int Int))
(declare-const var1674!1 var3100)
(assert (not (= var1674!1 null-var3100)))
(assert (= (left/386509729 var1674!1) (cast-from-String-to-String var2026!1))) ; Statement: r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence left> = $r12 
(declare-const var1674!2 var3100)
(assert (not (= var1674!2 null-var3100)))
(assert (= (right/386509729 var1674!2) (cast-from-String-to-String ""))) ; Statement: r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence right> = "" 
(define-const var2288 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(declare-const var1674!3 var3100)
(assert (not (= var1674!3 null-var3100)))
(assert (= (state/386509729 var1674!3) var2288)) ; Statement: r0.<jdk.nashorn.internal.runtime.ConsString: int state> = $i10 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/386509729=([jdk.nashorn.internal.runtime.ConsString], int), arr-Int-init=([], char[]), var226-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), left/386509729=([jdk.nashorn.internal.runtime.ConsString], java.lang.CharSequence), var3347_addFirst/-1050222593=([java.util.Deque, java.lang.Object], void), cast-from-var226-to-var3347=([java.util.ArrayDeque], java.util.Deque), cast-from-String-to-var3423=([java.lang.CharSequence], java.lang.Object), right/386509729=([jdk.nashorn.internal.runtime.ConsString], java.lang.CharSequence), cast-from-String-to-String=([java.lang.CharSequence], java.lang.String), length/-134980193=([java.lang.String], int), getChars/1306883398=([java.lang.String, int, int, char[], int], void), var757_isEmpty/-1652560782=([java.util.Collection], boolean), cast-from-var226-to-var757=([java.util.ArrayDeque], java.util.Collection), var3347_pollFirst/-746461713=([java.util.Deque], java.lang.Object), cast-from-var3423-to-String=([java.lang.Object], java.lang.CharSequence), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void), cast-from-Int-to-Int=([int], int), state/386509729=([jdk.nashorn.internal.runtime.ConsString], int)}
; {var3100=jdk.nashorn.internal.runtime.ConsString, var1674=r0, var2747=z2, var3105=$i0, var27=r1, var3155=i6, var226=java.util.ArrayDeque, var1018=$r11, var3953=$r3, var3347=java.util.Deque, var3423=java.lang.Object, var1226=r7, var2373=$z0, var3728=r9, var2356=$i1, var1491=$i2, var2483=0, var757=java.util.Collection, var2714=$z1, var603=$r4, var2525=$r10, var2026=$r12, var2288=$i10}
; {jdk.nashorn.internal.runtime.ConsString=var3100, r0=var1674, z2=var2747, $i0=var3105, r1=var27, i6=var3155, java.util.ArrayDeque=var226, $r11=var1018, $r3=var3953, java.util.Deque=var3347, java.lang.Object=var3423, r7=var1226, $z0=var2373, r9=var3728, $i1=var2356, $i2=var1491, 0=var2483, java.util.Collection=var757, $z1=var2714, $r4=var603, $r10=var2525, $r12=var2026, $i10=var2288}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: void getChars(int,int,char[],int)>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: void getChars(int,int,char[],int)>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.ConsString;	z2 := @parameter0: boolean;	$i0 = r0.<jdk.nashorn.internal.runtime.ConsString: int length>;	r1 = newarray (char)[$i0];	i6 = r0.<jdk.nashorn.internal.runtime.ConsString: int length>;	$r11 = new java.util.ArrayDeque;	specialinvoke $r11.<java.util.ArrayDeque: void <init>()>();	$r3 = r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence left>;	interfaceinvoke $r11.<java.util.Deque: void addFirst(java.lang.Object)>($r3);	r7 = r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence right>;	$z0 = r7 instanceof jdk.nashorn.internal.runtime.ConsString;	if $z0 == 0 goto r9 = (java.lang.String) r7;	r9 = (java.lang.String) r7;	$i1 = virtualinvoke r9.<java.lang.String: int length()>();	i6 = i6 - $i1;	$i2 = virtualinvoke r9.<java.lang.String: int length()>();	virtualinvoke r9.<java.lang.String: void getChars(int,int,char[],int)>(0, $i2, r1, i6);	$z1 = interfaceinvoke $r11.<java.util.Deque: boolean isEmpty()>();	if $z1 == 0 goto $r4 = interfaceinvoke $r11.<java.util.Deque: java.lang.Object pollFirst()>();	$r4 = interfaceinvoke $r11.<java.util.Deque: java.lang.Object pollFirst()>();	$r10 = (java.lang.CharSequence) $r4;	r7 = $r10;	if r7 != null goto $z0 = r7 instanceof jdk.nashorn.internal.runtime.ConsString;	$r12 = new java.lang.String;	specialinvoke $r12.<java.lang.String: void <init>(char[])>(r1);	r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence left> = $r12;	r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence right> = "";	$i10 = (int) -1;	r0.<jdk.nashorn.internal.runtime.ConsString: int state> = $i10;	return
;block_num 7
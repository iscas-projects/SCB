(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2296 0)
(declare-sort var2328 0)
(declare-sort var2991 0)
(declare-sort var688 0)
(declare-sort var1444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/386509729 (var2296) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var2328-init () var2328)
(declare-fun <init>/-1300283768 (var2328) void)
(declare-fun left/386509729 (var2296) String)
(declare-fun var2991_addFirst/-1050222593 (var2991 var688) void)
(declare-fun cast-from-var2328-to-var2991 (var2328) var2991)
(declare-fun cast-from-String-to-var688 (String) var688)
(declare-fun right/386509729 (var2296) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-fun var1444_isEmpty/-1652560782 (var1444) Bool)
(declare-fun cast-from-var2328-to-var1444 (var2328) var1444)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun state/386509729 (var2296) Int)
(declare-const null-var2296 var2296)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var2644 var2296) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.ConsString 
(assert (not (= var2644 null-var2296)))
(declare-const var1387 Bool) ; Statement: z2 := @parameter0: boolean 
(assert (not (= var1387 null-Bool)))
(define-const var3473 Int (length/386509729 var2644)) ; Statement: $i0 = r0.<jdk.nashorn.internal.runtime.ConsString: int length> 
(define-const var1760 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i0] 
(define-const var2279 Int (length/386509729 var2644)) ; Statement: i6 = r0.<jdk.nashorn.internal.runtime.ConsString: int length> 
(define-const var3698 var2328 var2328-init) ; Statement: $r11 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var3698)) ; Statement: specialinvoke $r11.<java.util.ArrayDeque: void <init>()>() 

(declare-const var3698!1 var2328)
(define-const var951 String (left/386509729 var2644)) ; Statement: $r3 = r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence left> 
;(assert (var2991_addFirst/-1050222593 (cast-from-var2328-to-var2991 var3698!1) (cast-from-String-to-var688 var951))) ; Statement: interfaceinvoke $r11.<java.util.Deque: void addFirst(java.lang.Object)>($r3) 

(declare-const var3698!2 var2328)
(declare-const var951!1 String)
(define-const var1723 String (right/386509729 var2644)) ; Statement: r7 = r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence right> 
(assert true) ; Non Conditional
(define-const var1527 Bool true) ; Statement: $z0 = r7 instanceof jdk.nashorn.internal.runtime.ConsString 
 ; Statement: if $z0 == 0 goto r9 = (java.lang.String) r7 
(assert (= (ite var1527 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3390 String (cast-from-String-to-String var1723)) ; Statement: r9 = (java.lang.String) r7 
(assert true)
(define-const var3664 Int (length/-134980193 var3390)) ; Statement: $i1 = virtualinvoke r9.<java.lang.String: int length()>() 
(define-const var2279!1 Int (- var2279 var3664)) ; Statement: i6 = i6 - $i1 
(assert true)
(define-const var3297 Int (length/-134980193 var3390)) ; Statement: $i2 = virtualinvoke r9.<java.lang.String: int length()>() 
(assert true)
;(assert (getChars/1306883398 var3390 0 var3297 var1760 var2279!1)) ; Statement: virtualinvoke r9.<java.lang.String: void getChars(int,int,char[],int)>(0, $i2, r1, i6) 

(declare-const var3390!1 String)
(declare-const var524 Int)
(declare-const var3297!1 Int)
(declare-const var1760!1 (Array Int Int))
(declare-const var2279!2 Int)
(define-const var2628 Bool (var1444_isEmpty/-1652560782 (cast-from-var2328-to-var1444 var3698!2))) ; Statement: $z1 = interfaceinvoke $r11.<java.util.Deque: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r4 = interfaceinvoke $r11.<java.util.Deque: java.lang.Object pollFirst()>() 
(assert (not (= (ite var2628 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1574 String null-String) ; Statement: $r10 = null 
 ; Statement: goto [?= r7 = $r10] 
(assert true) ; Non Conditional
(define-const var1723!1 String var1574) ; Statement: r7 = $r10 
(assert true) ; Non Conditional
 ; Statement: if r7 != null goto $z0 = r7 instanceof jdk.nashorn.internal.runtime.ConsString 
(assert (not (not (= var1723!1 null-String)))) ; Negate: Cond: r7 != null  
(define-const var3354 String String-init) ; Statement: $r12 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var3354 var1760!1)) ; Statement: specialinvoke $r12.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var3354!1 String)
(declare-const var1760!2 (Array Int Int))
(declare-const var2644!1 var2296)
(assert (not (= var2644!1 null-var2296)))
(assert (= (left/386509729 var2644!1) (cast-from-String-to-String var3354!1))) ; Statement: r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence left> = $r12 
(declare-const var2644!2 var2296)
(assert (not (= var2644!2 null-var2296)))
(assert (= (right/386509729 var2644!2) (cast-from-String-to-String ""))) ; Statement: r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence right> = "" 
(define-const var943 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(declare-const var2644!3 var2296)
(assert (not (= var2644!3 null-var2296)))
(assert (= (state/386509729 var2644!3) var943)) ; Statement: r0.<jdk.nashorn.internal.runtime.ConsString: int state> = $i10 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/386509729=([jdk.nashorn.internal.runtime.ConsString], int), arr-Int-init=([], char[]), var2328-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), left/386509729=([jdk.nashorn.internal.runtime.ConsString], java.lang.CharSequence), var2991_addFirst/-1050222593=([java.util.Deque, java.lang.Object], void), cast-from-var2328-to-var2991=([java.util.ArrayDeque], java.util.Deque), cast-from-String-to-var688=([java.lang.CharSequence], java.lang.Object), right/386509729=([jdk.nashorn.internal.runtime.ConsString], java.lang.CharSequence), cast-from-String-to-String=([java.lang.CharSequence], java.lang.String), length/-134980193=([java.lang.String], int), getChars/1306883398=([java.lang.String, int, int, char[], int], void), var1444_isEmpty/-1652560782=([java.util.Collection], boolean), cast-from-var2328-to-var1444=([java.util.ArrayDeque], java.util.Collection), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void), cast-from-Int-to-Int=([int], int), state/386509729=([jdk.nashorn.internal.runtime.ConsString], int)}
; {var2296=jdk.nashorn.internal.runtime.ConsString, var2644=r0, var1387=z2, var3473=$i0, var1760=r1, var2279=i6, var2328=java.util.ArrayDeque, var3698=$r11, var951=$r3, var2991=java.util.Deque, var688=java.lang.Object, var1723=r7, var1527=$z0, var3390=r9, var3664=$i1, var3297=$i2, var524=0, var1444=java.util.Collection, var2628=$z1, var1574=$r10, var3354=$r12, var943=$i10}
; {jdk.nashorn.internal.runtime.ConsString=var2296, r0=var2644, z2=var1387, $i0=var3473, r1=var1760, i6=var2279, java.util.ArrayDeque=var2328, $r11=var3698, $r3=var951, java.util.Deque=var2991, java.lang.Object=var688, r7=var1723, $z0=var1527, r9=var3390, $i1=var3664, $i2=var3297, 0=var524, java.util.Collection=var1444, $z1=var2628, $r10=var1574, $r12=var3354, $i10=var943}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: void getChars(int,int,char[],int)>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: void getChars(int,int,char[],int)>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.ConsString;	z2 := @parameter0: boolean;	$i0 = r0.<jdk.nashorn.internal.runtime.ConsString: int length>;	r1 = newarray (char)[$i0];	i6 = r0.<jdk.nashorn.internal.runtime.ConsString: int length>;	$r11 = new java.util.ArrayDeque;	specialinvoke $r11.<java.util.ArrayDeque: void <init>()>();	$r3 = r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence left>;	interfaceinvoke $r11.<java.util.Deque: void addFirst(java.lang.Object)>($r3);	r7 = r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence right>;	$z0 = r7 instanceof jdk.nashorn.internal.runtime.ConsString;	if $z0 == 0 goto r9 = (java.lang.String) r7;	r9 = (java.lang.String) r7;	$i1 = virtualinvoke r9.<java.lang.String: int length()>();	i6 = i6 - $i1;	$i2 = virtualinvoke r9.<java.lang.String: int length()>();	virtualinvoke r9.<java.lang.String: void getChars(int,int,char[],int)>(0, $i2, r1, i6);	$z1 = interfaceinvoke $r11.<java.util.Deque: boolean isEmpty()>();	if $z1 == 0 goto $r4 = interfaceinvoke $r11.<java.util.Deque: java.lang.Object pollFirst()>();	$r10 = null;	goto [?= r7 = $r10];	r7 = $r10;	if r7 != null goto $z0 = r7 instanceof jdk.nashorn.internal.runtime.ConsString;	$r12 = new java.lang.String;	specialinvoke $r12.<java.lang.String: void <init>(char[])>(r1);	r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence left> = $r12;	r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence right> = "";	$i10 = (int) -1;	r0.<jdk.nashorn.internal.runtime.ConsString: int state> = $i10;	return
;block_num 7
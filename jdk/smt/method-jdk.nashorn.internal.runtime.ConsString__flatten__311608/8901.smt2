(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1398 0)
(declare-sort var3994 0)
(declare-sort var3516 0)
(declare-sort var2928 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/386509729 (var1398) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var3994-init () var3994)
(declare-fun <init>/-1300283768 (var3994) void)
(declare-fun left/386509729 (var1398) String)
(declare-fun var3516_addFirst/-1050222593 (var3516 var2928) void)
(declare-fun cast-from-var3994-to-var3516 (var3994) var3516)
(declare-fun cast-from-String-to-var2928 (String) var2928)
(declare-fun right/386509729 (var1398) String)
(declare-fun cast-from-String-to-var1398 (String) var1398)
(declare-fun state/386509729 (var1398) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun flattened/1746087694 (var1398 Bool) String)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var1398 var1398)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var2829 var1398) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.ConsString 
(assert (not (= var2829 null-var1398)))
(declare-const var569 Bool) ; Statement: z2 := @parameter0: boolean 
(assert (not (= var569 null-Bool)))
(define-const var1163 Int (length/386509729 var2829)) ; Statement: $i0 = r0.<jdk.nashorn.internal.runtime.ConsString: int length> 
(define-const var775 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i0] 
(define-const var2868 Int (length/386509729 var2829)) ; Statement: i6 = r0.<jdk.nashorn.internal.runtime.ConsString: int length> 
(define-const var3975 var3994 var3994-init) ; Statement: $r11 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var3975)) ; Statement: specialinvoke $r11.<java.util.ArrayDeque: void <init>()>() 

(declare-const var3975!1 var3994)
(define-const var754 String (left/386509729 var2829)) ; Statement: $r3 = r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence left> 
;(assert (var3516_addFirst/-1050222593 (cast-from-var3994-to-var3516 var3975!1) (cast-from-String-to-var2928 var754))) ; Statement: interfaceinvoke $r11.<java.util.Deque: void addFirst(java.lang.Object)>($r3) 

(declare-const var3975!2 var3994)
(declare-const var754!1 String)
(define-const var278 String (right/386509729 var2829)) ; Statement: r7 = r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence right> 
(assert true) ; Non Conditional
(define-const var3041 Bool true) ; Statement: $z0 = r7 instanceof jdk.nashorn.internal.runtime.ConsString 
 ; Statement: if $z0 == 0 goto r9 = (java.lang.String) r7 
(assert (not (= (ite var3041 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3434 var1398 (cast-from-String-to-var1398 var278)) ; Statement: r8 = (jdk.nashorn.internal.runtime.ConsString) r7 
(define-const var2451 Int (state/386509729 var3434)) ; Statement: $i3 = r8.<jdk.nashorn.internal.runtime.ConsString: int state> 
(define-const var2558 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if $i3 == $i8 goto r7 = specialinvoke r8.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence flattened(boolean)>(0) 
(assert (= var2451 var2558)) ; Cond: $i3 == $i8 
(assert true)
(define-const var278!1 String (flattened/1746087694 var3434 (ite (= 1 0) true false))) ; Statement: r7 = specialinvoke r8.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence flattened(boolean)>(0) 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r7 != null goto $z0 = r7 instanceof jdk.nashorn.internal.runtime.ConsString 
(assert (not (not (= var278!1 null-String)))) ; Negate: Cond: r7 != null  
(define-const var2589 String String-init) ; Statement: $r12 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var2589 var775)) ; Statement: specialinvoke $r12.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var2589!1 String)
(declare-const var775!1 (Array Int Int))
(declare-const var2829!1 var1398)
(assert (not (= var2829!1 null-var1398)))
(assert (= (left/386509729 var2829!1) (cast-from-String-to-String var2589!1))) ; Statement: r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence left> = $r12 
(declare-const var2829!2 var1398)
(assert (not (= var2829!2 null-var1398)))
(assert (= (right/386509729 var2829!2) (cast-from-String-to-String ""))) ; Statement: r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence right> = "" 
(define-const var2324 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(declare-const var2829!3 var1398)
(assert (not (= var2829!3 null-var1398)))
(assert (= (state/386509729 var2829!3) var2324)) ; Statement: r0.<jdk.nashorn.internal.runtime.ConsString: int state> = $i10 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/386509729=([jdk.nashorn.internal.runtime.ConsString], int), arr-Int-init=([], char[]), var3994-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), left/386509729=([jdk.nashorn.internal.runtime.ConsString], java.lang.CharSequence), var3516_addFirst/-1050222593=([java.util.Deque, java.lang.Object], void), cast-from-var3994-to-var3516=([java.util.ArrayDeque], java.util.Deque), cast-from-String-to-var2928=([java.lang.CharSequence], java.lang.Object), right/386509729=([jdk.nashorn.internal.runtime.ConsString], java.lang.CharSequence), cast-from-String-to-var1398=([java.lang.CharSequence], jdk.nashorn.internal.runtime.ConsString), state/386509729=([jdk.nashorn.internal.runtime.ConsString], int), cast-from-Int-to-Int=([int], int), flattened/1746087694=([jdk.nashorn.internal.runtime.ConsString, boolean], java.lang.CharSequence), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1398=jdk.nashorn.internal.runtime.ConsString, var2829=r0, var569=z2, var1163=$i0, var775=r1, var2868=i6, var3994=java.util.ArrayDeque, var3975=$r11, var754=$r3, var3516=java.util.Deque, var2928=java.lang.Object, var278=r7, var3041=$z0, var3434=r8, var2451=$i3, var2558=$i8, var2589=$r12, var2324=$i10}
; {jdk.nashorn.internal.runtime.ConsString=var1398, r0=var2829, z2=var569, $i0=var1163, r1=var775, i6=var2868, java.util.ArrayDeque=var3994, $r11=var3975, $r3=var754, java.util.Deque=var3516, java.lang.Object=var2928, r7=var278, $z0=var3041, r8=var3434, $i3=var2451, $i8=var2558, $r12=var2589, $i10=var2324}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.ConsString;	z2 := @parameter0: boolean;	$i0 = r0.<jdk.nashorn.internal.runtime.ConsString: int length>;	r1 = newarray (char)[$i0];	i6 = r0.<jdk.nashorn.internal.runtime.ConsString: int length>;	$r11 = new java.util.ArrayDeque;	specialinvoke $r11.<java.util.ArrayDeque: void <init>()>();	$r3 = r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence left>;	interfaceinvoke $r11.<java.util.Deque: void addFirst(java.lang.Object)>($r3);	r7 = r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence right>;	$z0 = r7 instanceof jdk.nashorn.internal.runtime.ConsString;	if $z0 == 0 goto r9 = (java.lang.String) r7;	r8 = (jdk.nashorn.internal.runtime.ConsString) r7;	$i3 = r8.<jdk.nashorn.internal.runtime.ConsString: int state>;	$i8 = (int) -1;	if $i3 == $i8 goto r7 = specialinvoke r8.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence flattened(boolean)>(0);	r7 = specialinvoke r8.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence flattened(boolean)>(0);	goto [?= (branch)];	goto [?= (branch)];	if r7 != null goto $z0 = r7 instanceof jdk.nashorn.internal.runtime.ConsString;	$r12 = new java.lang.String;	specialinvoke $r12.<java.lang.String: void <init>(char[])>(r1);	r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence left> = $r12;	r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence right> = "";	$i10 = (int) -1;	r0.<jdk.nashorn.internal.runtime.ConsString: int state> = $i10;	return
;block_num 7
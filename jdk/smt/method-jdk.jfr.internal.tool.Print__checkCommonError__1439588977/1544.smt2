(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1477 0)
(declare-sort var3909 0)
(declare-sort var845 0)
(declare-sort var2792 0)
(declare-sort var2520 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3909_peek/625256415 (var3909) var2792)
(declare-fun var2520-init () var2520)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-732306635 (var2520 String) void)
(declare-const null-var1477 var1477)
(declare-const null-var3909 var3909)
(declare-const null-String String)
(declare-const var3705 var1477) ; Statement: r12 := @this: jdk.jfr.internal.tool.Print 
(assert (not (= var3705 null-var1477)))
(declare-const var2571 var3909) ; Statement: r1 := @parameter0: java.util.Deque 
(assert (not (= var2571 null-var3909)))
(declare-const var1217 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1217 null-String)))
(declare-const var2638 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var2638 null-String)))
(define-const var1627 var2792 (var3909_peek/625256415 var2571)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Deque: java.lang.Object peek()>() 
(assert true)
(define-const var315 Bool false) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var315 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2142 var2520 var2520-init) ; Statement: $r3 = new jdk.jfr.internal.tool.UserSyntaxException 
(define-const var1136 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1136)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1136!1 String)
(assert (= var1136!1 ""))
(assert true)
(define-const var828 String (append/672562846 var1136!1 "unknown option ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown option ") 
(declare-const var1136!2 String)
(assert (= var1136!2 (str.++ var1136!1 "unknown option ")))
(assert true)
(define-const var2015 String (append/672562846 var828 var1217)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var828!1 String)
(assert (= var828!1 (str.++ var828 var1217)))
(assert true)
(define-const var1720 String (append/672562846 var2015 ", did you mean ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", did you mean ") 
(declare-const var2015!1 String)
(assert (= var2015!1 (str.++ var2015 ", did you mean ")))
(assert true)
(define-const var1388 String (append/672562846 var1720 var2638)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1720!1 String)
(assert (= var1720!1 (str.++ var1720 var2638)))
(assert true)
(define-const var1386 String (append/672562846 var1388 "?")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var1388!1 String)
(assert (= var1388!1 (str.++ var1388 "?")))
(assert true)
(define-const var2050 String (toString/-2075883882 var1386)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-732306635 var2142 var2050)) ; Statement: specialinvoke $r3.<jdk.jfr.internal.tool.UserSyntaxException: void <init>(java.lang.String)>($r11) 

(declare-const var2142!1 var2520)
(declare-const var2050!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3909_peek/625256415=([java.util.Deque], java.lang.Object), var2520-init=([], jdk.jfr.internal.tool.UserSyntaxException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-732306635=([jdk.jfr.internal.tool.UserSyntaxException, java.lang.String], void)}
; {var1477=jdk.jfr.internal.tool.Print, var3705=r12, var3909=java.util.Deque, var2571=r1, var1217=r0, var845=null_type, var2638=r7, var2792=java.lang.Object, var1627=$r2, var315=$z0, var2520=jdk.jfr.internal.tool.UserSyntaxException, var2142=$r3, var1136=$r4, var828=$r5, var2015=$r6, var1720=$r8, var1388=$r9, var1386=$r10, var2050=$r11}
; {jdk.jfr.internal.tool.Print=var1477, r12=var3705, java.util.Deque=var3909, r1=var2571, r0=var1217, null_type=var845, r7=var2638, java.lang.Object=var2792, $r2=var1627, $z0=var315, jdk.jfr.internal.tool.UserSyntaxException=var2520, $r3=var2142, $r4=var1136, $r5=var828, $r6=var2015, $r8=var1720, $r9=var1388, $r10=var1386, $r11=var2050}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: jdk.jfr.internal.tool.Print;	r1 := @parameter0: java.util.Deque;	r0 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.String;	$r2 = interfaceinvoke r1.<java.util.Deque: java.lang.Object peek()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto return;	$r3 = new jdk.jfr.internal.tool.UserSyntaxException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown option ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", did you mean ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<jdk.jfr.internal.tool.UserSyntaxException: void <init>(java.lang.String)>($r11);	throw $r3
;block_num 2
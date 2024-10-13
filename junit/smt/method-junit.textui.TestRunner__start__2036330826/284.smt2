(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1674 0)
(declare-sort var245 0)
(declare-sort var976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var245-init () var245)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var976) String)
(declare-fun cast-from-var245-to-var976 (var245) var976)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var245 String) void)
(declare-const null-var1674 var1674)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var245 var245)
(declare-const var735 var1674) ; Statement: r1 := @this: junit.textui.TestRunner 
(assert (not (= var735 null-var1674)))
(declare-const var2406 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var2406 null-__Array__Int__String__)))
(define-const var2803 String "") ; Statement: r24 = "" 
(define-const var1570 String "") ; Statement: r25 = "" 
(define-const var410 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var897 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var3684 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var500 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3713 Int (getLength-Arr-String-1 var2406)) ; Statement: $i0 = lengthof r0 
 ; Statement: if i3 >= $i0 goto $z0 = virtualinvoke r24.<java.lang.String: boolean equals(java.lang.Object)>("") 
(assert (>= var500 var3713)) ; Cond: i3 >= $i0 
(assert true)
(define-const var3462 Bool (= var2803 "")) ; Statement: $z0 = virtualinvoke r24.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r25.<java.lang.String: boolean equals(java.lang.Object)>("") 
(assert (not (= (ite var3462 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var2715 var245) ; Statement: $r18 := @caughtexception 
(assert (not (= var2715 null-var245)))
(define-const var1814 var245 var245-init) ; Statement: $r19 = new java.lang.Exception 
(define-const var2888 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2888)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2888!1 String)
(assert (= var2888!1 ""))
(assert true)
(define-const var2590 String (append/672562846 var2888!1 "Could not create and run test suite: ")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create and run test suite: ") 
(declare-const var2888!2 String)
(assert (= var2888!2 (str.++ var2888!1 "Could not create and run test suite: ")))
(assert true)
(define-const var3618 String (append/-1031950772 var2590 (cast-from-var245-to-var976 var2715))) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18) 
(declare-const var2590!1 String)
(assert (str.prefixof var2590 var2590!1))
(assert true)
(define-const var3209 String (toString/-2075883882 var3618)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 var1814 var3209)) ; Statement: specialinvoke $r19.<java.lang.Exception: void <init>(java.lang.String)>($r23) 

(declare-const var1814!1 var245)
(declare-const var3209!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), var245-init=([], java.lang.Exception), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var245-to-var976=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void)}
; {var1674=junit.textui.TestRunner, var735=r1, var2406=r0, var2803=r24, var1570=r25, var410=z6, var897=z8, var3684=z7, var500=i3, var3713=$i0, var3462=$z0, var245=java.lang.Exception, var2715=$r18, var1814=$r19, var2888=$r20, var2590=$r21, var976=java.lang.Object, var3618=$r22, var3209=$r23}
; {junit.textui.TestRunner=var1674, r1=var735, r0=var2406, r24=var2803, r25=var1570, z6=var410, z8=var897, z7=var3684, i3=var500, $i0=var3713, $z0=var3462, java.lang.Exception=var245, $r18=var2715, $r19=var1814, $r20=var2888, $r21=var2590, java.lang.Object=var976, $r22=var3618, $r23=var3209}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: junit.textui.TestRunner;	r0 := @parameter0: java.lang.String[];	r24 = "";	r25 = "";	z6 = 0;	z8 = 0;	z7 = 0;	i3 = 0;	$i0 = lengthof r0;	if i3 >= $i0 goto $z0 = virtualinvoke r24.<java.lang.String: boolean equals(java.lang.Object)>("");	$z0 = virtualinvoke r24.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto $z1 = virtualinvoke r25.<java.lang.String: boolean equals(java.lang.Object)>("");	$r18 := @caughtexception;	$r19 = new java.lang.Exception;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create and run test suite: ");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<java.lang.Exception: void <init>(java.lang.String)>($r23);	throw $r19
;block_num 4
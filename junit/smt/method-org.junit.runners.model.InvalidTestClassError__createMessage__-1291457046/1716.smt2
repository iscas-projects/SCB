(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2084 0)
(declare-sort var2790 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun arr-var2790-init () (Array Int var2790))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var2790 (String) var2790)
(declare-fun String_format/1339386452 (String (Array Int var2790)) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2084_iterator/-912451715 (var2084) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2084 var2084)
(declare-const null-__Array__Int__var2790__ (Array Int var2790))
(declare-const var2282 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var2282 null-ClassObject)))
(declare-const var3752 var2084) ; Statement: r5 := @parameter1: java.util.List 
(assert (not (= var3752 null-var2084)))
(define-const var3441 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3441)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3441!1 String)
(assert (= var3441!1 ""))
(define-const var332 (Array Int var2790) arr-var2790-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var3500 String (getName/-1958580599 var2282)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(declare-const var332!1 (Array Int var2790))
(assert (not (= var332!1 null-__Array__Int__var2790__)))
(assert (= (select var332!1 0) (cast-from-String-to-var2790 var3500))) ; Statement: $r1[0] = $r3 
(define-const var531 String (String_format/1339386452 "Invalid test class \u0027%s\u0027:" var332!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Invalid test class \'%s\':", $r1) 
(assert true)
;(assert (append/672562846 var3441!1 var531)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3441!2 String)
(assert (= var3441!2 (str.++ var3441!1 var531)))
(define-const var621 Int 1) ; Statement: i1 = 1 
(define-const var612 Iterator (var2084_iterator/-912451715 var3752)) ; Statement: r6 = interfaceinvoke r5.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3466 Bool (Iterator_hasNext/-1669924200 var612)) ; Statement: $z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3466 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2600 String (toString/-2075883882 var3441!2)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), arr-var2790-init=([], java.lang.Object[]), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var2790=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2084_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2282=r2, var2084=java.util.List, var3752=r5, var3441=$r0, var2790=java.lang.Object, var332=$r1, var3500=$r3, var531=$r4, var621=i1, var612=r6, var3466=$z0, var2600=$r7}
; {r2=var2282, java.util.List=var2084, r5=var3752, $r0=var3441, java.lang.Object=var2790, $r1=var332, $r3=var3500, $r4=var531, i1=var621, r6=var612, $z0=var3466, $r7=var2600}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Class;	r5 := @parameter1: java.util.List;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = newarray (java.lang.Object)[1];	$r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r1[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Invalid test class \'%s\':", $r1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	i1 = 1;	r6 = interfaceinvoke r5.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3
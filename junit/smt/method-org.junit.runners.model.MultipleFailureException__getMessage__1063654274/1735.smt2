(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3510 0)
(declare-sort var3796 0)
(declare-sort var783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun arr-var3796-init () (Array Int var3796))
(declare-fun fErrors/-1771860177 (var3510) var783)
(declare-fun var783_size/-959786421 (var783) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var3796 (Int) var3796)
(declare-fun String_format/1339386452 (String (Array Int var3796)) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var783_iterator/-912451715 (var783) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3510 var3510)
(declare-const null-__Array__Int__var3796__ (Array Int var3796))
(declare-const var2949 var3510) ; Statement: r2 := @this: org.junit.runners.model.MultipleFailureException 
(assert (not (= var2949 null-var3510)))
(define-const var2917 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var2869 (Array Int var3796) arr-var3796-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var2968 var783 (fErrors/-1771860177 var2949)) ; Statement: $r3 = r2.<org.junit.runners.model.MultipleFailureException: java.util.List fErrors> 
(define-const var49 Int (var783_size/-959786421 var2968)) ; Statement: $i0 = interfaceinvoke $r3.<java.util.List: int size()>() 
(define-const var1209 Int (Int_valueOf/-1371140006 var49)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var2869!1 (Array Int var3796))
(assert (not (= var2869!1 null-__Array__Int__var3796__)))
(assert (= (select var2869!1 0) (cast-from-Int-to-var3796 var1209))) ; Statement: $r1[0] = $r4 
(define-const var1965 String (String_format/1339386452 "There were %d errors:" var2869!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("There were %d errors:", $r1) 
(assert true)
;(assert (<init>/-1061048412 var2917 var1965)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5) 
(declare-const var2917!1 String)
(assert (= var2917!1 var1965))
(define-const var219 var783 (fErrors/-1771860177 var2949)) ; Statement: $r6 = r2.<org.junit.runners.model.MultipleFailureException: java.util.List fErrors> 
(define-const var3477 Iterator (var783_iterator/-912451715 var219)) ; Statement: r7 = interfaceinvoke $r6.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2601 Bool (Iterator_hasNext/-1669924200 var3477)) ; Statement: $z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2601 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2836 String (toString/-2075883882 var2917!1)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), arr-var3796-init=([], java.lang.Object[]), fErrors/-1771860177=([org.junit.runners.model.MultipleFailureException], java.util.List), var783_size/-959786421=([java.util.List], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var3796=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var783_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3510=org.junit.runners.model.MultipleFailureException, var2949=r2, var2917=$r0, var3796=java.lang.Object, var2869=$r1, var783=java.util.List, var2968=$r3, var49=$i0, var1209=$r4, var1965=$r5, var219=$r6, var3477=r7, var2601=$z0, var2836=$r8}
; {org.junit.runners.model.MultipleFailureException=var3510, r2=var2949, $r0=var2917, java.lang.Object=var3796, $r1=var2869, java.util.List=var783, $r3=var2968, $i0=var49, $r4=var1209, $r5=var1965, $r6=var219, r7=var3477, $z0=var2601, $r8=var2836}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.junit.runners.model.MultipleFailureException;	$r0 = new java.lang.StringBuilder;	$r1 = newarray (java.lang.Object)[1];	$r3 = r2.<org.junit.runners.model.MultipleFailureException: java.util.List fErrors>;	$i0 = interfaceinvoke $r3.<java.util.List: int size()>();	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r1[0] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("There were %d errors:", $r1);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5);	$r6 = r2.<org.junit.runners.model.MultipleFailureException: java.util.List fErrors>;	r7 = interfaceinvoke $r6.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3
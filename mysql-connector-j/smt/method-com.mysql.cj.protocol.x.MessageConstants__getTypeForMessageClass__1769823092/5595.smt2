(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3684 0)
(declare-sort var3157 0)
(declare-sort var3841 0)
(declare-sort var2118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3684_get/1088891777 (var3684 var3841) var3841)
(declare-fun cast-from-ClassObject-to-var3841 (ClassObject) var3841)
(declare-fun cast-from-var3841-to-Int (var3841) Int)
(declare-fun var2118-init () var2118)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/302830823 (var2118 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const var3157-MESSAGE_CLASS_TO_CLIENT_MESSAGE_TYPE var3684)
(declare-const null-Int Int)
(declare-const var2538 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2538 null-ClassObject)))
(define-const var3600 var3684 var3157-MESSAGE_CLASS_TO_CLIENT_MESSAGE_TYPE) ; Statement: $r1 = <com.mysql.cj.protocol.x.MessageConstants: java.util.Map MESSAGE_CLASS_TO_CLIENT_MESSAGE_TYPE> 
(define-const var3832 var3841 (var3684_get/1088891777 var3600 (cast-from-ClassObject-to-var3841 var2538))) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var786 Int (cast-from-var3841-to-Int var3832)) ; Statement: r3 = (java.lang.Integer) $r2 
 ; Statement: if r3 != null goto $i0 = virtualinvoke r3.<java.lang.Integer: int intValue()>() 
(assert (not (not (= var786 null-Int)))) ; Negate: Cond: r3 != null  
(define-const var854 var2118 var2118-init) ; Statement: $r4 = new com.mysql.cj.exceptions.WrongArgumentException 
(define-const var1439 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1439)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1439!1 String)
(assert (= var1439!1 ""))
(assert true)
(define-const var3657 String (append/672562846 var1439!1 "No mapping to ClientMessages for message class ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No mapping to ClientMessages for message class ") 
(declare-const var1439!2 String)
(assert (= var1439!2 (str.++ var1439!1 "No mapping to ClientMessages for message class ")))
(assert true)
(define-const var533 String (getSimpleName/-390194377 var2538)) ; Statement: $r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2551 String (append/672562846 var3657 var533)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3657!1 String)
(assert (= var3657!1 (str.++ var3657 var533)))
(assert true)
(define-const var637 String (toString/-2075883882 var2551)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/302830823 var854 var637)) ; Statement: specialinvoke $r4.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var854!1 var2118)
(declare-const var637!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3684_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3841=([java.lang.Class], java.lang.Object), cast-from-var3841-to-Int=([java.lang.Object], java.lang.Integer), var2118-init=([], com.mysql.cj.exceptions.WrongArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/302830823=([com.mysql.cj.exceptions.WrongArgumentException, java.lang.String], void)}
; {var2538=r0, var3684=java.util.Map, var3157=com.mysql.cj.protocol.x.MessageConstants, var3600=$r1, var3841=java.lang.Object, var3832=$r2, var786=r3, var2118=com.mysql.cj.exceptions.WrongArgumentException, var854=$r4, var1439=$r5, var3657=$r7, var533=$r6, var2551=$r8, var637=$r9}
; {r0=var2538, java.util.Map=var3684, com.mysql.cj.protocol.x.MessageConstants=var3157, $r1=var3600, java.lang.Object=var3841, $r2=var3832, r3=var786, com.mysql.cj.exceptions.WrongArgumentException=var2118, $r4=var854, $r5=var1439, $r7=var3657, $r6=var533, $r8=var2551, $r9=var637}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = <com.mysql.cj.protocol.x.MessageConstants: java.util.Map MESSAGE_CLASS_TO_CLIENT_MESSAGE_TYPE>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r3 = (java.lang.Integer) $r2;	if r3 != null goto $i0 = virtualinvoke r3.<java.lang.Integer: int intValue()>();	$r4 = new com.mysql.cj.exceptions.WrongArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No mapping to ClientMessages for message class ");	$r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2
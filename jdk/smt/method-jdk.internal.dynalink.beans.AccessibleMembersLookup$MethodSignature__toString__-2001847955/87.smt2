(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1609 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/459083917 (var1609) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun args/459083917 (var1609) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1609 var1609)
(declare-const var1578 var1609) ; Statement: r1 := @this: jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature 
(assert (not (= var1578 null-var1609)))
(define-const var922 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var922)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var922!1 String)
(assert (= var922!1 ""))
(assert true)
(define-const var1946 String (append/672562846 var922!1 "[MethodSignature ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[MethodSignature ") 
(declare-const var922!2 String)
(assert (= var922!2 (str.++ var922!1 "[MethodSignature ")))
(define-const var347 String (name/459083917 var1578)) ; Statement: $r2 = r1.<jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature: java.lang.String name> 
(assert true)
(define-const var3646 String (append/672562846 var1946 var347)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1946!1 String)
(assert (= var1946!1 (str.++ var1946 var347)))
(assert true)
;(assert (append/-1166366385 var3646 40)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3646!1 String)
(assert (str.prefixof var3646 var3646!1))
(define-const var2364 (Array Int ClassObject) (args/459083917 var1578)) ; Statement: $r5 = r1.<jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature: java.lang.Class[] args> 
(define-const var2566 Int (getLength-Arr-ClassObject-1 var2364)) ; Statement: $i0 = lengthof $r5 
 ; Statement: if $i0 <= 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]") 
(assert (<= var2566 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var2504 String (append/672562846 var922!2 ")]")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]") 
(declare-const var922!3 String)
(assert (= var922!3 (str.++ var922!2 ")]")))
(assert true)
(define-const var2154 String (toString/-2075883882 var2504)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/459083917=([jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), args/459083917=([jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1609=jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature, var1578=r1, var922=$r0, var1946=$r3, var347=$r2, var3646=$r4, var2364=$r5, var2566=$i0, var2504=$r6, var2154=$r7}
; {jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature=var1609, r1=var1578, $r0=var922, $r3=var1946, $r2=var347, $r4=var3646, $r5=var2364, $i0=var2566, $r6=var2504, $r7=var2154}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[MethodSignature ");	$r2 = r1.<jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = r1.<jdk.internal.dynalink.beans.AccessibleMembersLookup$MethodSignature: java.lang.Class[] args>;	$i0 = lengthof $r5;	if $i0 <= 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]");	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2
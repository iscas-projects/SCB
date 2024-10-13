(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3609 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/1983045573 (var3609) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun desc/1983045573 (var3609) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3609 var3609)
(declare-const var1861 var3609) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item 
(assert (not (= var1861 null-var3609)))
(define-const var1972 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1972)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1972!1 String)
(assert (= var1972!1 ""))
(define-const var2818 String (name/1983045573 var1861)) ; Statement: $r2 = r1.<jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item: java.lang.String name> 
(assert true)
(define-const var3597 String (append/672562846 var1972!1 var2818)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1972!2 String)
(assert (= var1972!2 (str.++ var1972!1 var2818)))
(define-const var3771 String (desc/1983045573 var1861)) ; Statement: $r3 = r1.<jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item: java.lang.String desc> 
(assert true)
(define-const var604 String (append/672562846 var3597 var3771)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3597!1 String)
(assert (= var3597!1 (str.++ var3597 var3771)))
(assert true)
(define-const var839 String (toString/-2075883882 var604)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1542 Int (hashCode/-467973558 var839)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/1983045573=([jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), desc/1983045573=([jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3609=jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item, var1861=r1, var1972=$r0, var2818=$r2, var3597=$r4, var3771=$r3, var604=$r5, var839=$r6, var1542=$i0}
; {jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item=var3609, r1=var1861, $r0=var1972, $r2=var2818, $r4=var3597, $r3=var3771, $r5=var604, $r6=var839, $i0=var1542}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item: java.lang.String name>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item: java.lang.String desc>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$i0 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	return $i0
;block_num 1
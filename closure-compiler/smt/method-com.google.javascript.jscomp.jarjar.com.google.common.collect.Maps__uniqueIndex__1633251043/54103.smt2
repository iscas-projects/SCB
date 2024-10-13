(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1060 0)
(declare-sort var1943 0)
(declare-sort var3405 0)
(declare-sort var3055 0)
(declare-sort var2337 0)
(declare-sort var2253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3405_checkNotNull/1446102589 (var3055) var3055)
(declare-fun cast-from-var1060-to-var3055 (var1060) var3055)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2337-init () var2337)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/849299655 (var2253) String)
(declare-fun cast-from-var2337-to-var2253 (var2337) var2253)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2337 String) void)
(declare-const null-Iterator Iterator)
(declare-const null-var1060 var1060)
(declare-const null-var1943 var1943)
(declare-const null-var2337 var2337)
(declare-const var3718 Iterator) ; Statement: r1 := @parameter0: java.util.Iterator 
(assert (not (= var3718 null-Iterator)))
(declare-const var665 var1060) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.base.Function 
(assert (not (= var665 null-var1060)))
(declare-const var1210 var1943) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder 
(assert (not (= var1210 null-var1943)))
;(assert (var3405_checkNotNull/1446102589 (cast-from-var1060-to-var3055 var665))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var665!1 var1060)
(assert true) ; Non Conditional
(define-const var2107 Bool (Iterator_hasNext/-1669924200 var3718)) ; Statement: $z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap buildOrThrow()>() 
(assert (not (= (ite var2107 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var2380 var2337) ; Statement: $r5 := @caughtexception 
(assert (not (= var2380 null-var2337)))
(define-const var812 var2337 var2337-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var2631 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2631)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2631!1 String)
(assert (= var2631!1 ""))
(assert true)
(define-const var3545 String (getMessage/849299655 (cast-from-var2337-to-var2253 var2380))) ; Statement: $r8 = virtualinvoke $r5.<java.lang.IllegalArgumentException: java.lang.String getMessage()>() 
(assert true)
(define-const var2133 String (append/672562846 var2631!1 var3545)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2631!2 String)
(assert (= var2631!2 (str.++ var2631!1 var3545)))
(assert true)
(define-const var2945 String (append/672562846 var2133 ". To index multiple values under a key, use Multimaps.index.")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". To index multiple values under a key, use Multimaps.index.") 
(declare-const var2133!1 String)
(assert (= var2133!1 (str.++ var2133 ". To index multiple values under a key, use Multimaps.index.")))
(assert true)
(define-const var781 String (toString/-2075883882 var2945)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var812 var781)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var812!1 var2337)
(declare-const var781!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3405_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var1060-to-var3055=([com.google.javascript.jscomp.jarjar.com.google.common.base.Function], java.lang.Object), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2337-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2337-to-var2253=([java.lang.IllegalArgumentException], java.lang.Throwable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3718=r1, var1060=com.google.javascript.jscomp.jarjar.com.google.common.base.Function, var665=r0, var1943=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder, var1210=r2, var3405=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3055=java.lang.Object, var2107=$z0, var2337=java.lang.IllegalArgumentException, var2380=$r5, var812=$r6, var2631=$r7, var2253=java.lang.Throwable, var3545=$r8, var2133=$r9, var2945=$r10, var781=$r11}
; {r1=var3718, com.google.javascript.jscomp.jarjar.com.google.common.base.Function=var1060, r0=var665, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder=var1943, r2=var1210, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3405, java.lang.Object=var3055, $z0=var2107, java.lang.IllegalArgumentException=var2337, $r5=var2380, $r6=var812, $r7=var2631, java.lang.Throwable=var2253, $r8=var3545, $r9=var2133, $r10=var2945, $r11=var781}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.util.Iterator;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.base.Function;	r2 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap buildOrThrow()>();	$r5 := @caughtexception;	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.IllegalArgumentException: java.lang.String getMessage()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". To index multiple values under a key, use Multimaps.index.");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 3
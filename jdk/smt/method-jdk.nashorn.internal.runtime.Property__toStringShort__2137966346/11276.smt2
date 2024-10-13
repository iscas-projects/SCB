(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLocalType/757166644 (var1551) ClassObject)
(declare-fun getKey/-1967431913 (var1551) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1551_type/-1589040184 (ClassObject) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1551 var1551)
(declare-const var2129 var1551) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.Property 
(assert (not (= var2129 null-var1551)))
(define-const var682 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var682)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var682!1 String)
(assert (= var682!1 ""))
(assert true)
(define-const var1320 ClassObject (getLocalType/757166644 var2129)) ; Statement: r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Property: java.lang.Class getLocalType()>() 
(assert true)
(define-const var2555 String (getKey/-1967431913 var2129)) ; Statement: $r3 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>() 
(assert true)
(define-const var2331 String (append/672562846 var682!1 var2555)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var682!2 String)
(assert (= var682!2 (str.++ var682!1 var2555)))
(assert true)
(define-const var1758 String (append/672562846 var2331 " (")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2331!1 String)
(assert (= var2331!1 (str.++ var2331 " (")))
(define-const var2516 String (var1551_type/-1589040184 var1320)) ; Statement: $r5 = staticinvoke <jdk.nashorn.internal.runtime.Property: java.lang.String type(java.lang.Class)>(r2) 
(assert true)
(define-const var2784 String (append/672562846 var1758 var2516)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1758!1 String)
(assert (= var1758!1 (str.++ var1758 var2516)))
(assert true)
;(assert (append/-1166366385 var2784 41)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2784!1 String)
(assert (str.prefixof var2784 var2784!1))
(assert true)
(define-const var2403 String (toString/-2075883882 var682!2)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLocalType/757166644=([jdk.nashorn.internal.runtime.Property], java.lang.Class), getKey/-1967431913=([jdk.nashorn.internal.runtime.Property], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1551_type/-1589040184=([java.lang.Class], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1551=jdk.nashorn.internal.runtime.Property, var2129=r1, var682=$r0, var1320=r2, var2555=$r3, var2331=$r4, var1758=$r6, var2516=$r5, var2784=$r7, var2403=$r8}
; {jdk.nashorn.internal.runtime.Property=var1551, r1=var2129, $r0=var682, r2=var1320, $r3=var2555, $r4=var2331, $r6=var1758, $r5=var2516, $r7=var2784, $r8=var2403}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.Property;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Property: java.lang.Class getLocalType()>();	$r3 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r5 = staticinvoke <jdk.nashorn.internal.runtime.Property: java.lang.String type(java.lang.Class)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1
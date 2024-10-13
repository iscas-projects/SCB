(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3508 0)
(declare-sort var2400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun property/-1093418003 (var3508) var2400)
(declare-fun getKey/-1967431913 (var2400) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3508 var3508)
(declare-const var2837 var3508) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.FindProperty 
(assert (not (= var2837 null-var3508)))
(define-const var705 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var705)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var705!1 String)
(assert (= var705!1 ""))
(assert true)
(define-const var1265 String (append/672562846 var705!1 "[FindProperty: ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[FindProperty: ") 
(declare-const var705!2 String)
(assert (= var705!2 (str.++ var705!1 "[FindProperty: ")))
(define-const var1149 var2400 (property/-1093418003 var2837)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.FindProperty: jdk.nashorn.internal.runtime.Property property> 
(assert true)
(define-const var1938 String (getKey/-1967431913 var1149)) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>() 
(assert true)
(define-const var999 String (append/672562846 var1265 var1938)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1265!1 String)
(assert (= var1265!1 (str.++ var1265 var1938)))
(assert true)
(define-const var862 String (append/-1166366385 var999 93)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var999!1 String)
(assert (str.prefixof var999 var999!1))
(assert true)
(define-const var1301 String (toString/-2075883882 var862)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), property/-1093418003=([jdk.nashorn.internal.runtime.FindProperty], jdk.nashorn.internal.runtime.Property), getKey/-1967431913=([jdk.nashorn.internal.runtime.Property], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3508=jdk.nashorn.internal.runtime.FindProperty, var2837=r1, var705=$r0, var1265=$r4, var2400=jdk.nashorn.internal.runtime.Property, var1149=$r2, var1938=$r3, var999=$r5, var862=$r6, var1301=$r7}
; {jdk.nashorn.internal.runtime.FindProperty=var3508, r1=var2837, $r0=var705, $r4=var1265, jdk.nashorn.internal.runtime.Property=var2400, $r2=var1149, $r3=var1938, $r5=var999, $r6=var862, $r7=var1301}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.FindProperty;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[FindProperty: ");	$r2 = r1.<jdk.nashorn.internal.runtime.FindProperty: jdk.nashorn.internal.runtime.Property property>;	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2651 0)
(declare-sort var496 0)
(declare-sort var840 0)
(declare-sort var1086 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var496_id/-2071121520 (var840) String)
(declare-fun cast-from-var2651-to-var840 (var2651) var840)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getProperties/-468583928 (var2651) (Array Int var1086))
(declare-fun getLength-Arr-var1086-1 ((Array Int var1086)) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2651 var2651)
(declare-const var3271 var2651) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.PropertyMap 
(assert (not (= var3271 null-var2651)))
(define-const var2887 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2887)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2887!1 String)
(assert (= var2887!1 ""))
(define-const var3515 String (var496_id/-2071121520 (cast-from-var2651-to-var840 var3271))) ; Statement: $r2 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>(r1) 
(assert true)
;(assert (append/672562846 var2887!1 var3515)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2887!2 String)
(assert (= var2887!2 (str.++ var2887!1 var3515)))
(assert true)
;(assert (append/672562846 var2887!2 " = {\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = {\n") 
(declare-const var2887!3 String)
(assert (= var2887!3 (str.++ var2887!2 " = {\n")))
(assert true)
(define-const var411 (Array Int var1086) (getProperties/-468583928 var3271)) ; Statement: r3 = virtualinvoke r1.<jdk.nashorn.internal.runtime.PropertyMap: jdk.nashorn.internal.runtime.Property[] getProperties()>() 
(define-const var1648 Int (getLength-Arr-var1086-1 var411)) ; Statement: i0 = lengthof r3 
(define-const var3523 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (>= var3523 var1648)) ; Cond: i1 >= i0 
(assert true)
;(assert (append/-1166366385 var2887!3 125)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var2887!4 String)
(assert (str.prefixof var2887!3 var2887!4))
(assert true)
(define-const var3108 String (toString/-2075883882 var2887!4)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var496_id/-2071121520=([java.lang.Object], java.lang.String), cast-from-var2651-to-var840=([jdk.nashorn.internal.runtime.PropertyMap], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getProperties/-468583928=([jdk.nashorn.internal.runtime.PropertyMap], jdk.nashorn.internal.runtime.Property[]), getLength-Arr-var1086-1=([jdk.nashorn.internal.runtime.Property[]], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2651=jdk.nashorn.internal.runtime.PropertyMap, var3271=r1, var2887=$r0, var496=jdk.nashorn.internal.runtime.Debug, var840=java.lang.Object, var3515=$r2, var1086=jdk.nashorn.internal.runtime.Property, var411=r3, var1648=i0, var3523=i1, var3108=$r4}
; {jdk.nashorn.internal.runtime.PropertyMap=var2651, r1=var3271, $r0=var2887, jdk.nashorn.internal.runtime.Debug=var496, java.lang.Object=var840, $r2=var3515, jdk.nashorn.internal.runtime.Property=var1086, r3=var411, i0=var1648, i1=var3523, $r4=var3108}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.PropertyMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>(r1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = {\n");	r3 = virtualinvoke r1.<jdk.nashorn.internal.runtime.PropertyMap: jdk.nashorn.internal.runtime.Property[] getProperties()>();	i0 = lengthof r3;	i1 = 0;	if i1 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3
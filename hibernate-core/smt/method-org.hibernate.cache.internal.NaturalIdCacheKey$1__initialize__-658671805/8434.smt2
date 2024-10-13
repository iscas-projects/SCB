(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3793 0)
(declare-sort var1033 0)
(declare-sort var1629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun this$0/-9597169 (var3793) var1033)
(declare-fun var1033_access$000/784395160 (var1033) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1033_access$100/845844047 (var1033) (Array Int var1629))
(declare-fun getLength-Arr-var1629-1 ((Array Int var1629)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3793 var3793)
(declare-const var112 var3793) ; Statement: r1 := @this: org.hibernate.cache.internal.NaturalIdCacheKey$1 
(assert (not (= var112 null-var3793)))
(define-const var2148 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2148)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2148!1 String)
(assert (= var2148!1 ""))
(define-const var274 var1033 (this$0/-9597169 var112)) ; Statement: $r2 = r1.<org.hibernate.cache.internal.NaturalIdCacheKey$1: org.hibernate.cache.internal.NaturalIdCacheKey this$0> 
(define-const var3400 String (var1033_access$000/784395160 var274)) ; Statement: $r3 = staticinvoke <org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String access$000(org.hibernate.cache.internal.NaturalIdCacheKey)>($r2) 
(assert true)
(define-const var1989 String (append/672562846 var2148!1 var3400)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2148!2 String)
(assert (= var2148!2 (str.++ var2148!1 var3400)))
(assert true)
(define-const var3064 String (append/672562846 var1989 "##NaturalId[")) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("##NaturalId[") 
(declare-const var1989!1 String)
(assert (= var1989!1 (str.++ var1989 "##NaturalId[")))
(define-const var1388 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1100 var1033 (this$0/-9597169 var112)) ; Statement: $r6 = r1.<org.hibernate.cache.internal.NaturalIdCacheKey$1: org.hibernate.cache.internal.NaturalIdCacheKey this$0> 
(define-const var338 (Array Int var1629) (var1033_access$100/845844047 var1100)) ; Statement: $r7 = staticinvoke <org.hibernate.cache.internal.NaturalIdCacheKey: java.io.Serializable[] access$100(org.hibernate.cache.internal.NaturalIdCacheKey)>($r6) 
(define-const var1547 Int (getLength-Arr-var1629-1 var338)) ; Statement: $i0 = lengthof $r7 
 ; Statement: if i3 >= $i0 goto virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (>= var1388 var1547)) ; Cond: i3 >= $i0 
(assert true)
;(assert (append/672562846 var3064 "]")) ; Statement: virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3064!1 String)
(assert (= var3064!1 (str.++ var3064 "]")))
(assert true)
(define-const var1289 String (toString/-2075883882 var3064!1)) ; Statement: $r8 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), this$0/-9597169=([org.hibernate.cache.internal.NaturalIdCacheKey$1], org.hibernate.cache.internal.NaturalIdCacheKey), var1033_access$000/784395160=([org.hibernate.cache.internal.NaturalIdCacheKey], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1033_access$100/845844047=([org.hibernate.cache.internal.NaturalIdCacheKey], java.io.Serializable[]), getLength-Arr-var1629-1=([java.io.Serializable[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3793=org.hibernate.cache.internal.NaturalIdCacheKey$1, var112=r1, var2148=$r0, var1033=org.hibernate.cache.internal.NaturalIdCacheKey, var274=$r2, var3400=$r3, var1989=$r4, var3064=r5, var1388=i3, var1100=$r6, var1629=java.io.Serializable, var338=$r7, var1547=$i0, var1289=$r8}
; {org.hibernate.cache.internal.NaturalIdCacheKey$1=var3793, r1=var112, $r0=var2148, org.hibernate.cache.internal.NaturalIdCacheKey=var1033, $r2=var274, $r3=var3400, $r4=var1989, r5=var3064, i3=var1388, $r6=var1100, java.io.Serializable=var1629, $r7=var338, $i0=var1547, $r8=var1289}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cache.internal.NaturalIdCacheKey$1;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.cache.internal.NaturalIdCacheKey$1: org.hibernate.cache.internal.NaturalIdCacheKey this$0>;	$r3 = staticinvoke <org.hibernate.cache.internal.NaturalIdCacheKey: java.lang.String access$000(org.hibernate.cache.internal.NaturalIdCacheKey)>($r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("##NaturalId[");	i3 = 0;	$r6 = r1.<org.hibernate.cache.internal.NaturalIdCacheKey$1: org.hibernate.cache.internal.NaturalIdCacheKey this$0>;	$r7 = staticinvoke <org.hibernate.cache.internal.NaturalIdCacheKey: java.io.Serializable[] access$100(org.hibernate.cache.internal.NaturalIdCacheKey)>($r6);	$i0 = lengthof $r7;	if i3 >= $i0 goto virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3
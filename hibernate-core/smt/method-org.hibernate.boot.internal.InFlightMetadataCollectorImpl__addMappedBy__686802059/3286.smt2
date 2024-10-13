(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3547 0)
(declare-sort var774 0)
(declare-sort var2616 0)
(declare-sort var3309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mappedByResolver/1317447214 (var3547) var2616)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2616_put/1464166817 (var2616 var3309 var3309) var3309)
(declare-fun cast-from-String-to-var3309 (String) var3309)
(declare-const null-var3547 var3547)
(declare-const null-String String)
(declare-const null-var2616 var2616)
(declare-const var3232 var3547) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var3232 null-var3547)))
(declare-const var3022 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3022 null-String)))
(declare-const var943 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var943 null-String)))
(declare-const var3605 String) ; Statement: r9 := @parameter2: java.lang.String 
(assert (not (= var3605 null-String)))
(define-const var3074 var2616 (mappedByResolver/1317447214 var3232)) ; Statement: $r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map mappedByResolver> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map mappedByResolver> 
(assert (not (= var3074 null-var2616))) ; Cond: $r1 != null 
(define-const var3584 var2616 (mappedByResolver/1317447214 var3232)) ; Statement: $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map mappedByResolver> 
(define-const var2834 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2834)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2834!1 String)
(assert (= var2834!1 ""))
(assert true)
(define-const var3391 String (append/672562846 var2834!1 var3022)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2834!2 String)
(assert (= var2834!2 (str.++ var2834!1 var3022)))
(assert true)
(define-const var3572 String (append/672562846 var3391 ".")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3391!1 String)
(assert (= var3391!1 (str.++ var3391 ".")))
(assert true)
(define-const var208 String (append/672562846 var3572 var943)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var3572!1 String)
(assert (= var3572!1 (str.++ var3572 var943)))
(assert true)
(define-const var1906 String (toString/-2075883882 var208)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2616_put/1464166817 var3584 (cast-from-String-to-var3309 var1906) (cast-from-String-to-var3309 var3605))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r10, r9) 

(declare-const var3584!1 var2616)
(declare-const var1906!1 String)
(declare-const var3605!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mappedByResolver/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2616_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var3309=([java.lang.String], java.lang.Object)}
; {var3547=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var3232=r0, var3022=r4, var774=null_type, var943=r6, var3605=r9, var2616=java.util.Map, var3074=$r1, var3584=$r3, var2834=$r2, var3391=$r5, var3572=$r7, var208=$r8, var1906=$r10, var3309=java.lang.Object}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var3547, r0=var3232, r4=var3022, null_type=var774, r6=var943, r9=var3605, java.util.Map=var2616, $r1=var3074, $r3=var3584, $r2=var2834, $r5=var3391, $r7=var3572, $r8=var208, $r10=var1906, java.lang.Object=var3309}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r4 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	r9 := @parameter2: java.lang.String;	$r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map mappedByResolver>;	if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map mappedByResolver>;	$r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map mappedByResolver>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r10, r9);	return
;block_num 2
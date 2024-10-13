(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3019 0)
(declare-sort var2959 0)
(declare-sort var1457 0)
(declare-sort var2539 0)
(declare-sort var3618 0)
(declare-sort var2930 0)
(declare-sort var3337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1544553118 (var3019) var1457)
(declare-fun var1457_access$000/1694676865 (var1457) var2539)
(declare-fun var2539_get/1088891777 (var2539 var3618) var3618)
(declare-fun cast-from-String-to-var3618 (String) var3618)
(declare-fun cast-from-var3618-to-var2930 (var3618) var2930)
(declare-fun var3337-init () var3337)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3337 String) void)
(declare-const null-var3019 var3019)
(declare-const null-String String)
(declare-const null-var2930 var2930)
(declare-const var3693 var3019) ; Statement: r0 := @this: org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl 
(assert (not (= var3693 null-var3019)))
(declare-const var124 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var124 null-String)))
(define-const var722 var1457 (this$0/1544553118 var3693)) ; Statement: $r1 = r0.<org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl: org.hibernate.jpa.spi.TupleBuilderTransformer this$0> 
(define-const var1695 var2539 (var1457_access$000/1694676865 var722)) ; Statement: $r3 = staticinvoke <org.hibernate.jpa.spi.TupleBuilderTransformer: java.util.Map access$000(org.hibernate.jpa.spi.TupleBuilderTransformer)>($r1) 
(define-const var1292 var3618 (var2539_get/1088891777 var1695 (cast-from-String-to-var3618 var124))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2) 
(define-const var1720 var2930 (cast-from-var3618-to-var2930 var1292)) ; Statement: r5 = (org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleElementImpl) $r4 
 ; Statement: if r5 != null goto $r6 = r0.<org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl: java.lang.Object[] tuple> 
(assert (not (not (= var1720 null-var2930)))) ; Negate: Cond: r5 != null  
(define-const var2779 var3337 var3337-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var3072 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3072)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3072!1 String)
(assert (= var3072!1 ""))
(assert true)
(define-const var2428 String (append/672562846 var3072!1 "Unknown alias [")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown alias [") 
(declare-const var3072!2 String)
(assert (= var3072!2 (str.++ var3072!1 "Unknown alias [")))
(assert true)
(define-const var650 String (append/672562846 var2428 var124)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2428!1 String)
(assert (= var2428!1 (str.++ var2428 var124)))
(assert true)
(define-const var2296 String (append/672562846 var650 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var650!1 String)
(assert (= var650!1 (str.++ var650 "]")))
(assert true)
(define-const var2385 String (toString/-2075883882 var2296)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2779 var2385)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var2779!1 var3337)
(declare-const var2385!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1544553118=([org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl], org.hibernate.jpa.spi.TupleBuilderTransformer), var1457_access$000/1694676865=([org.hibernate.jpa.spi.TupleBuilderTransformer], java.util.Map), var2539_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3618=([java.lang.String], java.lang.Object), cast-from-var3618-to-var2930=([java.lang.Object], org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleElementImpl), var3337-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3019=org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl, var3693=r0, var124=r2, var2959=null_type, var1457=org.hibernate.jpa.spi.TupleBuilderTransformer, var722=$r1, var2539=java.util.Map, var1695=$r3, var3618=java.lang.Object, var1292=$r4, var2930=org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleElementImpl, var1720=r5, var3337=java.lang.IllegalArgumentException, var2779=$r8, var3072=$r9, var2428=$r10, var650=$r11, var2296=$r12, var2385=$r13}
; {org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl=var3019, r0=var3693, r2=var124, null_type=var2959, org.hibernate.jpa.spi.TupleBuilderTransformer=var1457, $r1=var722, java.util.Map=var2539, $r3=var1695, java.lang.Object=var3618, $r4=var1292, org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleElementImpl=var2930, r5=var1720, java.lang.IllegalArgumentException=var3337, $r8=var2779, $r9=var3072, $r10=var2428, $r11=var650, $r12=var2296, $r13=var2385}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl: org.hibernate.jpa.spi.TupleBuilderTransformer this$0>;	$r3 = staticinvoke <org.hibernate.jpa.spi.TupleBuilderTransformer: java.util.Map access$000(org.hibernate.jpa.spi.TupleBuilderTransformer)>($r1);	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	r5 = (org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleElementImpl) $r4;	if r5 != null goto $r6 = r0.<org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl: java.lang.Object[] tuple>;	$r8 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown alias [");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r8
;block_num 2
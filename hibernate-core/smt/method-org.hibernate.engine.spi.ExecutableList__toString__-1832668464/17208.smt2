(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var693 0)
(declare-sort var2383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun executables/1379908400 (var693) var2383)
(declare-fun size/-1863229846 (var2383) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var693 var693)
(declare-const var1492 var693) ; Statement: r1 := @this: org.hibernate.engine.spi.ExecutableList 
(assert (not (= var1492 null-var693)))
(define-const var1709 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1709)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1709!1 String)
(assert (= var1709!1 ""))
(assert true)
(define-const var3282 String (append/672562846 var1709!1 "ExecutableList{size=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ExecutableList{size=") 
(declare-const var1709!2 String)
(assert (= var1709!2 (str.++ var1709!1 "ExecutableList{size=")))
(define-const var200 var2383 (executables/1379908400 var1492)) ; Statement: $r2 = r1.<org.hibernate.engine.spi.ExecutableList: java.util.ArrayList executables> 
(assert true)
(define-const var967 Int (size/-1863229846 var200)) ; Statement: $i0 = virtualinvoke $r2.<java.util.ArrayList: int size()>() 
(assert true)
(define-const var135 String (append/-1001720160 var3282 var967)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3282!1 String)
(assert (str.prefixof var3282 var3282!1))
(assert true)
(define-const var47 String (append/672562846 var135 "}")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var135!1 String)
(assert (= var135!1 (str.++ var135 "}")))
(assert true)
(define-const var1907 String (toString/-2075883882 var47)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), executables/1379908400=([org.hibernate.engine.spi.ExecutableList], java.util.ArrayList), size/-1863229846=([java.util.ArrayList], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var693=org.hibernate.engine.spi.ExecutableList, var1492=r1, var1709=$r0, var3282=$r3, var2383=java.util.ArrayList, var200=$r2, var967=$i0, var135=$r4, var47=$r5, var1907=$r6}
; {org.hibernate.engine.spi.ExecutableList=var693, r1=var1492, $r0=var1709, $r3=var3282, java.util.ArrayList=var2383, $r2=var200, $i0=var967, $r4=var135, $r5=var47, $r6=var1907}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.spi.ExecutableList;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ExecutableList{size=");	$r2 = r1.<org.hibernate.engine.spi.ExecutableList: java.util.ArrayList executables>;	$i0 = virtualinvoke $r2.<java.util.ArrayList: int size()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
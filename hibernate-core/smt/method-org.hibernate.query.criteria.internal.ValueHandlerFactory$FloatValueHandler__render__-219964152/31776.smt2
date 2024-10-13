(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1238 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/1527647016 (Float32) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1238 var1238)
(declare-const null-Float32 Float32)
(declare-const var1686 var1238) ; Statement: r6 := @this: org.hibernate.query.criteria.internal.ValueHandlerFactory$FloatValueHandler 
(assert (not (= var1686 null-var1238)))
(declare-const var1661 Float32) ; Statement: r1 := @parameter0: java.lang.Float 
(assert (not (= var1661 null-Float32)))
(define-const var453 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var453)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var453!1 String)
(assert (= var453!1 ""))
(assert true)
(define-const var1176 String (toString/1527647016 var1661)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Float: java.lang.String toString()>() 
(assert true)
(define-const var3638 String (append/672562846 var453!1 var1176)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var453!2 String)
(assert (= var453!2 (str.++ var453!1 var1176)))
(assert true)
(define-const var3503 String (append/-1166366385 var3638 70)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(70) 
(declare-const var3638!1 String)
(assert (str.prefixof var3638 var3638!1))
(assert true)
(define-const var3008 String (toString/-2075883882 var3503)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/1527647016=([java.lang.Float], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1238=org.hibernate.query.criteria.internal.ValueHandlerFactory$FloatValueHandler, var1686=r6, var1661=r1, var453=$r0, var1176=$r2, var3638=$r3, var3503=$r4, var3008=$r5}
; {org.hibernate.query.criteria.internal.ValueHandlerFactory$FloatValueHandler=var1238, r6=var1686, r1=var1661, $r0=var453, $r2=var1176, $r3=var3638, $r4=var3503, $r5=var3008}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Float: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.query.criteria.internal.ValueHandlerFactory$FloatValueHandler;	r1 := @parameter0: java.lang.Float;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Float: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(70);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
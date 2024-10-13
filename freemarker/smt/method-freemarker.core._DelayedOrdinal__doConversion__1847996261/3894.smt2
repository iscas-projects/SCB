(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2289 0)
(declare-sort var398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var398) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2289 var2289)
(declare-const null-var398 var398)
(declare-const var2001 var2289) ; Statement: r22 := @this: freemarker.core._DelayedOrdinal 
(assert (not (= var2001 null-var2289)))
(declare-const var3358 var398) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3358 null-var398)))
(define-const var2273 Bool false) ; Statement: $z0 = r0 instanceof java.lang.Number 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var2273 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2869 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2869)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2869!1 String)
(assert (= var2869!1 ""))
(assert true)
(define-const var222 String (append/672562846 var2869!1 "")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var2869!2 String)
(assert (= var2869!2 (str.++ var2869!1 "")))
(assert true)
(define-const var1923 String (append/-1031950772 var222 var3358)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var222!1 String)
(assert (str.prefixof var222 var222!1))
(assert true)
(define-const var346 String (toString/-2075883882 var1923)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2289=freemarker.core._DelayedOrdinal, var2001=r22, var398=java.lang.Object, var3358=r0, var2273=$z0, var2869=$r1, var222=$r2, var1923=$r3, var346=$r4}
; {freemarker.core._DelayedOrdinal=var2289, r22=var2001, java.lang.Object=var398, r0=var3358, $z0=var2273, $r1=var2869, $r2=var222, $r3=var1923, $r4=var346}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r22 := @this: freemarker.core._DelayedOrdinal;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof java.lang.Number;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2
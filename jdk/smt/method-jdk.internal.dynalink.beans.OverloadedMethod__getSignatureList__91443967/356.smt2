(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var1775_iterator/-912451715 (var1775) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1775 var1775)
(declare-const var253 var1775) ; Statement: r2 := @parameter0: java.util.List 
(assert (not (= var253 null-var1775)))
(define-const var1264 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1264)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1264!1 String)
(assert (= var1264!1 ""))
(assert true)
(define-const var2211 String (append/-1166366385 var1264!1 91)) ; Statement: r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1264!2 String)
(assert (str.prefixof var1264!1 var1264!2))
(define-const var2017 Iterator (var1775_iterator/-912451715 var253)) ; Statement: r3 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>() 
(define-const var19 Bool (Iterator_hasNext/-1669924200 var2017)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (= (ite var19 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1544 String (append/-1166366385 var2211 93)) ; Statement: $r4 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2211!1 String)
(assert (str.prefixof var2211 var2211!1))
(assert true)
(define-const var1784 String (toString/-2075883882 var1544)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var1775_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1775=java.util.List, var253=r2, var1264=$r0, var2211=r1, var2017=r3, var19=$z0, var1544=$r4, var1784=$r5}
; {java.util.List=var1775, r2=var253, $r0=var1264, r1=var2211, r3=var2017, $z0=var19, $r4=var1544, $r5=var1784}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.util.List;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	r3 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2
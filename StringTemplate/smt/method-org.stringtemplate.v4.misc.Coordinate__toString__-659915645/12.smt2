(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var717 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun line/2102079267 (var717) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun charPosition/2102079267 (var717) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var717 var717)
(declare-const var3159 var717) ; Statement: r1 := @this: org.stringtemplate.v4.misc.Coordinate 
(assert (not (= var3159 null-var717)))
(define-const var437 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var437)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var437!1 String)
(assert (= var437!1 ""))
(define-const var73 Int (line/2102079267 var3159)) ; Statement: $i0 = r1.<org.stringtemplate.v4.misc.Coordinate: int line> 
(assert true)
(define-const var1972 String (append/-1001720160 var437!1 var73)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var437!2 String)
(assert (str.prefixof var437!1 var437!2))
(assert true)
(define-const var528 String (append/672562846 var1972 ":")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1972!1 String)
(assert (= var1972!1 (str.++ var1972 ":")))
(define-const var570 Int (charPosition/2102079267 var3159)) ; Statement: $i1 = r1.<org.stringtemplate.v4.misc.Coordinate: int charPosition> 
(assert true)
(define-const var3605 String (append/-1001720160 var528 var570)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var528!1 String)
(assert (str.prefixof var528 var528!1))
(assert true)
(define-const var2642 String (toString/-2075883882 var3605)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), line/2102079267=([org.stringtemplate.v4.misc.Coordinate], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), charPosition/2102079267=([org.stringtemplate.v4.misc.Coordinate], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var717=org.stringtemplate.v4.misc.Coordinate, var3159=r1, var437=$r0, var73=$i0, var1972=$r2, var528=$r3, var570=$i1, var3605=$r4, var2642=$r5}
; {org.stringtemplate.v4.misc.Coordinate=var717, r1=var3159, $r0=var437, $i0=var73, $r2=var1972, $r3=var528, $i1=var570, $r4=var3605, $r5=var2642}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.misc.Coordinate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = r1.<org.stringtemplate.v4.misc.Coordinate: int line>;	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i1 = r1.<org.stringtemplate.v4.misc.Coordinate: int charPosition>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
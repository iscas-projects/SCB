(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1755 0)
(declare-sort var190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun toString/-1131330591 (var190) String)
(declare-fun cast-from-var1755-to-var190 (var1755) var190)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1755 var1755)
(declare-const var613 var1755) ; Statement: r1 := @this: org.antlr.v4.runtime.atn.NotSetTransition 
(assert (not (= var613 null-var1755)))
(define-const var1488 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1488)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1488!1 String)
(assert (= var1488!1 ""))
(assert true)
(define-const var571 String (append/-1166366385 var1488!1 126)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(126) 
(declare-const var1488!2 String)
(assert (str.prefixof var1488!1 var1488!2))
(assert true)
(define-const var1633 String (toString/-1131330591 (cast-from-var1755-to-var190 var613))) ; Statement: $r2 = specialinvoke r1.<org.antlr.v4.runtime.atn.SetTransition: java.lang.String toString()>() 
(assert true)
(define-const var3665 String (append/672562846 var571 var1633)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var571!1 String)
(assert (= var571!1 (str.++ var571 var1633)))
(assert true)
(define-const var2503 String (toString/-2075883882 var3665)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-1131330591=([org.antlr.v4.runtime.atn.SetTransition], java.lang.String), cast-from-var1755-to-var190=([org.antlr.v4.runtime.atn.NotSetTransition], org.antlr.v4.runtime.atn.SetTransition), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1755=org.antlr.v4.runtime.atn.NotSetTransition, var613=r1, var1488=$r0, var571=$r3, var190=org.antlr.v4.runtime.atn.SetTransition, var1633=$r2, var3665=$r4, var2503=$r5}
; {org.antlr.v4.runtime.atn.NotSetTransition=var1755, r1=var613, $r0=var1488, $r3=var571, org.antlr.v4.runtime.atn.SetTransition=var190, $r2=var1633, $r4=var3665, $r5=var2503}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<org.antlr.v4.runtime.atn.SetTransition: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.atn.NotSetTransition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(126);	$r2 = specialinvoke r1.<org.antlr.v4.runtime.atn.SetTransition: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
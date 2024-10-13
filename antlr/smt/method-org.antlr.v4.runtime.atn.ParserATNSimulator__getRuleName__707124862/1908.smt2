(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var499 0)
(declare-sort var609 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parser/145254134 (var499) var609)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var499 var499)
(declare-const null-Int Int)
(declare-const null-var609 var609)
(declare-const var1148 var499) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1148 null-var499)))
(declare-const var3751 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3751 null-Int)))
(define-const var2934 var609 (parser/145254134 var1148)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var2934 null-var609)) ; Cond: $r1 == null 
(define-const var3055 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3055)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3055!1 String)
(assert (= var3055!1 ""))
(assert true)
(define-const var3812 String (append/672562846 var3055!1 "<rule ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rule ") 
(declare-const var3055!2 String)
(assert (= var3055!2 (str.++ var3055!1 "<rule ")))
(assert true)
(define-const var1275 String (append/-1001720160 var3812 var3751)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3812!1 String)
(assert (str.prefixof var3812 var3812!1))
(assert true)
(define-const var2725 String (append/672562846 var1275 ">")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1275!1 String)
(assert (= var1275!1 (str.++ var1275 ">")))
(assert true)
(define-const var3561 String (toString/-2075883882 var2725)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var499=org.antlr.v4.runtime.atn.ParserATNSimulator, var1148=r0, var3751=i0, var609=org.antlr.v4.runtime.Parser, var2934=$r1, var3055=$r2, var3812=$r3, var1275=$r4, var2725=$r5, var3561=$r6}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var499, r0=var1148, i0=var3751, org.antlr.v4.runtime.Parser=var609, $r1=var2934, $r2=var3055, $r3=var3812, $r4=var1275, $r5=var2725, $r6=var3561}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	i0 := @parameter0: int;	$r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rule ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2
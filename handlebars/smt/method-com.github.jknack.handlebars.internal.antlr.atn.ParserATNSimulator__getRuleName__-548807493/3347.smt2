(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var200 0)
(declare-sort var385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parser/310440123 (var200) var385)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var200 var200)
(declare-const null-Int Int)
(declare-const null-var385 var385)
(declare-const var523 var200) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var523 null-var200)))
(declare-const var1113 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1113 null-Int)))
(define-const var1659 var385 (parser/310440123 var523)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var1659 null-var385)) ; Cond: $r1 == null 
(define-const var1483 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1483)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1483!1 String)
(assert (= var1483!1 ""))
(assert true)
(define-const var1206 String (append/672562846 var1483!1 "<rule ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rule ") 
(declare-const var1483!2 String)
(assert (= var1483!2 (str.++ var1483!1 "<rule ")))
(assert true)
(define-const var1998 String (append/-1001720160 var1206 var1113)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1206!1 String)
(assert (str.prefixof var1206 var1206!1))
(assert true)
(define-const var3318 String (append/672562846 var1998 ">")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1998!1 String)
(assert (= var1998!1 (str.++ var1998 ">")))
(assert true)
(define-const var1024 String (toString/-2075883882 var3318)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var200=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var523=r0, var1113=i0, var385=com.github.jknack.handlebars.internal.antlr.Parser, var1659=$r1, var1483=$r2, var1206=$r3, var1998=$r4, var3318=$r5, var1024=$r6}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var200, r0=var523, i0=var1113, com.github.jknack.handlebars.internal.antlr.Parser=var385, $r1=var1659, $r2=var1483, $r3=var1206, $r4=var1998, $r5=var3318, $r6=var1024}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	i0 := @parameter0: int;	$r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rule ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var477 0)
(declare-sort var1456 0)
(declare-sort var3509 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1456_on/1025003129 (String) var1456)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun appendTo/97243816 (var1456 String var3509) String)
(declare-fun cast-from-var477-to-var3509 (var477) var3509)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var477 var477)
(declare-const var237 var477) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$5 
(assert (not (= var237 null-var477)))
(define-const var78 var1456 (var1456_on/1025003129 ", ")) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner on(java.lang.String)>(", ") 
(define-const var1718 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1718)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1718!1 String)
(assert (= var1718!1 ""))
(assert true)
(define-const var3863 String (append/-1166366385 var1718!1 91)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1718!2 String)
(assert (str.prefixof var1718!1 var1718!2))
(assert true)
(define-const var2966 String (appendTo/97243816 var78 var3863 (cast-from-var477-to-var3509 var237))) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.StringBuilder appendTo(java.lang.StringBuilder,java.lang.Iterable)>($r2, r1) 
(assert true)
(define-const var3980 String (append/-1166366385 var2966 93)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2966!1 String)
(assert (str.prefixof var2966 var2966!1))
(assert true)
(define-const var2421 String (toString/-2075883882 var3980)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1456_on/1025003129=([java.lang.String], com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), appendTo/97243816=([com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, java.lang.StringBuilder, java.lang.Iterable], java.lang.StringBuilder), cast-from-var477-to-var3509=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$5], java.lang.Iterable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var477=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$5, var237=r1, var1456=com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, var78=$r3, var1718=$r0, var3863=$r2, var3509=java.lang.Iterable, var2966=$r4, var3980=$r5, var2421=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$5=var477, r1=var237, com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner=var1456, $r3=var78, $r0=var1718, $r2=var3863, java.lang.Iterable=var3509, $r4=var2966, $r5=var3980, $r6=var2421}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$5;	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner on(java.lang.String)>(", ");	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.StringBuilder appendTo(java.lang.StringBuilder,java.lang.Iterable)>($r2, r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
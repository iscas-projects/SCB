(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var414 0)
(declare-sort var2576 0)
(declare-sort var160 0)
(declare-sort var1480 0)
(declare-sort var2823 0)
(declare-sort var2716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1478545790 (var160) void)
(declare-fun cast-from-var414-to-var160 (var414) var160)
(declare-fun var1480_checkNotNull/1446102589 (var2823) var2823)
(declare-fun cast-from-String-to-var2823 (String) var2823)
(declare-fun matches/-643015890 (String String) Bool)
(declare-fun var2716-init () var2716)
(declare-fun <init>/875830710 (var2716 String) void)
(declare-const null-var414 var414)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2769 var414) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper 
(assert (not (= var2769 null-var414)))
(declare-const var834 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var834 null-String)))
(declare-const var2173 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2173 null-Bool)))
(assert true)
;(assert (<init>/1478545790 (cast-from-var414-to-var160 var2769))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: void <init>()>() 

(declare-const var2769!1 var414)
;(assert (var1480_checkNotNull/1446102589 (cast-from-String-to-var2823 var834))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r7) 

(declare-const var834!1 String)
(assert true)
(define-const var2544 Bool (matches/-643015890 var834!1 ".*[0-9A-Za-z].*")) ; Statement: $z0 = virtualinvoke r7.<java.lang.String: boolean matches(java.lang.String)>(".*[0-9A-Za-z].*") 
(assert (= (matches/-643015890 var834!1 ".*[0-9A-Za-z].*") (str.in_re var834!1 (re.++ (re.* re.allchar) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")) (re.* re.allchar)))))
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var2544 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1589 var2716 var2716-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1589 "Alphanumeric characters are always \u0027safe\u0027 and should not be explicitly specified")) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Alphanumeric characters are always \'safe\' and should not be explicitly specified") 

(declare-const var1589!1 var2716)
(declare-const var1574 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1478545790=([com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper], void), cast-from-var414-to-var160=([com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper], com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper), var1480_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var2823=([java.lang.String], java.lang.Object), matches/-643015890=([java.lang.String, java.lang.String], boolean), var2716-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var414=com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper, var2769=r0, var834=r7, var2576=null_type, var2173=z1, var160=com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper, var1480=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2823=java.lang.Object, var2544=$z0, var2716=java.lang.IllegalArgumentException, var1589=$r6, var1574="Alphanumeric characters are always \'safe\' and should not be explicitly specified"}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper=var414, r0=var2769, r7=var834, null_type=var2576, z1=var2173, com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper=var160, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1480, java.lang.Object=var2823, $z0=var2544, java.lang.IllegalArgumentException=var2716, $r6=var1589, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"=var1574}
;seq <java.lang.String: boolean matches(java.lang.String)>
;cnt {"<java.lang.String: boolean matches(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper;	r7 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: void <init>()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r7);	$z0 = virtualinvoke r7.<java.lang.String: boolean matches(java.lang.String)>(".*[0-9A-Za-z].*");	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r6 = new java.lang.IllegalArgumentException;	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Alphanumeric characters are always \'safe\' and should not be explicitly specified");	throw $r6
;block_num 2
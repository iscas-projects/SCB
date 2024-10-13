(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3188 0)
(declare-sort var3771 0)
(declare-sort var772 0)
(declare-sort var1730 0)
(declare-sort var1776 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-218856654 (var772) void)
(declare-fun cast-from-var3188-to-var772 (var3188) var772)
(declare-fun var1730_checkState/1431124798 (Bool) void)
(declare-fun var1730_checkArgument/-972017905 (Bool var1776) void)
(declare-fun cast-from-String-to-var1776 (String) var1776)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun propertyName/-348918598 (var3188) String)
(declare-fun propertyValue/-348918598 (var3188) String)
(declare-fun negated/-348918598 (var3188) Bool)
(declare-const null-var3188 var3188)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1257 var3188) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape 
(assert (not (= var1257 null-var3188)))
(declare-const var1335 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1335 null-String)))
(declare-const var3526 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3526 null-String)))
(declare-const var3128 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3128 null-Bool)))
(assert true)
;(assert (<init>/-218856654 (cast-from-var3188-to-var772 var1257))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom: void <init>()>() 

(declare-const var1257!1 var3188)
 ; Statement: if r1 == null goto $z3 = 0 
(assert (= var3526 null-String)) ; Cond: r1 == null 
(define-const var2003 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
;(assert (var1730_checkState/1431124798 var2003)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3) 

(declare-const var2003!1 Bool)
 ; Statement: if r2 == null goto $z4 = 1 
(assert (= var1335 null-String)) ; Cond: r2 == null 
(define-const var2455 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty")] 
(assert true) ; Non Conditional
;(assert (var1730_checkArgument/-972017905 var2455 (cast-from-String-to-var1776 "if \u0027=\u0027 is present in a unicode property escape, the name cannot be empty"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty") 

(declare-const var2455!1 Bool)
(declare-const var3032 String)
(assert true)
(define-const var3273 Bool (isEmpty/-1285796103 var3526)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z5 = 0 
(assert (not (not (= (ite var3273 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3469 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z5, "unicode property escape value cannot be empty")] 
(assert true) ; Non Conditional
;(assert (var1730_checkArgument/-972017905 var3469 (cast-from-String-to-var1776 "unicode property escape value cannot be empty"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z5, "unicode property escape value cannot be empty") 

(declare-const var3469!1 Bool)
(declare-const var3347 String)
(declare-const var1257!2 var3188)
(assert (not (= var1257!2 null-var3188)))
(assert (= (propertyName/-348918598 var1257!2) var1335)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyName> = r2 
(declare-const var1257!3 var3188)
(assert (not (= var1257!3 null-var3188)))
(assert (= (propertyValue/-348918598 var1257!3) var3526)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue> = r1 
(declare-const var1257!4 var3188)
(assert (not (= var1257!4 null-var3188)))
(assert (= (negated/-348918598 var1257!4) var3128)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: boolean negated> = z1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-218856654=([com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom], void), cast-from-var3188-to-var772=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom), var1730_checkState/1431124798=([boolean], void), var1730_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-String-to-var1776=([java.lang.String], java.lang.Object), isEmpty/-1285796103=([java.lang.String], boolean), propertyName/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], java.lang.String), propertyValue/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], java.lang.String), negated/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], boolean)}
; {var3188=com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape, var1257=r0, var1335=r2, var3771=null_type, var3526=r1, var3128=z1, var772=com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom, var2003=$z3, var1730=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2455=$z4, var1776=java.lang.Object, var3032="if \'=\' is present in a unicode property escape, the name cannot be empty", var3273=$z0, var3469=$z5, var3347="unicode property escape value cannot be empty"}
; {com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape=var3188, r0=var1257, r2=var1335, null_type=var3771, r1=var3526, z1=var3128, com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom=var772, $z3=var2003, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1730, $z4=var2455, java.lang.Object=var1776, "if \'=\' is present in a unicode property escape, the name cannot be empty"=var3032, $z0=var3273, $z5=var3469, "unicode property escape value cannot be empty"=var3347}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape;	r2 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	specialinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom: void <init>()>();	if r1 == null goto $z3 = 0;	$z3 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3);	if r2 == null goto $z4 = 1;	$z4 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty");	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z5 = 0;	$z5 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z5, "unicode property escape value cannot be empty")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z5, "unicode property escape value cannot be empty");	r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyName> = r2;	r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue> = r1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: boolean negated> = z1;	return
;block_num 7
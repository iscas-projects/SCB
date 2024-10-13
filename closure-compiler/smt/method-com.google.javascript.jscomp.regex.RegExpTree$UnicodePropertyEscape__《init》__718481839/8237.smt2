(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3736 0)
(declare-sort var3946 0)
(declare-sort var1318 0)
(declare-sort var767 0)
(declare-sort var2561 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-218856654 (var1318) void)
(declare-fun cast-from-var3736-to-var1318 (var3736) var1318)
(declare-fun var767_checkState/1431124798 (Bool) void)
(declare-fun var767_checkArgument/-972017905 (Bool var2561) void)
(declare-fun cast-from-String-to-var2561 (String) var2561)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun propertyName/-348918598 (var3736) String)
(declare-fun propertyValue/-348918598 (var3736) String)
(declare-fun negated/-348918598 (var3736) Bool)
(declare-const null-var3736 var3736)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var496 var3736) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape 
(assert (not (= var496 null-var3736)))
(declare-const var2084 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2084 null-String)))
(declare-const var2220 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2220 null-String)))
(declare-const var2452 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2452 null-Bool)))
(assert true)
;(assert (<init>/-218856654 (cast-from-var3736-to-var1318 var496))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom: void <init>()>() 

(declare-const var496!1 var3736)
 ; Statement: if r1 == null goto $z3 = 0 
(assert (= var2220 null-String)) ; Cond: r1 == null 
(define-const var2919 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
;(assert (var767_checkState/1431124798 var2919)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3) 

(declare-const var2919!1 Bool)
 ; Statement: if r2 == null goto $z4 = 1 
(assert (= var2084 null-String)) ; Cond: r2 == null 
(define-const var2705 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty")] 
(assert true) ; Non Conditional
;(assert (var767_checkArgument/-972017905 var2705 (cast-from-String-to-var2561 "if \u0027=\u0027 is present in a unicode property escape, the name cannot be empty"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty") 

(declare-const var2705!1 Bool)
(declare-const var3328 String)
(assert true)
(define-const var3433 Bool (isEmpty/-1285796103 var2220)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z5 = 0 
(assert (not (= (ite var3433 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3858 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var767_checkArgument/-972017905 var3858 (cast-from-String-to-var2561 "unicode property escape value cannot be empty"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z5, "unicode property escape value cannot be empty") 

(declare-const var3858!1 Bool)
(declare-const var1492 String)
(declare-const var496!2 var3736)
(assert (not (= var496!2 null-var3736)))
(assert (= (propertyName/-348918598 var496!2) var2084)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyName> = r2 
(declare-const var496!3 var3736)
(assert (not (= var496!3 null-var3736)))
(assert (= (propertyValue/-348918598 var496!3) var2220)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue> = r1 
(declare-const var496!4 var3736)
(assert (not (= var496!4 null-var3736)))
(assert (= (negated/-348918598 var496!4) var2452)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: boolean negated> = z1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-218856654=([com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom], void), cast-from-var3736-to-var1318=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom), var767_checkState/1431124798=([boolean], void), var767_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-String-to-var2561=([java.lang.String], java.lang.Object), isEmpty/-1285796103=([java.lang.String], boolean), propertyName/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], java.lang.String), propertyValue/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], java.lang.String), negated/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], boolean)}
; {var3736=com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape, var496=r0, var2084=r2, var3946=null_type, var2220=r1, var2452=z1, var1318=com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom, var2919=$z3, var767=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2705=$z4, var2561=java.lang.Object, var3328="if \'=\' is present in a unicode property escape, the name cannot be empty", var3433=$z0, var3858=$z5, var1492="unicode property escape value cannot be empty"}
; {com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape=var3736, r0=var496, r2=var2084, null_type=var3946, r1=var2220, z1=var2452, com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom=var1318, $z3=var2919, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var767, $z4=var2705, java.lang.Object=var2561, "if \'=\' is present in a unicode property escape, the name cannot be empty"=var3328, $z0=var3433, $z5=var3858, "unicode property escape value cannot be empty"=var1492}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape;	r2 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	specialinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom: void <init>()>();	if r1 == null goto $z3 = 0;	$z3 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3);	if r2 == null goto $z4 = 1;	$z4 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty");	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z5 = 0;	$z5 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z5, "unicode property escape value cannot be empty");	r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyName> = r2;	r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue> = r1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: boolean negated> = z1;	return
;block_num 7
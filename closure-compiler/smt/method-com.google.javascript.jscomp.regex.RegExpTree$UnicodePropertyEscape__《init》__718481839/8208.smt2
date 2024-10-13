(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var737 0)
(declare-sort var3327 0)
(declare-sort var1353 0)
(declare-sort var1071 0)
(declare-sort var1059 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-218856654 (var1353) void)
(declare-fun cast-from-var737-to-var1353 (var737) var1353)
(declare-fun var1071_checkState/1431124798 (Bool) void)
(declare-fun var1071_checkArgument/-972017905 (Bool var1059) void)
(declare-fun cast-from-String-to-var1059 (String) var1059)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun propertyName/-348918598 (var737) String)
(declare-fun propertyValue/-348918598 (var737) String)
(declare-fun negated/-348918598 (var737) Bool)
(declare-const null-var737 var737)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2675 var737) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape 
(assert (not (= var2675 null-var737)))
(declare-const var671 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var671 null-String)))
(declare-const var2461 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2461 null-String)))
(declare-const var2858 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2858 null-Bool)))
(assert true)
;(assert (<init>/-218856654 (cast-from-var737-to-var1353 var2675))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom: void <init>()>() 

(declare-const var2675!1 var737)
 ; Statement: if r1 == null goto $z3 = 0 
(assert (not (= var2461 null-String))) ; Negate: Cond: r1 == null  
(define-const var3828 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3)] 
(assert true) ; Non Conditional
;(assert (var1071_checkState/1431124798 var3828)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3) 

(declare-const var3828!1 Bool)
 ; Statement: if r2 == null goto $z4 = 1 
(assert (= var671 null-String)) ; Cond: r2 == null 
(define-const var3966 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty")] 
(assert true) ; Non Conditional
;(assert (var1071_checkArgument/-972017905 var3966 (cast-from-String-to-var1059 "if \u0027=\u0027 is present in a unicode property escape, the name cannot be empty"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty") 

(declare-const var3966!1 Bool)
(declare-const var1170 String)
(assert true)
(define-const var477 Bool (isEmpty/-1285796103 var2461)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z5 = 0 
(assert (not (= (ite var477 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3355 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var1071_checkArgument/-972017905 var3355 (cast-from-String-to-var1059 "unicode property escape value cannot be empty"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z5, "unicode property escape value cannot be empty") 

(declare-const var3355!1 Bool)
(declare-const var683 String)
(declare-const var2675!2 var737)
(assert (not (= var2675!2 null-var737)))
(assert (= (propertyName/-348918598 var2675!2) var671)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyName> = r2 
(declare-const var2675!3 var737)
(assert (not (= var2675!3 null-var737)))
(assert (= (propertyValue/-348918598 var2675!3) var2461)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue> = r1 
(declare-const var2675!4 var737)
(assert (not (= var2675!4 null-var737)))
(assert (= (negated/-348918598 var2675!4) var2858)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: boolean negated> = z1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-218856654=([com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom], void), cast-from-var737-to-var1353=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom), var1071_checkState/1431124798=([boolean], void), var1071_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-String-to-var1059=([java.lang.String], java.lang.Object), isEmpty/-1285796103=([java.lang.String], boolean), propertyName/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], java.lang.String), propertyValue/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], java.lang.String), negated/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], boolean)}
; {var737=com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape, var2675=r0, var671=r2, var3327=null_type, var2461=r1, var2858=z1, var1353=com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom, var3828=$z3, var1071=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3966=$z4, var1059=java.lang.Object, var1170="if \'=\' is present in a unicode property escape, the name cannot be empty", var477=$z0, var3355=$z5, var683="unicode property escape value cannot be empty"}
; {com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape=var737, r0=var2675, r2=var671, null_type=var3327, r1=var2461, z1=var2858, com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom=var1353, $z3=var3828, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1071, $z4=var3966, java.lang.Object=var1059, "if \'=\' is present in a unicode property escape, the name cannot be empty"=var1170, $z0=var477, $z5=var3355, "unicode property escape value cannot be empty"=var683}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape;	r2 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	specialinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom: void <init>()>();	if r1 == null goto $z3 = 0;	$z3 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3);	if r2 == null goto $z4 = 1;	$z4 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty");	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z5 = 0;	$z5 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z5, "unicode property escape value cannot be empty");	r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyName> = r2;	r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue> = r1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: boolean negated> = z1;	return
;block_num 7
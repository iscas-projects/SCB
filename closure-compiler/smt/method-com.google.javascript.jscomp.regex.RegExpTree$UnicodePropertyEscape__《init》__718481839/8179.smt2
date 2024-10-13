(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2305 0)
(declare-sort var1278 0)
(declare-sort var3156 0)
(declare-sort var892 0)
(declare-sort var3729 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-218856654 (var3156) void)
(declare-fun cast-from-var2305-to-var3156 (var2305) var3156)
(declare-fun var892_checkState/1431124798 (Bool) void)
(declare-fun var892_checkArgument/-972017905 (Bool var3729) void)
(declare-fun cast-from-String-to-var3729 (String) var3729)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun propertyName/-348918598 (var2305) String)
(declare-fun propertyValue/-348918598 (var2305) String)
(declare-fun negated/-348918598 (var2305) Bool)
(declare-const null-var2305 var2305)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1675 var2305) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape 
(assert (not (= var1675 null-var2305)))
(declare-const var3064 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3064 null-String)))
(declare-const var621 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var621 null-String)))
(declare-const var2769 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2769 null-Bool)))
(assert true)
;(assert (<init>/-218856654 (cast-from-var2305-to-var3156 var1675))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom: void <init>()>() 

(declare-const var1675!1 var2305)
 ; Statement: if r1 == null goto $z3 = 0 
(assert (not (= var621 null-String))) ; Negate: Cond: r1 == null  
(define-const var2247 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3)] 
(assert true) ; Non Conditional
;(assert (var892_checkState/1431124798 var2247)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3) 

(declare-const var2247!1 Bool)
 ; Statement: if r2 == null goto $z4 = 1 
(assert (= var3064 null-String)) ; Cond: r2 == null 
(define-const var409 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty")] 
(assert true) ; Non Conditional
;(assert (var892_checkArgument/-972017905 var409 (cast-from-String-to-var3729 "if \u0027=\u0027 is present in a unicode property escape, the name cannot be empty"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty") 

(declare-const var409!1 Bool)
(declare-const var1074 String)
(assert true)
(define-const var2496 Bool (isEmpty/-1285796103 var621)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z5 = 0 
(assert (not (not (= (ite var2496 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2501 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z5, "unicode property escape value cannot be empty")] 
(assert true) ; Non Conditional
;(assert (var892_checkArgument/-972017905 var2501 (cast-from-String-to-var3729 "unicode property escape value cannot be empty"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z5, "unicode property escape value cannot be empty") 

(declare-const var2501!1 Bool)
(declare-const var2941 String)
(declare-const var1675!2 var2305)
(assert (not (= var1675!2 null-var2305)))
(assert (= (propertyName/-348918598 var1675!2) var3064)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyName> = r2 
(declare-const var1675!3 var2305)
(assert (not (= var1675!3 null-var2305)))
(assert (= (propertyValue/-348918598 var1675!3) var621)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue> = r1 
(declare-const var1675!4 var2305)
(assert (not (= var1675!4 null-var2305)))
(assert (= (negated/-348918598 var1675!4) var2769)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: boolean negated> = z1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-218856654=([com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom], void), cast-from-var2305-to-var3156=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom), var892_checkState/1431124798=([boolean], void), var892_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-String-to-var3729=([java.lang.String], java.lang.Object), isEmpty/-1285796103=([java.lang.String], boolean), propertyName/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], java.lang.String), propertyValue/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], java.lang.String), negated/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], boolean)}
; {var2305=com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape, var1675=r0, var3064=r2, var1278=null_type, var621=r1, var2769=z1, var3156=com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom, var2247=$z3, var892=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var409=$z4, var3729=java.lang.Object, var1074="if \'=\' is present in a unicode property escape, the name cannot be empty", var2496=$z0, var2501=$z5, var2941="unicode property escape value cannot be empty"}
; {com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape=var2305, r0=var1675, r2=var3064, null_type=var1278, r1=var621, z1=var2769, com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom=var3156, $z3=var2247, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var892, $z4=var409, java.lang.Object=var3729, "if \'=\' is present in a unicode property escape, the name cannot be empty"=var1074, $z0=var2496, $z5=var2501, "unicode property escape value cannot be empty"=var2941}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape;	r2 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	specialinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$RegExpTreeAtom: void <init>()>();	if r1 == null goto $z3 = 0;	$z3 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3);	if r2 == null goto $z4 = 1;	$z4 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z4, "if \'=\' is present in a unicode property escape, the name cannot be empty");	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z5 = 0;	$z5 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z5, "unicode property escape value cannot be empty")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z5, "unicode property escape value cannot be empty");	r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyName> = r2;	r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue> = r1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: boolean negated> = z1;	return
;block_num 7
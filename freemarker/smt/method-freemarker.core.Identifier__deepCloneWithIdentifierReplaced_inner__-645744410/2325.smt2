(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1221 0)
(declare-sort var2432 0)
(declare-sort var3078 0)
(declare-sort var104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1019562544 (var1221) String)
(declare-fun var1221-init () var1221)
(declare-fun <init>/-1513497258 (var1221 String) void)
(declare-const null-var1221 var1221)
(declare-const null-String String)
(declare-const null-var3078 var3078)
(declare-const null-var104 var104)
(declare-const var2446 var1221) ; Statement: r0 := @this: freemarker.core.Identifier 
(assert (not (= var2446 null-var1221)))
(declare-const var3331 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3331 null-String)))
(declare-const var1394 var3078) ; Statement: r6 := @parameter1: freemarker.core.Expression 
(assert (not (= var1394 null-var3078)))
(declare-const var106 var104) ; Statement: r5 := @parameter2: freemarker.core.Expression$ReplacemenetState 
(assert (not (= var106 null-var104)))
(define-const var2644 String (name/1019562544 var2446)) ; Statement: $r2 = r0.<freemarker.core.Identifier: java.lang.String name> 
(assert true)
(define-const var2259 Bool (= var2644 var3331)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = new freemarker.core.Identifier 
(assert (= (ite var2259 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1268 var1221 var1221-init) ; Statement: $r3 = new freemarker.core.Identifier 
(define-const var1076 String (name/1019562544 var2446)) ; Statement: $r4 = r0.<freemarker.core.Identifier: java.lang.String name> 
(assert true)
;(assert (<init>/-1513497258 var1268 var1076)) ; Statement: specialinvoke $r3.<freemarker.core.Identifier: void <init>(java.lang.String)>($r4) 

(declare-const var1268!1 var1221)
(declare-const var1076!1 String)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1019562544=([freemarker.core.Identifier], java.lang.String), var1221-init=([], freemarker.core.Identifier), <init>/-1513497258=([freemarker.core.Identifier, java.lang.String], void)}
; {var1221=freemarker.core.Identifier, var2446=r0, var3331=r1, var2432=null_type, var3078=freemarker.core.Expression, var1394=r6, var104=freemarker.core.Expression$ReplacemenetState, var106=r5, var2644=$r2, var2259=$z0, var1268=$r3, var1076=$r4}
; {freemarker.core.Identifier=var1221, r0=var2446, r1=var3331, null_type=var2432, freemarker.core.Expression=var3078, r6=var1394, freemarker.core.Expression$ReplacemenetState=var104, r5=var106, $r2=var2644, $z0=var2259, $r3=var1268, $r4=var1076}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: freemarker.core.Identifier;	r1 := @parameter0: java.lang.String;	r6 := @parameter1: freemarker.core.Expression;	r5 := @parameter2: freemarker.core.Expression$ReplacemenetState;	$r2 = r0.<freemarker.core.Identifier: java.lang.String name>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = new freemarker.core.Identifier;	$r3 = new freemarker.core.Identifier;	$r4 = r0.<freemarker.core.Identifier: java.lang.String name>;	specialinvoke $r3.<freemarker.core.Identifier: void <init>(java.lang.String)>($r4);	return $r3
;block_num 2
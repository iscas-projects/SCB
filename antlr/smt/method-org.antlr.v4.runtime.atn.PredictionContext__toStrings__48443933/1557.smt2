(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3465 0)
(declare-sort var3326 0)
(declare-sort var2069 0)
(declare-sort var1178 0)
(declare-sort var2278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2069-init () var2069)
(declare-fun <init>/-325640736 (var2069) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isEmpty/1702795238 (var3465) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1178_add/328494887 (var1178 var2278) Bool)
(declare-fun cast-from-var2069-to-var1178 (var2069) var1178)
(declare-fun cast-from-String-to-var2278 (String) var2278)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var1178_toArray/-775711681 (var1178 (Array Int var2278)) (Array Int var2278))
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2278__ ((Array Int String)) (Array Int var2278))
(declare-fun cast-from-__Array__Int__var2278__-to-__Array__Int__String__ ((Array Int var2278)) (Array Int String))
(declare-const null-var3465 var3465)
(declare-const null-var3326 var3326)
(declare-const null-Int Int)
(declare-const var1062 var3465) ; Statement: r1 := @this: org.antlr.v4.runtime.atn.PredictionContext 
(assert (not (= var1062 null-var3465)))
(declare-const var1497 var3326) ; Statement: r8 := @parameter0: org.antlr.v4.runtime.Recognizer 
(assert (not (= var1497 null-var3326)))
(declare-const var1252 var3465) ; Statement: r7 := @parameter1: org.antlr.v4.runtime.atn.PredictionContext 
(assert (not (= var1252 null-var3465)))
(declare-const var3180 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3180 null-Int)))
(define-const var2543 var2069 var2069-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2543)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var2543!1 var2069)
(define-const var2952 Int 0) ; Statement: i14 = 0 
(assert true) ; Non Conditional
(define-const var3736 Int 0) ; Statement: i15 = 0 
(define-const var3194 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(define-const var3560 var3465 var1062) ; Statement: r15 = r1 
(define-const var3073 Int var3180) ; Statement: i16 = i0 
(define-const var3332 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3332)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3332!1 String)
(assert (= var3332!1 ""))
(assert true)
;(assert (append/672562846 var3332!1 "[")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3332!2 String)
(assert (= var3332!2 (str.++ var3332!1 "[")))
(assert true) ; Non Conditional
(assert true)
(define-const var2286 Bool (isEmpty/1702795238 var3560)) ; Statement: $z3 = virtualinvoke r15.<org.antlr.v4.runtime.atn.PredictionContext: boolean isEmpty()>() 
 ; Statement: if $z3 != 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (not (= (ite var2286 1 0) 0))) ; Cond: $z3 != 0 
(assert true)
;(assert (append/672562846 var3332!2 "]")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3332!3 String)
(assert (= var3332!3 (str.++ var3332!2 "]")))
(assert true)
(define-const var3081 String (toString/-2075883882 var3332!3)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1178_add/328494887 (cast-from-var2069-to-var1178 var2543!1) (cast-from-String-to-var2278 var3081))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r3) 

(declare-const var2543!2 var2069)
(declare-const var3081!1 String)
 ; Statement: if z2 == 0 goto i14 = i14 + 1 
(assert (not (= (ite var3194 1 0) 0))) ; Negate: Cond: z2 == 0  
 ; Statement: goto [?= $r4 = newarray (java.lang.String)[0]] 
(assert true) ; Non Conditional
(define-const var1800 (Array Int String) arr-String-init) ; Statement: $r4 = newarray (java.lang.String)[0] 
(define-const var2489 (Array Int var2278) (var1178_toArray/-775711681 (cast-from-var2069-to-var1178 var2543!2) (cast-from-__Array__Int__String__-to-__Array__Int__var2278__ var1800))) ; Statement: $r5 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r4) 
(define-const var1314 (Array Int String) (cast-from-__Array__Int__var2278__-to-__Array__Int__String__ var2489)) ; Statement: $r6 = (java.lang.String[]) $r5 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2069-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isEmpty/1702795238=([org.antlr.v4.runtime.atn.PredictionContext], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1178_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var2069-to-var1178=([java.util.ArrayList], java.util.List), cast-from-String-to-var2278=([java.lang.String], java.lang.Object), arr-String-init=([], java.lang.String[]), var1178_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__String__-to-__Array__Int__var2278__=([java.lang.String[]], java.lang.Object[]), cast-from-__Array__Int__var2278__-to-__Array__Int__String__=([java.lang.Object[]], java.lang.String[])}
; {var3465=org.antlr.v4.runtime.atn.PredictionContext, var1062=r1, var3326=org.antlr.v4.runtime.Recognizer, var1497=r8, var1252=r7, var3180=i0, var2069=java.util.ArrayList, var2543=$r0, var2952=i14, var3736=i15, var3194=z2, var3560=r15, var3073=i16, var3332=$r2, var2286=$z3, var3081=$r3, var1178=java.util.List, var2278=java.lang.Object, var1800=$r4, var2489=$r5, var1314=$r6}
; {org.antlr.v4.runtime.atn.PredictionContext=var3465, r1=var1062, org.antlr.v4.runtime.Recognizer=var3326, r8=var1497, r7=var1252, i0=var3180, java.util.ArrayList=var2069, $r0=var2543, i14=var2952, i15=var3736, z2=var3194, r15=var3560, i16=var3073, $r2=var3332, $z3=var2286, $r3=var3081, java.util.List=var1178, java.lang.Object=var2278, $r4=var1800, $r5=var2489, $r6=var1314}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.atn.PredictionContext;	r8 := @parameter0: org.antlr.v4.runtime.Recognizer;	r7 := @parameter1: org.antlr.v4.runtime.atn.PredictionContext;	i0 := @parameter2: int;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	i14 = 0;	i15 = 0;	z2 = 1;	r15 = r1;	i16 = i0;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$z3 = virtualinvoke r15.<org.antlr.v4.runtime.atn.PredictionContext: boolean isEmpty()>();	if $z3 != 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r3);	if z2 == 0 goto i14 = i14 + 1;	goto [?= $r4 = newarray (java.lang.String)[0]];	$r4 = newarray (java.lang.String)[0];	$r5 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r4);	$r6 = (java.lang.String[]) $r5;	return $r6
;block_num 6
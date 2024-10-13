(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1717 0)
(declare-sort var2964 0)
(declare-sort var1368 0)
(declare-sort var3762 0)
(declare-sort var686 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1368-init () var1368)
(declare-fun <init>/-325640736 (var1368) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isEmpty/-1273887735 (var1717) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3762_add/328494887 (var3762 var686) Bool)
(declare-fun cast-from-var1368-to-var3762 (var1368) var3762)
(declare-fun cast-from-String-to-var686 (String) var686)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var3762_toArray/-775711681 (var3762 (Array Int var686)) (Array Int var686))
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var686__ ((Array Int String)) (Array Int var686))
(declare-fun cast-from-__Array__Int__var686__-to-__Array__Int__String__ ((Array Int var686)) (Array Int String))
(declare-const null-var1717 var1717)
(declare-const null-var2964 var2964)
(declare-const null-Int Int)
(declare-const var3858 var1717) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext 
(assert (not (= var3858 null-var1717)))
(declare-const var786 var2964) ; Statement: r8 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer 
(assert (not (= var786 null-var2964)))
(declare-const var174 var1717) ; Statement: r7 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext 
(assert (not (= var174 null-var1717)))
(declare-const var767 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var767 null-Int)))
(define-const var2344 var1368 var1368-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2344)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var2344!1 var1368)
(define-const var3952 Int 0) ; Statement: i14 = 0 
(assert true) ; Non Conditional
(define-const var3509 Int 0) ; Statement: i15 = 0 
(define-const var950 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(define-const var1981 var1717 var3858) ; Statement: r15 = r1 
(define-const var1173 Int var767) ; Statement: i16 = i0 
(define-const var3957 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3957)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3957!1 String)
(assert (= var3957!1 ""))
(assert true)
;(assert (append/672562846 var3957!1 "[")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3957!2 String)
(assert (= var3957!2 (str.++ var3957!1 "[")))
(assert true) ; Non Conditional
(assert true)
(define-const var1840 Bool (isEmpty/-1273887735 var1981)) ; Statement: $z3 = virtualinvoke r15.<com.github.jknack.handlebars.internal.antlr.atn.PredictionContext: boolean isEmpty()>() 
 ; Statement: if $z3 != 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (not (= (ite var1840 1 0) 0))) ; Cond: $z3 != 0 
(assert true)
;(assert (append/672562846 var3957!2 "]")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3957!3 String)
(assert (= var3957!3 (str.++ var3957!2 "]")))
(assert true)
(define-const var1416 String (toString/-2075883882 var3957!3)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3762_add/328494887 (cast-from-var1368-to-var3762 var2344!1) (cast-from-String-to-var686 var1416))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r3) 

(declare-const var2344!2 var1368)
(declare-const var1416!1 String)
 ; Statement: if z2 == 0 goto i14 = i14 + 1 
(assert (not (= (ite var950 1 0) 0))) ; Negate: Cond: z2 == 0  
 ; Statement: goto [?= $r4 = newarray (java.lang.String)[0]] 
(assert true) ; Non Conditional
(define-const var770 (Array Int String) arr-String-init) ; Statement: $r4 = newarray (java.lang.String)[0] 
(define-const var2166 (Array Int var686) (var3762_toArray/-775711681 (cast-from-var1368-to-var3762 var2344!2) (cast-from-__Array__Int__String__-to-__Array__Int__var686__ var770))) ; Statement: $r5 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r4) 
(define-const var594 (Array Int String) (cast-from-__Array__Int__var686__-to-__Array__Int__String__ var2166)) ; Statement: $r6 = (java.lang.String[]) $r5 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1368-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isEmpty/-1273887735=([com.github.jknack.handlebars.internal.antlr.atn.PredictionContext], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3762_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1368-to-var3762=([java.util.ArrayList], java.util.List), cast-from-String-to-var686=([java.lang.String], java.lang.Object), arr-String-init=([], java.lang.String[]), var3762_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__String__-to-__Array__Int__var686__=([java.lang.String[]], java.lang.Object[]), cast-from-__Array__Int__var686__-to-__Array__Int__String__=([java.lang.Object[]], java.lang.String[])}
; {var1717=com.github.jknack.handlebars.internal.antlr.atn.PredictionContext, var3858=r1, var2964=com.github.jknack.handlebars.internal.antlr.Recognizer, var786=r8, var174=r7, var767=i0, var1368=java.util.ArrayList, var2344=$r0, var3952=i14, var3509=i15, var950=z2, var1981=r15, var1173=i16, var3957=$r2, var1840=$z3, var1416=$r3, var3762=java.util.List, var686=java.lang.Object, var770=$r4, var2166=$r5, var594=$r6}
; {com.github.jknack.handlebars.internal.antlr.atn.PredictionContext=var1717, r1=var3858, com.github.jknack.handlebars.internal.antlr.Recognizer=var2964, r8=var786, r7=var174, i0=var767, java.util.ArrayList=var1368, $r0=var2344, i14=var3952, i15=var3509, z2=var950, r15=var1981, i16=var1173, $r2=var3957, $z3=var1840, $r3=var1416, java.util.List=var3762, java.lang.Object=var686, $r4=var770, $r5=var2166, $r6=var594}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext;	r8 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer;	r7 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext;	i0 := @parameter2: int;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	i14 = 0;	i15 = 0;	z2 = 1;	r15 = r1;	i16 = i0;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$z3 = virtualinvoke r15.<com.github.jknack.handlebars.internal.antlr.atn.PredictionContext: boolean isEmpty()>();	if $z3 != 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r3);	if z2 == 0 goto i14 = i14 + 1;	goto [?= $r4 = newarray (java.lang.String)[0]];	$r4 = newarray (java.lang.String)[0];	$r5 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r4);	$r6 = (java.lang.String[]) $r5;	return $r6
;block_num 6
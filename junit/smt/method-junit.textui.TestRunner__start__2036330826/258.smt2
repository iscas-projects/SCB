(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1486 0)
(declare-sort var1733 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1733-init () var1733)
(declare-fun <init>/-8765015 (var1733 String) void)
(declare-const null-var1486 var1486)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3059 var1486) ; Statement: r1 := @this: junit.textui.TestRunner 
(assert (not (= var3059 null-var1486)))
(declare-const var2948 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var2948 null-__Array__Int__String__)))
(define-const var114 String "") ; Statement: r24 = "" 
(define-const var414 String "") ; Statement: r25 = "" 
(define-const var1847 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var3193 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var18 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var1693 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1678 Int (getLength-Arr-String-1 var2948)) ; Statement: $i0 = lengthof r0 
 ; Statement: if i3 >= $i0 goto $z0 = virtualinvoke r24.<java.lang.String: boolean equals(java.lang.Object)>("") 
(assert (>= var1693 var1678)) ; Cond: i3 >= $i0 
(assert true)
(define-const var1023 Bool (= var114 "")) ; Statement: $z0 = virtualinvoke r24.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r25.<java.lang.String: boolean equals(java.lang.Object)>("") 
(assert (not (= (ite var1023 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2020 var1733 var1733-init) ; Statement: $r4 = new java.lang.Exception 
(assert true)
;(assert (<init>/-8765015 var2020 "Usage: TestRunner [-wait] testCaseName, where name is the name of the TestCase class")) ; Statement: specialinvoke $r4.<java.lang.Exception: void <init>(java.lang.String)>("Usage: TestRunner [-wait] testCaseName, where name is the name of the TestCase class") 

(declare-const var2020!1 var1733)
(declare-const var3434 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), var1733-init=([], java.lang.Exception), <init>/-8765015=([java.lang.Exception, java.lang.String], void)}
; {var1486=junit.textui.TestRunner, var3059=r1, var2948=r0, var114=r24, var414=r25, var1847=z6, var3193=z8, var18=z7, var1693=i3, var1678=$i0, var1023=$z0, var1733=java.lang.Exception, var2020=$r4, var3434="Usage: TestRunner [-wait] testCaseName, where name is the name of the TestCase class"}
; {junit.textui.TestRunner=var1486, r1=var3059, r0=var2948, r24=var114, r25=var414, z6=var1847, z8=var3193, z7=var18, i3=var1693, $i0=var1678, $z0=var1023, java.lang.Exception=var1733, $r4=var2020, "Usage: TestRunner [-wait] testCaseName, where name is the name of the TestCase class"=var3434}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: junit.textui.TestRunner;	r0 := @parameter0: java.lang.String[];	r24 = "";	r25 = "";	z6 = 0;	z8 = 0;	z7 = 0;	i3 = 0;	$i0 = lengthof r0;	if i3 >= $i0 goto $z0 = virtualinvoke r24.<java.lang.String: boolean equals(java.lang.Object)>("");	$z0 = virtualinvoke r24.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto $z1 = virtualinvoke r25.<java.lang.String: boolean equals(java.lang.Object)>("");	$r4 = new java.lang.Exception;	specialinvoke $r4.<java.lang.Exception: void <init>(java.lang.String)>("Usage: TestRunner [-wait] testCaseName, where name is the name of the TestCase class");	throw $r4
;block_num 4
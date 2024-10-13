(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1910 0)
(declare-sort var2591 0)
(declare-sort var2969 0)
(declare-sort var116 0)
(declare-sort var618 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2969_checkObject/89169552 (var1910) var2591)
(declare-fun get/1511403156 (var2591 var1910) var1910)
(declare-fun cast-from-String-to-var1910 (String) var1910)
(declare-fun cast-from-var116-to-var1910 (var116) var1910)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1910 var1910)
(declare-const var618-UNDEFINED var116)
(declare-const var1333 var1910) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1333 null-var1910)))
(define-const var2231 var2591 (var2969_checkObject/89169552 var1333)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject checkObject(java.lang.Object)>(r0) 
(assert true)
(define-const var1889 var1910 (get/1511403156 var2231 (cast-from-String-to-var1910 "name"))) ; Statement: r12 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("name") 
(define-const var1110 var116 var618-UNDEFINED) ; Statement: $r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r12 != $r2 goto r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r12) 
(assert (not (not (= var1889 (cast-from-var116-to-var1910 var1110))))) ; Negate: Cond: r12 != $r2  
(define-const var2423 String "Error") ; Statement: r13 = "Error" 
 ; Statement: goto [?= $r11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("message")] 
(assert true) ; Non Conditional
(assert true)
(define-const var3601 var1910 (get/1511403156 var2231 (cast-from-String-to-var1910 "message"))) ; Statement: $r11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("message") 
(define-const var667 var116 var618-UNDEFINED) ; Statement: $r3 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if $r11 != $r3 goto r14 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>($r11) 
(assert (not (not (= var3601 (cast-from-var116-to-var1910 var667))))) ; Negate: Cond: $r11 != $r3  
(define-const var1483 String "") ; Statement: r14 = "" 
 ; Statement: goto [?= $r4 = (java.lang.String) r13] 
(assert true) ; Non Conditional
(define-const var1676 String (cast-from-String-to-String var2423)) ; Statement: $r4 = (java.lang.String) r13 
(assert true)
(define-const var1734 Bool (isEmpty/-1285796103 var1676)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r5 = (java.lang.String) r14 
(assert (not (= (ite var1734 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var2969_checkObject/89169552=([java.lang.Object], jdk.nashorn.internal.runtime.ScriptObject), get/1511403156=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Object], java.lang.Object), cast-from-String-to-var1910=([java.lang.String], java.lang.Object), cast-from-var116-to-var1910=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), cast-from-String-to-String=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1910=java.lang.Object, var1333=r0, var2591=jdk.nashorn.internal.runtime.ScriptObject, var2969=jdk.nashorn.internal.objects.Global, var2231=r1, var1889=r12, var116=jdk.nashorn.internal.runtime.Undefined, var618=jdk.nashorn.internal.runtime.ScriptRuntime, var1110=$r2, var2423=r13, var3601=$r11, var667=$r3, var1483=r14, var1676=$r4, var1734=$z0}
; {java.lang.Object=var1910, r0=var1333, jdk.nashorn.internal.runtime.ScriptObject=var2591, jdk.nashorn.internal.objects.Global=var2969, r1=var2231, r12=var1889, jdk.nashorn.internal.runtime.Undefined=var116, jdk.nashorn.internal.runtime.ScriptRuntime=var618, $r2=var1110, r13=var2423, $r11=var3601, $r3=var667, r14=var1483, $r4=var1676, $z0=var1734}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject checkObject(java.lang.Object)>(r0);	r12 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("name");	$r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r12 != $r2 goto r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r12);	r13 = "Error";	goto [?= $r11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("message")];	$r11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("message");	$r3 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if $r11 != $r3 goto r14 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>($r11);	r14 = "";	goto [?= $r4 = (java.lang.String) r13];	$r4 = (java.lang.String) r13;	$z0 = virtualinvoke $r4.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r5 = (java.lang.String) r14;	return r14
;block_num 6
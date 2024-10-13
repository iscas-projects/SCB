(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var372 0)
(declare-sort var987 0)
(declare-sort var3957 0)
(declare-sort var336 0)
(declare-sort var2602 0)
(declare-sort var742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3957_builder/1978852224 (Int) var987)
(declare-fun var336_allocate/-1645520829 (Int) var336)
(declare-fun put/-1570208867 (var336 String) var336)
(declare-fun flip/1038502598 (var2602) var2602)
(declare-fun cast-from-var336-to-var2602 (var336) var2602)
(declare-fun append/490782286 (var987 var336) void)
(declare-fun build/-1364685338 (var987) var3957)
(declare-fun var742_fromBuffer/-1486229086 (var3957 String) var742)
(declare-const null-String String)
(declare-const var1286 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1286 null-String)))
(declare-const var1279 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1279 null-String)))
(assert true)
(define-const var1853 Int (length/-134980193 var1286)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3603 var987 (var3957_builder/1978852224 var1853)) ; Statement: r1 = staticinvoke <org.antlr.v4.runtime.CodePointBuffer: org.antlr.v4.runtime.CodePointBuffer$Builder builder(int)>($i0) 
(assert true)
(define-const var1566 Int (length/-134980193 var1286)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2611 var336 (var336_allocate/-1645520829 var1566)) ; Statement: r2 = staticinvoke <java.nio.CharBuffer: java.nio.CharBuffer allocate(int)>($i1) 
(assert true)
;(assert (put/-1570208867 var2611 var1286)) ; Statement: virtualinvoke r2.<java.nio.CharBuffer: java.nio.CharBuffer put(java.lang.String)>(r0) 

(declare-const var2611!1 var336)
(declare-const var1286!1 String)
(assert true)
;(assert (flip/1038502598 (cast-from-var336-to-var2602 var2611!1))) ; Statement: virtualinvoke r2.<java.nio.CharBuffer: java.nio.Buffer flip()>() 

(declare-const var2611!2 var336)
(assert true)
;(assert (append/490782286 var3603 var2611!2)) ; Statement: virtualinvoke r1.<org.antlr.v4.runtime.CodePointBuffer$Builder: void append(java.nio.CharBuffer)>(r2) 

(declare-const var3603!1 var987)
(declare-const var2611!3 var336)
(assert true)
(define-const var131 var3957 (build/-1364685338 var3603!1)) ; Statement: $r4 = virtualinvoke r1.<org.antlr.v4.runtime.CodePointBuffer$Builder: org.antlr.v4.runtime.CodePointBuffer build()>() 
(define-const var2174 var742 (var742_fromBuffer/-1486229086 var131 var1279)) ; Statement: $r5 = staticinvoke <org.antlr.v4.runtime.CodePointCharStream: org.antlr.v4.runtime.CodePointCharStream fromBuffer(org.antlr.v4.runtime.CodePointBuffer,java.lang.String)>($r4, r3) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3957_builder/1978852224=([int], org.antlr.v4.runtime.CodePointBuffer$Builder), var336_allocate/-1645520829=([int], java.nio.CharBuffer), put/-1570208867=([java.nio.CharBuffer, java.lang.String], java.nio.CharBuffer), flip/1038502598=([java.nio.Buffer], java.nio.Buffer), cast-from-var336-to-var2602=([java.nio.CharBuffer], java.nio.Buffer), append/490782286=([org.antlr.v4.runtime.CodePointBuffer$Builder, java.nio.CharBuffer], void), build/-1364685338=([org.antlr.v4.runtime.CodePointBuffer$Builder], org.antlr.v4.runtime.CodePointBuffer), var742_fromBuffer/-1486229086=([org.antlr.v4.runtime.CodePointBuffer, java.lang.String], org.antlr.v4.runtime.CodePointCharStream)}
; {var1286=r0, var372=null_type, var1279=r3, var1853=$i0, var987=org.antlr.v4.runtime.CodePointBuffer$Builder, var3957=org.antlr.v4.runtime.CodePointBuffer, var3603=r1, var1566=$i1, var336=java.nio.CharBuffer, var2611=r2, var2602=java.nio.Buffer, var131=$r4, var742=org.antlr.v4.runtime.CodePointCharStream, var2174=$r5}
; {r0=var1286, null_type=var372, r3=var1279, $i0=var1853, org.antlr.v4.runtime.CodePointBuffer$Builder=var987, org.antlr.v4.runtime.CodePointBuffer=var3957, r1=var3603, $i1=var1566, java.nio.CharBuffer=var336, r2=var2611, java.nio.Buffer=var2602, $r4=var131, org.antlr.v4.runtime.CodePointCharStream=var742, $r5=var2174}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	r1 = staticinvoke <org.antlr.v4.runtime.CodePointBuffer: org.antlr.v4.runtime.CodePointBuffer$Builder builder(int)>($i0);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	r2 = staticinvoke <java.nio.CharBuffer: java.nio.CharBuffer allocate(int)>($i1);	virtualinvoke r2.<java.nio.CharBuffer: java.nio.CharBuffer put(java.lang.String)>(r0);	virtualinvoke r2.<java.nio.CharBuffer: java.nio.Buffer flip()>();	virtualinvoke r1.<org.antlr.v4.runtime.CodePointBuffer$Builder: void append(java.nio.CharBuffer)>(r2);	$r4 = virtualinvoke r1.<org.antlr.v4.runtime.CodePointBuffer$Builder: org.antlr.v4.runtime.CodePointBuffer build()>();	$r5 = staticinvoke <org.antlr.v4.runtime.CodePointCharStream: org.antlr.v4.runtime.CodePointCharStream fromBuffer(org.antlr.v4.runtime.CodePointBuffer,java.lang.String)>($r4, r3);	return $r5
;block_num 1
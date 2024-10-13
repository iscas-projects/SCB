(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3918 0)
(declare-sort var1856 0)
(declare-sort var1659 0)
(declare-sort var2685 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun function/38152780 (var3918) var2685)
(declare-fun cast-from-var1659-to-__Array__Int__Int__ (var1659) (Array Int Int))
(declare-fun utf16/1442430106 (var1856) Bool)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun writeString/-1604794942 (var1856 String) void)
(declare-const null-var3918 var3918)
(declare-const null-var1856 var1856)
(declare-const null-var1659 var1659)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const null-var2685 var2685)
(declare-const var850 var3918) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterImplCharValueArray 
(assert (not (= var850 null-var3918)))
(declare-const var1833 var1856) ; Statement: r3 := @parameter0: com.alibaba.fastjson2.JSONWriter 
(assert (not (= var1833 null-var1856)))
(declare-const var1413 var1659) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1413 null-var1659)))
(declare-const var801 var1659) ; Statement: r7 := @parameter2: java.lang.Object 
(assert (not (= var801 null-var1659)))
(declare-const var3359 ClassObject) ; Statement: r8 := @parameter3: java.lang.reflect.Type 
(assert (not (= var3359 null-ClassObject)))
(declare-const var436 Int) ; Statement: l1 := @parameter4: long 
(assert (not (= var436 null-Int)))
(define-const var973 var2685 (function/38152780 var850)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterImplCharValueArray: java.util.function.Function function> 
 ; Statement: if $r1 == null goto r9 = (char[]) r2 
(assert (= var973 null-var2685)) ; Cond: $r1 == null 
(define-const var705 (Array Int Int) (cast-from-var1659-to-__Array__Int__Int__ var1413)) ; Statement: r9 = (char[]) r2 
(assert true) ; Non Conditional
(define-const var1153 Bool (utf16/1442430106 var1833)) ; Statement: $z0 = r3.<com.alibaba.fastjson2.JSONWriter: boolean utf16> 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.String 
(assert (= (ite var1153 1 0) 0)) ; Cond: $z0 == 0 
(define-const var767 String String-init) ; Statement: $r4 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var767 var705)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(char[])>(r9) 

(declare-const var767!1 String)
(declare-const var705!1 (Array Int Int))
(assert true)
;(assert (writeString/-1604794942 var1833 var767!1)) ; Statement: virtualinvoke r3.<com.alibaba.fastjson2.JSONWriter: void writeString(java.lang.String)>($r4) 

(declare-const var1833!1 var1856)
(declare-const var767!2 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {function/38152780=([com.alibaba.fastjson2.writer.ObjectWriterImplCharValueArray], java.util.function.Function), cast-from-var1659-to-__Array__Int__Int__=([java.lang.Object], char[]), utf16/1442430106=([com.alibaba.fastjson2.JSONWriter], boolean), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void), writeString/-1604794942=([com.alibaba.fastjson2.JSONWriter, java.lang.String], void)}
; {var3918=com.alibaba.fastjson2.writer.ObjectWriterImplCharValueArray, var850=r0, var1856=com.alibaba.fastjson2.JSONWriter, var1833=r3, var1659=java.lang.Object, var1413=r2, var801=r7, var3359=r8, var436=l1, var2685=java.util.function.Function, var973=$r1, var705=r9, var1153=$z0, var767=$r4}
; {com.alibaba.fastjson2.writer.ObjectWriterImplCharValueArray=var3918, r0=var850, com.alibaba.fastjson2.JSONWriter=var1856, r3=var1833, java.lang.Object=var1659, r2=var1413, r7=var801, r8=var3359, l1=var436, java.util.function.Function=var2685, $r1=var973, r9=var705, $z0=var1153, $r4=var767}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterImplCharValueArray;	r3 := @parameter0: com.alibaba.fastjson2.JSONWriter;	r2 := @parameter1: java.lang.Object;	r7 := @parameter2: java.lang.Object;	r8 := @parameter3: java.lang.reflect.Type;	l1 := @parameter4: long;	$r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterImplCharValueArray: java.util.function.Function function>;	if $r1 == null goto r9 = (char[]) r2;	r9 = (char[]) r2;	$z0 = r3.<com.alibaba.fastjson2.JSONWriter: boolean utf16>;	if $z0 == 0 goto $r4 = new java.lang.String;	$r4 = new java.lang.String;	specialinvoke $r4.<java.lang.String: void <init>(char[])>(r9);	virtualinvoke r3.<com.alibaba.fastjson2.JSONWriter: void writeString(java.lang.String)>($r4);	return
;block_num 5
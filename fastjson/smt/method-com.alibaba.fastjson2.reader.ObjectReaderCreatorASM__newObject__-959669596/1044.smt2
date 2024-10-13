(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var592 0)
(declare-sort var3614 0)
(declare-sort var2009 0)
(declare-sort var936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun visitTypeInsn/1924483459 (var592 Int String) void)
(declare-fun visitInsn/-918620226 (var592 Int) void)
(declare-fun getParameterCount/813089585 (var2009) Int)
(declare-fun getParameterTypes/938597008 (var2009) (Array Int ClassObject))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var936_desc/1182016152 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun visitMethodInsn/-527702312 (var592 Int String String String Bool) void)
(declare-const null-var592 var592)
(declare-const null-String String)
(declare-const null-var2009 var2009)
(declare-const var1236 var592) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.internal.asm.MethodWriter 
(assert (not (= var1236 null-var592)))
(declare-const var3359 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3359 null-String)))
(declare-const var3597 var2009) ; Statement: r2 := @parameter2: java.lang.reflect.Constructor 
(assert (not (= var3597 null-var2009)))
(assert true)
;(assert (visitTypeInsn/1924483459 var1236 187 var3359)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(187, r1) 

(declare-const var1236!1 var592)
(declare-const var3546 Int)
(declare-const var3359!1 String)
(assert true)
;(assert (visitInsn/-918620226 var1236!1 89)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var1236!2 var592)
(declare-const var3462 Int)
(assert true)
(define-const var1469 Int (getParameterCount/813089585 var3597)) ; Statement: $i0 = virtualinvoke r2.<java.lang.reflect.Constructor: int getParameterCount()>() 
 ; Statement: if $i0 != 0 goto $r3 = virtualinvoke r2.<java.lang.reflect.Constructor: java.lang.Class[] getParameterTypes()>() 
(assert (not (= var1469 0))) ; Cond: $i0 != 0 
(assert true)
(define-const var880 (Array Int ClassObject) (getParameterTypes/938597008 var3597)) ; Statement: $r3 = virtualinvoke r2.<java.lang.reflect.Constructor: java.lang.Class[] getParameterTypes()>() 
(define-const var1752 ClassObject (select var880 0)) ; Statement: r4 = $r3[0] 
(assert true)
;(assert (visitInsn/-918620226 var1236!2 1)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(1) 

(declare-const var1236!3 var592)
(declare-const var2235 Int)
(define-const var1968 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1968)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1968!1 String)
(assert (= var1968!1 ""))
(assert true)
(define-const var1943 String (append/672562846 var1968!1 "(")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1968!2 String)
(assert (= var1968!2 (str.++ var1968!1 "(")))
(define-const var2103 String (var936_desc/1182016152 var1752)) ; Statement: $r6 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r4) 
(assert true)
(define-const var409 String (append/672562846 var1943 var2103)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1943!1 String)
(assert (= var1943!1 (str.++ var1943 var2103)))
(assert true)
(define-const var3208 String (append/672562846 var409 ")V")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V") 
(declare-const var409!1 String)
(assert (= var409!1 (str.++ var409 ")V")))
(assert true)
(define-const var2083 String (toString/-2075883882 var3208)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (visitMethodInsn/-527702312 var1236!3 183 var3359!1 "<init>" var2083 (ite (= 1 0) true false))) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(183, r1, "<init>", $r10, 0) 

(declare-const var1236!4 var592)
(declare-const var3112 Int)
(declare-const var3359!2 String)
(declare-const var2356 String)
(declare-const var2083!1 String)
(declare-const var2905 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {visitTypeInsn/1924483459=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), getParameterCount/813089585=([java.lang.reflect.Constructor], int), getParameterTypes/938597008=([java.lang.reflect.Constructor], java.lang.Class[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var936_desc/1182016152=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var592=com.alibaba.fastjson2.internal.asm.MethodWriter, var1236=r0, var3359=r1, var3614=null_type, var2009=java.lang.reflect.Constructor, var3597=r2, var3546=187, var3462=89, var1469=$i0, var880=$r3, var1752=r4, var2235=1, var1968=$r5, var1943=$r7, var936=com.alibaba.fastjson2.internal.asm.ASMUtils, var2103=$r6, var409=$r8, var3208=$r9, var2083=$r10, var3112=183, var2356="<init>", var2905=0}
; {com.alibaba.fastjson2.internal.asm.MethodWriter=var592, r0=var1236, r1=var3359, null_type=var3614, java.lang.reflect.Constructor=var2009, r2=var3597, 187=var3546, 89=var3462, $i0=var1469, $r3=var880, r4=var1752, 1=var2235, $r5=var1968, $r7=var1943, com.alibaba.fastjson2.internal.asm.ASMUtils=var936, $r6=var2103, $r8=var409, $r9=var3208, $r10=var2083, 183=var3112, "<init>"=var2356, 0=var2905}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.alibaba.fastjson2.internal.asm.MethodWriter;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.reflect.Constructor;	virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(187, r1);	virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	$i0 = virtualinvoke r2.<java.lang.reflect.Constructor: int getParameterCount()>();	if $i0 != 0 goto $r3 = virtualinvoke r2.<java.lang.reflect.Constructor: java.lang.Class[] getParameterTypes()>();	$r3 = virtualinvoke r2.<java.lang.reflect.Constructor: java.lang.Class[] getParameterTypes()>();	r4 = $r3[0];	virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(1);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r6 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(183, r1, "<init>", $r10, 0);	return
;block_num 3
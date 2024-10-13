(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3772 0)
(declare-sort var3731 0)
(declare-sort var3718 0)
(declare-sort var3929 0)
(declare-sort var3066 0)
(declare-sort var258 0)
(declare-sort var1721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var3929) var3066)
(declare-fun field/-2048851183 (var3929) var258)
(declare-fun fieldClass/-2048851183 (var3929) ClassObject)
(declare-fun var1721_desc/1182016152 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getName/1227988463 (var3066) String)
(declare-fun visitMethodInsn/-527702312 (var3731 Int String String String Bool) void)
(declare-const null-var3772 var3772)
(declare-const null-var3731 var3731)
(declare-const null-String String)
(declare-const null-var3929 var3929)
(declare-const null-var3066 var3066)
(declare-const var1674 var3772) ; Statement: r13 := @this: com.alibaba.fastjson2.JSONPathCompilerReflectASM 
(assert (not (= var1674 null-var3772)))
(declare-const var1562 var3731) ; Statement: r5 := @parameter0: com.alibaba.fastjson2.internal.asm.MethodWriter 
(assert (not (= var1562 null-var3731)))
(declare-const var2047 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var2047 null-String)))
(declare-const var3096 var3929) ; Statement: r0 := @parameter2: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var3096 null-var3929)))
(define-const var1000 var3066 (method/-2048851183 var3096)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
(define-const var1420 var258 (field/-2048851183 var3096)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(define-const var2082 ClassObject (fieldClass/-2048851183 var3096)) ; Statement: r3 = r0.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var894 String (var1721_desc/1182016152 var2082)) ; Statement: r4 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r3) 
 ; Statement: if r1 == null goto $r7 = virtualinvoke r2.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert (not (= var1000 null-var3066))) ; Negate: Cond: r1 == null  
(define-const var2198 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2198)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2198!1 String)
(assert (= var2198!1 ""))
(assert true)
(define-const var3043 String (append/672562846 var2198!1 "()")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var2198!2 String)
(assert (= var2198!2 (str.++ var2198!1 "()")))
(assert true)
(define-const var88 String (append/672562846 var3043 var894)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3043!1 String)
(assert (= var3043!1 (str.++ var3043 var894)))
(assert true)
(define-const var3527 String (toString/-2075883882 var88)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3493 String (getName/1227988463 var1000)) ; Statement: $r12 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
;(assert (visitMethodInsn/-527702312 var1562 182 var2047 var3493 var3527 (ite (= 1 0) true false))) ; Statement: virtualinvoke r5.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r6, $r12, r11, 0) 

(declare-const var1562!1 var3731)
(declare-const var1051 Int)
(declare-const var2047!1 String)
(declare-const var3493!1 String)
(declare-const var3527!1 String)
(declare-const var741 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), field/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Field), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), var1721_desc/1182016152=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getName/1227988463=([java.lang.reflect.Method], java.lang.String), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var3772=com.alibaba.fastjson2.JSONPathCompilerReflectASM, var1674=r13, var3731=com.alibaba.fastjson2.internal.asm.MethodWriter, var1562=r5, var2047=r6, var3718=null_type, var3929=com.alibaba.fastjson2.writer.FieldWriter, var3096=r0, var3066=java.lang.reflect.Method, var1000=r1, var258=java.lang.reflect.Field, var1420=r2, var2082=r3, var1721=com.alibaba.fastjson2.internal.asm.ASMUtils, var894=r4, var2198=$r8, var3043=$r9, var88=$r10, var3527=r11, var3493=$r12, var1051=182, var741=0}
; {com.alibaba.fastjson2.JSONPathCompilerReflectASM=var3772, r13=var1674, com.alibaba.fastjson2.internal.asm.MethodWriter=var3731, r5=var1562, r6=var2047, null_type=var3718, com.alibaba.fastjson2.writer.FieldWriter=var3929, r0=var3096, java.lang.reflect.Method=var3066, r1=var1000, java.lang.reflect.Field=var258, r2=var1420, r3=var2082, com.alibaba.fastjson2.internal.asm.ASMUtils=var1721, r4=var894, $r8=var2198, $r9=var3043, $r10=var88, r11=var3527, $r12=var3493, 182=var1051, 0=var741}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: com.alibaba.fastjson2.JSONPathCompilerReflectASM;	r5 := @parameter0: com.alibaba.fastjson2.internal.asm.MethodWriter;	r6 := @parameter1: java.lang.String;	r0 := @parameter2: com.alibaba.fastjson2.writer.FieldWriter;	r1 = r0.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	r2 = r0.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	r3 = r0.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r3);	if r1 == null goto $r7 = virtualinvoke r2.<java.lang.reflect.Field: java.lang.String getName()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>();	virtualinvoke r5.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r6, $r12, r11, 0);	goto [?= return];	return
;block_num 3
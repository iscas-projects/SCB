(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3627 0)
(declare-sort var3316 0)
(declare-sort var1966 0)
(declare-sort var1266 0)
(declare-sort var3992 0)
(declare-sort var3434 0)
(declare-sort var3962 0)
(declare-sort var3198 0)
(declare-sort var1586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun <init>/-279557996 (var3316) void)
(declare-fun cast-from-var3627-to-var3316 (var3627) var3316)
(declare-fun superClass/1149045424 (var3627) ClassObject)
(declare-fun createClassNode/893540815 (var3627 (Array Int Int)) var1966)
(declare-fun classNode/1149045424 (var3627) var1966)
(declare-fun var3627_buildSettingInfos/620205556 (ClassObject var1966) var1266)
(declare-fun settingInfos/1149045424 (var3627) var1266)
(declare-fun var3627_buildFieldInfos/-2113482998 (ClassObject var1966) var1266)
(declare-fun fieldInfos/1149045424 (var3627) var1266)
(declare-fun var3627_makeWriteMethod/-1894597262 (var1266) var3992)
(declare-fun writeMethod/1149045424 (var3627) var3992)
(declare-fun var3434_makeEventHandlerName/-1212151593 (Int) String)
(declare-fun var3962_getInternalName/246609718 (String) String)
(declare-fun eventHandlerXInternalName/1149045424 (var3627) String)
(declare-fun getDescriptor/42994021 (var3198) String)
(declare-fun var3627_annotationValue/914238595 (var1966 String ClassObject) var3316)
(declare-fun cast-from-var3316-to-String (var3316) String)
(declare-fun eventName/1149045424 (var3627) String)
(declare-const null-var3627 var3627)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3627-ANNOTATION_TYPE_NAME var3198)
(declare-const null-String String)
(declare-const var2120 var3627) ; Statement: r0 := @this: jdk.jfr.internal.EventInstrumentation 
(assert (not (= var2120 null-var3627)))
(declare-const var2763 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2763 null-ClassObject)))
(declare-const var879 (Array Int Int)) ; Statement: r2 := @parameter1: byte[] 
(assert (not (= var879 null-__Array__Int__Int__)))
(declare-const var3929 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var3929 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3627-to-var3316 var2120))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2120!1 var3627)
(declare-const var2120!2 var3627)
(assert (not (= var2120!2 null-var3627)))
(assert (= (superClass/1149045424 var2120!2) var2763)) ; Statement: r0.<jdk.jfr.internal.EventInstrumentation: java.lang.Class superClass> = r1 
(assert true)
(define-const var2655 var1966 (createClassNode/893540815 var2120!2 var879)) ; Statement: $r3 = specialinvoke r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode createClassNode(byte[])>(r2) 
(declare-const var2120!3 var3627)
(assert (not (= var2120!3 null-var3627)))
(assert (= (classNode/1149045424 var2120!3) var2655)) ; Statement: r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode> = $r3 
(define-const var2045 var1966 (classNode/1149045424 var2120!3)) ; Statement: $r4 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode> 
(define-const var401 var1266 (var3627_buildSettingInfos/620205556 var2763 var2045)) ; Statement: $r5 = staticinvoke <jdk.jfr.internal.EventInstrumentation: java.util.List buildSettingInfos(java.lang.Class,jdk.internal.org.objectweb.asm.tree.ClassNode)>(r1, $r4) 
(declare-const var2120!4 var3627)
(assert (not (= var2120!4 null-var3627)))
(assert (= (settingInfos/1149045424 var2120!4) var401)) ; Statement: r0.<jdk.jfr.internal.EventInstrumentation: java.util.List settingInfos> = $r5 
(define-const var2702 var1966 (classNode/1149045424 var2120!4)) ; Statement: $r6 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode> 
(define-const var168 var1266 (var3627_buildFieldInfos/-2113482998 var2763 var2702)) ; Statement: $r7 = staticinvoke <jdk.jfr.internal.EventInstrumentation: java.util.List buildFieldInfos(java.lang.Class,jdk.internal.org.objectweb.asm.tree.ClassNode)>(r1, $r6) 
(declare-const var2120!5 var3627)
(assert (not (= var2120!5 null-var3627)))
(assert (= (fieldInfos/1149045424 var2120!5) var168)) ; Statement: r0.<jdk.jfr.internal.EventInstrumentation: java.util.List fieldInfos> = $r7 
(define-const var3894 var1266 (fieldInfos/1149045424 var2120!5)) ; Statement: $r8 = r0.<jdk.jfr.internal.EventInstrumentation: java.util.List fieldInfos> 
(define-const var188 var3992 (var3627_makeWriteMethod/-1894597262 var3894)) ; Statement: $r9 = staticinvoke <jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.commons.Method makeWriteMethod(java.util.List)>($r8) 
(declare-const var2120!6 var3627)
(assert (not (= var2120!6 null-var3627)))
(assert (= (writeMethod/1149045424 var2120!6) var188)) ; Statement: r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.commons.Method writeMethod> = $r9 
(define-const var2468 String (var3434_makeEventHandlerName/-1212151593 var3929)) ; Statement: $r10 = staticinvoke <jdk.jfr.internal.EventHandlerCreator: java.lang.String makeEventHandlerName(long)>(l0) 
(define-const var3435 String (var3962_getInternalName/246609718 var2468)) ; Statement: $r11 = staticinvoke <jdk.jfr.internal.ASMToolkit: java.lang.String getInternalName(java.lang.String)>($r10) 
(declare-const var2120!7 var3627)
(assert (not (= var2120!7 null-var3627)))
(assert (= (eventHandlerXInternalName/1149045424 var2120!7) var3435)) ; Statement: r0.<jdk.jfr.internal.EventInstrumentation: java.lang.String eventHandlerXInternalName> = $r11 
(define-const var3492 var1966 (classNode/1149045424 var2120!7)) ; Statement: $r13 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode> 
(define-const var3756 var3198 var3627-ANNOTATION_TYPE_NAME) ; Statement: $r12 = <jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.Type ANNOTATION_TYPE_NAME> 
(assert true)
(define-const var306 String (getDescriptor/42994021 var3756)) ; Statement: $r14 = virtualinvoke $r12.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>() 
(define-const var1973 var3316 (var3627_annotationValue/914238595 var3492 var306 String!class)) ; Statement: $r15 = staticinvoke <jdk.jfr.internal.EventInstrumentation: java.lang.Object annotationValue(jdk.internal.org.objectweb.asm.tree.ClassNode,java.lang.String,java.lang.Class)>($r13, $r14, class "Ljava/lang/String;") 
(define-const var3293 String (cast-from-var3316-to-String var1973)) ; Statement: r16 = (java.lang.String) $r15 
 ; Statement: if r16 != null goto $r19 = r16 
(assert (not (= var3293 null-String))) ; Cond: r16 != null 
(define-const var3522 String var3293) ; Statement: $r19 = r16 
(assert true) ; Non Conditional
(declare-const var2120!8 var3627)
(assert (not (= var2120!8 null-var3627)))
(assert (= (eventName/1149045424 var2120!8) var3522)) ; Statement: r0.<jdk.jfr.internal.EventInstrumentation: java.lang.String eventName> = $r19 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3627-to-var3316=([jdk.jfr.internal.EventInstrumentation], java.lang.Object), superClass/1149045424=([jdk.jfr.internal.EventInstrumentation], java.lang.Class), createClassNode/893540815=([jdk.jfr.internal.EventInstrumentation, byte[]], jdk.internal.org.objectweb.asm.tree.ClassNode), classNode/1149045424=([jdk.jfr.internal.EventInstrumentation], jdk.internal.org.objectweb.asm.tree.ClassNode), var3627_buildSettingInfos/620205556=([java.lang.Class, jdk.internal.org.objectweb.asm.tree.ClassNode], java.util.List), settingInfos/1149045424=([jdk.jfr.internal.EventInstrumentation], java.util.List), var3627_buildFieldInfos/-2113482998=([java.lang.Class, jdk.internal.org.objectweb.asm.tree.ClassNode], java.util.List), fieldInfos/1149045424=([jdk.jfr.internal.EventInstrumentation], java.util.List), var3627_makeWriteMethod/-1894597262=([java.util.List], jdk.internal.org.objectweb.asm.commons.Method), writeMethod/1149045424=([jdk.jfr.internal.EventInstrumentation], jdk.internal.org.objectweb.asm.commons.Method), var3434_makeEventHandlerName/-1212151593=([long], java.lang.String), var3962_getInternalName/246609718=([java.lang.String], java.lang.String), eventHandlerXInternalName/1149045424=([jdk.jfr.internal.EventInstrumentation], java.lang.String), getDescriptor/42994021=([jdk.internal.org.objectweb.asm.Type], java.lang.String), var3627_annotationValue/914238595=([jdk.internal.org.objectweb.asm.tree.ClassNode, java.lang.String, java.lang.Class], java.lang.Object), cast-from-var3316-to-String=([java.lang.Object], java.lang.String), eventName/1149045424=([jdk.jfr.internal.EventInstrumentation], java.lang.String)}
; {var3627=jdk.jfr.internal.EventInstrumentation, var2120=r0, var2763=r1, var879=r2, var3929=l0, var3316=java.lang.Object, var1966=jdk.internal.org.objectweb.asm.tree.ClassNode, var2655=$r3, var2045=$r4, var1266=java.util.List, var401=$r5, var2702=$r6, var168=$r7, var3894=$r8, var3992=jdk.internal.org.objectweb.asm.commons.Method, var188=$r9, var3434=jdk.jfr.internal.EventHandlerCreator, var2468=$r10, var3962=jdk.jfr.internal.ASMToolkit, var3435=$r11, var3492=$r13, var3198=jdk.internal.org.objectweb.asm.Type, var3756=$r12, var306=$r14, var1973=$r15, var3293=r16, var1586=null_type, var3522=$r19}
; {jdk.jfr.internal.EventInstrumentation=var3627, r0=var2120, r1=var2763, r2=var879, l0=var3929, java.lang.Object=var3316, jdk.internal.org.objectweb.asm.tree.ClassNode=var1966, $r3=var2655, $r4=var2045, java.util.List=var1266, $r5=var401, $r6=var2702, $r7=var168, $r8=var3894, jdk.internal.org.objectweb.asm.commons.Method=var3992, $r9=var188, jdk.jfr.internal.EventHandlerCreator=var3434, $r10=var2468, jdk.jfr.internal.ASMToolkit=var3962, $r11=var3435, $r13=var3492, jdk.internal.org.objectweb.asm.Type=var3198, $r12=var3756, $r14=var306, $r15=var1973, r16=var3293, null_type=var1586, $r19=var3522}
;seq 
;cnt {}
;stmts r0 := @this: jdk.jfr.internal.EventInstrumentation;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: byte[];	l0 := @parameter2: long;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<jdk.jfr.internal.EventInstrumentation: java.lang.Class superClass> = r1;	$r3 = specialinvoke r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode createClassNode(byte[])>(r2);	r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode> = $r3;	$r4 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode>;	$r5 = staticinvoke <jdk.jfr.internal.EventInstrumentation: java.util.List buildSettingInfos(java.lang.Class,jdk.internal.org.objectweb.asm.tree.ClassNode)>(r1, $r4);	r0.<jdk.jfr.internal.EventInstrumentation: java.util.List settingInfos> = $r5;	$r6 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode>;	$r7 = staticinvoke <jdk.jfr.internal.EventInstrumentation: java.util.List buildFieldInfos(java.lang.Class,jdk.internal.org.objectweb.asm.tree.ClassNode)>(r1, $r6);	r0.<jdk.jfr.internal.EventInstrumentation: java.util.List fieldInfos> = $r7;	$r8 = r0.<jdk.jfr.internal.EventInstrumentation: java.util.List fieldInfos>;	$r9 = staticinvoke <jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.commons.Method makeWriteMethod(java.util.List)>($r8);	r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.commons.Method writeMethod> = $r9;	$r10 = staticinvoke <jdk.jfr.internal.EventHandlerCreator: java.lang.String makeEventHandlerName(long)>(l0);	$r11 = staticinvoke <jdk.jfr.internal.ASMToolkit: java.lang.String getInternalName(java.lang.String)>($r10);	r0.<jdk.jfr.internal.EventInstrumentation: java.lang.String eventHandlerXInternalName> = $r11;	$r13 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode>;	$r12 = <jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.Type ANNOTATION_TYPE_NAME>;	$r14 = virtualinvoke $r12.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>();	$r15 = staticinvoke <jdk.jfr.internal.EventInstrumentation: java.lang.Object annotationValue(jdk.internal.org.objectweb.asm.tree.ClassNode,java.lang.String,java.lang.Class)>($r13, $r14, class "Ljava/lang/String;");	r16 = (java.lang.String) $r15;	if r16 != null goto $r19 = r16;	$r19 = r16;	r0.<jdk.jfr.internal.EventInstrumentation: java.lang.String eventName> = $r19;	return
;block_num 3
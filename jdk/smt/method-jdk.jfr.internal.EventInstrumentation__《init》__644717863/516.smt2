(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3615 0)
(declare-sort var959 0)
(declare-sort var596 0)
(declare-sort var3736 0)
(declare-sort var770 0)
(declare-sort var1730 0)
(declare-sort var3530 0)
(declare-sort var1937 0)
(declare-sort var3557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun <init>/-279557996 (var959) void)
(declare-fun cast-from-var3615-to-var959 (var3615) var959)
(declare-fun superClass/1149045424 (var3615) ClassObject)
(declare-fun createClassNode/893540815 (var3615 (Array Int Int)) var596)
(declare-fun classNode/1149045424 (var3615) var596)
(declare-fun var3615_buildSettingInfos/620205556 (ClassObject var596) var3736)
(declare-fun settingInfos/1149045424 (var3615) var3736)
(declare-fun var3615_buildFieldInfos/-2113482998 (ClassObject var596) var3736)
(declare-fun fieldInfos/1149045424 (var3615) var3736)
(declare-fun var3615_makeWriteMethod/-1894597262 (var3736) var770)
(declare-fun writeMethod/1149045424 (var3615) var770)
(declare-fun var1730_makeEventHandlerName/-1212151593 (Int) String)
(declare-fun var3530_getInternalName/246609718 (String) String)
(declare-fun eventHandlerXInternalName/1149045424 (var3615) String)
(declare-fun getDescriptor/42994021 (var1937) String)
(declare-fun var3615_annotationValue/914238595 (var596 String ClassObject) var959)
(declare-fun cast-from-var959-to-String (var959) String)
(declare-fun name/500574324 (var596) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun eventName/1149045424 (var3615) String)
(declare-const null-var3615 var3615)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3615-ANNOTATION_TYPE_NAME var1937)
(declare-const null-String String)
(declare-const var216 var3615) ; Statement: r0 := @this: jdk.jfr.internal.EventInstrumentation 
(assert (not (= var216 null-var3615)))
(declare-const var2178 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2178 null-ClassObject)))
(declare-const var2617 (Array Int Int)) ; Statement: r2 := @parameter1: byte[] 
(assert (not (= var2617 null-__Array__Int__Int__)))
(declare-const var2486 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var2486 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3615-to-var959 var216))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var216!1 var3615)
(declare-const var216!2 var3615)
(assert (not (= var216!2 null-var3615)))
(assert (= (superClass/1149045424 var216!2) var2178)) ; Statement: r0.<jdk.jfr.internal.EventInstrumentation: java.lang.Class superClass> = r1 
(assert true)
(define-const var3762 var596 (createClassNode/893540815 var216!2 var2617)) ; Statement: $r3 = specialinvoke r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode createClassNode(byte[])>(r2) 
(declare-const var216!3 var3615)
(assert (not (= var216!3 null-var3615)))
(assert (= (classNode/1149045424 var216!3) var3762)) ; Statement: r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode> = $r3 
(define-const var32 var596 (classNode/1149045424 var216!3)) ; Statement: $r4 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode> 
(define-const var161 var3736 (var3615_buildSettingInfos/620205556 var2178 var32)) ; Statement: $r5 = staticinvoke <jdk.jfr.internal.EventInstrumentation: java.util.List buildSettingInfos(java.lang.Class,jdk.internal.org.objectweb.asm.tree.ClassNode)>(r1, $r4) 
(declare-const var216!4 var3615)
(assert (not (= var216!4 null-var3615)))
(assert (= (settingInfos/1149045424 var216!4) var161)) ; Statement: r0.<jdk.jfr.internal.EventInstrumentation: java.util.List settingInfos> = $r5 
(define-const var2252 var596 (classNode/1149045424 var216!4)) ; Statement: $r6 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode> 
(define-const var2106 var3736 (var3615_buildFieldInfos/-2113482998 var2178 var2252)) ; Statement: $r7 = staticinvoke <jdk.jfr.internal.EventInstrumentation: java.util.List buildFieldInfos(java.lang.Class,jdk.internal.org.objectweb.asm.tree.ClassNode)>(r1, $r6) 
(declare-const var216!5 var3615)
(assert (not (= var216!5 null-var3615)))
(assert (= (fieldInfos/1149045424 var216!5) var2106)) ; Statement: r0.<jdk.jfr.internal.EventInstrumentation: java.util.List fieldInfos> = $r7 
(define-const var1539 var3736 (fieldInfos/1149045424 var216!5)) ; Statement: $r8 = r0.<jdk.jfr.internal.EventInstrumentation: java.util.List fieldInfos> 
(define-const var1080 var770 (var3615_makeWriteMethod/-1894597262 var1539)) ; Statement: $r9 = staticinvoke <jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.commons.Method makeWriteMethod(java.util.List)>($r8) 
(declare-const var216!6 var3615)
(assert (not (= var216!6 null-var3615)))
(assert (= (writeMethod/1149045424 var216!6) var1080)) ; Statement: r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.commons.Method writeMethod> = $r9 
(define-const var3459 String (var1730_makeEventHandlerName/-1212151593 var2486)) ; Statement: $r10 = staticinvoke <jdk.jfr.internal.EventHandlerCreator: java.lang.String makeEventHandlerName(long)>(l0) 
(define-const var3993 String (var3530_getInternalName/246609718 var3459)) ; Statement: $r11 = staticinvoke <jdk.jfr.internal.ASMToolkit: java.lang.String getInternalName(java.lang.String)>($r10) 
(declare-const var216!7 var3615)
(assert (not (= var216!7 null-var3615)))
(assert (= (eventHandlerXInternalName/1149045424 var216!7) var3993)) ; Statement: r0.<jdk.jfr.internal.EventInstrumentation: java.lang.String eventHandlerXInternalName> = $r11 
(define-const var489 var596 (classNode/1149045424 var216!7)) ; Statement: $r13 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode> 
(define-const var3135 var1937 var3615-ANNOTATION_TYPE_NAME) ; Statement: $r12 = <jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.Type ANNOTATION_TYPE_NAME> 
(assert true)
(define-const var1126 String (getDescriptor/42994021 var3135)) ; Statement: $r14 = virtualinvoke $r12.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>() 
(define-const var3054 var959 (var3615_annotationValue/914238595 var489 var1126 String!class)) ; Statement: $r15 = staticinvoke <jdk.jfr.internal.EventInstrumentation: java.lang.Object annotationValue(jdk.internal.org.objectweb.asm.tree.ClassNode,java.lang.String,java.lang.Class)>($r13, $r14, class "Ljava/lang/String;") 
(define-const var2117 String (cast-from-var959-to-String var3054)) ; Statement: r16 = (java.lang.String) $r15 
 ; Statement: if r16 != null goto $r19 = r16 
(assert (not (not (= var2117 null-String)))) ; Negate: Cond: r16 != null  
(define-const var2367 var596 (classNode/1149045424 var216!7)) ; Statement: $r17 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode> 
(define-const var1589 String (name/500574324 var2367)) ; Statement: $r18 = $r17.<jdk.internal.org.objectweb.asm.tree.ClassNode: java.lang.String name> 
(assert true)
(define-const var1151 String (replace/2138489945 var1589 (cast-from-String-to-String "/") (cast-from-String-to-String "."))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("/", ".") 
 ; Statement: goto [?= r0.<jdk.jfr.internal.EventInstrumentation: java.lang.String eventName> = $r19] 
(assert true) ; Non Conditional
(declare-const var216!8 var3615)
(assert (not (= var216!8 null-var3615)))
(assert (= (eventName/1149045424 var216!8) var1151)) ; Statement: r0.<jdk.jfr.internal.EventInstrumentation: java.lang.String eventName> = $r19 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3615-to-var959=([jdk.jfr.internal.EventInstrumentation], java.lang.Object), superClass/1149045424=([jdk.jfr.internal.EventInstrumentation], java.lang.Class), createClassNode/893540815=([jdk.jfr.internal.EventInstrumentation, byte[]], jdk.internal.org.objectweb.asm.tree.ClassNode), classNode/1149045424=([jdk.jfr.internal.EventInstrumentation], jdk.internal.org.objectweb.asm.tree.ClassNode), var3615_buildSettingInfos/620205556=([java.lang.Class, jdk.internal.org.objectweb.asm.tree.ClassNode], java.util.List), settingInfos/1149045424=([jdk.jfr.internal.EventInstrumentation], java.util.List), var3615_buildFieldInfos/-2113482998=([java.lang.Class, jdk.internal.org.objectweb.asm.tree.ClassNode], java.util.List), fieldInfos/1149045424=([jdk.jfr.internal.EventInstrumentation], java.util.List), var3615_makeWriteMethod/-1894597262=([java.util.List], jdk.internal.org.objectweb.asm.commons.Method), writeMethod/1149045424=([jdk.jfr.internal.EventInstrumentation], jdk.internal.org.objectweb.asm.commons.Method), var1730_makeEventHandlerName/-1212151593=([long], java.lang.String), var3530_getInternalName/246609718=([java.lang.String], java.lang.String), eventHandlerXInternalName/1149045424=([jdk.jfr.internal.EventInstrumentation], java.lang.String), getDescriptor/42994021=([jdk.internal.org.objectweb.asm.Type], java.lang.String), var3615_annotationValue/914238595=([jdk.internal.org.objectweb.asm.tree.ClassNode, java.lang.String, java.lang.Class], java.lang.Object), cast-from-var959-to-String=([java.lang.Object], java.lang.String), name/500574324=([jdk.internal.org.objectweb.asm.tree.ClassNode], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), eventName/1149045424=([jdk.jfr.internal.EventInstrumentation], java.lang.String)}
; {var3615=jdk.jfr.internal.EventInstrumentation, var216=r0, var2178=r1, var2617=r2, var2486=l0, var959=java.lang.Object, var596=jdk.internal.org.objectweb.asm.tree.ClassNode, var3762=$r3, var32=$r4, var3736=java.util.List, var161=$r5, var2252=$r6, var2106=$r7, var1539=$r8, var770=jdk.internal.org.objectweb.asm.commons.Method, var1080=$r9, var1730=jdk.jfr.internal.EventHandlerCreator, var3459=$r10, var3530=jdk.jfr.internal.ASMToolkit, var3993=$r11, var489=$r13, var1937=jdk.internal.org.objectweb.asm.Type, var3135=$r12, var1126=$r14, var3054=$r15, var2117=r16, var3557=null_type, var2367=$r17, var1589=$r18, var1151=$r19}
; {jdk.jfr.internal.EventInstrumentation=var3615, r0=var216, r1=var2178, r2=var2617, l0=var2486, java.lang.Object=var959, jdk.internal.org.objectweb.asm.tree.ClassNode=var596, $r3=var3762, $r4=var32, java.util.List=var3736, $r5=var161, $r6=var2252, $r7=var2106, $r8=var1539, jdk.internal.org.objectweb.asm.commons.Method=var770, $r9=var1080, jdk.jfr.internal.EventHandlerCreator=var1730, $r10=var3459, jdk.jfr.internal.ASMToolkit=var3530, $r11=var3993, $r13=var489, jdk.internal.org.objectweb.asm.Type=var1937, $r12=var3135, $r14=var1126, $r15=var3054, r16=var2117, null_type=var3557, $r17=var2367, $r18=var1589, $r19=var1151}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r0 := @this: jdk.jfr.internal.EventInstrumentation;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: byte[];	l0 := @parameter2: long;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<jdk.jfr.internal.EventInstrumentation: java.lang.Class superClass> = r1;	$r3 = specialinvoke r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode createClassNode(byte[])>(r2);	r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode> = $r3;	$r4 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode>;	$r5 = staticinvoke <jdk.jfr.internal.EventInstrumentation: java.util.List buildSettingInfos(java.lang.Class,jdk.internal.org.objectweb.asm.tree.ClassNode)>(r1, $r4);	r0.<jdk.jfr.internal.EventInstrumentation: java.util.List settingInfos> = $r5;	$r6 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode>;	$r7 = staticinvoke <jdk.jfr.internal.EventInstrumentation: java.util.List buildFieldInfos(java.lang.Class,jdk.internal.org.objectweb.asm.tree.ClassNode)>(r1, $r6);	r0.<jdk.jfr.internal.EventInstrumentation: java.util.List fieldInfos> = $r7;	$r8 = r0.<jdk.jfr.internal.EventInstrumentation: java.util.List fieldInfos>;	$r9 = staticinvoke <jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.commons.Method makeWriteMethod(java.util.List)>($r8);	r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.commons.Method writeMethod> = $r9;	$r10 = staticinvoke <jdk.jfr.internal.EventHandlerCreator: java.lang.String makeEventHandlerName(long)>(l0);	$r11 = staticinvoke <jdk.jfr.internal.ASMToolkit: java.lang.String getInternalName(java.lang.String)>($r10);	r0.<jdk.jfr.internal.EventInstrumentation: java.lang.String eventHandlerXInternalName> = $r11;	$r13 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode>;	$r12 = <jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.Type ANNOTATION_TYPE_NAME>;	$r14 = virtualinvoke $r12.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>();	$r15 = staticinvoke <jdk.jfr.internal.EventInstrumentation: java.lang.Object annotationValue(jdk.internal.org.objectweb.asm.tree.ClassNode,java.lang.String,java.lang.Class)>($r13, $r14, class "Ljava/lang/String;");	r16 = (java.lang.String) $r15;	if r16 != null goto $r19 = r16;	$r17 = r0.<jdk.jfr.internal.EventInstrumentation: jdk.internal.org.objectweb.asm.tree.ClassNode classNode>;	$r18 = $r17.<jdk.internal.org.objectweb.asm.tree.ClassNode: java.lang.String name>;	$r19 = virtualinvoke $r18.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("/", ".");	goto [?= r0.<jdk.jfr.internal.EventInstrumentation: java.lang.String eventName> = $r19];	r0.<jdk.jfr.internal.EventInstrumentation: java.lang.String eventName> = $r19;	return
;block_num 3
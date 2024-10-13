(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var442 0)
(declare-sort var1905 0)
(declare-sort var3605 0)
(declare-sort var3207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-2081927433 (var442) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3207_createFactory/583214547 (var442 var1905) var3605)
(declare-const null-var442 var442)
(declare-const null-var1905 var1905)
(declare-const var102 var442) ; Statement: r0 := @parameter0: jdk.jfr.internal.Type 
(assert (not (= var102 null-var442)))
(declare-const var2453 var1905) ; Statement: r2 := @parameter1: jdk.jfr.consumer.TimeConverter 
(assert (not (= var2453 null-var1905)))
(assert true)
(define-const var2227 String (getName/-2081927433 var102)) ; Statement: r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(define-const var3955 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3177 Int (hashCode/-467973558 var2227)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1521454505: goto $z11 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.StackFrame");     case -1508525521: goto $z10 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.StackTrace");     case -1461342917: goto $z9 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.ClassLoader");     case -1279061901: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.Method");     case -1189480395: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.StackFrame");     case -1176551411: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.StackTrace");     case -530663260: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Class");     case -295970237: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.ThreadGroup");     case 1132361561: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.ClassLoader");     case 1212802142: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Thread");     case 1405292581: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.ThreadGroup");     case 1501967697: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.Method");     default: goto tableswitch(b1) {     case 0: goto $r9 = staticinvoke <jdk.jfr.consumer.RecordedThread: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 1: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 2: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 3: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 4: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 5: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 6: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 7: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 8: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 9: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 10: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 11: goto $r3 = staticinvoke <jdk.jfr.consumer.RecordedClass: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     default: goto return null; }; } 
(assert (and (not (= var3177 1501967697)) (and (not (= var3177 1405292581)) (and (not (= var3177 1212802142)) (and (not (= var3177 1132361561)) (and (not (= var3177 (- 295970237))) (and (not (= var3177 (- 530663260))) (and (not (= var3177 (- 1176551411))) (and (not (= var3177 (- 1189480395))) (and (not (= var3177 (- 1279061901))) (and (not (= var3177 (- 1461342917))) (and (not (= var3177 (- 1508525521))) (and (not (= var3177 (- 1521454505))) true))))))))))))) ; Intersect: Negate: Cond: $i0 == 1501967697   and Intersect: Negate: Cond: $i0 == 1405292581   and Intersect: Negate: Cond: $i0 == 1212802142   and Intersect: Negate: Cond: $i0 == 1132361561   and Intersect: Negate: Cond: $i0 == -295970237   and Intersect: Negate: Cond: $i0 == -530663260   and Intersect: Negate: Cond: $i0 == -1176551411   and Intersect: Negate: Cond: $i0 == -1189480395   and Intersect: Negate: Cond: $i0 == -1279061901   and Intersect: Negate: Cond: $i0 == -1461342917   and Intersect: Negate: Cond: $i0 == -1508525521   and Intersect: Negate: Cond: $i0 == -1521454505   and Non Conditional            
 ; Statement: tableswitch(b1) {     case 0: goto $r9 = staticinvoke <jdk.jfr.consumer.RecordedThread: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 1: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 2: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 3: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 4: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 5: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 6: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 7: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 8: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 9: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 10: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 11: goto $r3 = staticinvoke <jdk.jfr.consumer.RecordedClass: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     default: goto return null; } 
(assert (and (= var3955 7) (and (not (= var3955 6)) (and (not (= var3955 5)) (and (not (= var3955 4)) (and (not (= var3955 3)) (and (not (= var3955 2)) (and (not (= var3955 1)) (and (not (= var3955 0)) true))))))))) ; Intersect: Cond: b1 == 7  and Intersect: Negate: Cond: b1 == 6   and Intersect: Negate: Cond: b1 == 5   and Intersect: Negate: Cond: b1 == 4   and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional        
(define-const var2335 var3605 (var3207_createFactory/583214547 var102 var2453)) ; Statement: $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-2081927433=([jdk.jfr.internal.Type], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3207_createFactory/583214547=([jdk.jfr.internal.Type, jdk.jfr.consumer.TimeConverter], jdk.jfr.consumer.ObjectFactory)}
; {var442=jdk.jfr.internal.Type, var102=r0, var1905=jdk.jfr.consumer.TimeConverter, var2453=r2, var2227=r1, var3955=b1, var3177=$i0, var3605=jdk.jfr.consumer.ObjectFactory, var3207=jdk.jfr.consumer.RecordedStackTrace, var2335=$r5}
; {jdk.jfr.internal.Type=var442, r0=var102, jdk.jfr.consumer.TimeConverter=var1905, r2=var2453, r1=var2227, b1=var3955, $i0=var3177, jdk.jfr.consumer.ObjectFactory=var3605, jdk.jfr.consumer.RecordedStackTrace=var3207, $r5=var2335}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: jdk.jfr.internal.Type;	r2 := @parameter1: jdk.jfr.consumer.TimeConverter;	r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>();	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1521454505: goto $z11 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.StackFrame");     case -1508525521: goto $z10 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.StackTrace");     case -1461342917: goto $z9 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.ClassLoader");     case -1279061901: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.Method");     case -1189480395: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.StackFrame");     case -1176551411: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.StackTrace");     case -530663260: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Class");     case -295970237: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.ThreadGroup");     case 1132361561: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.types.ClassLoader");     case 1212802142: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Thread");     case 1405292581: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.ThreadGroup");     case 1501967697: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("com.oracle.jfr.types.Method");     default: goto tableswitch(b1) {     case 0: goto $r9 = staticinvoke <jdk.jfr.consumer.RecordedThread: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 1: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 2: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 3: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 4: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 5: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 6: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 7: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 8: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 9: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 10: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 11: goto $r3 = staticinvoke <jdk.jfr.consumer.RecordedClass: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     default: goto return null; }; };	tableswitch(b1) {     case 0: goto $r9 = staticinvoke <jdk.jfr.consumer.RecordedThread: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 1: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 2: goto $r8 = staticinvoke <jdk.jfr.consumer.RecordedFrame: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 3: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 4: goto $r7 = staticinvoke <jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 5: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 6: goto $r6 = staticinvoke <jdk.jfr.consumer.RecordedThreadGroup: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 7: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 8: goto $r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 9: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 10: goto $r4 = staticinvoke <jdk.jfr.consumer.RecordedClassLoader: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     case 11: goto $r3 = staticinvoke <jdk.jfr.consumer.RecordedClass: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);     default: goto return null; };	$r5 = staticinvoke <jdk.jfr.consumer.RecordedStackTrace: jdk.jfr.consumer.ObjectFactory createFactory(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, r2);	return $r5
;block_num 3